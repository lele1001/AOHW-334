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

module sds_mm2s #(
    MBUS_ADDR_WIDTH = 32,
    MBUS_DATA_WIDTH = 64,
    MBUS_NUM_READ_OUTSTANDING = 8, // maximum number of outstanding requests
    MBUS_BURST_LENGTH = 4, // number of transfers in a burst
    MBUS_ARPROT = 0, // AXI AWPROT
    MBUS_ARCACHE = 4'b1110, // 4'b1110 for cached
    
    longint MAX_TRANSFER_LEN = 2**31
) ( 
    input logic mbus_clk,
    input logic mbus_reset_n,
    input logic rbus_clk,
    input logic rbus_reset_n,

    // Memory bus
    output logic [MBUS_ADDR_WIDTH-1:0] mbus_araddr,
    output logic [7:0] mbus_arlen,
    output logic [2:0] mbus_arsize,
    output logic [1:0] mbus_arburst,
    output logic [3:0] mbus_arcache,
    output logic [2:0] mbus_arprot,
    output logic mbus_arvalid,
    input logic mbus_arready,
    input logic [MBUS_DATA_WIDTH-1:0] mbus_rdata,
    input logic [1:0] mbus_rresp,
    input logic mbus_rlast,
    input logic mbus_rvalid,
    output logic mbus_rready,
    
    // Data source bus (AXI-Stream master)
    output logic stream_tvalid,
    input logic stream_tready,
    output logic [MBUS_DATA_WIDTH-1:0] stream_tdata,
    output logic stream_tlast,
    
    // Registers
    input logic wregs_valid,
    input logic [MBUS_ADDR_WIDTH-1:0] wregs_base_addr, // base address, burst aligned
    input logic [$clog2(MAX_TRANSFER_LEN)-1:0] wregs_num_bursts_m1, // bursts in a transfer minus 1
    input logic wregs_num_bursts_eq1, // number of bursts is equal to 1
    
    output logic rregs_valid,
    input logic rregs_ready
);

localparam BURST_SIZE = MBUS_BURST_LENGTH * MBUS_DATA_WIDTH / 8;

logic wqf_valid;
logic wqf_ready;
logic [MBUS_ADDR_WIDTH-1:0] wqf_base_addr;
logic [$clog2(MAX_TRANSFER_LEN)-1:0] wqf_num_bursts_m1;
logic wqf_num_bursts_eq1;

logic rqb_valid;
logic rqb_ready;

sds_queue_cdc #(
  .WIDTH($bits({wregs_base_addr,
    wregs_num_bursts_m1,
    wregs_num_bursts_eq1})),
  .DEPTH(32)) 
wqueue_inst (
  .back_clk(rbus_clk),
  .back_reset_n(rbus_reset_n),
  .back_valid(wregs_valid),
  .back_ready(), // never get overflown
  .back_data({wregs_base_addr,
    wregs_num_bursts_m1,
    wregs_num_bursts_eq1}),
  .front_clk(mbus_clk),
  .front_reset_n(mbus_reset_n),
  .front_valid(wqf_valid),
  .front_ready(wqf_ready),
  .front_data({wqf_base_addr,
    wqf_num_bursts_m1,
    wqf_num_bursts_eq1}));

sds_queue_cdc #(
  .WIDTH(1),
  .DEPTH(32)) 
