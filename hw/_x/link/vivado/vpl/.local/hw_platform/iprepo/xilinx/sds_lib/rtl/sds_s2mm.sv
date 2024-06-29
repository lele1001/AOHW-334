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

module sds_s2mm #(
    MBUS_ADDR_WIDTH = 32,
    MBUS_DATA_WIDTH = 64,
    MBUS_NUM_WRITE_OUTSTANDING = 8, // maximum number of outstanding requests
    MBUS_BURST_LENGTH = 4, // number of transfers in a burst
    MBUS_AWPROT = 0, // AXI AWPROT
    MBUS_AWCACHE = 4'b1110, // 4'b1110 for cached
    
    longint MAX_TRANSFER_LEN = 2**32
)( 
    input logic mbus_clk,
    input logic mbus_reset_n,
    input logic rbus_clk,
    input logic rbus_reset_n,
    
    // Data sink bus (AXI-Stream slave)
    input logic stream_tvalid,
    output logic stream_tready,
    input logic [MBUS_DATA_WIDTH-1:0] stream_tdata,
    input logic [MBUS_DATA_WIDTH/8-1:0] stream_tstrb,
    input logic stream_tlast,

    // Memory bus
    output logic [MBUS_ADDR_WIDTH-1:0] mbus_awaddr,
    output logic [7:0] mbus_awlen,
    output logic [2:0] mbus_awsize,
    output logic [1:0] mbus_awburst,
    output logic [3:0] mbus_awcache,
    output logic [2:0] mbus_awprot,
    output logic mbus_awvalid,
    input logic mbus_awready,
    output logic [MBUS_DATA_WIDTH-1:0] mbus_wdata,
    output logic [MBUS_DATA_WIDTH/8-1:0] mbus_wstrb,
    output logic mbus_wlast,
    output logic mbus_wvalid,
    input logic mbus_wready,
    input logic [1:0] mbus_bresp,
    input logic mbus_bvalid,
    output logic mbus_bready,   

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
logic buffer_full;

always_ff @(posedge mbus_clk or negedge mbus_reset_n) begin
    if (!mbus_reset_n) begin
        idle <= 1;
        run <= 0;
        beat_cnt <= 0;
        last_beat <= 0;
        burst_cnt <= 0;
        last_burst <= 0;
        mbus_awvalid <= 0;
        addr_cnt <= 0;
    end else begin
        if (mbus_awvalid && mbus_awready) begin
            mbus_awvalid <= 0;
        end        
    
        if (idle && wqf_valid && !mbus_sm_empty && !mbus_awvalid) begin
            // Start.
            idle <= 0;
            run <= 1;
            beat_cnt <= 0;
            last_beat <= 0;
            burst_cnt <= wqf_num_bursts_m1;
            last_burst <= wqf_num_bursts_eq1;
            mbus_awvalid <= 1;
            addr_cnt <= wqf_base_addr >> $clog2(BURST_SIZE);
        end else if (run && (stream_tlast || last_burst) && rqb_ready && wqf_valid 
              && last_beat && !mbus_awvalid && stream_tvalid && !buffer_full && !mbus_sm_empty) begin
            // Restart.
            beat_cnt <= 0;
            last_beat <= 0;
            burst_cnt <= wqf_num_bursts_m1;
            last_burst <= wqf_num_bursts_eq1;
            mbus_awvalid <= 1;
            addr_cnt <= wqf_base_addr >> $clog2(BURST_SIZE);
        end else if (run && (stream_tlast || last_burst) && rqb_ready && !wqf_valid 
              && last_beat && !mbus_awvalid && stream_tvalid && !buffer_full && !mbus_sm_empty) begin
            // Stop.
            run <= 0;
            idle <= 1;
        end else if (run && !(stream_tlast || last_burst) && last_beat && !mbus_awvalid && stream_tvalid && !buffer_full 
              && !mbus_sm_empty) begin
            // Next burst.
            beat_cnt <= 0;
            last_beat <= 0;
            burst_cnt <= burst_cnt - 1;
            last_burst <= (burst_cnt == 1);
            mbus_awvalid <= 1;
            addr_cnt <= addr_cnt + 1;
        end else if (run && !last_beat && stream_tvalid && !buffer_full) begin
            // Next beat.
            beat_cnt <= beat_cnt + 1;
            last_beat <= (beat_cnt == MBUS_BURST_LENGTH - 2);
        end
    end
end

assign wqf_ready = (idle && wqf_valid && !mbus_sm_empty && !mbus_awvalid)
    || (run && (stream_tlast || last_burst) && rqb_ready && wqf_valid 
          && last_beat && !mbus_awvalid && stream_tvalid && !buffer_full && !mbus_sm_empty);

logic addr_set;
assign addr_set = (idle && wqf_valid && !mbus_sm_empty && !mbus_awvalid)
    || (run && (stream_tlast || last_burst) && rqb_ready && wqf_valid && last_beat && !mbus_awvalid && stream_tvalid && !buffer_full && !mbus_sm_empty)
    || (run && !(stream_tlast || last_burst) && last_beat && !mbus_awvalid && stream_tvalid && !buffer_full && !mbus_sm_empty);

assign mbus_awaddr = addr_cnt << $clog2(BURST_SIZE);
assign mbus_awlen = MBUS_BURST_LENGTH - 1;
assign mbus_awsize = $clog2(MBUS_DATA_WIDTH / 8);
assign mbus_awburst = 1;
assign mbus_awcache = MBUS_AWCACHE;
assign mbus_awprot = MBUS_AWPROT;

// Fifo slice for data
//
assign stream_tready = (run && !last_beat /*&& stream_tvalid*/ && !buffer_full)
    || (run && last_beat && !(stream_tlast || last_burst) && !mbus_awvalid /*&& stream_tvalid*/ && !buffer_full && !mbus_sm_empty)
    || (run && last_beat && (stream_tlast || last_burst) && rqb_ready && !mbus_awvalid /*&& stream_tvalid*/ && !buffer_full && !mbus_sm_empty);

logic buffer_empty;
logic buffer_tready;
logic buffer_tvalid;
logic [$bits(stream_tdata)-1:0] buffer_tdata;
logic [$bits(stream_tdata)/8-1:0] buffer_tstrb;
logic buffer_tlast;
logic buffer_last_burst;

sds_queue #(
    .WIDTH($bits({buffer_tdata, buffer_tstrb, buffer_tlast, buffer_last_burst})),
    .LENGTH(32 /*MBUS_NUM_WRITE_OUTSTANDING * MBUS_BURST_LENGTH*/)
) buffer (
    .clk(mbus_clk),
    .resetn(mbus_reset_n),
    .enqueue(stream_tvalid && stream_tready),
    .dequeue(buffer_tready && buffer_tvalid),
    .back({stream_tdata, stream_tstrb, last_beat, (stream_tlast || last_burst)}),
    .front({buffer_tdata, buffer_tstrb, buffer_tlast, buffer_last_burst}),
    .full(buffer_full),
    .empty(buffer_empty)
);

