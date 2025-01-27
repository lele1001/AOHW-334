import csv, os
import json
import matplotlib.pyplot as plt
import numpy as np
import seaborn as sns
import pandas as pd

versions = ["4", "8", "16", "32"]

# Read the results from the csv file
def read_csv(file_path):
    with open(file_path, 'r') as f:
        lines = f.readlines()

    data = []
    for line in lines:
        values = line.strip().split(',')
        
        # Skip lines without valid data
        if values[0] == "Number of clusters" or not values[0].isdigit():
            continue

        # Convert "2^x" notation to integer number of points
        # num_points = int(values[1].split('^')[0]) ** int(values[1].split('^')[1])
        data.append([int(values[0]), int(values[1]), int(values[2]), int(values[3])])

    # Create DataFrame with column names
    df = pd.DataFrame(data, columns=['num_clusters', 'num_points', 'sw_time', 'hw_time'])
    return df


def average_time(results):
    # Read the results CSV file into a DataFrame
    df = pd.read_csv(results)

    # Group by number of clusters and number of points and calculate the average times
    avg_results = df.groupby(["num_clusters", "num_points"]).mean().reset_index()

    # Melt the DataFrame to have a single column for the time values
    avg_results_melted = avg_results.melt(id_vars=["num_clusters", "num_points"],
                                            value_vars=["faiss_time_cpu", "faiss_time_gpu", "sklearn_time"],
                                            var_name="Type", value_name="Time (us)")
        
    # Rename "Type" values for clearer labels
    avg_results_melted["Type"] = avg_results_melted["Type"].replace({"faiss_time_cpu": "Faiss Time (CPU)", 
                                                                     "faiss_time_gpu": "Faiss Time (GPU)", 
                                                                     "sklearn_time": "Sklearn Time"})
    
    for cluster in avg_results_melted["num_clusters"].unique():
        # Create a CSV file with the average results
        avg_results[avg_results["num_clusters"] == cluster].to_csv(f"{cluster}_clusters_avg.csv", index=False)


def concat_files(file1, file2):
    df1 = pd.read_csv(file1)
    df2 = pd.read_csv(file2)
    df = pd.concat([df1, df2], axis=1)
    df.to_csv(f"{file1.split('_')[0]}_clusters_avg_combined.csv", index=False)


# Plot average results
def plot_results(avg_results, num_clusters):
    # Read the average results from the CSV file
    df = pd.read_csv(avg_results)
    df_melted = df.melt(id_vars=["num_clusters", "num_points"],
                        value_vars=["faiss_time_cpu", "faiss_time_gpu", "sklearn_time", "sw_time", "hw_time"],
                        var_name="Type", value_name="Time (μs)")
    
    # Rename "Type" values for clearer labels
    df_melted["Type"] = df_melted["Type"].replace({"faiss_time_cpu": "Faiss Time (CPU)", "faiss_time_gpu": "Faiss Time (GPU)", "sklearn_time": "Sklearn Time",
                                                    "sw_time": "Software time", "hw_time": "Hardware time"})

    plt.figure(figsize=(10, 6))
    sns.lineplot(data=df_melted, x="num_points", y="Time (μs)", style="Type", markers=True, hue="Type")

    plt.xscale("log")
    plt.yscale("log")
    plt.xlabel("Number of Points (log 2 scale)", fontsize=12)
    plt.ylabel("Time (μs, log scale)", fontsize=12)
    plt.title(f"{num_clusters} Clusters", fontsize=14)
    plt.legend()

    plt.savefig(f"{num_clusters}_clusters.png")
    plt.savefig(f"{num_clusters}_clusters.pdf")

    plt.show()
    plt.close()
        

def average_aie_time(files):
    combined_df = pd.concat([read_csv(file) for file in files])
    combined_df = combined_df.groupby(["num_clusters", "num_points"]).mean().reset_index()
    combined_df_melted = combined_df.melt(id_vars=["num_clusters", "num_points"],
                                          value_vars=["sw_time", "hw_time"],
                                          var_name="Type", value_name="Time (μs)")

    # Rename "Type" values for clearer labels
    combined_df_melted["Type"] = combined_df_melted["Type"].replace({"sw_time": "Software time", "hw_time": "Hardware time"})
    
    for cluster in combined_df_melted["num_clusters"].unique():
        combined_df[combined_df["num_clusters"] == cluster].to_csv(f"{cluster}_clusters_avg_aie.csv", index=False)


def combine_results(output_file, csv_file):
    with open(output_file, 'r') as f:
        output_lines = f.readlines()

    with open(csv_file, 'r') as f:
        csv_lines = f.readlines()

    data = []
    for i, line in enumerate(output_lines):
        values = output_lines[i].strip().strip().split(',')
        num_clusters = int(values[0])
        num_points = int(values[1])
        hw_result = [float(values[2]), float(values[3])]

        # Append the cluster data from the csv file
        csv_data = csv_lines[i].strip().split(',')
        if int(csv_data[0]) == num_clusters:
            faiss_x, faiss_y = csv_data[2].replace('[', '').replace(']', '').split()
            scikit_x, scikit_y = csv_data[4].replace('[', '').replace(']', '').split()

            faiss_cpu = [float(faiss_x), float(faiss_y)]
            scikit = [float(scikit_x), float(scikit_y)]

            data.append([num_clusters, num_points, hw_result, faiss_cpu, scikit])


    # Create DataFrame with column names
    df = pd.DataFrame(data, columns=['num_clusters', 'num_points', 'hw', 'faiss', 'scikit'])
    df.to_csv("combined_results.csv", index=False)

# Function to calculate absolute difference for each dimension
def absolute_difference(coord1, coord2):
    return np.abs(np.array(coord1) - np.array(coord2))


