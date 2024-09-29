// (c) Copyright 2022, Advanced Micro Devices, Inc.
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
`timescale 1ns/1ps
module tb;

reg   clk, rst;
reg [15:0] int_vec;

wire        usr_irq_out_vld;
wire [4:0]  usr_irq_out_vec;
wire [7:0]  usr_irq_out_fnc;
reg  [4:0]  usr_irq_in_ack;
reg         usr_irq_in_fail;

// generate clock
initial begin
   clk = 0;
   forever begin
      #10 clk = !clk;
   end
end

initial begin
   rst = 0;
   usr_irq_in_fail = 0;
   int_vec = 0;
   repeat (10) @(posedge clk);
   rst = 1;
   repeat (10) @(posedge clk);
   rst = 0;
   repeat (10) @(posedge clk);
   int_vec = 16'h55aa;
end

always @(posedge clk) begin
   if (rst) begin
      usr_irq_in_ack <= 0;
   end
   else begin
      usr_irq_in_ack <= usr_irq_out_vec;
   end
end


irq_shim dut (
    .clk                      (clk),
    .rst                      (rst),
    .usr_irq_req              (int_vec),   
    .usr_irq_out_vld          (usr_irq_out_vld),
    .usr_irq_out_vec          (usr_irq_out_vec),
    .usr_irq_out_fnc          (usr_irq_out_fnc),
    .usr_irq_in_ack           (usr_irq_in_ack),
    .usr_irq_in_fail          (usr_irq_in_fail)
);

endmodule
