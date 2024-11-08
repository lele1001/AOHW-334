#include <iostream>
#include <fstream>
#include <cstdlib>
#include <unistd.h>
#include <sys/stat.h>
#include <chrono>
#include <string>
#include <ctime>
#include <random>
#include "experimental/xrt_kernel.h"
#include "experimental/xrt_uuid.h"
#include "math.h"
#include "../common/common.h"

// For hw emulation, run in sw directory: source ./setup_emu.sh -s on
#define DEVICE_ID 0

// every top function input that must be passed from the host to the kernel must have a unique index starting from 0
// args indexes for setup_aie kernel
#define arg_setup_aie_num_clusters 0
#define arg_setup_aie_num_points 1
#define arg_setup_aie_input 2

// args indexes for sink_from_aie kernel
#define arg_sink_from_aie_output 1
#define arg_sink_from_aie_size 2

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
        std::cout << "Cluster (" << this->x << ", " << this->y << ") has " << this->numPoints << " points" << std::endl;
        int32_t x_accum = this->x * this->numPoints + point.x;
        int32_t y_accum = this->y * this->numPoints + point.y;

        this->numPoints++;

        this->x = x_accum / this->numPoints;
        this->y = y_accum / this->numPoints;

        std::cout << "Cluster (" << this->x << ", " << this->y << ") has " << this->numPoints << " points" << std::endl << std::endl;
    }
};

bool get_xclbin_path(std::string &xclbin_file);
std::ostream &bold_on(std::ostream &os);
std::ostream &bold_off(std::ostream &os);

// Print the output of the software
void printCluster(const std::vector<Cluster> &output)
{
    for (size_t i = 0; i < output.size(); i++)
    {
        std::cout << "Cluster (" << output[i].x << ", " << output[i].y << ") ";
    }

    std::cout << std::endl;
}

// Check the results
int32_t checkResult(const std::vector<Cluster> &sw_output, const std::vector<Cluster> &hw_output, int32_t num_clusters)
{
    std::vector<bool> matched(num_clusters, false);

    // Check if the clusters of the software and hardware match
    for (size_t i = 0; i < num_clusters; i++)
    {
        // Each cluster has 2 coordinates (x, y) in the output buffer
        for (size_t j = 0; j < num_clusters; j++)
        {
            if (!matched[j] && (sw_output[i].x == hw_output[j].x && sw_output[i].y == hw_output[j].y))
            {
                matched[j] = true;
            }
        }
    }

    // Check if all the clusters have been matched
    for (size_t i = 0; i < matched.size(); i++)
    {
        if (!matched[i])
        {
            std::cout << "Error: The cluster " << i << " does not match" << std::endl;
            return EXIT_FAILURE;
        }
    }

    std::cout << "All the clusters match" << std::endl;
    return EXIT_SUCCESS;
}

std::vector<Cluster> k_means(const std::vector<int32_t> &clusters_input, const std::vector<int32_t> &points_input, int32_t num_clusters, int32_t num_points)
{
    std::vector<Cluster> clusters(num_clusters);

    // Read the coordinates of the clusters
    for (size_t i = 0; i < num_clusters; i++)
    {
        clusters[i] = Cluster(clusters_input[i * 2], clusters_input[i * 2 + 1]);
    }

    // K-Means algorithm
    for (size_t i = 0; i < num_points; i ++)
    {
        Point point = Point(points_input[i * 2], points_input[i * 2 + 1]);
        std::vector<int32_t> distances(num_clusters, 0);

        std::cout << "Point: (" << point.x << ", " << point.y << ")" << std::endl;

        // Calculate the distance between the point and each cluster
        for (size_t j = 0; j < num_clusters; j++)
        {
            int32_t x_diff = clusters[j].x - point.x;
            int32_t y_diff = clusters[j].y - point.y;
            distances[j] = std::pow(x_diff, 2) + std::pow(y_diff, 2);
            // std::cout << "Distance to cluster " << j << ": " << distances[j] << std::endl;
        }

        // Assign the point to the nearest cluster
        if (distances.size() > 0)
        {
            auto min_iter = std::min_element(distances.begin(), distances.end());
            int32_t min_distance = *min_iter;
            int cluster_index = std::distance(distances.begin(), min_iter);
        }
        else 
        {
            std::cout << "Error: The distances vector is empty" << std::endl;
            return nullptr;
        }

        // Update the cluster coordinates
        if (cluster_index != -1 && cluster_index < num_clusters)
        {
            clusters[cluster_index].addPoint(point);
            std::cout << "Point assigned to cluster " << cluster_index << " with distance " << min_distance << std::endl;
        }
        else
        {
            std::cout << "Error: The cluster index is out of bounds" << std::endl;
        }
    }

    return clusters;
}

