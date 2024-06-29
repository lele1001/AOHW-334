// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : ./Work/aie/24_0/src/24_0.cc
// Runs 1 ME kernel

#include <stdio.h>

#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

#include "src/kmeans_kernel.h"
#include "../common/common.h"
// Define Locks

// Declare shared memory buffers

// Declare Kernel functions and initializers
void kmeans_function(input_stream<int> *,output_stream<int> *);

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  input_stream_int32 stream_0 = input_stream_int32(0);
  output_stream_int32 stream_1 = output_stream_int32(0);
  int32 index = 1;
  while(true)
  {

  int32 proc_24_0_bounds = sync_buffer[1];

  while (proc_24_0_bounds)
  {

    // Kernel call : i0:kmeans_function
    kmeans_function(&stream_0,&stream_1);
    index = 1 - index;

    chess_memory_fence();

    if(proc_24_0_bounds > 0)
      --proc_24_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}