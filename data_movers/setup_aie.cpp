#include <ap_int.h>
#include <hls_stream.h>
#include <hls_math.h>
#include <ap_axi_sdata.h>
#include "../common/common.h"

extern "C" {
	void setup_aie(int num_clusters, int num_points, int* input, hls::stream<int32_t>& s)
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

		// Write the size of the input data
		int size = num_clusters * 2 + num_points * 2;
		int size_loop = (int) size / 4;
		s.write(size_loop);

		// Write the number of clusters and points
		s.write(num_clusters);
		s.write(num_points);

		// Write the input data
		for (int j = 0; j < size_loop; j++) {
			s.write(input[j * 4 + 0]);
			s.write(input[j * 4 + 1]);
			s.write(input[j * 4 + 2]);
			s.write(input[j * 4 + 3]);
		}
	}
}
