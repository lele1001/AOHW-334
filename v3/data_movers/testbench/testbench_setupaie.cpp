#include <unistd.h>
#include <sys/stat.h>
#include <fstream>
#include <ap_axi_sdata.h>
#include <cmath>
#include "../setup_aie.cpp"
#include <iostream>
#include <stdlib.h>
#include <time.h>

void read_from_stream(float *buffer, hls::stream<float> &stream, size_t size)
{
    for (size_t i = 0; i < size; i++)
    {
        buffer[i] = stream.read();
    }
}

int main(int argc, char* argv[]) 
{
    hls::stream<ap_int<sizeof(float) * 8 * 8>> s;
    std::srand(time(nullptr));

    // size := clusters coordinates (x,y) + points coordinates (x,y)
    int32_t num_clusters = 4;
    int32_t num_points = 8;
    int32_t input_size = num_clusters * 2 + num_points * 2;

    std::vector<float> clusters_buffer(num_clusters * 2);
    std::vector<float> points_buffer(num_points * 2);
    std::vector<float> input_buffer(input_size);

    clusters_buffer = {3, -7, -8, 5, 10, -3, -4, -6};
    points_buffer = {7, 9, -2, 0, 5, 4, -10, -8, 6, -2, -3, 7, 1, -9, 9, 3};
    input_buffer = {3, -7, -8, 5, 10, -3, -4, -6, 7, 9, -2, 0, 5, 4, -10, -8, 6, -2, -3, 7, 1, -9, 9, 3};
    // Expected result: 

    setup_aie(num_clusters, num_points, input_buffer.data(), s);

    // Read the stream and write to file
    std::ofstream file;
    file.open("../../aie/data/in_plio_source_1.txt");
    
    if (file.is_open()) 
    {
        ap_int<sizeof(float) * 8 * 8> tmp;

        for (size_t i = 0; i < (input_size / 8); i++)
        {
            tmp = s.read();

            for (size_t j = 0; j < 8; j++) 
            {
                float x = tmp.range(j * 16 + 15, j * 16);
                file << x << std::endl;
                std::cout << x << std::endl;
            }
        }

        // Read the last element
        tmp = s.read();

        file.close();
    } 
    else 
    {
        std::cout << "Error opening file" << std::endl;
    }

    return 0;
}
