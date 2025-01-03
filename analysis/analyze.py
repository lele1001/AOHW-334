import os
import sys
import matplotlib.pyplot as plt
import pandas as pd

# List of results files to analyze
versions = ['v3', 'v4', 'v5']
results = ['4_clusters_avg.csv', '8_clusters_avg.csv', '12_clusters_avg.csv', '16_clusters_avg.csv']

# List of colors for plotting
colors = ['blue', 'green', 'red', 'orange', 'purple']            


# Plots speedup for multiple versions from a single result file.
def plot_speedup(data, result_file):
    plt.figure(figsize=(10, 6))

    for version, color in zip(versions, colors):
        # Plot speedup for the current version
        plt.plot(
            data[version]['num_points'], 
            data[version]['speedup'], 
            marker='o', 
            color=color, 
            label=f'Version {version}'
        )

    # Graph configuration
    plt.xscale('log')
    plt.xlabel('Number of Points (log scale)', fontsize=12)
    plt.ylabel('Speedup (sw_time / hw_time)', fontsize=12)
    plt.title(f'Speedup vs Number of Points ({result_file})', fontsize=14)
    plt.legend()
    plt.grid(True, which="both", linestyle="--", linewidth=0.5)
    plt.tight_layout()
    plt.show()
    plt.savefig(f"{result_file}.pdf")


def main():
    project_path = os.path.join(os.path.dirname(__file__), '..')

    for result_file in results:
        print(f"Analyzing {result_file} results")
        
        # Dictionary to store data for each version
        data = {}

        for version in versions:
            file_path = os.path.join(project_path, version, 'results', result_file)
            
            if not os.path.exists(file_path):
                print(f"File not found: {file_path}")
                continue

            # Read the CSV data into DataFrame
            df = pd.read_csv(file_path)
            df['speedup'] = df['sw_time'] / df['hw_time']
            data[version] = df

        plot_speedup(data, result_file)  


if __name__ == '__main__':
    main()