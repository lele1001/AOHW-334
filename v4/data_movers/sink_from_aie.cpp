#include <ap_int.h>
#include <hls_stream.h>
#include <hls_math.h>
#include <ap_axi_sdata.h>
#include "../common/common.h"
#include <random> // Add this line for mt19937 and uniform distributions

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

        for (size_t i = 0; i < size * 2; i++)
        {
#pragma HLS pipeline II = 1
            output[i] = input_stream.read();
        }
    }
}
