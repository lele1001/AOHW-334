#include "kmeans_kernel.h"
#include "common.h"
#include "aie_api/aie.hpp"
#include "aie_api/aie_adf.hpp"
#include "aie_api/utils.hpp"

// Define the maximum number of clusters
#define MAX_CLUSTERS 8

struct Point
{
    float x;
    float y;

    Point(float x, float y)
    {
        this->x = x;
        this->y = y;
    }

    Point()
    {
        this->x = 0;
        this->y = 0;
    }
};

struct Cluster
{
    float x;
    float y;
    int32_t numPoints;

    Cluster(float x, float y)
    {
        this->x = x;
        this->y = y;
        this->numPoints = 1;
    }

    Cluster()
    {
        this->x = 0;
        this->y = 0;
        this->numPoints = 0;
    }

    void addPoint(Point point)
    {
        this->x = (this->x * this->numPoints + point.x) / (this->numPoints + 1);
        this->y = (this->y * this->numPoints + point.y) / (this->numPoints + 1);
        this->numPoints++;
    }
};

aie::vector<float, 8> euclidean_distance(Cluster *clusters, int32_t num_clusters, Point point);
int32_t assignment_function(aie::vector<float, 8> distances, int32_t num_clusters);

void kmeans_function(input_stream<float> *restrict input, output_stream<float> *restrict output)
{
    aie::vector<float, 8> val_in = aie::zeros<float, 8>();

    // Read the number of clusters and points
    val_in = readincr_v<8>(input);
    int32_t num_clusters = (int32_t) val_in[0];
    int32_t num_points = (int32_t) val_in[1];

    Cluster clusters[MAX_CLUSTERS];
    Point points[4];
    int32_t i = 0, j = 0, k = 0;

    // Read the coordinates of the clusters
    for (i = 0; i < num_clusters; i += 4)
    {
        val_in = readincr_v<8>(input);
        clusters[i] = Cluster(val_in[0], val_in[1]);
        clusters[i + 1] = Cluster(val_in[2], val_in[3]);
        clusters[i + 2] = Cluster(val_in[4], val_in[5]);
        clusters[i + 3] = Cluster(val_in[6], val_in[7]);
    }

    aie::vector<float, 8> distances = aie::zeros<float, 8>();
    int32_t cluster_index = -1;

    for (i = 0; i < num_points; i += 4)
    {
        // Read the coordinates of the two points
        val_in = readincr_v<8>(input);
        points[0] = Point(val_in[0], val_in[1]);
        points[1] = Point(val_in[2], val_in[3]);
        points[2] = Point(val_in[4], val_in[5]);
        points[3] = Point(val_in[6], val_in[7]);

        j = 0;

        // Compute the algorithm for each point
        while (j < 4) {
            // Compute the euclidean distance between the point and all the clusters
            distances = euclidean_distance(clusters, num_clusters, points[j]);

            // Assign the point to the closest cluster and update the cluster coordinates
            cluster_index = assignment_function(distances, num_clusters);
            clusters[cluster_index].addPoint(points[j]);
            j++;
        }
    }

    // Write the coordinates of the clusters in the output stream
    for (i = 0; i < num_clusters; i++)
    {
        writeincr(output, clusters[i].x);
        writeincr(output, clusters[i].y);
    }
}

// Compute the euclidean distance between a point and all the clusters
aie::vector<float, 8> euclidean_distance(Cluster *clusters, int32_t num_clusters, Point point)
{
    aie::vector<float, 8> clusters_x = aie::zeros<float, 8>();
    aie::vector<float, 8> clusters_y = aie::zeros<float, 8>();

    aie::vector<float, 8> diff = aie::zeros<float, 8>();

    aie::vector<float, 8> dist_x = aie::zeros<float, 8>();
    aie::vector<float, 8> dist_y = aie::zeros<float, 8>();

    for (int32_t i = 0; i < num_clusters; i++)
    {
        clusters_x[i] = clusters[i].x;
        clusters_y[i] = clusters[i].y;
    }

    // diff = aie::sub(clusters_coords, point.x);
    diff = aie::sub(clusters_x, point.x);
    dist_x = fpmul(diff, diff);

    diff = aie::sub(clusters_y, point.y);
    dist_y = fpmul(diff, diff);

    aie::vector<float, 8> distances = fpadd(dist_x, dist_y);
    return distances;
}

// Return the index of the cluster with the minimum distance from the point
int32_t assignment_function(aie::vector<float, 8> distances, int32_t num_clusters)
{
    // Fill the remaining distances with INT32_MAX
    for (int32_t i = num_clusters; i < MAX_CLUSTERS; i++)
    {
        distances[i] = __FLT_MAX__;
    }

    float min_dist = aie::reduce_min(distances);
    // std::cout << "Min distance: " << min_dist << std::endl;

    for (int32_t i = 0; i < num_clusters; i++)
    {
        if (distances[i] == min_dist)
        {
            return i;
        }
    }

    return -1;
}