#include "kmeans_kernel.h"
#include "common.h"
#include "aie_api/aie.hpp"
#include "aie_api/aie_adf.hpp"
#include "aie_api/utils.hpp"

struct Point
{
    int32_t x;
    int32_t y;

    Point(int32_t x, int32_t y)
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
    int32_t x;
    int32_t y;
    int32_t numPoints;

    Cluster(int32_t x, int32_t y)
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
        int32_t x_accum = this->x * this->numPoints + point.x;
        int32_t y_accum = this->y * this->numPoints + point.y;

        this->numPoints++;

        this->x = x_accum / this->numPoints;
        this->y = y_accum / this->numPoints;
    }
};

// Define the maximum number of points and clusters
#define MAX_CLUSTERS 8

aie::vector<int32_t, 8> euclidean_distance(Cluster *clusters, int32_t num_clusters, Point point);
int32_t assignment_function(aie::vector<int32_t, 8> distances, int32_t num_clusters);

void kmeans_function(input_stream<int32_t> *restrict input, output_stream<int32_t> *restrict output)
{
    int32_t loops = 0, num_clusters = 0, num_points = 0;
    aie::vector<int32_t, 4> val_in = aie::zeros<int32_t, 4>();

    // Read the number of loops, clusters and points
    val_in = readincr_v<4>(input);
    num_clusters = val_in[0];
    num_points = val_in[1];

    Cluster clusters[num_clusters];
    Point points[2];
    int32_t i = 0, j = 0, k = 0;

    // Read the coordinates of the clusters
    for (i = 0; i < num_clusters; i += 2)
    {
        val_in = readincr_v<4>(input);
        clusters[i] = Cluster(val_in[0], val_in[1]);
        clusters[i + 1] = Cluster(val_in[2], val_in[3]);
        
        // std::cout << "Cluster " << i << " coordinates are (" << clusters[i].getX() << ", " << clusters[i].getY() << ")" << std::endl;
        // std::cout << "Cluster " << i + 1 << " coordinates are (" << clusters[i + 1].getX() << ", " << clusters[i + 1].getY() << ")" << std::endl;
    }

    aie::vector<int32_t, 8> distances = aie::zeros<int32_t, 8>();
    int32_t cluster_index = -1;

    for (i = 0; i < num_points; i+= 2)
    {
        // Read the coordinates of the two points
        val_in = readincr_v<4>(input);
        points[0] = Point(val_in[0], val_in[1]);
        points[1] = Point(val_in[2], val_in[3]);
        j = 0;

        // Compute the algorithm for each point
        while (j < 2) {
            // Compute the euclidean distance between the point and all the clusters
            distances = euclidean_distance(clusters, num_clusters, points[j]);

            // Assign the point to the closest cluster and update the cluster coordinates
            cluster_index = assignment_function(distances, num_clusters);
            clusters[cluster_index].addPoint(points[j]);

            // std::cout << "Cluster " << cluster_index << " coordinates are (" << clusters[cluster_index].getX() << ", " << clusters[cluster_index].getY() << ")" << std::endl;
            j++;
        }
    }

    aie::vector<int32_t, 4> result = aie::zeros<int32_t, 4>();

    for (i = 0; i < num_clusters / 2; i += 2)
    {
        result[i] = clusters[i].x;
        result[i + 1] = clusters[i].y;
        result[i + 2] = clusters[i + 1].x;
        result[i + 3] = clusters[i + 1].y;

        writeincr(output, result);
    }    
}

// Compute the euclidean distance between a point and all the clusters
aie::vector<int32_t, 8> euclidean_distance(Cluster *clusters, int32_t num_clusters, Point point)
{
    aie::vector<int32_t, 8> clusters_coords = aie::zeros<int32_t, 8>();
    aie::vector<int32_t, 8> diff = aie::zeros<int32_t, 8>();

    aie::accum<acc64, 8> dist_x = aie::zeros<acc64, 8>();
    aie::accum<acc64, 8> dist_y = aie::zeros<acc64, 8>();
    int32_t i = 0;

    for (i = 0; i < num_clusters; i++)
    {
        clusters_coords[i] = clusters[i].x;
    }

    diff = aie::sub(clusters_coords, point.x);
    dist_x = aie::mul(diff, diff);

    for (i = 0; i < num_clusters; i++)
    {
        clusters_coords[i] = clusters[i].y;
    }

    diff = aie::sub(clusters_coords, point.y);
    dist_y = aie::mul(diff, diff);

    aie::vector<int32_t, 8> distances = aie::add(dist_x.to_vector<int32_t>(), dist_y.to_vector<int32_t>());
    return distances;
}

// Return the index of the cluster with the minimum distance from the point
int32_t assignment_function(aie::vector<int32_t, 8> distances, int32_t num_clusters)
{
    int32_t i = 0;

    // Fill the remaining distances with INT32_MAX
    for (i = num_clusters; i < MAX_CLUSTERS; i++)
    {
        distances[i] = __INT32_MAX__;
    }

    int32_t min_dist = aie::reduce_min(distances);
    // std::cout << "Min distance: " << min_dist << std::endl;

    for (i = 0; i < num_clusters; i++)
    {
        if (distances[i] == min_dist)
        {
            return i;
        }
    }

    return -1;
}