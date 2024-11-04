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

aie::vector<int32_t, 16> euclidean_distance(Cluster *clusters, int32_t num_clusters, Point point);
int32_t assignment_function(aie::vector<int32_t, 16> distances, int32_t num_clusters);

void kmeans_function(input_stream<int32_t> *restrict input, output_stream<int32_t> *restrict output)
{
    aie::vector<int32_t, 8> val_in = aie::zeros<int32_t, 8>();

    // Read the number of clusters and points
    val_in = readincr_v<8>(input);
    int32_t num_clusters = val_in[0];
    int32_t num_points = val_in[1];

    Cluster clusters[MAX_CLUSTERS];
    Point points[4];

    // Read the coordinates of the clusters, assuming that the number of clusters is a multiple of 4
    for (size_t i = 0; i < num_clusters / 4; i++)
    {
        val_in = readincr_v<8>(input);
        clusters[i * 4] = Cluster(val_in[0], val_in[1]);
        clusters[i * 4 + 1] = Cluster(val_in[2], val_in[3]);
        clusters[i * 4 + 2] = Cluster(val_in[4], val_in[5]);
        clusters[i * 4 + 3] = Cluster(val_in[6], val_in[7]);

        // std::cout << "Cluster " << i * 4 << ": (" << clusters[i * 4].x << ", " << clusters[i * 4].y << ")" << std::endl;
        // std::cout << "Cluster " << i * 4 + 1 << ": (" << clusters[i * 4 + 1].x << ", " << clusters[i * 4 + 1].y << ")" << std::endl;
        // std::cout << "Cluster " << i * 4 + 2 << ": (" << clusters[i * 4 + 2].x << ", " << clusters[i * 4 + 2].y << ")" << std::endl;
        // std::cout << "Cluster " << i * 4 + 3 << ": (" << clusters[i * 4 + 3].x << ", " << clusters[i * 4 + 3].y << ")" << std::endl;
    }

    aie::vector<int32_t, 16> distances = aie::zeros<int32_t, 16>();
    int32_t cluster_index = -1;

    for (size_t i = 0; i < num_points; i += 4)
    {
        // Read the coordinates of the points, assuming that the number of points is a multiple of 4
        val_in = readincr_v<8>(input);
        points[0] = Point(val_in[0], val_in[1]);
        points[1] = Point(val_in[2], val_in[3]);
        points[2] = Point(val_in[4], val_in[5]);
        points[3] = Point(val_in[6], val_in[7]);

        // std::cout << "Point " << i << ": (" << points[0].x << ", " << points[0].y << ")" << std::endl;
        // std::cout << "Point " << i + 1 << ": (" << points[1].x << ", " << points[1].y << ")" << std::endl;
        // std::cout << "Point " << i + 2 << ": (" << points[2].x << ", " << points[2].y << ")" << std::endl;
        // std::cout << "Point " << i + 3 << ": (" << points[3].x << ", " << points[3].y << ")" << std::endl;

        size_t j = 0;

        // Compute the algorithm for each point
        while (j < 4)
        {
            // Compute the euclidean distance between the point and all the clusters
            distances = euclidean_distance(clusters, num_clusters, points[j]);

            // Assign the point to the closest cluster and update the cluster coordinates
            cluster_index = assignment_function(distances, num_clusters);
            clusters[cluster_index].addPoint(points[j]);

            j++;
        }
    }

    aie::vector<int32_t, 32> result = aie::zeros<int32_t, 32>();

    // Write the coordinates of the clusters in the output stream
    for (size_t i = 0; i < num_clusters; i++)
    {
        result[i * 2] = clusters[i].x;
        result[i * 2 + 1] = clusters[i].y;
    }

    writeincr(output, result);
}

// Compute the euclidean distance between a point and all the clusters
aie::vector<int32_t, 16> euclidean_distance(Cluster *clusters, int32_t num_clusters, Point point)
{
    aie::vector<int32_t, 16> clusters_coords = aie::zeros<int32_t, 16>();
    aie::vector<int32_t, 16> diff = aie::zeros<int32_t, 16>();

    aie::accum<acc64, 16> dist_x = aie::zeros<acc64, 16>();
    aie::accum<acc64, 16> dist_y = aie::zeros<acc64, 16>();

    for (size_t i = 0; i < num_clusters; i++)
    {
        clusters_coords[i] = clusters[i].x;
    }

    diff = aie::sub(clusters_coords, point.x);
    dist_x = aie::mul(diff, diff);

    for (size_t i = 0; i < num_clusters; i++)
    {
        clusters_coords[i] = clusters[i].y;
    }

    diff = aie::sub(clusters_coords, point.y);
    dist_y = aie::mul(diff, diff);

    aie::vector<int32_t, 16> distances = aie::add(dist_x.to_vector<int32_t>(), dist_y.to_vector<int32_t>());
    return distances;
}

// Return the index of the cluster with the minimum distance from the point
int32_t assignment_function(aie::vector<int32_t, 16> distances, int32_t num_clusters)
{
    // Fill the remaining distances with INT32_MAX
    for (size_t i = num_clusters; i < MAX_CLUSTERS; i++)
    {
        distances[i] = __INT32_MAX__;
    }

    int32_t min_dist = aie::reduce_min(distances);

    for (size_t i = 0; i < num_clusters; i++)
    {
        std::cout << "Distance " << i << ": " << distances[i] << std::endl;
        if (distances[i] == min_dist)
        {
            std::cout << "Point assigned to cluster " << i << " with distance " << min_dist << std::endl;
            return i;
        }
    }

    return -1;
}