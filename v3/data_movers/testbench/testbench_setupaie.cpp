#include <unistd.h>
#include <sys/stat.h>
#include <fstream>
#include <ap_axi_sdata.h>
#include <cmath>
#include "../setup_aie.cpp"
#include <iostream>
#include <stdlib.h>
#include <time.h>

#define NUM_CLUSTERS 2
#define NUM_POINTS 10

void read_from_stream(float *buffer, hls::stream<float> &stream, size_t size)
{
    for (int32_t i = 0; i < size; i++)
    {
        buffer[i] = stream.read();
    }
}

int main(int argc, char* argv[]) 
{
    hls::stream<ap_int<sizeof(int32_t) * 8 * 4> s;
    std::srand(time(nullptr));

    // size := clusters coordinates (x,y) + points coordinates (x,y)
    int32_t size = NUM_CLUSTERS * 2 + NUM_POINTS * 2;
    int32_t *input = new int32_t[size];
    int32_t i, j, random;

    for (i = 0; i < size; i++) 
    {
        random = std::rand() % 20 - 10;
        input[i] = random;
    }

    setup_aie(NUM_CLUSTERS, NUM_POINTS, input, s);
    
    // Read the stream and write to file
    std::ofstream file;
    file.open("../../aie/data/in_plio_source_1.txt");
    
    if (file.is_open()) 
    {
        ap_int<sizeof(float) * 8 * 8> tmp;

        for (i = 0; i < (size / 4) + 3; i++) 
        {
            tmp = s.read();

            for (j = 0; j < 4; j++) 
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
