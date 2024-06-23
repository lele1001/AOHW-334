#include <ap_int.h>
#include <hls_stream.h>
#include <hls_math.h>
#include <ap_axi_sdata.h>
#include "../common/common.h"

extern "C"
{
	void setup_aie(int32_t num_clusters, int32_t num_points, int32_t *input, hls::stream<int32_t> &s)
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
		ap_int<sizeof(int32_t) * 8 * 4> tmp;

		// Write the size of the input data
		int32_t size = num_clusters * 2 + num_points * 2;
		int32_t size_loop = (int32_t) size / 4;
		tmp.range(31, 0) = size_loop;
		tmp.range(63, 32) = 0;
		tmp.range(95, 64) = 0;
		tmp.range(127, 96) = 0;
		s.write(tmp);

		// Write the number of clusters and points
		tmp.range(31, 0) = num_points;
		tmp.range(63, 32) = 0;
		tmp.range(95, 64) = 0;
		tmp.range(127, 96) = 0;
		s.write(tmp);

		tmp.range(31, 0) = num_points;
		tmp.range(63, 32) = 0;
		tmp.range(95, 64) = 0;
		tmp.range(127, 96) = 0;
		s.write(tmp);

		// Write the input data
		for (int32_t i = 0; i < size_loop; i++)
		{
			tmp.range(31, 0) = input[i * 4];
			tmp.range(63, 32) = input[i * 4 + 1];
			tmp.range(95, 64) = input[i * 4 + 2];
			tmp.range(127, 96) = input[i * 4 + 3];
			s.write(tmp);
		}
	}
}
