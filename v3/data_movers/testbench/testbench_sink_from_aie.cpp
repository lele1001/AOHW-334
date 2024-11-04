#include <unistd.h>
#include <sys/stat.h>
#include <fstream>
#include <ap_axi_sdata.h>
#include "../sink_from_aie.cpp"
#include <cmath>

int main(int argc, char *argv[])
{
    hls::stream<int32_t> s;
    int32_t num_clusters = 4;
    std::vector<int32_t> buffer(num_clusters * 2);

    // Read the output of the AIE kernel from a file
    std::ifstream file;
    file.open("../../aie/x86simulator_output/data/out_plio_sink_1.txt");

    if (!file)
    {
        std::cerr << "Unable to open file ../../aie/x86simulator_output/out_plio_sink.txt";
        return 1;
    }

    for (int32_t i = 0; i < num_clusters * 2; i++)
    {
        int32_t x;
        file >> x;
        s.write(x);
    }

    sink_from_aie(s, buffer.data(), num_clusters);

    // Print the output of the AIE kernel
    for (int32_t i = 0; i < num_clusters * 2; i++)
    {
        std::cout << buffer[i] << std::endl;
    }
}