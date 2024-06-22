#include "kmeans_kernel.h"
#include "common.h"
#include "aie_api/aie.hpp"
#include "aie_api/aie_adf.hpp"
#include "aie_api/utils.hpp"
#include "point.h"
#include "cluster.h"

// Define the maximum number of points and clusters
#define NUM_POINTS 100
#define NUM_CLUSTERS 4

aie::vector<int, 4> euclidean_distance(Cluster *clusters, int num_clusters, Point point);
int assignment_function(aie::vector<int, 4> distances, Point point, Cluster *clusters, int num_clusters);

void kmeans_function(input_stream<int32> *restrict input, output_stream<int32> *restrict output)
{
    // Read the number of loops, clusters and points
    int loops = readincr(input);
    int num_clusters = readincr(input);
    int num_points = readincr(input);

    if (num_points > NUM_POINTS)
    {
        std::cout << "Number of points exceeds the maximum limit" << std::endl;
        return;
    }
    else if (num_clusters > NUM_CLUSTERS)
    {
        std::cout << "Number of clusters exceeds the maximum limit" << std::endl;
        return;
    }

    Cluster clusters[NUM_CLUSTERS];
    Point points[NUM_POINTS];

    int i, j = 0, k = 0;
    aie::vector<int, 4> coords;

    // Read the coordinates of the points and clusters
    for (i = 0; i < loops; i++)
    {
        coords = readincr_v<4>(input);
        std::cout << "Coords: " << coords[0] << ", " << coords[1] << ", " << coords[2] << ", " << coords[3] << std::endl;

        if (i < num_points / 2)
        {
            points[j] = Point(coords[0], coords[1]);
            points[j + 1] = Point(coords[2], coords[3]);
            std::cout << "Point " << j << " coordinates are (" << points[j].getX() << ", " << points[j].getY() << ")" << std::endl;
            j += 2;
        }
        else 
        {
            clusters[k] = Cluster(coords[0], coords[1]);
            clusters[k + 1] = Cluster(coords[2], coords[3]);
            std::cout << "Cluster " << k << " coordinates are (" << clusters[k].getX() << ", " << clusters[k].getY() << ")" << std::endl;
            k += 2;
        }
    }

    aie::vector<int, 4> distances;
    int cluster_index = -1;

    for (i = 0; i < num_points; i++)
    {
        // Compute the euclidean distance between the point and all the clusters
        distances = euclidean_distance(clusters, num_clusters, points[i]);

        // Assign the point to the closest cluster
        cluster_index = assignment_function(distances, points[i], clusters, num_clusters);
        points[i].setCluster(cluster_index);
        clusters[cluster_index].addPoint(points[i]);
        std::cout << "Point (" << points[i].getX() << ", " << points[i].getY() << ") assigned to cluster " << cluster_index << std::endl;

        // Update the cluster coordinates
        clusters[cluster_index].updateCoordinates();
        std::cout << "Cluster " << cluster_index << " coordinates updated to (" << clusters[cluster_index].getX() << ", " << clusters[cluster_index].getY() << ")" << std::endl;
    }

    // Write the coordinates of the clusters in the output stream
    aie::vector<int, 4> result;

    for (i = 0; i < num_clusters; i++)
    {
        result[0] = clusters[i].getX();
        result[1] = clusters[i].getY();
    }

    writeincr(output, result);
}

// Compute the euclidean distance between a point and all the clusters
aie::vector<int, 4> euclidean_distance(Cluster *clusters, int num_clusters, Point point)
{
    aie::vector<int, 4> clusters_coords;
    aie::vector<int, 4> diff;

    aie::accum<acc64, 4> dist_x;
    aie::accum<acc64, 4> dist_y;
    int i;

    for (i = 0; i < num_clusters; i++)
    {
        clusters_coords[i] = clusters[i].getX();
    }

    diff = aie::sub(clusters_coords, point.getX());
    dist_x = aie::mul(diff, diff);

    for (i = 0; i < num_clusters; i++)
    {
        clusters_coords[i] = clusters[i].getY();
    }

    diff = aie::sub(clusters_coords, point.getY());
    dist_y = aie::mul(diff, diff);

    aie::vector<int, 4> distances = aie::add(dist_x.to_vector<int>(), dist_y.to_vector<int>());
    return distances;
}

// Assign the point to the closest cluster
int assignment_function(aie::vector<int, 4> distances, Point point, Cluster *clusters, int num_clusters)
{
    int i;
    
    for (i = num_clusters; i < 4; i++)
    {
        distances[i] = __INT32_MAX__;
    }

    int min_dist = aie::reduce_min(distances);
    std::cout << "Min distance: " << min_dist << std::endl;

    for (int i = 0; i < num_clusters; i++)
    {
        if (distances[i] == min_dist)
        {
            std::cout << "Distance between point (" << point.getX() << ", " << point.getY() << ") and cluster (" << clusters[i].getX() << ", " << clusters[i].getY() << ") is " << min_dist << std::endl;
            return i;
        }
    }

    return -1;
}