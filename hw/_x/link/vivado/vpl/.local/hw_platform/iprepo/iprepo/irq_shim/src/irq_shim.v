// (c) Copyright 2017, 2022, Advanced Micro Devices, Inc.
// 
// Permission is hereby granted, free of charge, to any person obtaining a 
// copy of this software and associated documentation files (the "Software"), 
// to deal in the Software without restriction, including without limitation 
// the rights to use, copy, modify, merge, publish, distribute, sublicense, 
// and/or sell copies of the Software, and to permit persons to whom the 
// Software is furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in 
// all copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL 
// THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING 
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER 
// DEALINGS IN THE SOFTWARE.
////////////////////////////////////////////////////////////
//
// *************************************************************************

`timescale 1 ns / 1 ps

module irq_shim (
    input                     clk,
    input                     rstn,
    input  wire [15:0]        irq_in,
    output reg  [15:0]        irq_req,
    input  wire [15:0]        irq_ack
);

   localparam WIDTH = 16;

   wire        [WIDTH-1:0]    dest_out;
   reg         [WIDTH-1:0]    dest_reg = {WIDTH{1'b0}};
   reg         [WIDTH-1:0]    dest_edge = {WIDTH{1'b0}};
   integer                    i;

xpm_cdc_array_single #(

  //Common module parameters
  .DEST_SYNC_FF   (3), // integer; range: 2-10
  .SIM_ASSERT_CHK (0), // integer; 0=disable simulation messages, 1=enable simulation messages
  .SRC_INPUT_REG  (0), // integer; 0=do not register input, 1=register input
  .WIDTH          (WIDTH)  // integer; range: 1-1024

) xpm_cdc_array_single_inst (

  .src_in   (irq_in),
  .dest_clk (clk),
  .dest_out (dest_out)

);

// perform edge detect on each bit on sync output (active high)
always @(posedge clk) begin
   if (!rstn) begin
      dest_reg       <= {WIDTH{1'b0}};
   end
   else begin
      dest_reg       <= dest_out;
   end
end

always @(posedge clk) begin
   if (!rstn) begin
      irq_req        <= {WIDTH{1'b0}};
   end
   else begin
      for (i=0; i<WIDTH; i=i+1) begin
         if (dest_out[i] & !dest_reg[i]) begin
            irq_req[i]        <= 1'b1;
         end
         else begin
            if (irq_ack[i]) begin
               irq_req[i]     <= 1'b0;
            end
         end
      end
   end
end

endmodule
