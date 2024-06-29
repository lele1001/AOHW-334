// d52cbaca0ef8cf4fd3d6354deb5066970fb6511d02d18d15835e6014ed847fb0
// (c) Copyright 2019 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module sds_fifo #(
    parameter WIDTH = 1,
    parameter LENGTH = 32
)(
    input logic clk,
    input logic resetn,
    input logic enqueue,
    input logic dequeue,
    input logic [WIDTH-1:0] back,
    output logic [WIDTH-1:0] front,
    output logic full,
    output logic empty
);

logic [$bits(back)-1:0] buffer_data;
logic buffer_valid;
logic buffer_ready;
logic buffer_empty;

sds_small_fifo #(
    .WIDTH(WIDTH),
    .LENGTH(LENGTH)
) buffer (
    .clk(clk),
    .resetn(resetn),
    .enqueue(enqueue),
    .dequeue(buffer_ready),
    .back(back),
    .front(buffer_data),
    .full(full),
    .empty(buffer_empty)
);

assign buffer_valid = !buffer_empty;

logic [$bits(buffer_data)-1:0] ff0_data;
logic ff0_valid;
logic ff0_ready;

always_ff @(posedge clk) begin
    if (buffer_valid && buffer_ready) begin
        ff0_data <= buffer_data;
    end
end

assign ff0_ready = dequeue;

always_ff @(posedge clk or negedge resetn) begin
    if (!resetn) begin
        ff0_valid <= 0;
    end else begin
        if (buffer_valid && buffer_ready) begin
            ff0_valid <= 1;
        end else if (ff0_valid && ff0_ready) begin
            ff0_valid <= 0;
        end
    end
end

assign buffer_ready = !ff0_valid || (ff0_valid && ff0_ready);

assign front = ff0_data;
assign empty = !ff0_valid;

endmodule
