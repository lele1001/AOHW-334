import os
import matplotlib.pyplot as plt
import pandas as pd

# List of results files to analyze
# versions = ['v3-2AIE', 'v4-2AIE']
versions = ['v2-floats', 'v3-2AIE']
results = ['4_clusters_avg.csv', '8_clusters_avg.csv', '12_clusters_avg.csv', '16_clusters_avg.csv']
names = ['4 Clusters', '8 Clusters', '12 Clusters', '16 Clusters']

# List of colors for plotting
# colors_all = ['#98FB98', '#98BF64', '#228B22', '#234F1E', '#D1EAF0', '#82EEFD', '#0077B6', '#023E8A']
colors_all = ['#FFB6C1', '#FF69B4', '#FF1493', '#DB7093', '#98FB98', '#98BF64', '#228B22', '#234F1E']


def plot_combined_speedup(data, title):
    plt.figure(figsize=(10, 6))
    
    for (version, cluster_name), cluster_data in data.items():
        # color_idx = 0 if version == 'v3-2AIE' else 1
        color_idx = 0 if version == 'v2-floats' else 1

        # Plot each version-cluster pair
        plt.plot(
            cluster_data['num_points'], 
            cluster_data['speedup'], 
            color=colors_all[color_idx * len(names) + names.index(cluster_name)],
            marker='o', 
            label=f'{version.split("-")[0]} - {cluster_name}'
        )

    # Draw a horizontal line at y=1
    plt.axhline(y=1, color='red', linestyle='--', linewidth=0.8)

    # Graph configuration
    plt.xscale('log')
    plt.xlabel('Number of Points (log scale)', fontsize=12)
    plt.ylabel('Speedup (sw_time / hw_time)', fontsize=12)
    plt.title(f'Speedup Comparison ({title})', fontsize=14)
    plt.legend()
    plt.savefig(f"combined_speedup.pdf")
    plt.show()


def main():
    project_path = os.path.join(os.path.dirname(__file__), '..')
    combined_data = {}

    for result_file, cluster_name in zip(results, names):
        print(f"Analyzing {result_file} results")
        
        for version in versions:
            file_path = os.path.join(project_path, version, 'results', result_file)
            
            if not os.path.exists(file_path):
                print(f"File not found: {file_path}")
                continue

            # Read the CSV data into DataFrame
            df = pd.read_csv(file_path)
            df['speedup'] = df['sw_time'] / df['hw_time']

            # Store data keyed by version and cluster name
            combined_data[(version, cluster_name)] = df

    # Plot combined data
    plot_combined_speedup(combined_data, 'v2 - v3 and All Clusters')


if __name__ == '__main__':
    main()