rqueue_inst (
  .back_clk(mbus_clk),
  .back_reset_n(mbus_reset_n),
  .back_valid(rqb_valid),
  .back_ready(rqb_ready),
  .back_data(1'b0),
  .front_clk(rbus_clk),
  .front_reset_n(rbus_reset_n),
  .front_valid(rregs_valid),
  .front_ready(rregs_ready),
  .front_data());

// Address generator
//
logic idle, run;
logic [$clog2(MBUS_BURST_LENGTH)-1:0] beat_cnt;
logic last_beat;
logic [$bits(wregs_num_bursts_m1)-1:0] burst_cnt;
logic last_burst;
logic [$bits(wregs_base_addr)-1:0] addr_cnt;
logic mbus_sm_empty;

logic [1:0] stream_rresp;
logic stream_last_beat;

always_ff @(posedge mbus_clk or negedge mbus_reset_n) begin
    if (!mbus_reset_n) begin
        idle <= 1;
        run <= 0;
        beat_cnt <= 0;
        last_beat <= 0;
        burst_cnt <= 0;
        last_burst <= 0;
        addr_cnt <= 0;
        mbus_arvalid <= 0;
    end else begin
        if (mbus_arvalid && mbus_arready) begin
            mbus_arvalid <= 0;
        end
        
        if (wqf_valid && idle && !mbus_sm_empty && !mbus_arvalid) begin
            // Start.
            idle <= 0;
            run <= 1;
            beat_cnt <= 0;
            last_beat <= 0;
            burst_cnt <= wqf_num_bursts_m1;
            last_burst <= wqf_num_bursts_eq1;
            addr_cnt <= wqf_base_addr >> $clog2(BURST_SIZE);
            mbus_arvalid <= 1;
        end else if (run && wqf_valid && rqb_ready && last_burst && last_beat && !mbus_arvalid && !mbus_sm_empty) begin
            // Restart.
            beat_cnt <= 0;
            last_beat <= 0;
            burst_cnt <= wqf_num_bursts_m1;
            last_burst <= wqf_num_bursts_eq1;
            addr_cnt <= wqf_base_addr >> $clog2(BURST_SIZE);
            mbus_arvalid <= 1;
        end else if (run && !wqf_valid && rqb_ready && last_burst && last_beat && !mbus_arvalid && !mbus_sm_empty) begin
            // Stop.
            run <= 0;
            idle <= 1;
        end else if (run && !last_burst && last_beat && !mbus_arvalid && !mbus_sm_empty) begin
            // Next burst.
            beat_cnt <= 0;
            last_beat <= 0;
            burst_cnt <= burst_cnt - 1;
            last_burst <= (burst_cnt == 1);
            addr_cnt <= addr_cnt + 1;
            mbus_arvalid <= 1;
        end else if (run && !last_beat) begin
            // Next beat.
            beat_cnt <= beat_cnt + 1;
            last_beat <= (beat_cnt == MBUS_BURST_LENGTH - 2);
        end
    end
end

assign wqf_ready = (wqf_valid && idle && !mbus_sm_empty && !mbus_arvalid)
    || (run && wqf_valid && rqb_ready && last_burst && last_beat && !mbus_arvalid && !mbus_sm_empty); 

// Adddress channel
//
assign mbus_araddr = addr_cnt << $clog2(BURST_SIZE);
assign mbus_arlen = MBUS_BURST_LENGTH - 1;
assign mbus_arsize = $clog2(MBUS_DATA_WIDTH / 8);
assign mbus_arburst = 1;
assign mbus_arcache = MBUS_ARCACHE;
assign mbus_arprot = MBUS_ARPROT;

// Pass last burst flag to the response side
//
logic mbus_rlast_burst;
logic burst_bypass_queue_empty;

// Delay signals by the same amount of clocks as data travelling through interconnect.
sds_queue #(
    .WIDTH($bits({last_burst})),
    .LENGTH(MBUS_NUM_READ_OUTSTANDING)
) burst_bypass_queue (
    .clk(mbus_clk),
    .resetn(mbus_reset_n),
    .enqueue(mbus_arvalid && mbus_arready),
    .dequeue(mbus_rready && mbus_rvalid && mbus_rlast),
    .back({last_burst}),
    .front({mbus_rlast_burst}),
    .full(),
    .empty(burst_bypass_queue_empty)
);

assign rqb_valid = (!burst_bypass_queue_empty && mbus_rready && mbus_rvalid && mbus_rlast && mbus_rlast_burst);

// Buffer data
///
logic stream_queue_empty, stream_queue_full;
logic stream_last_burst;

sds_queue #(
    .WIDTH($bits({mbus_rdata, mbus_rresp, mbus_rlast, mbus_rlast_burst})),
    .LENGTH(MBUS_NUM_READ_OUTSTANDING * MBUS_BURST_LENGTH)
) stream_queue (
    .clk(mbus_clk),
    .resetn(mbus_reset_n),
    .enqueue(mbus_rready && mbus_rvalid),
    .dequeue(stream_tready && stream_tvalid),
    .back({mbus_rdata, mbus_rresp, mbus_rlast, mbus_rlast_burst}),
    .front({stream_tdata, stream_rresp, stream_last_beat, stream_last_burst}),
    .full(stream_queue_full),
    .empty(stream_queue_empty)
);

assign mbus_rready = 1; // queue should never get full because of the semaphore
assign stream_tvalid = !stream_queue_empty;
assign stream_tlast = stream_last_burst && stream_last_beat;

// Outstanding request semaphore
//
sds_semaphore #(
    .MAX_COUNT(MBUS_NUM_READ_OUTSTANDING),
    .INIT_COUNT(MBUS_NUM_READ_OUTSTANDING)
) mbus_sm_inst (
    .clk(mbus_clk),
    .reset_n(mbus_reset_n),
    .set(stream_tready && stream_tvalid && stream_last_beat),
    .get(mbus_arvalid && mbus_arready),
    .empty(mbus_sm_empty),
    .full()
);

endmodule
