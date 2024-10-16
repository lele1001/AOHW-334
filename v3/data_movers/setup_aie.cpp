#include <ap_int.h>
#include <hls_stream.h>
#include <hls_math.h>
#include <ap_axi_sdata.h>
#include "../common/common.h"

extern "C"
{
	void setup_aie(int32_t num_clusters, int32_t num_points, float *input, hls::stream<ap_int<sizeof(float) * 8 * 8>> &s)
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

		// Create a temporary variable to store the data (4 integers at a time)
		ap_int<sizeof(float) * 8 * 8> tmp;

		// Calculate the size of the input data
		int32_t size = num_clusters * 2 + num_points * 2;

		// Write the number of clusters and the number of points		
		tmp.range(31, 0) = num_clusters;
		tmp.range(63, 32) = num_points;
		tmp.range(95, 64) = 0;
		tmp.range(127, 96) = 0;
		tmp.range(159, 128) = 0;
		tmp.range(191, 160) = 0;
		tmp.range(223, 192) = 0;
		tmp.range(255, 224) = 0;
		s.write(tmp);

		// Write the input data
		for (int32_t i = 0; i < (int32_t) (size / 8); i++)
		{
			tmp.range(31, 0) = input[i * 8];
			tmp.range(63, 32) = input[i * 8 + 1];
			tmp.range(95, 64) = input[i * 8 + 2];
			tmp.range(127, 96) = input[i * 8 + 3];
			tmp.range(159, 128) = input[i * 8 + 4];
			tmp.range(191, 160) = input[i * 8 + 5];
			tmp.range(223, 192) = input[i * 8 + 6];
			tmp.range(255, 224) = input[i * 8 + 7];
			s.write(tmp);
		}
	}
}
