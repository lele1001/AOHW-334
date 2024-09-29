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
#include "../common/common.h"
#include "../common/cluster.h"
#include "../common/point.h"
#include "math.h"

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

// define the number of points and clusters
#define MAX_CLUSTERS 8
#define MAX_POINTS 200

bool get_xclbin_path(std::string &xclbin_file);
std::ostream &bold_on(std::ostream &os);
std::ostream &bold_off(std::ostream &os);

// Print the output
void printOutput(int32_t *output)
{
    int32_t i = 0;

    for (i = 0; i < output * 2; i++)
    {
        if (i % 2 == 0)
        {
            std::cout << "Cluster (" << output[i] << ", ";
        }
        else
        {
            std::cout << output[i] << ") ";
        }
    }

    std::cout << std::endl;
}

// Print the output
void printCluster(Cluster *output)
{
    int32_t i = 0;

    for (i = 0; i < NUM_CLUSTERS * 2; i++)
    {
        if (i % 2 == 0)
        {
            std::cout << "Cluster (" << output[i].getX() << ", ";
        }
        else
        {
            std::cout << output[i].getY() << ") ";
        }
    }

    std::cout << std::endl;
}

// Check the results
int32_t checkResult(int32_t *sw_output, int32_t *output)
{
    for (int i = 0; i < NUM_CLUSTERS * 2; i++)
    {
        if (sw_output[i] != output[i])
        {
            std::cout << "Error in cluster " << i / 2 << ": " << sw_output[i] << " != " << output[i] << std::endl;
            return EXIT_FAILURE;
        }
    }

    std::cout << "Test passed!" << std::endl;
    return EXIT_SUCCESS;
}

void k_means(int32_t input[], int32_t result[])
{
    Point points[NUM_POINTS];
    Cluster clusters[NUM_CLUSTERS];

    int32_t i = 0, j = 0, c_idx = 0;
    int32_t x_diff = 0, y_diff = 0;
    int32_t min_distance = 0;

    // Initialize points and clusters
    for (i = 0; i < NUM_POINTS; i++)
    {
        points[i] = Point(input[i * 2], input[i * 2 + 1]);
    }

    for (i = 0; i < NUM_CLUSTERS; i++)
    {
        c_idx = NUM_POINTS * 2 + i * 2;
        clusters[i] = Cluster(input[c_idx], input[c_idx + 1]);
    }

    // K-Means algorithm
    for (i = 0; i < NUM_POINTS; i++)
    {
        int32_t distances[NUM_CLUSTERS] = {0};

        // Calculate the distance between the point and each cluster
        for (j = 0; j < NUM_CLUSTERS; j++)
        {
            x_diff = clusters[j].getX() - points[i].getX();
            y_diff = clusters[j].getY() - points[i].getY();

            distances[j] = x_diff * x_diff + y_diff * y_diff;
        }

        // Assign the point to the nearest cluster
        c_idx = -1;
        min_distance = INT32_MAX;

        for (j = 0; j < NUM_CLUSTERS; j++)
        {
            if (distances[j] < min_distance)
            {
                min_distance = distances[j];
                c_idx = j;
            }
        }

        // Update the cluster coordinates
        points[i].setCluster(c_idx);
        clusters[c_idx].addPoint(points[i]);
        // std::cout << "Accumulated coordinates for cluster " << cluster_num << " are (" << clusters_accum[cluster_index] << ", " << clusters_accum[cluster_index + 1] << ") with " << cluster_points[cluster_num] << " points" << std::endl;

        clusters[c_idx].updateCoordinates();
        // std::cout << std::endl;
    }

    for (i = 0; i < NUM_CLUSTERS; i++)
    {
        result[i * 2] = clusters[i].getX();
        result[i * 2 + 1] = clusters[i].getY();
    }
}

bool checkConstraints(int num_clusters, int num_points)
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

    if (num_points > MAX_POINTS)
    {
        std::cout << "Error: The number of points must be less than or equal to 200" << std::endl;
        return false;
    }

    return true;
}

