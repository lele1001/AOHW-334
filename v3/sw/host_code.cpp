#include <iostream>
#include <fstream>
#include <cstdlib>
#include <unistd.h>
#include <sys/stat.h>
#include <chrono>
#include <string>
#include <ctime>
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
        int32_t x_accum = this->x * this->numPoints + point.x;
        int32_t y_accum = this->y * this->numPoints + point.y;

        this->numPoints++;

        this->x = x_accum / this->numPoints;
        this->y = y_accum / this->numPoints;
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
    for (size_t i = 0; i < num_clusters; i ++)
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

std::vector<Cluster> k_means(const std::vector<int32_t> &input, int32_t num_clusters, int32_t num_points)
{
    std::vector<Cluster> clusters(num_clusters);
    int32_t idx = num_clusters * 2;

    // Read the coordinates of the clusters
    for (size_t i = 0; i < num_clusters; i ++)
    {
        clusters[i] = Cluster(input[i * 2], input[i * 2 + 1]);
    }

    // K-Means algorithm
    for (size_t i = 0; i < num_points; i++)
    {
        Point point = Point(input[idx], input[idx + 1]);
        std::vector<int32_t> distances(num_clusters, 0);

        // Calculate the distance between the point and each cluster
        for (size_t j = 0; j < num_clusters; j++)
        {
            int32_t x_diff = clusters[j].x - point.x;
            int32_t y_diff = clusters[j].y - point.y;
            distances[j] = x_diff * x_diff + y_diff * y_diff;
        }

        // Assign the point to the nearest cluster
        int32_t cluster_index = -1;
        int32_t min_distance = INT32_MAX;

        for (size_t j = 0; j < num_clusters; j++)
        {
            if (distances[j] < min_distance)
            {
                min_distance = distances[j];
                cluster_index = j;
            }
        }

        // Update the cluster coordinates
        clusters[cluster_index].addPoint(point);
        
        idx += 2;
    }

    return clusters;
}

bool checkConstraints(int num_clusters)
{
    if (num_clusters % 2 != 0)
    {
        std::cout << "Error: The number of clusters must be even" << std::endl;
        return false;
    }

    if (num_clusters > MAX_CLUSTERS)
    {
        std::cout << "Error: The number of clusters must be less than or equal to 8" << std::endl;
        return false;
    }

    return true;
}

int main(int argc, char *argv[])
{
    int num_clusters = 0, num_points = 0;

    std::cout << "Enter the number of clusters: ";
    std::cin >> num_clusters;

    std::cout << "Enter the number of points: ";
    std::cin >> num_points;

    std::cout << "Number of clusters: " << num_clusters << std::endl;
    std::cout << "Number of points: " << num_points << std::endl;

    std::vector<int32_t> clusters_buffer(num_clusters * 2);
    std::vector<int32_t> points_buffer(num_points * 2);
    std::vector<int32_t> output_buffer(num_clusters * 2);

    std::vector<Cluster> sw_result;
    std::vector<Cluster> hw_result;

    std::srand(time(nullptr));

        // Generate random coordinates for points and clusters
        for (size_t i = 0; i < num_clusters; i++)
        {
            clusters_buffer[i * 2] = std::rand() % 100;
            clusters_buffer[i * 2 + 1] = std::rand() % 100;
        }

        for (size_t i = 0; i < num_points; i++)
        {
            points_buffer[i * 2] = std::rand() % 100;
            points_buffer[i * 2 + 1] = std::rand() % 100;
        }

        std::cout << std::endl;

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
        xrt::bo clusters_buffer_setup_aie = xrt::bo(device, num_clusters * 2 * sizeof(int32_t), xrt::bo::flags::normal, bank_input);
        xrt::bo points_buffer_setup_aie = xrt::bo(device, num_points * 2 * sizeof(int32_t), xrt::bo::flags::normal, bank_input);
        xrt::bo buffer_sink_from_aie = xrt::bo(device, num_clusters * 2 * sizeof(int32_t), xrt::bo::flags::normal, bank_output);

        // create runner instances
        xrt::run run_setup_aie = xrt::run(krnl_setup_aie);
        xrt::run run_sink_from_aie = xrt::run(krnl_sink_from_aie);

        // set setup_aie kernel arguments
        run_setup_aie.set_arg(arg_setup_aie_num_clusters, num_clusters);
        run_setup_aie.set_arg(arg_setup_aie_num_points, num_points);
        run_setup_aie.set_arg(arg_setup_aie_input, clusters_buffer_setup_aie);
        run_setup_aie.set_arg(arg_setup_aie_input, points_buffer_setup_aie);

        // set sink_from_aie kernel arguments
        run_sink_from_aie.set_arg(arg_sink_from_aie_output, buffer_sink_from_aie);
        run_sink_from_aie.set_arg(arg_sink_from_aie_size, num_clusters);

        // write data into the clusters buffer
        clusters_buffer_setup_aie.write(clusters_buffer.data());
        clusters_buffer_setup_aie.sync(XCL_BO_SYNC_BO_TO_DEVICE);

        // write data into the points buffer
        points_buffer_setup_aie.write(points_buffer.data());
        points_buffer_setup_aie.sync(XCL_BO_SYNC_BO_TO_DEVICE);

        auto hw_start = std::chrono::high_resolution_clock::now();
        // run the kernel
        run_sink_from_aie.start();
        run_setup_aie.start();

        // wait for the kernel to finish
        run_setup_aie.wait();
        run_sink_from_aie.wait();

        auto hw_end = std::chrono::high_resolution_clock::now();
        auto hw_exec_ms = std::chrono::duration_cast<std::chrono::microseconds>(hw_end - hw_start).count();
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
        sw_result = k_means(input_buffer, num_clusters, num_points);

        auto sw_end = std::chrono::high_resolution_clock::now();
        auto sw_exec_ms = std::chrono::duration_cast<std::chrono::microseconds>(sw_end - sw_start).count();

        std::cout << "Software execution took " << sw_exec_ms << " microseconds." << std::endl;

        // print the output
        std::cout << "Expected results: ";
        printCluster(sw_result);
        std::cout << std::endl;

        // ------------------------------------------------CHECKING THE RESULTS------------------------------------------
        return checkResult(sw_result, hw_result, num_clusters);
    // }

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