assign buffer_tvalid = !buffer_empty;

assign buffer_tready = mbus_wready;
assign mbus_wvalid = buffer_tvalid;
assign mbus_wdata = buffer_tdata;
assign mbus_wstrb = buffer_tstrb;
assign mbus_wlast = buffer_tlast;
logic mbus_last_burst;
assign mbus_last_burst = buffer_last_burst;

// Response channel
//
assign mbus_bready = 1;


// Outstanding request semaphore
//
sds_semaphore #(
    .MAX_COUNT(MBUS_NUM_WRITE_OUTSTANDING),
    .INIT_COUNT(MBUS_NUM_WRITE_OUTSTANDING)
) mbus_sm_inst (
    .clk(mbus_clk),
    .reset_n(mbus_reset_n),
    .set(mbus_bready && mbus_bvalid),
    .get(!mbus_awvalid && addr_set),
    .empty(mbus_sm_empty),
    .full()
);

// Pass last burst flag to the response side
//
logic mbus_blast;
logic burst_bypass_queue_empty;

// Delay signals by the same amount of clocks as data travelling through interconnect.
sds_queue #(
    .WIDTH($bits({mbus_last_burst})),
    .LENGTH(MBUS_NUM_WRITE_OUTSTANDING)
) burst_bypass_queue (
    .clk(mbus_clk),
    .resetn(mbus_reset_n),
    .enqueue(mbus_wvalid && mbus_wready && mbus_wlast),
    .dequeue(mbus_bready && mbus_bvalid),
    .back({mbus_last_burst}),
    .front({mbus_blast}),
    .full(),
    .empty(burst_bypass_queue_empty)
);

assign rqb_valid = (!burst_bypass_queue_empty && mbus_blast && mbus_bready && mbus_bvalid);

endmodule
