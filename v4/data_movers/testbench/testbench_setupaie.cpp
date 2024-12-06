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
    for (size_t i = 0; i < size; i++)
    {
        buffer[i] = stream.read();
    }
}

int main(int argc, char* argv[]) 
{
    hls::stream<ap_uint<sizeof(int32_t) * 8 * 8>> s;
    std::srand(time(nullptr));

    // size := clusters coordinates (x,y) + points coordinates (x,y)
    int32_t num_clusters = 4;
    int32_t num_points = 8;
    int32_t input_size = (num_clusters + num_points) * 2;

    std::vector<float> clusters_buffer = {3.0, -7.0, -8.0, 5.0, 10.0, -3.0, -4.0, -6.0};
    std::vector<float> points_buffer = {7.0, 9.0, -2.0, 0.0, 5.0, 4.0, -10.0, -8.0, 6.0, -2.0, -3.0, 7.0, 1.0, -9.0, 9.0, 3.0};
    std::vector<float> input_buffer = {3.0, -7.0, -8.0, 5.0, 10.0, -3.0, -4.0, -6.0, 7.0, 9.0, -2.0, 0.0, 5.0, 4.0, -10.0, -8.0, 6.0, -2.0, -3.0, 7.0, 1.0, -9.0, 9.0, 3.0};

    setup_aie(num_clusters, num_points, input_buffer.data(), s);

    // Read the stream and write to file
    std::ofstream file;
    file.open("../../aie/data/in_plio_source_1.txt");
    
    if (file.is_open()) 
    {
        ap_int<sizeof(int32_t) * 8 * 8> tmp;

        for (int32_t i = 0; i < (input_size / 8); i++)
        {
            tmp = s.read();

            for (int32_t j = 0; j < 8; j++)
            {
                int32_t x = tmp.range(j * 32 + 31, j * 32);
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
        return 1;
    }

    return 0;
}
