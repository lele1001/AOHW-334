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

module sds_align_burst_to_beat #(
    DATA_WIDTH = 16,
    ALIGNMENT_PERIOD = 16,
    longint MAX_TRANSFER_LEN = 2**32 // bytes
) (
    input logic stream_clk,
    input logic stream_reset_n,
    input logic rbus_clk,
    input logic rbus_reset_n,
    
    // Input stream
    input logic stream_tvalid,
    output logic stream_tready,
    input logic [DATA_WIDTH-1:0] stream_tdata,
    input logic stream_tlast,
    
    // Output stream
    output logic aligned_tvalid,
    input logic aligned_tready,
    output logic [DATA_WIDTH-1:0] aligned_tdata,
    output logic [DATA_WIDTH/8-1:0] aligned_tstrb,
    output logic aligned_tlast,
    
    input logic wregs_valid,
    input logic [$clog2(ALIGNMENT_PERIOD)-1:0] wregs_start_pos_m1, // position of the sample before the head
    input logic wregs_head_present, // head alignment needed
    input logic [$clog2(MAX_TRANSFER_LEN)-1:0] wregs_end_pos_m2, // postion of the sample before the tail
    input logic [DATA_WIDTH/8-1:0] wregs_tail_mask, // mask last beat
    input logic wregs_beat_end_pos_eq1 // stream length equals 1
);

logic wqf_valid;
logic wqf_ready;
logic [$clog2(ALIGNMENT_PERIOD)-1:0] wqf_start_pos_m1;
logic wqf_head_present;
logic [$clog2(MAX_TRANSFER_LEN)-1:0] wqf_end_pos_m2;
logic [DATA_WIDTH/8-1:0] wqf_tail_mask;
logic wqf_beat_end_pos_eq1;

sds_queue_cdc #(
  .WIDTH($bits({wregs_start_pos_m1, wregs_head_present, wregs_end_pos_m2, wregs_tail_mask, wregs_beat_end_pos_eq1})),
  .DEPTH(32)) 
wqueue_inst (
  .back_clk(rbus_clk),
  .back_reset_n(rbus_reset_n),
  .back_valid(wregs_valid),
  .back_ready(), // never get overflown
  .back_data({wregs_start_pos_m1, wregs_head_present, wregs_end_pos_m2, wregs_tail_mask, wregs_beat_end_pos_eq1}),
  .front_clk(stream_clk),
  .front_reset_n(stream_reset_n),
  .front_valid(wqf_valid),
  .front_ready(wqf_ready),
  .front_data({wqf_start_pos_m1, wqf_head_present, wqf_end_pos_m2, wqf_tail_mask, wqf_beat_end_pos_eq1}));


logic idle, run;
logic [$clog2(MAX_TRANSFER_LEN)-1:0] cnt;
logic [$bits(aligned_tstrb)-1:0] strb;
logic last;
logic valid;
logic [$bits(wregs_start_pos_m1)-1:0] start_pos_m1_ff1;
logic [$bits(wregs_end_pos_m2)-1:0] end_pos_m2_ff1;
logic [$bits(wregs_tail_mask)-1:0] tail_mask_ff1;
logic beat_end_pos_eq1_ff1;

always_ff @(posedge stream_clk or negedge stream_reset_n) begin
    if (!stream_reset_n) begin
        idle <= 1;
        run <= 0;
        cnt <= 0;
        last <= 0;
        valid <= 0;
        start_pos_m1_ff1 <= 0;
        end_pos_m2_ff1 <= 0;
        strb <= 0;
        tail_mask_ff1 <= 0;
        beat_end_pos_eq1_ff1 <= 0;
    end else begin
        if (idle && wqf_valid) begin
            idle <= 0;
            run <= 1;
            cnt <= 0;
            if (!wqf_head_present) begin
                valid <= 1;
                if (wqf_beat_end_pos_eq1) begin
                    last <= 1;
                    strb <= wqf_tail_mask;
                end else begin
                    last <= 0;
                    strb <= '1;
                end
            end else begin
                valid <= 0;
                last <= 0;
                strb <= '0;
            end
            start_pos_m1_ff1 <= wqf_start_pos_m1;
            end_pos_m2_ff1 <= wqf_end_pos_m2;
            tail_mask_ff1 <= wqf_tail_mask;
            beat_end_pos_eq1_ff1 <= wqf_beat_end_pos_eq1;
        end else if (run && stream_tvalid && aligned_tready) begin
            if (stream_tlast) begin
                if (wqf_valid) begin
                    cnt <= 0;
                    if (!wqf_head_present) begin
                        valid <= 1;
                        if (wqf_beat_end_pos_eq1) begin
                            last <= 1;
                            strb <= wqf_tail_mask;
                        end else begin
                            last <= 0;
                            strb <= '1;
                        end
                    end else begin
                        valid <= 0;
                        last <= 0;
                        strb <= '0;
                    end
                    start_pos_m1_ff1 <= wqf_start_pos_m1;
                    end_pos_m2_ff1 <= wqf_end_pos_m2;
                    tail_mask_ff1 <= wqf_tail_mask;
                    beat_end_pos_eq1_ff1 <= wqf_beat_end_pos_eq1;
                end else begin
                    idle <= 1;
                    run <= 0;
                    valid <= 0;
                    last <= 0;
                    strb <= '0;
                end
            end else begin
                if (!valid && cnt == start_pos_m1_ff1) begin
                    valid <= 1;
                    if (beat_end_pos_eq1_ff1) begin
                        last <= 1;
                        strb <= tail_mask_ff1;
                    end else begin
                        last <= 0;
                        strb <= '1;
                    end
                end else if (valid && cnt == end_pos_m2_ff1) begin
                    last <= 1;
                    strb <= tail_mask_ff1;
                end else if (valid && last) begin
                    last <= 0;
                    valid <= 0;
                    strb <= '0;
                end
                cnt <= cnt + 1;                
            end
        end
    end
end

assign wqf_ready = (idle && wqf_valid)
    || (run && stream_tvalid && aligned_tready && stream_tlast && wqf_valid);

assign stream_tready = aligned_tready;
assign aligned_tvalid = stream_tvalid && valid;
assign aligned_tdata = stream_tdata;
assign aligned_tstrb = strb;
assign aligned_tlast = last;

endmodule
