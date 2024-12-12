#include "kmeans_kernel.h"
#include "common.h"
#include "aie_api/aie.hpp"
#include "aie_api/aie_adf.hpp"
#include "aie_api/utils.hpp"

aie::vector<float, MAX_CLUSTERS> euclidean_distance(Cluster *clusters, int32_t num_clusters, Point point);
int32_t assignment_function(aie::vector<float, MAX_CLUSTERS> distances, int32_t num_clusters);

void kmeans_function(input_stream<int32_t> *restrict input, output_stream<float> *restrict output)
{
    // Read the number of clusters and points
    aie::vector<int, 8> val_in = readincr_v<8>(input);
    int32_t num_clusters = val_in[0];
    int32_t num_points = val_in[1];
    Cluster clusters[MAX_CLUSTERS];
    int32_t px, py;

    // Read the coordinates of the clusters, assuming that the number of clusters is a multiple of 4
    for (size_t i = 0; i < num_clusters / 4; i++)
    {
        val_in = readincr_v<8>(input);
        for (size_t j = 0; j < 4; j++)
        {
            px = val_in[j * 2];
            py = val_in[j * 2 + 1];
            clusters[i * 4 + j] = Cluster(static_cast<float>(px), static_cast<float>(py));
        }
    }

    aie::vector<float, MAX_CLUSTERS> distances;
    int32_t cluster_index = -1;

    for (size_t i = 0; i < num_points; i += 4)
    {
        // Read the coordinates of the points, assuming that the number of points is a multiple of 4
        val_in = readincr_v<8>(input);
        size_t j = 0;

        // Compute the algorithm for each of the 4 points
        while (j < 4) {
            px = val_in[j * 2];
            py = val_in[j * 2 + 1];
            Point point = Point(static_cast<float>(px), static_cast<float>(py));
            // std::cout << "Point " << j << ": (" << points[j].x << ", " << points[j].y << ")" << std::endl;

            // Compute the euclidean distance between the point and all the clusters
            distances = euclidean_distance(clusters, num_clusters, point);

            // Assign the point to the closest cluster and update the cluster coordinates
            cluster_index = assignment_function(distances, num_clusters);
            clusters[cluster_index].addPoint(point);

            j++;
        }
    }

    // Scale the cluster coordinates before writing to the output stream
    for (size_t i = 0; i < num_clusters; i++)
    {
        writeincr(output, clusters[i].x);
        writeincr(output, clusters[i].y);
    }
}

// Compute the euclidean distance between a point and all the clusters
aie::vector<float, MAX_CLUSTERS> euclidean_distance(Cluster *clusters, int32_t num_clusters, Point point)
{
    aie::vector<float, MAX_CLUSTERS> clusters_x, clusters_y;

    for (size_t i = 0; i < num_clusters; i++)
    {
        clusters_x[i] = clusters[i].x;
        clusters_y[i] = clusters[i].y;
    }

    aie::vector<float, MAX_CLUSTERS> diff_x = aie::sub(clusters_x, point.x);
    aie::vector<float, MAX_CLUSTERS> diff_y = aie::sub(clusters_y, point.y);

    aie::accum<accfloat, MAX_CLUSTERS> dist_x = aie::mul_square(diff_x);
    aie::accum<accfloat, MAX_CLUSTERS> dist_y = aie::mul_square(diff_y);

    aie::vector<float, MAX_CLUSTERS> distances = aie::add(dist_x.to_vector<float>(), dist_y.to_vector<float>());
    return distances;
}

// Return the index of the cluster with the minimum distance from the point
int32_t assignment_function(aie::vector<float, MAX_CLUSTERS> distances, int32_t num_clusters)
{
    // Fill the remaining distances with INT32_MAX
    for (size_t i = num_clusters; i < MAX_CLUSTERS; i++)
    {
        distances[i] = std::numeric_limits<float>::max();
    }

    float min_dist = aie::reduce_min(distances);

    for (size_t i = 0; i < num_clusters; i++)
    {
        if (distances[i] == min_dist)
        {
            return i;
        }
    }

    return -1;
}