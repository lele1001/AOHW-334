import json
import random
import faiss
import time
import torch
import numpy as np
from torch_kmeans import KMeans
import csv

DATASET_PATH = "../points.json"
RESULTS_PATH = "results.csv"

# Read dataset from json file
def read_dataset(path):
    with open(path, "r") as file:
        data = json.load(file)

    return np.array(data, dtype=np.float32)


# Faiss implementation of KMeans on CPU
def faiss_cpu(data, num_clusters):
    # KMeans initialization
    kmeans = faiss.Kmeans(d=data.shape[1], k=num_clusters, verbose=True)

    # Perform KMeans clustering and measure time
    start_time = time.time()
    kmeans.train(data)
    elapsed_time = time.time() - start_time

    return elapsed_time

# Faiss implementation of KMeans on GPU
def faiss_gpu(data, num_clusters):
    # KMeans initialization
    kmeans = faiss.Kmeans(d=data.shape[1], k=num_clusters, verbose=True, gpu=True)

    # Perform KMeans clustering and measure time
    start_time = time.time()
    kmeans.train(data)
    elapsed_time = time.time() - start_time

    return elapsed_time

# PyTorch implementation of KMeans on CPU
def torch_cpu(data, num_clusters):
    # Convert data to tensor and add batch dimension
    data_tensor = torch.from_numpy(data).unsqueeze(0)
    # data_tensor = torch.from_numpy(data).unsqueeze(0).cuda()

    # KMeans initialization
    kmeans = KMeans(n_clusters=num_clusters, verbose=0)

    # Perform KMeans clustering and measure time
    start_time = time.time()
    labels = kmeans.fit_predict(data_tensor)
    elapsed_time = time.time() - start_time

    return elapsed_time

# PyTorch implementation of KMeans on GPU
def torch_gpu(data, num_clusters):
    # Convert data to tensor and add batch dimension
    data_tensor = torch.from_numpy(data).unsqueeze(0).cuda()

    # KMeans initialization
    kmeans = KMeans(n_clusters=num_clusters, verbose=0)

    # Perform KMeans clustering and measure time
    start_time = time.time()
    labels = kmeans.fit_predict(data_tensor)
    elapsed_time = time.time() - start_time

    return elapsed_time

# Test KMeans implementations
def test_kmeans(data, num_clusters):
    # Perform Faiss KMeans on CPU
    faiss_time_cpu = faiss_cpu(data, num_clusters)
    print(f"Faiss Time (CPU): {faiss_time_cpu:.4f} seconds")

    # Perform PyTorch-KMeans on CPU
    torch_time_cpu = torch_cpu(data, num_clusters)
    print(f"PyTorch-KMeans Time (CPU): {torch_time_cpu:.4f} seconds")

    # Perform Faiss KMeans on GPU
    faiss_time_gpu = faiss_gpu(data, num_clusters)
    print(f"Faiss Time (GPU): {faiss_time_gpu:.4f} seconds")

    # Perform PyTorch-KMeans on GPU
    torch_time_gpu = torch_gpu(data, num_clusters)
    print(f"PyTorch-KMeans Time (GPU): {torch_time_gpu:.4f} seconds")

    # Write results to file
    with open(RESULTS_PATH, "a") as file:
        writer = csv.writer(file)
        writer.writerow([num_clusters, faiss_time_cpu, torch_time_cpu, faiss_time_gpu, torch_time_gpu])

# Main function
def main():
    # Open results file
    with open(RESULTS_PATH, "w") as file:
        writer = csv.writer(file)
        writer.writerow(["num_clusters", "faiss_time_cpu", "torch_time_cpu", "faiss_time_gpu", "torch_time_gpu"])

    # Read dataset
    data = read_dataset(DATASET_PATH)

    for i in range(1, 50):
        # Randomly select number of clusters
        num_clusters = random.randint(4, 32)

        # Test KMeans implementations
        test_kmeans(data, num_clusters)


if __name__ == "__main__":
    main()