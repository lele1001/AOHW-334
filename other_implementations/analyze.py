import csv
import matplotlib.pyplot as plt
import numpy as np

RESULTS_PATH = "results.csv"

# Read result file and group by number of clusters
def read_results():
    with open(RESULTS_PATH, "r") as file:
        reader = csv.reader(file)
        next(reader)
        results = list(reader)

    # Sort results by number of clusters
    results.sort(key=lambda x: int(x[0]))

    return results


# Analyze results and compute average time for each number of clusters (grouped to the nearest multiple of 4)
def average_time(results):
    avg_results = []
    grouped_results = {}
    
    for result in results:
        # Group the number of clusters to the nearest multiple of 4
        num_clusters = int(result[0])
        grouped_cluster = 4 * round(num_clusters / 4)

        # Parse times
        faiss_cpu_time = float(result[1])
        torch_cpu_time = float(result[2])
        faiss_gpu_time = float(result[3])
        torch_gpu_time = float(result[4])

        # Accumulate times for the grouped cluster
        if grouped_cluster not in grouped_results:
            grouped_results[grouped_cluster] = {
                "faiss_cpu_sum": 0,
                "torch_cpu_sum": 0,
                "faiss_gpu_sum": 0,
                "torch_gpu_sum": 0,
                "count": 0,
            }

        grouped_results[grouped_cluster]["faiss_cpu_sum"] += faiss_cpu_time
        grouped_results[grouped_cluster]["torch_cpu_sum"] += torch_cpu_time
        grouped_results[grouped_cluster]["faiss_gpu_sum"] += faiss_gpu_time
        grouped_results[grouped_cluster]["torch_gpu_sum"] += torch_gpu_time
        grouped_results[grouped_cluster]["count"] += 1

    # Compute averages for each group
    for grouped_cluster, data in sorted(grouped_results.items()):
        count = data["count"]
        avg_results.append([
            grouped_cluster,
            data["faiss_cpu_sum"] / count,
            data["torch_cpu_sum"] / count,
            data["faiss_gpu_sum"] / count,
            data["torch_gpu_sum"] / count,
        ])

    return avg_results


# Plot average results
def plot_results(avg_results):
    # Plot average results
    num_clusters = [int(result[0]) for result in avg_results]
    avg_faiss_cpu = [float(result[1]) for result in avg_results]
    avg_torch_cpu = [float(result[2]) for result in avg_results]
    avg_faiss_gpu = [float(result[3]) for result in avg_results]
    avg_torch_gpu = [float(result[4]) for result in avg_results]

    # Get time values for multiples of 4
    xticks = np.arange(min(num_clusters), max(num_clusters) + 1, 4)
    plt.figure(figsize=(10, 6))

    plt.plot(num_clusters, avg_faiss_cpu, label="Faiss (CPU)", marker='o')
    plt.plot(num_clusters, avg_torch_cpu, label="PyTorch (CPU)", marker='o')
    plt.plot(num_clusters, avg_faiss_gpu, label="Faiss (GPU)", marker='o')
    plt.plot(num_clusters, avg_torch_gpu, label="PyTorch (GPU)", marker='o')

    plt.xticks(xticks)
    plt.xlabel("Number of Clusters", fontsize=12)
    plt.ylabel("Average Time (s)", fontsize=12)

    plt.title("Average Time vs Number of Clusters", fontsize=14)
    plt.legend()

    plt.show()
    plt.savefig("average_results.pdf")


def main():
    # Read results from file
    results = read_results()

    # Compute average time for each number of clusters
    avg_results = average_time(results)

    # Write average results to file
    with open("average_results.csv", "w") as file:
        writer = csv.writer(file)
        writer.writerow(["num_clusters", "avg_faiss_cpu", "avg_torch_cpu", "avg_faiss_gpu", "avg_torch_gpu"])

        for result in avg_results:
            writer.writerow(result)

    # Plot average results
    plot_results(avg_results)


if __name__ == "__main__":
    main()