bool checkConstraints(int num_clusters, int num_points)
{
    if (num_clusters % 4 != 0)
    {
        std::cout << "Error: The number of clusters must be a multiple of 4" << std::endl;
        return false;
    }

    if (num_clusters > MAX_CLUSTERS)
    {
        std::cout << "Error: The number of clusters must be less than or equal to 8" << std::endl;
        return false;
    }

    if (num_points % 4 != 0)
    {
        std::cout << "Error: The number of points must be a multiple of 4" << std::endl;
        return false;
    }

    return true;
}

int main(int argc, char *argv[])
{
    int num_clusters = 4, num_points = 8;

    // std::cout << "Enter the number of clusters: ";
    // std::cin >> num_clusters;

    // std::cout << "Enter the number of points: ";
    // std::cin >> num_points;

    if (!checkConstraints(num_clusters, num_points))
    {
        return EXIT_FAILURE;
    }

    int input_size = (num_clusters + num_points) * 2;
    int output_size = num_clusters * 2;

    std::vector<int32_t> clusters_buffer(num_clusters * 2);
    std::vector<int32_t> points_buffer(num_points * 2);
    std::vector<int32_t> input_buffer(input_size);
    std::vector<int32_t> output_buffer(output_size);

    std::vector<Cluster> sw_result(num_clusters);
    std::vector<Cluster> hw_result(num_clusters);


    // Generate random coordinates for points and clusters using random number generator
    std::mt19937 rng(static_cast<unsigned int>(time(nullptr)));
    std::uniform_int_distribution<int32_t> dist(-5, 5);

    // Generate random coordinates for clusters
    for (size_t i = 0; i < num_clusters; i++)
    {
        clusters_buffer[i * 2] = dist(rng);
        clusters_buffer[i * 2 + 1] = dist(rng);
        std::cout << "Cluster " << i << ": (" << clusters_buffer[i * 2] << ", " << clusters_buffer[i * 2 + 1] << ")\t";

        // Copy the cluster coordinates to the input buffer
        input_buffer[i * 2] = clusters_buffer[i * 2];
        input_buffer[i * 2 + 1] = clusters_buffer[i * 2 + 1];
    }

    std::cout << std::endl;

    // Generate random coordinates for points
    for (size_t i = 0; i < num_points; i++)
    {
        points_buffer[i * 2] = dist(rng);
        points_buffer[i * 2 + 1] = dist(rng);
        std::cout << "Point " << i << ": (" << points_buffer[i * 2] << ", " << points_buffer[i * 2 + 1] << ")\t";

        // Copy the point coordinates to the input buffer
        input_buffer[(num_clusters + i) * 2] = points_buffer[i * 2];
        input_buffer[(num_clusters + i) * 2 + 1] = points_buffer[i * 2 + 1];
    }

    std::cout << std::endl << std::endl;
    //------------------------------------------------LOADING XCLBIN------------------------------------------
    std::string xclbin_file;
    if (!get_xclbin_path(xclbin_file))
    {
        return EXIT_FAILURE;
    }

    // Load xclbin
    std::cout << "1. Loading bitstream (" << xclbin_file << ")... ";
    xrt::device device = xrt::device(DEVICE_ID);
    xrt::uuid xclbin_uuid = device.load_xclbin(xclbin_file);
    std::cout << "Done" << std::endl;

    //----------------------------------------------INITIALIZING THE BOARD------------------------------------------
    // create kernel objects
    xrt::kernel krnl_setup_aie = xrt::kernel(device, xclbin_uuid, "setup_aie");
    xrt::kernel krnl_sink_from_aie = xrt::kernel(device, xclbin_uuid, "sink_from_aie");

    // get memory bank groups for device buffer - required for axi master input/ouput
    xrtMemoryGroup bank_output = krnl_sink_from_aie.group_id(arg_sink_from_aie_output);
    xrtMemoryGroup bank_input = krnl_setup_aie.group_id(arg_setup_aie_input);

    // create device buffers - if you have to load some data, here they are
    xrt::bo buffer_setup_aie = xrt::bo(device, input_size * sizeof(int32_t), xrt::bo::flags::normal, bank_input);
    xrt::bo buffer_sink_from_aie = xrt::bo(device, output_size * sizeof(int32_t), xrt::bo::flags::normal, bank_output);

    // create runner instances
    xrt::run run_setup_aie = xrt::run(krnl_setup_aie);
    xrt::run run_sink_from_aie = xrt::run(krnl_sink_from_aie);

    // set setup_aie kernel arguments
    run_setup_aie.set_arg(arg_setup_aie_num_clusters, num_clusters);
    run_setup_aie.set_arg(arg_setup_aie_num_points, num_points);
    run_setup_aie.set_arg(arg_setup_aie_input, buffer_setup_aie);

    // set sink_from_aie kernel arguments
    run_sink_from_aie.set_arg(arg_sink_from_aie_output, buffer_sink_from_aie);
    run_sink_from_aie.set_arg(arg_sink_from_aie_size, num_clusters);

    // write data into the buffer
    buffer_setup_aie.write(input_buffer.data());
    buffer_setup_aie.sync(XCL_BO_SYNC_BO_TO_DEVICE);

    auto hw_start = std::chrono::high_resolution_clock::now();
    // run the kernel
    run_sink_from_aie.start();
    run_setup_aie.start();

    // wait for the kernel to finish
    run_setup_aie.wait();
    run_sink_from_aie.wait();

    auto hw_end = std::chrono::high_resolution_clock::now();
    auto hw_exec_ms = (hw_end - hw_start) / std::chrono::microseconds(1);
    std::cout << "Hardware execution took " << hw_exec_ms << " microseconds." << std::endl;

    // read the output buffer
    buffer_sink_from_aie.sync(XCL_BO_SYNC_BO_FROM_DEVICE);
    buffer_sink_from_aie.read(output_buffer.data());

    for (size_t i = 0; i < num_clusters; i++)
    {
        hw_result[i] = Cluster(output_buffer[i * 2], output_buffer[i * 2 + 1]);
    }

    // print the output
    std::cout << "Hardware output: ";
    printCluster(hw_result);
    std::cout << std::endl;

    auto sw_start = std::chrono::high_resolution_clock::now();
    // run the kernel
    sw_result = k_means(clusters_buffer, points_buffer, num_clusters, num_points);

    auto sw_end = std::chrono::high_resolution_clock::now();
    auto sw_exec_ms = (sw_end - sw_start) / std::chrono::microseconds(1);

    std::cout << "Software execution took " << sw_exec_ms << " microseconds." << std::endl;

    // print the output
    std::cout << "Expected results: ";
    printCluster(sw_result);
    std::cout << std::endl;

    // ------------------------------------------------CHECKING THE RESULTS------------------------------------------
    return checkResult(sw_result, hw_result, num_clusters);
}

bool get_xclbin_path(std::string &xclbin_file)
{
    // Judge emulation mode accoring to env variable
    char *env_emu;
    if (env_emu = getenv("XCL_EMULATION_MODE"))
    {
        std::string mode(env_emu);

        if (mode == "hw_emu")
        {
            std::cout << "Program running in hardware emulation mode" << std::endl;
            xclbin_file = "overlay_hw_emu.xclbin";
        }
        else
        {
            std::cout << "[ERROR] Unsupported Emulation Mode: " << mode << std::endl;
            return false;
        }
    }
    else
    {
        std::cout << bold_on << "Program running in hardware mode" << bold_off << std::endl;
        xclbin_file = "overlay_hw.xclbin";
    }

    std::cout << std::endl
              << std::endl;
    return true;
}

std::ostream &bold_on(std::ostream &os)
{
    return os << "\e[1m";
}

std::ostream &bold_off(std::ostream &os)
{
    return os << "\e[0m";
}