#include <ap_int.h>
#include <hls_stream.h>
#include <hls_math.h>
#include <ap_axi_sdata.h>
#include "../common/common.h"
#include "ap_fixed.h"

extern "C"
{
	void setup_aie(int32_t num_clusters, int32_t num_points, float *input, hls::stream<ap_uint<sizeof(float) * 8 * 8>> &s)
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

		// Create a temporary variable to store the data (8 integers at a time = 4 points)
		ap_uint<sizeof(float) * 8 * 8> tmp;

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

		// Write the clusters and points coordinates, assuming that their number is a multiple of 4
		for (int32_t i = 0; i < (num_clusters + num_points) * 2; i += 8)
		{
#pragma HLS pipeline
			// Clear the temporary variable
			tmp = 0;

			for (int j = 0; j < 8; j++)
			{
				// Convert float to ap_fixed<32, 16> for 4-decimal precision
				ap_fixed<32, 16> fixed_val = input[i + j];

				// Assign the fixed-point value to the appropriate range
				tmp.range((j + 1) * 32 - 1, j * 32) = fixed_val.range(31, 0);
			}

			s.write(tmp);
		}
	}
}
