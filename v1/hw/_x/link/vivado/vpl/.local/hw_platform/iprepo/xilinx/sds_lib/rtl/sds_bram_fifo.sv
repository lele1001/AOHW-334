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

if (1) begin
	$error("It does not work because BRAM FIFO has extra clock latency");
	
	localparam NUM_FIFOS = (WIDTH + 71) / 72;
	localparam ROUNDED_WIDTH = NUM_FIFOS * 72;
	logic [ROUNDED_WIDTH-1:0] buffer_front, buffer_back;
	logic [NUM_FIFOS-1:0] buffer_full, buffer_empty;
	assign buffer_back = back;
	assign full = buffer_full[0];

	logic buffer_valid, buffer_ready;
	assign buffer_valid = !buffer_empty[0];
	logic [1:0] buffer_ready_en;

	for (genvar i = 0; i < NUM_FIFOS; i += 1) begin
		logic [63:0] DO, DI;
		logic [7:0] DOP, DIP;
		assign {DIP, DI} = buffer_back[72*i+:72];
		assign buffer_front[72*i+:72] = {DOP, DO};

		FIFO36E1 #( 
			.ALMOST_EMPTY_OFFSET(9'h080),
			.ALMOST_FULL_OFFSET(9'h080),
			.DATA_WIDTH(72),
			.DO_REG(1),
			.EN_SYN("TRUE"),
			.FIFO_MODE("FIFO36_72"),
			.FIRST_WORD_FALL_THROUGH("FALSE"),
			.INIT(0),
			.SIM_DEVICE("7SERIES"),
			.SRVAL(0)
		) fifo0(
			.ALMOSTEMPTY(),
			.ALMOSTFULL(),
			.DBITERR(),
			.DO(DO),
			.DOP(DOP),
			.ECCPARITY(),
			.EMPTY(buffer_empty[i]),
			.FULL(buffer_full[i]),
			.RDCOUNT(),
			.RDERR(),
			.SBITERR(),
			.WRCOUNT(),
			.WRERR(),
			.DI(DI),
			.DIP(DIP),
			.INJECTDBITERR(1'b0),
			.INJECTSBITERR(1'b0),
			.RDCLK(clk),
			.RDEN(buffer_valid && buffer_ready && buffer_ready_en[1]),
			.REGCE(buffer_valid && buffer_ready && buffer_ready_en[1]),
			.RST(!resetn),
			.RSTREG(0),
			.WRCLK(clk),
			.WREN(enqueue)
		);
	end

	logic do_valid, do_ready;
	assign do_ready = dequeue;

	always_ff @(posedge clk or negedge resetn) begin
		if (!resetn) begin
			do_valid <= 0;
			buffer_ready_en <= 0;
		end else begin
			if (buffer_valid && buffer_ready && buffer_ready_en[1]) begin
				do_valid <= 1;
			end else if (do_valid && do_ready) begin
				do_valid <= 0;
			end
			if (buffer_ready) begin
				buffer_ready_en <= (buffer_ready_en << 1) | 1;
			end
		end
	end

	assign buffer_ready = !do_valid || (do_valid && do_ready);
	assign front = buffer_front;
	assign empty = !do_valid;
end
	
endmodule