def euclidean_distance(x1, x2, y1, y2):
    return np.sqrt((x1 - x2) ** 2 + (y1 - y2) ** 2)

def check_results(file):
    # Initialize accumulators for differences
    differences_hw_faiss = []
    differences_hw_scikit = []
    differences_faiss_scikit = []
    euclidean_distances_hw_faiss = []
    euclidean_distances_hw_scikit = []
    euclidean_distances_faiss_scikit = []
    configs = []

    with open(file, 'r') as file:
        reader = csv.DictReader(file)
        for row in reader:
            # Parse coordinates
            hw = eval(row["hw"])
            faiss = eval(row["faiss"])
            scikit = eval(row["scikit"])

            # Compute differences for each dimension
            differences_hw_faiss.append(absolute_difference(hw, faiss))
            differences_hw_scikit.append(absolute_difference(hw, scikit))
            differences_faiss_scikit.append(absolute_difference(faiss, scikit))

            # Compute euclidean distances
            euclidean_distances_hw_faiss.append(euclidean_distance(hw[0], faiss[0], hw[1], faiss[1]))
            euclidean_distances_hw_scikit.append(euclidean_distance(hw[0], scikit[0], hw[1], scikit[1]))
            euclidean_distances_faiss_scikit.append(euclidean_distance(faiss[0], scikit[0], faiss[1], scikit[1]))

            # Store configuration for tracking
            configs.append({
                "num_clusters": row["num_clusters"],
                "num_points": row["num_points"],
                "hw": hw,
                "faiss": faiss,
                "scikit": scikit,
            })

    # Find max differences and their configurations
    max_hw_faiss_idx = np.argmax([sum(diff) for diff in differences_hw_faiss])
    max_hw_scikit_idx = np.argmax([sum(diff) for diff in differences_hw_scikit])
    max_faiss_scikit_idx = np.argmax([sum(diff) for diff in differences_faiss_scikit])

    max_hw_faiss_diff = differences_hw_faiss[max_hw_faiss_idx]
    max_hw_scikit_diff = differences_hw_scikit[max_hw_scikit_idx]
    max_faiss_scikit_diff = differences_faiss_scikit[max_faiss_scikit_idx]

     # Calculate averages
    avg_hw_faiss = sum(differences_hw_faiss) / len(differences_hw_faiss)
    avg_hw_scikit = sum(differences_hw_scikit) / len(differences_hw_scikit)
    avg_faiss_scikit = sum(differences_faiss_scikit) / len(differences_faiss_scikit)

    #Average euclidean distances
    avg_euclidean_hw_faiss = sum(euclidean_distances_hw_faiss) / len(euclidean_distances_hw_faiss)
    avg_euclidean_hw_scikit = sum(euclidean_distances_hw_scikit) / len(euclidean_distances_hw_scikit)
    avg_euclidean_faiss_scikit = sum(euclidean_distances_faiss_scikit) / len(euclidean_distances_faiss_scikit)

    print(f"Average Euclidean Distance HW-FAISS: {avg_euclidean_hw_faiss}")
    print(f"Max Euclidean Distance HW-FAISS: {max(euclidean_distances_hw_faiss)}\n")
    print(f"Average Euclidean Distance HW-SCIKIT: {avg_euclidean_hw_scikit}")
    print(f"Max Euclidean Distance HW-SCIKIT: {max(euclidean_distances_hw_scikit)}\n")
    print(f"Average Euclidean Distance FAISS-SCIKIT: {avg_euclidean_faiss_scikit}")
    print(f"Max Euclidean Distance FAISS-SCIKIT: {max(euclidean_distances_faiss_scikit)}\n")


    print(f"Configuration with Max HW-FAISS Difference:")
    print(f"HW: {configs[max_hw_faiss_idx]['hw']}, FAISS: {configs[max_hw_faiss_idx]['faiss']}")
    print(f"Max Difference (x1, x2): {max_hw_faiss_diff}\n")
    print(f"Average Difference: {avg_hw_faiss}\n")

    print(f"Configuration with Max HW-SCIKIT Difference:")
    print(f"HW: {configs[max_hw_scikit_idx]['hw']}, SCIKIT: {configs[max_hw_scikit_idx]['scikit']}")
    print(f"Difference (x1, x2): {max_hw_scikit_diff}\n")
    print(f"Average Difference: {avg_hw_scikit}\n")

    print(f"Configuration with Max FAISS-SCIKIT Difference:")
    print(f"FAISS: {configs[max_faiss_scikit_idx]['faiss']}, SCIKIT: {configs[max_faiss_scikit_idx]['scikit']}")
    print(f"Max Difference (x1, x2): {max_faiss_scikit_diff}\n")
    print(f"Average Difference: {avg_faiss_scikit}\n")        
        

def main():
    # Read results of other implementations from file and compute average time for each number of clusters
    results = "results.csv"
    average_time(results)

    # Read AIE results from file and compute average time for each number of clusters
    aie_files = ["time.csv"]
    average_aie_time(aie_files)

    # Plot average results
    for cluster in versions:
        concat_files(f"{cluster}_clusters_avg.csv", f"{cluster}_clusters_avg_aie.csv")
        # plot_results(f"{cluster}_clusters_avg_combined.csv", cluster)

        os.remove(f"{cluster}_clusters_avg.csv")
        os.remove(f"{cluster}_clusters_avg_aie.csv")
    
    # Read the output file and combine it with the json file
    output_file = "output.csv"
    csv_file = "clusters.csv"
    combine_results(output_file, csv_file)

    # Calculate the difference between the software, hardware and faiss_cpu results
    check_results("combined_results.csv")


if __name__ == "__main__":
    main()