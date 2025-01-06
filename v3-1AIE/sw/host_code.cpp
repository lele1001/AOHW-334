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
        for (size_t j = 0; j < num_clusters; j++)
        {
            if (!matched[j])
            {
                if (std::abs(sw_output[i].x - hw_output[j].x) <= 0.0001 && std::abs(sw_output[i].y - hw_output[j].y) <= 0.0001)
                {
                    matched[j] = true;
                }
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

std::vector<Cluster> k_means(const std::vector<float> &input, int32_t num_clusters, int32_t num_points)
{
    std::vector<Cluster> clusters(num_clusters);

    // Read the coordinates of the clusters
    for (size_t i = 0; i < num_clusters; i++)
    {
        clusters[i] = Cluster(input[i * 2], input[i * 2 + 1]);
    }

    size_t start = num_clusters * 2;

    // K-Means algorithm
    for (size_t i = 0; i < num_points; i++)
    {
        Point point = Point(input[start + i * 2], input[start + i * 2 + 1]);
        std::vector<float> distances(num_clusters, 0);

        // Calculate the distance between the point and each cluster
        for (size_t j = 0; j < num_clusters; j++)
        {
            float x_diff = clusters[j].x - point.x;
            float y_diff = clusters[j].y - point.y;
            distances[j] = std::pow(x_diff, 2) + std::pow(y_diff, 2);
        }

        // Assign the point to the nearest cluster
        auto min_iter = std::min_element(distances.begin(), distances.end());
        int cluster_index = std::distance(distances.begin(), min_iter);
        clusters[cluster_index].addPoint(point);
    }

    // Update the cluster coordinates
    for (size_t i = 0; i < num_clusters; i++)
    {
        // Each cluster has always at least one point (the cluster itself)
        clusters[i].x = (clusters[i].x + clusters[i].x_accum) / clusters[i].numPoints;
        clusters[i].y = (clusters[i].y + clusters[i].y_accum) / clusters[i].numPoints;
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
    int step = 4;
    int max_pow = 5;
    std::vector<int32_t> clusters_vec = {4};
    int num_clusters, num_points;

    std::ofstream csv_file;
    csv_file.open("time.csv", std::ios_base::app);
    csv_file << "Number of clusters, Number of points, Software time (us), Hardware time (us)" << std::endl;

    for (size_t j = 0; j < clusters_vec.size(); j++)
    {
        for (size_t pow = 2; pow < max_pow + 1; pow += step)
        {
            num_clusters = clusters_vec[j];
            num_points = std::pow(2, pow);

            std::cout << "Number of clusters: " << num_clusters << std::endl;
            std::cout << "Number of points: " << num_points << std::endl;

            if (!checkConstraints(num_clusters, num_points))
            {
                return EXIT_FAILURE;
            }

            int32_t input_size = (num_clusters + num_points) * 2;
            int32_t output_size = num_clusters * 2;

            std::vector<u_int32_t> input_buffer_hw(input_size);
            std::vector<float> input_buffer_sw(input_size);
            std::vector<float> output_buffer(output_size);

            std::vector<Cluster> sw_result(num_clusters);
            std::vector<Cluster> hw_result(num_clusters);

            // Generate random float coordinates for points and clusters using random number generator
            std::random_device rd;
            std::mt19937 rng(rd());
            std::uniform_real_distribution<float> dist(-5.0, 5.0);

            // Generate random coordinates for clusters
            for (size_t i = 0; i < num_clusters; i++)
            {
                input_buffer_sw[i * 2 + 0] = dist(rng);
                input_buffer_sw[i * 2 + 1] = dist(rng);
                // std::cout << "Cluster " << i << ": (" << input_buffer_sw[i * 2 + 0] << ", " << input_buffer_sw[i * 2 + 1] << ")\t";

                // Copy the cluster coordinates to the input buffer as integers pointing to the float
                u_int32_t val_x = *reinterpret_cast<u_int32_t *>(&input_buffer_sw[i * 2 + 0]);
                u_int32_t val_y = *reinterpret_cast<u_int32_t *>(&input_buffer_sw[i * 2 + 1]);

                input_buffer_hw[i * 2 + 0] = val_x;
                input_buffer_hw[i * 2 + 1] = val_y;
            }

            // std::cout << std::endl;

            // Generate random coordinates for points
            for (size_t i = 0; i < num_points; i++)
            {
                int32_t idx = (num_clusters + i) * 2;

                input_buffer_sw[idx + 0] = dist(rng);
                input_buffer_sw[idx + 1] = dist(rng);
                // std::cout << "Point " << i << ": (" << input_buffer_sw[idx + 0] << ", " << input_buffer_sw[idx + 1] << ")\t";

                // Copy the point coordinates to the input buffer as integers pointing to the float
                int32_t val_x = *reinterpret_cast<int32_t *>(&input_buffer_sw[idx + 0]);
                int32_t val_y = *reinterpret_cast<int32_t *>(&input_buffer_sw[idx + 1]);

                input_buffer_hw[idx + 0] = val_x;
                input_buffer_hw[idx + 1] = val_y;
            }

            // std::cout << std::endl;

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
            xrt::bo buffer_setup_aie = xrt::bo(device, input_size * sizeof(float), xrt::bo::flags::normal, bank_input);
            xrt::bo buffer_sink_from_aie = xrt::bo(device, output_size * sizeof(float), xrt::bo::flags::normal, bank_output);

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
            buffer_setup_aie.write(input_buffer_hw.data());
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
            sw_result = k_means(input_buffer_sw, num_clusters, num_points);

            auto sw_end = std::chrono::high_resolution_clock::now();
            auto sw_exec_ms = (sw_end - sw_start) / std::chrono::microseconds(1);

            std::cout << "Software execution took " << sw_exec_ms << " microseconds." << std::endl;

            // print the output
            std::cout << "Expected results: ";
            printCluster(sw_result);
            std::cout << std::endl;

            // ------------------------------------------------CHECKING THE RESULTS------------------------------------------
            if (checkResult(sw_result, hw_result, num_clusters) == EXIT_SUCCESS)
            {
                std::cout << bold_on << "Test passed" << bold_off << std::endl;

                // Write the time and the timestamp to the csv
                csv_file << num_clusters << ", " << num_points << ", " << sw_exec_ms << ", " << hw_exec_ms << std::endl;
            }
            else
            {
                std::cout << bold_on << "Test failed" << bold_off << std::endl;
            }
        }
    }

    csv_file.close();
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

    std::cout << std::endl << std::endl;
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