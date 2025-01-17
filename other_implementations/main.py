import json
import random
import faiss
import time
import torch
import numpy as np
from torch_kmeans import KMeans
import csv
import math

DATASET_PATH = "points.json"
RESULTS_PATH = "results.csv"

# Read dataset from json file
def read_dataset(path):
    with open(path, "r") as file:
        data = json.load(file)

    return np.array(data, dtype=np.float32)


# Select points and clusters based on powers of 2 logic
def select_points_and_clusters(data, clusters_vec):
    results = []

    for num_clusters in clusters_vec:
        # Calculate the maximum power of 2 for the current number of points
        max_p = int(math.log2(data.shape[0] - num_clusters))

        for power in range(9, max_p + 1):
            num_points = 2 ** power

            # Select clusters
            clusters = data[:num_clusters]

            # Select points
            points = data[num_clusters:num_clusters + num_points]

            results.append((clusters, points, num_clusters, num_points))

    return results


# Faiss implementation of KMeans on CPU
def faiss_cpu(data, num_clusters):
    # KMeans initialization
    kmeans = faiss.Kmeans(d=data.shape[1], k=num_clusters, verbose=True)

    # Perform KMeans clustering and measure time
    start_time = time.perf_counter()
    kmeans.train(data)
    elapsed_time = time.perf_counter() - start_time

    return elapsed_time * pow(10, 6)

# Faiss implementation of KMeans on GPU
def faiss_gpu(data, num_clusters):
    # KMeans initialization
    kmeans = faiss.Kmeans(d=data.shape[1], k=num_clusters, verbose=True, gpu=True)

    # Perform KMeans clustering and measure time
    start_time = time.perf_counter()
    kmeans.train(data)
    elapsed_time = time.perf_counter() - start_time

    return elapsed_time * pow(10, 6)

# PyTorch implementation of KMeans on CPU
def torch_cpu(data, num_clusters):
    # Convert data to tensor and add batch dimension
    data_tensor = torch.from_numpy(data).unsqueeze(0)

    # KMeans initialization
    kmeans = KMeans(n_clusters=num_clusters, verbose=0)

    # Perform KMeans clustering and measure time
    start_time = time.perf_counter()
    kmeans.fit_predict(data_tensor)
    elapsed_time = time.perf_counter() - start_time

    return elapsed_time * pow(10, 6)

# PyTorch implementation of KMeans on GPU
def torch_gpu(data, num_clusters):
    # Convert data to tensor and add batch dimension
    data_tensor = torch.from_numpy(data).unsqueeze(0).cuda()

    # KMeans initialization
    kmeans = KMeans(n_clusters=num_clusters, verbose=0)

    # Perform KMeans clustering and measure time
    start_time = time.perf_counter()
    kmeans.fit_predict(data_tensor)
    elapsed_time = time.perf_counter() - start_time

    return elapsed_time * pow(10, 6)

# Test KMeans implementations
def test_kmeans(clusters, points, num_clusters, num_points):
    # Combine clusters and points into a single dataset
    data = np.vstack((clusters, points))

    # Perform Faiss KMeans on CPU
    faiss_time_cpu = faiss_cpu(data, num_clusters)
    print(f"Faiss Time (CPU): {faiss_time_cpu:.4f} microseconds")

    # Perform PyTorch-KMeans on CPU
    torch_time_cpu = torch_cpu(data, num_clusters)
    print(f"PyTorch-KMeans Time (CPU): {torch_time_cpu:.4f} microseconds")

    # Perform Faiss KMeans on GPU
    faiss_time_gpu = faiss_gpu(data, num_clusters)
    print(f"Faiss Time (GPU): {faiss_time_gpu:.4f} microseconds")

    # Perform PyTorch-KMeans on GPU
    torch_time_gpu = torch_gpu(data, num_clusters)
    print(f"PyTorch-KMeans Time (GPU): {torch_time_gpu:.4f} microseconds")

    # Write results to file
    with open(RESULTS_PATH, "a") as file:
        writer = csv.writer(file)
        writer.writerow([num_clusters, num_points, faiss_time_cpu, torch_time_cpu, faiss_time_gpu, torch_time_gpu])

# Main function
def main():
    # Open results file
    with open(RESULTS_PATH, "w") as file:
        writer = csv.writer(file)
        writer.writerow(["num_clusters", "num_points", "faiss_time_cpu", "torch_time_cpu", "faiss_time_gpu", "torch_time_gpu"])

    # Read dataset
    data = read_dataset(DATASET_PATH)

    # Cluster counts to iterate over
    clusters_vec = [4, 8, 12, 16, 32]

    # Generate test cases
    test_cases = select_points_and_clusters(data, clusters_vec)

    # Test KMeans implementations
    for clusters, points, num_clusters, num_points in test_cases:
        test_kmeans(clusters, points, num_clusters, num_points)

if __name__ == "__main__":
    main()