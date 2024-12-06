#include <ap_int.h>
#include <hls_stream.h>
#include <hls_math.h>
#include <ap_axi_sdata.h>
#include "../common/common.h"

extern "C"
{
	void setup_aie(int32_t num_clusters, int32_t num_points, float *input, hls::stream<float> &s)
	{
		// PRAGMA for stream
#pragma HLS interface axis port = s

		// PRAGMA for memory interation - AXI master-slave
#pragma HLS interface m_axi port = input depth = 100 offset = slave bundle = gmem0
#pragma HLS interface s_axilite port = input bundle = control

		// PRAGMA for AXI-LITE : required to move params from host to PL
#pragma HLS interface s_axilite port = num_clusters bundle = control
#pragma HLS interface s_axilite port = num_points bundle = control
#pragma HLS interface s_axilite port = return bundle = control

		// Write the number of clusters and the number of points
		s.write(static_cast<float>(num_clusters));
		s.write(static_cast<float>(num_points));

		// Padding for alignment or unused space (write zeros)
		for (int i = 0; i < 6; ++i)
		{
#pragma HLS pipeline
			s.write(0.0f);
		}

		// Total iterations needed to process all input values in chunks of 8
		const int32_t num_iterations = (num_clusters + num_points) * 2 / 8;

		// Stream the input data in chunks of 8 floats
		for (int i = 0; i < num_iterations; ++i)
		{
#pragma HLS pipeline
			for (int j = 0; j < 8; ++j)
			{
				s.write(input[i * 8 + j]);
			}
		}
	}
}
