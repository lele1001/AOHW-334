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

void read_from_stream(int *buffer, hls::stream<int> &stream, size_t size) 
{
    for (int i = 0; i < size; i++) 
    {
        buffer[i] = stream.read();
    }
}

int main(int argc, char* argv[]) 
{
    hls::stream<int> s;
    std::srand(time(nullptr));

    // size := points coordinates (x,y) + clusters coordinates (x,y)
    int size = NUM_CLUSTERS * 2 + NUM_POINTS * 2;
    int *input = new int[size];
    int i, j, random;

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
        file << size / 4 << std::endl;
        file << NUM_CLUSTERS << std::endl;
        file << NUM_POINTS << std::endl;

        for (i = 0; i < size; i++) 
        {
            file << input[i] << std::endl;
        }

        file.close();
    } 
    else 
    {
        std::cout << "Error opening file" << std::endl;
    }

    return 0;
}
