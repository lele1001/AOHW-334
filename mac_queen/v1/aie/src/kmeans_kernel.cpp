#include "kmeans_kernel.h"
#include "common.h"
#include "aie_api/aie.hpp"
#include "aie_api/aie_adf.hpp"
#include "aie_api/utils.hpp"
#include "../common/point.h"
#include "../common/cluster.h"

aie::vector<int32_t, 8> euclidean_distance(Cluster *clusters, int32_t num_clusters, Point point);
int32_t nearest_cluster(aie::vector<int32_t, 8> distances, Point point, Cluster *clusters, int32_t num_clusters);

void kmeans_function(input_stream<int32_t> *restrict input, output_stream<int32_t> *restrict output)
{
    // Read the number of loops, clusters and points
    aie::vector<int32_t, 4> val_in = readincr_v<4>(input);
    int32_t loops = val_in[0];
    int32_t num_clusters = val_in[1];
    int32_t num_points = val_in[2];

    Cluster clusters[MAX_CLUSTERS];
    Point points[MAX_POINTS];
    int32_t j = 0, k = 0;

    // Read the coordinates of the points and clusters
    for (size_t i = 0; i < loops; i++)
    {
        val_in = readincr_v<4>(input);

        if (i < num_points / 2)
        {
            points[j + 0] = Point(val_in[0], val_in[1]);
            points[j + 1] = Point(val_in[2], val_in[3]);
            // std::cout << "Point " << j << " coordinates are (" << points[j].getX() << ", " << points[j].getY() << ")" << std::endl;
            j += 2;
        }
        else
        {
            clusters[k + 0] = Cluster(val_in[0], val_in[1]);
            clusters[k + 1] = Cluster(val_in[2], val_in[3]);
            // std::cout << "Cluster " << k << " coordinates are (" << clusters[k].getX() << ", " << clusters[k].getY() << ")" << std::endl;
            k += 2;
        }
    }

    aie::vector<int32_t, 8> distances = aie::zeros<int32_t, 8>();
    int32_t cluster_index = -1;

    for (size_t i = 0; i < num_points; i++)
    {
        // Compute the euclidean distance between the point and all the clusters
        distances = euclidean_distance(clusters, num_clusters, points[i]);

        // Assign the point to the closest cluster
        cluster_index = assignment_function(distances, points[i], clusters, num_clusters);
        clusters[cluster_index].addPoint(points[i]);
        // std::cout << "Point (" << points[i].getX() << ", " << points[i].getY() << ") assigned to cluster " << cluster_index << std::endl;

        // Update the cluster coordinates
        clusters[cluster_index].updateCoordinates();
        // std::cout << "Cluster " << cluster_index << " coordinates updated to (" << clusters[cluster_index].getX() << ", " << clusters[cluster_index].getY() << ")" << std::endl;
    }

    // Write the coordinates of the clusters in the output stream
    for (size_t i = 0; i < num_clusters; i++)
    {
        writeincr(output, clusters[i].getX());
        writeincr(output, clusters[i].getY());
    }
}

// Compute the euclidean distance between a point and all the clusters
aie::vector<int32_t, 8> euclidean_distance(Cluster *clusters, int32_t num_clusters, Point point)
{
    aie::vector<int32_t, 8> clusters_coords = aie::zeros<int32_t, 8>();

    for (size_t i = 0; i < num_clusters; i++)
    {
        clusters_coords[i] = clusters[i].getX();
    }

    aie::vector<int32_t, 8> diff = aie::sub(clusters_coords, point.getX());
    aie::accum<acc64, 8> dist_x = aie::mul(diff, diff);

    for (size_t i = 0; i < num_clusters; i++)
    {
        clusters_coords[i] = clusters[i].getY();
    }

    diff = aie::sub(clusters_coords, point.getY());
    aie::accum<acc64, 8> dist_y = aie::mul(diff, diff);

    aie::vector<int32_t, 8> distances = aie::add(dist_x.to_vector<int32_t>(), dist_y.to_vector<int32_t>());
    return distances;
}

// Assign the point to the closest cluster
int32_t assignment_function(aie::vector<int32_t, 8> distances, Point point, Cluster *clusters, int32_t num_clusters)
{
    for (size_t i = num_clusters; i < MAX_CLUSTERS; i++)
    {
        distances[i] = __INT32_MAX__;
    }

    int32_t min_dist = aie::reduce_min(distances);
    // std::cout << "Min distance: " << min_dist << std::endl;

    for (size_t i = 0; i < num_clusters; i++)
    {
        if (distances[i] == min_dist)
        {
            // std::cout << "Distance between point (" << point.getX() << ", " << point.getY() << ") and cluster (" << clusters[i].getX() << ", " << clusters[i].getY() << ") is " << min_dist << std::endl;
            return i;
        }
    }

    return -1;
}