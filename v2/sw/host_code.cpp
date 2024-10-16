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

// Print the output
void printOutput(int32_t *output, int32_t num_clusters)
{
    int32_t i = 0;

    for (i = 0; i < num_clusters * 2; i++)
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
void printCluster(Cluster *output, int32_t num_clusters)
{
    int32_t i = 0;

    for (i = 0; i < num_clusters * 2; i++)
    {
        if (i % 2 == 0)
        {
            std::cout << "Cluster (" << output[i].x << ", ";
        }
        else
        {
            std::cout << output[i].y << ") ";
        }
    }

    std::cout << std::endl;
}

// Check the results
int32_t checkResult(int32_t *sw_output, int32_t *output, int32_t num_clusters)
{
    for (int i = 0; i < num_clusters * 2; i++)
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

void k_means(int32_t input[], int32_t num_clusters, int32_t num_points, int32_t result[])
{
    Cluster clusters[num_clusters];
    int32_t i = 0, j = 0, c_idx = 0;
    int32_t x_diff = 0, y_diff = 0;
    int32_t min_distance = 0;
    int32_t idx = num_clusters * 2;

    // Read the coordinates of the clusters
    for (i = 0; i < num_clusters; i += 2)
    {
        clusters[i] = Cluster(input[i * 2], input[i * 2 + 1]);
    }

    int32_t distances[num_clusters];
    int32_t cluster_index;

    // K-Means algorithm
    for (i = 0; i < num_points; i++)
    {
        Point point = Point(input[idx], input[idx + 1]);
        distances[num_clusters] = {0};

        // Calculate the distance between the point and each cluster
        for (j = 0; j < num_clusters; j++)
        {
            x_diff = clusters[j].x - point.x;
            y_diff = clusters[j].y - point.y;
            distances[j] = x_diff * x_diff + y_diff * y_diff;
        }

        // Assign the point to the nearest cluster
        cluster_index = -1;
        min_distance = INT32_MAX;

        for (j = 0; j < num_clusters; j++)
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

    for (i = 0; i < num_clusters; i++)
    {
        result[i * 2] = clusters[i].x;
        result[i * 2 + 1] = clusters[i].y;
    }
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

    if (!checkConstraints(num_clusters))
    {
        return EXIT_FAILURE;
    }

    int32_t input_size = num_clusters * 2 + num_points * 2;
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
            if (i < num_clusters * 2)
            {
                std::cout << "Cluster (" << random_num << ", ";
            }
            else
            {
                std::cout << "Point (" << random_num << ", ";
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
    run_setup_aie.set_arg(arg_setup_aie_num_clusters, num_clusters);
    run_setup_aie.set_arg(arg_setup_aie_num_points, num_points);
    run_setup_aie.set_arg(arg_setup_aie_input, buffer_setup_aie);

    // set sink_from_aie kernel arguments
    run_sink_from_aie.set_arg(arg_sink_from_aie_output, buffer_sink_from_aie);
    run_sink_from_aie.set_arg(arg_sink_from_aie_size, output_size);

    // write data into the input buffer
    buffer_setup_aie.write(input_buffer);
    buffer_setup_aie.sync(XCL_BO_SYNC_BO_TO_DEVICE);

    auto hw_start = std::chrono::high_resolution_clock::now();
    // run the kernel
    // for (i = 0; i < 25; i++)
    // {
        // std::cout << "Iteration " << i << std::endl;
        run_sink_from_aie.start();
        run_setup_aie.start();

        // wait for the kernel to finish
        run_setup_aie.wait();
        run_sink_from_aie.wait();
    // }

    auto hw_end = std::chrono::high_resolution_clock::now();
    auto hw_exec = hw_end - hw_start;
    auto hw_exec_ms = hw_exec / std::chrono::microseconds(1);
    std::cout << "Hardware execution took " << hw_exec_ms << " microseconds." << std::endl;

    // read the output buffer
    buffer_sink_from_aie.sync(XCL_BO_SYNC_BO_FROM_DEVICE);
    buffer_sink_from_aie.read(output_buffer);

    // print the output
    std::cout << "Hardware output: ";
    printOutput(output_buffer, num_clusters);
    std::cout << std::endl;

    auto sw_start = std::chrono::high_resolution_clock::now();
    // run the kernel
    // for (i = 0; i < 25; i++)
    // {
        k_means(input_buffer, num_clusters, num_points, sw_result);
    // }

    auto sw_end = std::chrono::high_resolution_clock::now();
    auto sw_exec = sw_end - sw_start;
    auto sw_exec_ms = sw_exec / std::chrono::microseconds(1);
    std::cout << "Software execution took " << sw_exec_ms << " microseconds." << std::endl;

    // print the output
    std::cout << "Expected results: ";
    printOutput(sw_result, num_clusters);
    std::cout << std::endl;
    
    // ------------------------------------------------CHECKING THE RESULTS------------------------------------------
    return checkResult(sw_result, output_buffer, num_clusters);
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