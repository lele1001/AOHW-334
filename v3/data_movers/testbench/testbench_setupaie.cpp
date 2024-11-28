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
    hls::stream<float> s;
    std::srand(time(nullptr));

    // size := clusters coordinates (x,y) + points coordinates (x,y)
    int32_t num_clusters = 4;
    int32_t num_points = 8;
    int32_t input_size = (num_clusters + num_points) * 2;

    std::vector<float> clusters_buffer = {3, -7, -8, 5, 10, -3, -4, -6};
    std::vector<float> points_buffer = {7, 9, -2, 0, 5, 4, -10, -8, 6, -2, -3, 7, 1, -9, 9, 3};
    std::vector<float> input_buffer = {3, -7, -8, 5, 10, -3, -4, -6, 7, 9, -2, 0, 5, 4, -10, -8, 6, -2, -3, 7, 1, -9, 9, 3}; 

    setup_aie(num_clusters, num_points, input_buffer.data(), s);

    // Read the stream and write to file
    std::ofstream file;
    file.open("../../aie/data/in_plio_source_1.txt");
    
    if (file.is_open()) 
    {
        for (size_t i = 0; i < input_size + 2; i++)
        {
            float x = s.read();
            file << x << std::endl;
            std::cout << x << std::endl;
        }

        file.close();
    } 
    else 
    {
        std::cout << "Error opening file" << std::endl;
        return 1;
    }

    return 0;
}
