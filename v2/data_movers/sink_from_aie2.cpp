#include <ap_int.h>
#include <hls_stream.h>
#include <hls_math.h>
#include <ap_axi_sdata.h>
#include "../common/common.h"
#include <random> // Add this line for mt19937 and uniform distributions

void compute(hls::stream<ap_int<sizeof(int32_t) * 8 * 4>> &input_stream, int32_t *output, int32_t num_clusters) {
    int32_t size = num_clusters / 4;
    for (size_t i = 0; i < size; i++)
    {
        output[i] = input_stream.read();
        // std::cout << "Sink " << output[i] << std::endl;
    }
}

extern "C"
{
    void sink_from_aie(hls::stream<ap_int<sizeof(int32_t) * 8 * 4>> &input_stream, int32_t *output, int32_t num_clusters)
    {
// PRAGMA for stream
#pragma HLS interface axis port = input_stream

// PRAGMA for memory interation - AXI master-slave
#pragma HLS INTERFACE m_axi port = output depth = 100 offset = slave bundle = gmem1
#pragma HLS INTERFACE s_axilite port = output bundle = control

// PRAGMA for AXI-LITE : required to move params from host to PL
#pragma HLS interface s_axilite port = num_clusters bundle = control
#pragma HLS interface s_axilite port = return bundle = control

// il size che passi diventa il numero di volte che vuoi fare questo for, ovvero num_clusters / 4

        compute(input_stream, output, num_clusters);
    }
}
