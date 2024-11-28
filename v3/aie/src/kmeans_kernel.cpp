#include "kmeans_kernel.h"
#include "common.h"
#include "aie_api/aie.hpp"
#include "aie_api/aie_adf.hpp"
#include "aie_api/utils.hpp"

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
        float x_accum = this->x * this->numPoints + point.x;
        float y_accum = this->y * this->numPoints + point.y;

        this->numPoints++;

        this->x = x_accum / this->numPoints;
        this->y = y_accum / this->numPoints;
    }
};

aie::vector<float, MAX_CLUSTERS> euclidean_distance(Cluster *clusters, int32_t num_clusters, Point point);
int32_t assignment_function(aie::vector<float, MAX_CLUSTERS> distances, int32_t num_clusters);

void kmeans_function(input_stream<float> *restrict input, output_stream<float> *restrict output)
{
    aie::vector<float, 8> val_in = aie::zeros<float, 8>();

    // Read the number of clusters and points
    val_in = readincr_v<8>(input);
    int32_t num_clusters = (int32_t) val_in[0];
    int32_t num_points = (int32_t) val_in[1];

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

    aie::vector<float, MAX_CLUSTERS> distances = aie::zeros<float, MAX_CLUSTERS>();
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

        // Compute the algorithm for each of the 4 points
        while (j < 4) {
            // Compute the euclidean distance between the point and all the clusters
            distances = euclidean_distance(clusters, num_clusters, points[j]);

            // Assign the point to the closest cluster and update the cluster coordinates
            cluster_index = assignment_function(distances, num_clusters);
            clusters[cluster_index].addPoint(points[j]);

            j++;
        }
    }

    aie::vector<float, MAX_CLUSTERS * 2> result = aie::zeros<float, MAX_CLUSTERS * 2>();

    // Write the coordinates of the clusters in the output stream
    for (size_t i = 0; i < num_clusters; i++)
    {
        result[i * 2] = clusters[i].x;
        result[i * 2 + 1] = clusters[i].y;
    }

    writeincr(output, result);
}

// Compute the euclidean distance between a point and all the clusters
aie::vector<float, MAX_CLUSTERS> euclidean_distance(Cluster *clusters, int32_t num_clusters, Point point)
{
    aie::vector<float, MAX_CLUSTERS> clusters_x = aie::zeros<float, MAX_CLUSTERS>();
    aie::vector<float, MAX_CLUSTERS> clusters_y = aie::zeros<float, MAX_CLUSTERS>();

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