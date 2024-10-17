#include <unistd.h>
#include <sys/stat.h>
#include <fstream>
#include <ap_axi_sdata.h>
#include "../sink_from_aie.cpp"
#include <cmath>

int main(int argc, char *argv[])
{
    hls::stream<int32_t> s;
    int32_t size = 4;
    int32_t *buffer = new int32_t[size];

    // Read the output of the AIE kernel from a file
    std::ifstream file;
    file.open("../../aie/x86simulator_output/data/out_plio_sink_1.txt");

    if (!file)
    {
        std::cerr << "Unable to open file ../../aie/x86simulator_output/out_plio_sink.txt";
        return 1;
    }

    int32_t i, x;

    for (i = 0; i < size; i++)
    {
        file >> x;
        s.write(x);
    }

    sink_from_aie(s, buffer, size);

    // Print the output of the AIE kernel
    for (i = 0; i < size; i++)
    {
        std::cout << buffer[i] << std::endl;
    }

    delete[] buffer;
}