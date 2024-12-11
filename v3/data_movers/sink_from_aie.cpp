#include <ap_int.h>
#include <hls_stream.h>
#include <hls_math.h>
#include <ap_axi_sdata.h>
#include "../common/common.h"

extern "C"
{
    void sink_from_aie(hls::stream<float> &input_stream, float *output, int32_t size)
    {
        // PRAGMA for stream
#pragma HLS interface axis port = input_stream

        // PRAGMA for memory interation - AXI master-slave
#pragma HLS INTERFACE m_axi port = output depth = 100 offset = slave bundle = gmem1
#pragma HLS INTERFACE s_axilite port = output bundle = control

        // PRAGMA for AXI-LITE : required to move params from host to PL
#pragma HLS interface s_axilite port = size bundle = control
#pragma HLS interface s_axilite port = return bundle = control

        // Calculate the loop bound only once
        int total_size = size * 2;

        // Use burst-friendly access pattern
        for (int i = 0; i < total_size; ++i)
        {
#pragma HLS pipeline II = 1
                output[i] = input_stream.read();
        }
    }
}
