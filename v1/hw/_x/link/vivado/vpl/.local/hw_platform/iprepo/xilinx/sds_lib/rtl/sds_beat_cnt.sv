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



module sds_beat_cnt #(
    MAX_TRANSFER_LEN = 256,
    STREAM_DATA_WIDTH = 16
) (
    input logic stream_clk,
    input logic stream_reset_n,
    input logic rbus_clk,
    input logic rbus_reset_n,
    
    // Input stream
    input istream_tvalid,
    output istream_tready,
    input [STREAM_DATA_WIDTH-1:0] istream_tdata,
    input istream_tlast,

    // Output stream
    output ostream_tvalid,
    input ostream_tready,
    output [STREAM_DATA_WIDTH-1:0] ostream_tdata,
    output ostream_tlast,

    // Registers
    input logic wregs_valid,
    input logic [$clog2(MAX_TRANSFER_LEN)-1:0] wregs_num_stream_beats,    
    output logic rregs_valid,
    input logic rregs_ready,
    output logic [$clog2(MAX_TRANSFER_LEN)-1:0] rregs_num_stream_beats
);

logic wqf_valid;
logic wqf_ready;    
logic rqb_valid;
logic rqb_ready;
logic [$clog2(MAX_TRANSFER_LEN)-1:0] rqb_num_stream_beats;
logic [$clog2(MAX_TRANSFER_LEN)-1:0] wqf_num_stream_beats;

sds_queue_cdc #(
  .WIDTH($bits(wregs_num_stream_beats)),
  .DEPTH(32)) 
wqueue_inst (
  .back_clk(rbus_clk),
  .back_reset_n(rbus_reset_n),
  .back_valid(wregs_valid),
  .back_ready(), // never get overflown
  .back_data(wregs_num_stream_beats),
  .front_clk(stream_clk),
  .front_reset_n(stream_reset_n),
  .front_valid(wqf_valid),
  .front_ready(wqf_ready),
  .front_data(wqf_num_stream_beats));

sds_queue_cdc #(
  .WIDTH($bits(rregs_num_stream_beats)),
  .DEPTH(32)) 
rqueue_inst (
  .back_clk(stream_clk),
  .back_reset_n(stream_reset_n),
  .back_valid(rqb_valid),
  .back_ready(rqb_ready),
  .back_data(rqb_num_stream_beats),
  .front_clk(rbus_clk),
  .front_reset_n(rbus_reset_n),
  .front_valid(rregs_valid),
  .front_ready(rregs_ready),
  .front_data(rregs_num_stream_beats));

logic idle_state;
logic [$clog2(MAX_TRANSFER_LEN)-1:0] beat_cnt;
logic [$clog2(MAX_TRANSFER_LEN)-1:0] beat_max;

assign the_last = ((beat_max == 0) && istream_tlast) || ((beat_max != 0) && (beat_cnt == beat_max)); 

always_ff @(posedge stream_clk or negedge stream_reset_n) begin
    if (!stream_reset_n) begin
        idle_state <= 1;
        beat_cnt <= 0;
        beat_max <= 0;
    end else begin
        if (idle_state && wqf_valid) begin
            // Start.
            idle_state <= 0;
            beat_cnt <= 0;
            beat_max <= wqf_num_stream_beats; 
        end else if (!idle_state && istream_tvalid && the_last && ostream_tready && wqf_valid && rqb_ready) begin
            // Restart
            beat_cnt <= 0;
            beat_max <= wqf_num_stream_beats;
        end else if (!idle_state && istream_tvalid && the_last && ostream_tready && rqb_ready) begin
            // Stop.
            idle_state <= 1;
        end else if (!idle_state && !the_last && ostream_tready && istream_tvalid) begin
            // Count            
            beat_cnt <= beat_cnt + 1;
        end
    end
end

assign rqb_num_stream_beats = beat_cnt;

assign wqf_ready = (idle_state && wqf_valid)
    || (!idle_state && istream_tvalid && the_last && ostream_tready && wqf_valid && rqb_ready);

assign rqb_valid = (!idle_state && istream_tvalid && the_last && ostream_tready && wqf_valid && rqb_ready)
    || (!idle_state && istream_tvalid && the_last && ostream_tready && rqb_ready);

assign istream_tready = (!idle_state /*&& istream_tvalid*/ && !the_last && ostream_tready)
    || (!idle_state /*&& istream_tvalid*/ && the_last && ostream_tready && rqb_ready);

assign ostream_tdata = istream_tdata;

assign ostream_tvalid = (!idle_state && istream_tvalid && !the_last /*&& ostream_tready*/)
    || (!idle_state && istream_tvalid && the_last /*&& ostream_tready*/ && rqb_ready);
    
assign ostream_tlast = the_last;

endmodule
