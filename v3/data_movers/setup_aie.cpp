#include <ap_int.h>
#include <hls_stream.h>
#include <hls_math.h>
#include <ap_axi_sdata.h>
#include "../common/common.h"

extern "C"
{
	void setup_aie(int16_t num_clusters, int16_t num_points, int16_t *input, hls::stream<ap_int<sizeof(int16_t) * 8 * 8>> &s)
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
		ap_int<sizeof(int16_t) * 8 * 8> tmp;

		// Write the number of clusters and the number of points
		tmp.range(15, 0) = num_clusters;
		tmp.range(31, 16) = num_points;
		tmp.range(47, 32) = 0;
		tmp.range(63, 48) = 0;
		tmp.range(79, 64) = 0;
		tmp.range(95, 80) = 0;
		tmp.range(111, 96) = 0;
		tmp.range(127, 112) = 0;
		s.write(tmp);

		// Write the clusters and points coordinates, assuming that their number is a multiple of 4
		for (int16_t i = 0; i < (num_clusters + num_points) * 2; i += 8)
		{
			// Clear the temporary variable
			tmp = 0;

			for (int j = 0; j < 8; j++)
			{
				// std::cout << "input[" << i + j << "] = " << input[i + j] << std::endl;
				tmp.range((j + 1) * 16 - 1, j * 16) = input[i + j];
			}

			s.write(tmp);
		}
	}
}
