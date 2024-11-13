import matplotlib.pyplot as plt
import pandas as pd
import seaborn as sns

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
        num_points = int(values[1].split('^')[0]) ** int(values[1].split('^')[1])
        data.append([int(values[0]), num_points, int(values[2]), int(values[3]), int(values[4])])

    # Create DataFrame with column names
    df = pd.DataFrame(data, columns=['num_clusters', 'num_points', 'sw_time', 'hw_time', 'timestamp'])
    return df

# Create a scatter plot of the results and save it to a jpeg file
def plot_results(df_melted, num_clusters, figsize):

    # Plot using seaborn
    plt.figure(figsize=figsize)
    sns.lineplot(data=df_melted, x="num_points", y="Time (μs)", style="Type", markers=True)
    
    plt.xscale("log")
    plt.yscale("log")
    plt.xlabel("Number of Points (log 2 scale)")
    plt.ylabel("Time (μs, log scale)")

    # Set x-axis ticks to powers of 2
    x_ticks = [2**i for i in range(2, 27, 4)]
    plt.xticks(x_ticks, [f"$2^{{{i}}}$" for i in range(2, 27, 4)])

    plt.title("Software and Hardware Time vs Number of Points")
    plt.legend()

    plt.grid(True, which="both", linestyle="--", lw=0.5)
    plt.savefig(f"{num_clusters}_clusters.png")
    plt.show()
    plt.close()

def main():
    # Read the CSV data into DataFrame
    df = read_csv('time.csv')

    # Melt the DataFrame for plotting
    df_melted = df.melt(id_vars=["num_clusters", "num_points", "timestamp"],
                        value_vars=["sw_time", "hw_time"],
                        var_name="Type", value_name="Time (μs)")

    # Rename "Type" values for clearer labels
    df_melted["Type"] = df_melted["Type"].replace({"sw_time": "Software time", "hw_time": "Hardware time"})

    # Plot the results
    for cluster in df_melted["num_clusters"].unique():
        plot_results(df_melted[df_melted["num_clusters"] == cluster], cluster, figsize=(18, 10))

if __name__ == '__main__':
    main()
