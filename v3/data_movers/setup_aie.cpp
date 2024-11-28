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
		s.write(num_clusters);
		s.write(num_points);

		float size_loop = (num_clusters + num_points) * 2 / 8;

		// Write the clusters and points coordinates, assuming that their number is a multiple of 4
		for (size_t i = 0; i < size_loop; i ++)
		{
			s.write(input[i * 8 + 0]);
			s.write(input[i * 8 + 1]);
			s.write(input[i * 8 + 2]);
			s.write(input[i * 8 + 3]);
			s.write(input[i * 8 + 4]);
			s.write(input[i * 8 + 5]);
			s.write(input[i * 8 + 6]);
			s.write(input[i * 8 + 7]);
		}
	}
}
