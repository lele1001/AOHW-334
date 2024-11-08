#include <unistd.h>
#include <sys/stat.h>
#include <fstream>
#include <ap_axi_sdata.h>
#include <cmath>
#include "../setup_aie.cpp"
#include <iostream>
#include <stdlib.h>
#include <time.h>

void read_from_stream(int32_t *buffer, hls::stream<int32_t> &stream, size_t size)
{
    for (int32_t i = 0; i < size; i++)
    {
        buffer[i] = stream.read();
    }
}

int main(int argc, char* argv[]) 
{
    hls::stream<ap_int<sizeof(int32_t) * 8 * 8> s;
    std::srand(time(nullptr));

    // size := clusters coordinates (x,y) + points coordinates (x,y)
    int32_t num_clusters = 4;
    int32_t num_points = 8;
    int32_t input_size = num_clusters * 2 + num_points * 2;

    std::vector<int32_t> clusters_buffer(num_clusters * 2);
    std::vector<int32_t> points_buffer(num_points * 2);
    std::vector<int32_t> input_buffer(input_size);

    clusters_buffer = {0, -1, 0, 4, -3, -3, -2, -2};
    points_buffer = {-2, -3, 5, 5, 1, -1, 5, 0, 5, -1, 3, 2, -4, 0, 2, -3};
    input_buffer.insert(input_buffer.end(), clusters_buffer.begin(), clusters_buffer.end());
    input_buffer.insert(input_buffer.end(), points_buffer.begin(), points_buffer.end());

    setup_aie(num_clusters, num_points, input_buffer.data(), s);

    // Read the stream and write to file
    std::ofstream file;
    file.open("../../aie/data/in_plio_source_1.txt");
    
    if (file.is_open()) 
    {
        ap_int<sizeof(int32_t) * 8 * 8> tmp;

        for (int32_t i = 0; i < (size / 8); i++) 
        {
            tmp = s.read();

            for (int32_t j = 0; j < 8; j++) 
            {
                int32_t x = tmp.range(j * 32 + 31, j * 32);
                file << x << std::endl;
                std::cout << x << std::endl;
            }
        }        

        file.close();
    } 
    else 
    {
        std::cout << "Error opening file" << std::endl;
    }

    return 0;
}
