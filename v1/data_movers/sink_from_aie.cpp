#include <ap_int.h>
#include <hls_stream.h>
#include <hls_math.h>
#include <ap_axi_sdata.h>
#include "../common/common.h"

extern "C"
{
    void sink_from_aie(hls::stream<int32_t> &input_stream, int32_t *output, int32_t size)
    {
// PRAGMA for stream
#pragma HLS interface axis port = input_stream

// PRAGMA for memory interation - AXI master-slave
#pragma HLS INTERFACE m_axi port = output depth = 100 offset = slave bundle = gmem1
#pragma HLS INTERFACE s_axilite port = output bundle = control

// PRAGMA for AXI-LITE : required to move params from host to PL
#pragma HLS interface s_axilite port = size bundle = control
#pragma HLS interface s_axilite port = return bundle = control

        // Read size = num_clusters * 2
        int32_t read_size = size << 1;

        for (size_t i = 0; i < read_size; i++)
        {
#pragma HLS pipeline II = 1
            output[i] = input_stream.read();
        }
    }
}
