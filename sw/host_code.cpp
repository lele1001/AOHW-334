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
#define NUM_CLUSTERS 4
#define NUM_POINTS 20

bool get_xclbin_path(std::string &xclbin_file);
std::ostream &bold_on(std::ostream &os);
std::ostream &bold_off(std::ostream &os);

// Print the output
void printOutput(int32_t *output)
{
    int32_t i = 0;

    for (i = 0; i < NUM_CLUSTERS * 2; i++)
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

// Check the results
int32_t checkResult(int32_t *input, int32_t *output)
{
    int32_t points[NUM_POINTS * 2] = {0};
    int32_t clusters[NUM_CLUSTERS * 2] = {0};
    int32_t clusters_accum[NUM_CLUSTERS * 2] = {0};
    int32_t cluster_points[NUM_CLUSTERS] = {0};

    int32_t i = 0, j = 0, p_idx = 0, c_idx = 0;
    int32_t x_diff = 0, y_diff = 0, cluster_num = 0, cluster_index = 0;
    int32_t min_distance = 0;

    // Initialize points and clusters
    for (i = 0; i < NUM_POINTS * 2; i++)
    {
        points[i] = input[i];
    }

    for (i = 0; i < NUM_CLUSTERS * 2; i++)
    {
        c_idx = NUM_POINTS * 2 + i;
        clusters[i] = input[c_idx];
    }

    // K-Means algorithm
    for (i = 0; i < NUM_POINTS; i++)
    {
        int32_t distances[NUM_CLUSTERS] = {0};
        p_idx = i * 2;

        // Calculate the distance between the point and each cluster
        for (j = 0; j < NUM_CLUSTERS; j++)
        {
            c_idx = j * 2;
            x_diff = clusters[c_idx] - points[p_idx];
            y_diff = clusters[c_idx + 1] - points[p_idx + 1];

            distances[j] = (int32_t) (x_diff * x_diff) + (int32_t) (y_diff * y_diff);
            // std::cout << "Distance between point (" << points[p_idx] << ", " << points[p_idx + 1] << ") and cluster (" << clusters[c_idx] << ", " << clusters[c_idx + 1] << ") is " << distances[j] << std::endl;
        }

        // Assign the point to the nearest cluster
        cluster_num = -1;
        min_distance = INT32_MAX;

        for (j = 0; j < NUM_CLUSTERS; j++)
        {
            if (distances[j] < min_distance)
            {
                min_distance = distances[j];
                cluster_num = j;
            }
        }

        cluster_index = cluster_num * 2;

        // Update the cluster coordinates
        cluster_points[cluster_num]++;
        clusters_accum[cluster_index] += points[p_idx];
        clusters_accum[cluster_index + 1] += points[p_idx + 1];
        // std::cout << "Accumulated coordinates for cluster " << cluster_num << " are (" << clusters_accum[cluster_index] << ", " << clusters_accum[cluster_index + 1] << ") with " << cluster_points[cluster_num] << " points" << std::endl;

        if (cluster_points[cluster_index] > 0)
        {
            clusters[cluster_index] = (int32_t) clusters_accum[cluster_index] / cluster_points[cluster_num];
            clusters[cluster_index + 1] = (int32_t) clusters_accum[cluster_index + 1] / cluster_points[cluster_num];
            // std::cout << "Cluster " << cluster_num << " coordinates updated to (" << clusters[cluster_index] << ", " << clusters[cluster_index + 1] << ")" << std::endl;
        }

        // std::cout << std::endl;
    }

    std::cout << "Expected results: ";
    printOutput(clusters);

    // Compare the expected results with the output
    for (i = 0; i < NUM_CLUSTERS * 2; i++)
    {
        if (clusters[i] != output[i])
        {
            std::cout << "Error at index " << i << ": " << clusters[i] << " != " << output[i] << std::endl;
            return EXIT_FAILURE;
        }
    }

    std::cout << "Test passed!" << std::endl;
    return EXIT_SUCCESS;
}

bool checkConstraints()
{
    if (NUM_CLUSTERS % 2 != 0)
    {
        std::cout << "Error: The number of clusters must be even" << std::endl;
        return false;
    }

    if (NUM_CLUSTERS > 4)
    {
        std::cout << "Error: The number of clusters must be less than or equal to 4" << std::endl;
        return false;
    }

    if (NUM_POINTS > 200)
    {
        std::cout << "Error: The number of points must be less than or equal to 200" << std::endl;
        return false;
    }

    return true;
}

int main(int argc, char *argv[])
{
    int num_points = 0, num_clusters = 0;

    if (!checkConstraints())
    {
        return EXIT_FAILURE;
    }

    int32_t input_size = (NUM_CLUSTERS + NUM_POINTS) * 2;
    int32_t output_size = NUM_CLUSTERS * 2;

    int32_t input_buffer[input_size] = {0};
    int32_t output_buffer[output_size] = {0};

    std::srand(time(nullptr));

    int32_t i = 0, j = 0, random_num = 0;

    // Generate random coordinates for points and clusters
    for (i = 0; i < input_size; i++)
    {
        random_num = std::rand() % 20 - 10;
        input_buffer[i] = random_num;

        if (i % 2 == 0)
        {
            if (i < NUM_POINTS * 2)
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
            std::cout << random_num << ") ";
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

    auto start_time = std::chrono::high_resolution_clock::now();
    // run the kernel
    //for (i = 0; i < 25; i++)
    // {
        // std::cout << "Iteration " << i << std::endl;
        run_sink_from_aie.start();
        run_setup_aie.start();

        // wait for the kernel to finish
        run_setup_aie.wait();
        run_sink_from_aie.wait();
    // }

    auto end_time = std::chrono::high_resolution_clock::now();
    auto exec_time = end_time - start_time;
    auto exec_time_ms = exec_time / std::chrono::microseconds(1);

    std::cout << "Execution took " << exec_time_ms << " microseconds." << std::endl;

    // read the output buffer
    buffer_sink_from_aie.sync(XCL_BO_SYNC_BO_FROM_DEVICE);
    buffer_sink_from_aie.read(output_buffer);

    // print the output
    std::cout << "Output: ";
    printOutput(output_buffer);

    std::cout << std::endl;

    // ------------------------------------------------CHECKING THE RESULTS------------------------------------------
    return checkResult(input_buffer, output_buffer);
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
