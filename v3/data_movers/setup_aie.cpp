#include <ap_int.h>
#include <hls_stream.h>
#include <hls_math.h>
#include <ap_axi_sdata.h>
#include "../common/common.h"

extern "C"
{
	void setup_aie(int32_t num_clusters, int32_t num_points, int32_t *clusters_input, int32_t *points_input, hls::stream<ap_int<sizeof(int32_t) * 8 * 8>> &s)
	{
		// PRAGMA for stream
		#pragma HLS interface axis port = s

		// PRAGMA for memory interation - AXI master-slave
		#pragma HLS interface m_axi port = input depth = 100 offset = slave bundle = gmem0
		#pragma HLS interface s_axilite port = clusters_input bundle = control
		#pragma HLS interface s_axilite port = points_input bundle = control

		// PRAGMA for AXI-LITE : required to move params from host to PL
		#pragma HLS interface s_axilite port = num_clusters bundle = control
		#pragma HLS interface s_axilite port = num_points bundle = control
		#pragma HLS interface s_axilite port = return bundle = control

		// Create a temporary variable to store the data (8 integers at a time)
		ap_int<sizeof(int32_t) * 8 * 8> tmp;

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
		for (int32_t i = 0; i < num_clusters; i += 4)
		{
			tmp.range(31, 0) = clusters_input[i];
			tmp.range(63, 32) = clusters_input[i + 1];
			tmp.range(95, 64) = clusters_input[i + 2];
			tmp.range(127, 96) = clusters_input[i + 3];

			if (i + 3 < num_clusters)
			{
				tmp.range(159, 128) = clusters_input[i + 4];
				tmp.range(191, 160) = clusters_input[i + 5];
				tmp.range(223, 192) = clusters_input[i + 6];
				tmp.range(255, 224) = clusters_input[i + 7];
			} 
			else if (i + 2 < num_clusters)
			{
				tmp.range(159, 128) = clusters_input[i + 4];
				tmp.range(191, 160) = clusters_input[i + 5];
				tmp.range(223, 192) = 0;
				tmp.range(255, 224) = 0;
			}
			else
			{
				tmp.range(159, 128) = 0;
				tmp.range(191, 160) = 0;
				tmp.range(223, 192) = 0;
				tmp.range(255, 224) = 0;
			}

			s.write(tmp);
		}

		for (int32_t i = 0; i < num_points; i += 4)
		{
			tmp.range(31, 0) = points_input[i];
			tmp.range(63, 32) = points_input[i + 1];
			tmp.range(95, 64) = points_input[i + 2];
			tmp.range(127, 96) = points_input[i + 3];

			if (i + 3 < num_points)
			{
				tmp.range(159, 128) = points_input[i + 4];
				tmp.range(191, 160) = points_input[i + 5];
				tmp.range(223, 192) = points_input[i + 6];
				tmp.range(255, 224) = points_input[i + 7];
			} 
			else if (i + 2 < num_points)
			{
				tmp.range(159, 128) = points_input[i + 4];
				tmp.range(191, 160) = points_input[i + 5];
				tmp.range(223, 192) = 0;
				tmp.range(255, 224) = 0;
			}
			else
			{
				tmp.range(159, 128) = 0;
				tmp.range(191, 160) = 0;
				tmp.range(223, 192) = 0;
				tmp.range(255, 224) = 0;
			}

			s.write(tmp);
		}
	}
}