int main(int argc, char *argv[])
{
    int num_points = 0, num_clusters = 0;

    std::cout << "Enter the number of points: ";
    std::cin >> num_points;

    std::cout << "Enter the number of clusters: ";
    std::cin >> num_clusters;

    if (!checkConstraints(num_points, num_clusters))
    {
        return EXIT_FAILURE;
    }

    int32_t input_size = num_points * 2 + num_clusters * 2;
    int32_t output_size = num_clusters * 2;

    int32_t input_buffer[input_size] = {0};
    int32_t output_buffer[output_size] = {0};
    int32_t sw_result[output_size] = {0};

    std::srand(time(nullptr));

    int32_t i = 0, j = 0, random_num = 0;

    // Generate random coordinates for points and clusters
    for (i = 0; i < input_size; i++)
    {
        random_num = std::rand() % 20 - 10;
        input_buffer[i] = random_num;

        if (i % 2 == 0)
        {
            if (i < num_points * 2)
            {
                std::cout << "Point (" << random_num << ", ";
            }
            else
            {
                std::cout << "Cluster (" << random_num << ", ";
            }
        }
        else
        {
            std::cout << random_num << ") \t";
        }
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
    xrt::bo buffer_setup_aie = xrt::bo(device, input_size * sizeof(int32_t), xrt::bo::flags::normal, bank_input);
    xrt::bo buffer_sink_from_aie = xrt::bo(device, output_size * sizeof(int32_t), xrt::bo::flags::normal, bank_output);

    // create runner instances
    xrt::run run_setup_aie = xrt::run(krnl_setup_aie);
    xrt::run run_sink_from_aie = xrt::run(krnl_sink_from_aie);

    // set setup_aie kernel arguments
    run_setup_aie.set_arg(arg_setup_aie_num_clusters, NUM_CLUSTERS);
    run_setup_aie.set_arg(arg_setup_aie_num_points, NUM_POINTS);
    run_setup_aie.set_arg(arg_setup_aie_input, buffer_setup_aie);

    // set sink_from_aie kernel arguments
    run_sink_from_aie.set_arg(arg_sink_from_aie_output, buffer_sink_from_aie);
    run_sink_from_aie.set_arg(arg_sink_from_aie_size, output_size);

    // write data into the input buffer
    buffer_setup_aie.write(input_buffer);
    buffer_setup_aie.sync(XCL_BO_SYNC_BO_TO_DEVICE);

    auto hw_start = std::chrono::high_resolution_clock::now();
    // run the kernel
    for (i = 0; i < 25; i++)
    {
        // std::cout << "Iteration " << i << std::endl;
        run_sink_from_aie.start();
        run_setup_aie.start();

        // wait for the kernel to finish
        run_setup_aie.wait();
        run_sink_from_aie.wait();
    }

    auto hw_end = std::chrono::high_resolution_clock::now();
    auto hw_exec = hw_end - hw_start;
    auto hw_exec_ms = hw_exec / std::chrono::microseconds(1);
    std::cout << "Hardware execution took " << hw_exec_ms << " microseconds." << std::endl;

    // read the output buffer
    buffer_sink_from_aie.sync(XCL_BO_SYNC_BO_FROM_DEVICE);
    buffer_sink_from_aie.read(output_buffer);

    // print the output
    std::cout << "Hardware output: ";
    printOutput(output_buffer);
    std::cout << std::endl;

    auto sw_start = std::chrono::high_resolution_clock::now();
    // run the kernel
    for (i = 0; i < 25; i++)
    {
        k_means(input_buffer, sw_result);
    }

    auto sw_end = std::chrono::high_resolution_clock::now();
    auto sw_exec = sw_end - sw_start;
    auto sw_exec_ms = sw_exec / std::chrono::microseconds(1);
    std::cout << "Software execution took " << sw_exec_ms << " microseconds." << std::endl;

    // print the output
    std::cout << "Expected results: ";
    printOutput(sw_result);
    std::cout << std::endl;
    
    // ------------------------------------------------CHECKING THE RESULTS------------------------------------------
    return checkResult(sw_result, output_buffer);
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