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

module sds_small_fifo #(
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

logic [$bits(back)-1:0] memory[2**$clog2(LENGTH)];
logic [$clog2(LENGTH)-1:0] wr_addr;
logic [$clog2(LENGTH)-1:0] rd_addr;
logic [$clog2(LENGTH)-1:0] size;

always_ff @(posedge clk) begin
    if (enqueue && !full) begin
        memory[wr_addr] <= back;
    end
end

assign front = memory[rd_addr];
    
always_ff @(posedge clk or negedge resetn) begin
    if (!resetn) begin
        wr_addr <= 0;
        rd_addr <= 0;
        size <= 0;
        full <= 0;
        empty <= 1;
    end else begin
        if (enqueue && !full) begin
            wr_addr <= wr_addr + 1;
        end
        if (dequeue && !empty) begin
            rd_addr <= rd_addr + 1;
        end
        if ((enqueue && !full) && !(dequeue && !empty)) begin
            size <= size + 1;
            empty <= 0;
            if (size == LENGTH - 1) begin
                full <= 1;
            end
        end else if (!(enqueue && !full) && (dequeue && !empty)) begin
            size <= size - 1;
            full <= 0;
            if (size == 1) begin
                empty <= 1;
            end
        end
    end
end

endmodule
