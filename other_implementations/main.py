import json
import faiss
import time
import torch
import numpy as np
from torch_kmeans import KMeans
from sklearn.cluster import KMeans
import math, csv

DATASET_PATH = "points.json"
RESULTS_PATH = "results.csv"
CLUSTERS_PATH = "clusters.csv"

# Read dataset from json file
def read_dataset(path):
    with open(path, "r") as file:
        data = json.load(file)

    return np.array(data, dtype=np.float32)

# Select points and clusters based on powers of 2 logic
def select_points_and_clusters(data, clusters_vec):
    results = []
    block_size = 32 * 4

    for num_clusters in clusters_vec:
        num_points = int((data.shape[0] - 32) / block_size * block_size)

        # Select clusters
        clusters = data[:num_clusters]

        # Select points
        points = data[num_clusters:num_clusters + num_points]

        results.append((clusters, points, num_clusters, num_points))

    return results

# Faiss implementation of KMeans on CPU
def faiss_cpu(data, num_clusters, clusters):
    # KMeans initialization
    kmeans = faiss.Kmeans(d=data.shape[1], k=num_clusters, gpu=False)

    # Perform KMeans clustering and measure time
    start_time = time.perf_counter()
    kmeans.train(data, init_centroids=clusters)
    elapsed_time = time.perf_counter() - start_time

    return elapsed_time * pow(10, 6), kmeans.centroids

# Faiss implementation of KMeans on GPU
def faiss_gpu(data, num_clusters, clusters):
    # KMeans initialization
    kmeans = faiss.Kmeans(d=data.shape[1], k=num_clusters, gpu=True)

    # Perform KMeans clustering and measure time
    start_time = time.perf_counter()
    kmeans.train(data, init_centroids=clusters)
    elapsed_time = time.perf_counter() - start_time

    return elapsed_time * pow(10, 6), kmeans.centroids

# Scikit-learn implementation of KMeans
def sklearn(data, num_clusters, clusters):
    # KMeans initialization
    kmeans = KMeans(n_clusters=num_clusters, init=clusters)

    # Perform KMeans clustering and measure time
    start_time = time.perf_counter()
    kmeans.fit(data)
    elapsed_time = time.perf_counter() - start_time

    return elapsed_time * pow(10, 6), kmeans.cluster_centers_

# Test KMeans implementations
def test_kmeans(clusters, points, num_clusters, num_points):
    # Combine clusters and points into a single dataset
    data = np.vstack((clusters, points))
    t_faiss_cpu = 0
    t_faiss_gpu = 0
    t_sklearn = 0

    for i in range(50):

        # Perform Faiss KMeans on CPU
        faiss_time_cpu, clusters_faiss = faiss_cpu(data, num_clusters, clusters)
        # print(f"Faiss Time (CPU): {faiss_time_cpu:.4f} microseconds")

        # Perform Faiss KMeans on GPU
        # faiss_time_gpu, clusters_faiss_gpu = faiss_gpu(data, num_clusters, clusters)
        # print(f"Faiss Time (GPU): {faiss_time_gpu:.4f} microseconds")


        # Perform Scikit-learn KMeans on CPU
        sklearn_time, clusters_sklearn = sklearn(data, num_clusters, clusters)
        # print(f"Scikit-learn Time (CPU): {sklearn_time:.4f} microseconds")

        t_faiss_cpu += faiss_time_cpu
        # faiss_gpu += faiss_time_gpu
        t_sklearn += sklearn_time

    # Write results to file
    with open(RESULTS_PATH, "a") as file:
        writer = csv.writer(file)
        writer.writerow([num_clusters, num_points, t_faiss_cpu / 50, t_faiss_gpu / 50, t_sklearn / 50])

    # with open(CLUSTERS_PATH, "a") as file:
    #     writer = csv.writer(file)
    #     for i in range(num_clusters):
    #         writer.writerow([num_clusters, num_points, clusters_faiss[i], clusters_faiss_gpu[i], clusters_sklearn[i]])
        

# Main function
def main():
    # Open results file
    with open(RESULTS_PATH, "w") as file:
        writer = csv.writer(file)
        writer.writerow(["num_clusters", "num_points", "faiss_time_cpu", "faiss_time_gpu", "sklearn_time"])
        
    # Read dataset
    data = read_dataset(DATASET_PATH)

    # Cluster counts to iterate over
    clusters_vec = [4, 8, 16, 32]

    # Generate test cases
    test_cases = select_points_and_clusters(data, clusters_vec)

    # Test KMeans implementations
    for clusters, points, num_clusters, num_points in test_cases:
        test_kmeans(clusters, points, num_clusters, num_points)
        # print(num_clusters, num_points)

if __name__ == "__main__":
    main()