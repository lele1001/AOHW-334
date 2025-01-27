import pandas as pd

def calculate_speedups(csv):
    # Load data from CSV files
    df = pd.read_csv(csv)

    # Calculate speedups
    df['sp_hw_fai_cpu'] = df['faiss_time_cpu'] / df['hw_time']
    df['sp_hw_fai_gpu'] = df['faiss_time_gpu'] / df['hw_time']
    df['sp_hw_scikit'] = df['sklearn_time'] / df['hw_time']

    # Calculate average speedup
    avg_speedup_1 = df['sp_hw_fai_cpu'].mean()
    avg_speedup_2 = df['sp_hw_fai_gpu'].mean()
    avg_speedup_3 = df['sp_hw_scikit'].mean()

    # Find the top-performing improvement
    max_speedup_row_1 = df.loc[df['sp_hw_fai_cpu'].idxmax()]
    top_clusters_1 = max_speedup_row_1['num_clusters']
    top_speedup_1 = max_speedup_row_1['sp_hw_fai_cpu']

    max_speedup_row_2 = df.loc[df['sp_hw_fai_gpu'].idxmax()]
    top_clusters_2 = max_speedup_row_2['num_clusters']
    top_speedup_2 = max_speedup_row_2['sp_hw_fai_gpu']

    max_speedup_row_3 = df.loc[df['sp_hw_scikit'].idxmax()]
    top_clusters_3 = max_speedup_row_3['num_clusters']
    top_speedup_3 = max_speedup_row_3['sp_hw_scikit']

    print(f"Top: {top_speedup_1},\t {top_speedup_2},\t {top_speedup_3}")

    df.to_csv("speedup_results.csv", index=False)

    return avg_speedup_1, avg_speedup_2, avg_speedup_3


if __name__ == "__main__":
    csv_path_1 = "avg.csv"
    avg_speedup_1, avg_speedup_2, avg_speedup_3 = calculate_speedups(csv_path_1)

    print(f"Avg: {avg_speedup_1},\t {avg_speedup_2},\t {avg_speedup_3}")