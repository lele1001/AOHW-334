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

module sds_align_beat_to_burst #(
    DATA_WIDTH = 16,
    ALIGNMENT_PERIOD = 16
)(
    input logic stream_clk,
    input logic stream_reset_n,
    input logic rbus_clk,
    input logic rbus_reset_n,
    
    input logic stream_tvalid,
    output logic stream_tready,
    input logic [DATA_WIDTH-1:0] stream_tdata,
    input logic [DATA_WIDTH/8-1:0] stream_tstrb,
    input logic stream_tlast,
    
    output logic aligned_tvalid,
    input logic aligned_tready,
    output logic [DATA_WIDTH-1:0] aligned_tdata,
    output logic [DATA_WIDTH/8-1:0] aligned_tstrb,
    output logic aligned_tlast,
    
    input logic wregs_valid,
    input logic [$clog2(ALIGNMENT_PERIOD)-1:0] wregs_start_pos_m1, // position of the sample before the head
    input logic wregs_head_present, // head alignment needed
    input logic wregs_reserve_byte_shift // reserve extra empty beat for byte alignment
);

localparam BEAT_SIZE = DATA_WIDTH / 8;

logic wqf_valid;
logic wqf_ready;
logic [$clog2(ALIGNMENT_PERIOD)-1:0] wqf_start_pos_m1;
logic wqf_head_present;
logic wqf_reserve_byte_shift;

sds_queue_cdc #(
  .WIDTH($bits({wregs_start_pos_m1, wregs_head_present, wregs_reserve_byte_shift})),
  .DEPTH(32)) 
wqueue_inst (
  .back_clk(rbus_clk),
  .back_reset_n(rbus_reset_n),
  .back_valid(wregs_valid),
  .back_ready(), // never get overflown
  .back_data({wregs_start_pos_m1, wregs_head_present, wregs_reserve_byte_shift}),
  .front_clk(stream_clk),
  .front_reset_n(stream_reset_n),
  .front_valid(wqf_valid),
  .front_ready(wqf_ready),
  .front_data({wqf_start_pos_m1, wqf_head_present, wqf_reserve_byte_shift}));
  
logic idle_state, head_state, body_state, tail_state;
logic [$clog2(ALIGNMENT_PERIOD)-1:0] beat_cnt;
logic last_beat;
logic [$bits(wregs_start_pos_m1)-1:0] start_pos_m1_ff;
logic reserve_byte_shift_ff;

always_ff @(posedge stream_clk or negedge stream_reset_n) begin
    if (!stream_reset_n) begin
        idle_state <= 1;
        head_state <= 0;
        body_state <= 0;
        tail_state <= 0;
        beat_cnt <= 0;
        last_beat <= 0;
        start_pos_m1_ff <= 0;
        reserve_byte_shift_ff <= 0;
    end else begin
        if (idle_state && wqf_valid) begin
            // Start.
            idle_state <= 0;
            if (wqf_head_present) begin
                // Insert head
                head_state <= 1;
            end else begin
                // Pass body
                body_state <= 1;
            end
            beat_cnt <= 0;
            last_beat <= 0;
            start_pos_m1_ff <= wqf_start_pos_m1;
            reserve_byte_shift_ff <= wqf_reserve_byte_shift;
        end else if (head_state && aligned_tready) begin
            beat_cnt <= beat_cnt + 1;
            last_beat <= (beat_cnt == ALIGNMENT_PERIOD - 2);
            if (beat_cnt == start_pos_m1_ff) begin
                // Pass body.
                head_state <= 0;
                body_state <= 1;
            end
        end else if (body_state && aligned_tready && stream_tvalid) begin
            beat_cnt <= beat_cnt + 1;
            last_beat <= (beat_cnt == ALIGNMENT_PERIOD - 2);
            if (stream_tlast) begin
                if (last_beat && !reserve_byte_shift_ff) begin
                    // Tail absent.
                    if (wqf_valid) begin
                        // Restart.
                        if (wqf_head_present) begin
                            // Insert head
                            head_state <= 1;
                        end else begin
                            // Pass body
                            body_state <= 1;
                        end
                        beat_cnt <= 0;
                        last_beat <= 0;
                        start_pos_m1_ff <= wqf_start_pos_m1;
                        reserve_byte_shift_ff <= wqf_reserve_byte_shift;
                    end else begin
                        // Stop
                        idle_state <= 1;
                        body_state <= 0;
                    end
                end else begin
                    // Insert tail
                    tail_state <= 1;
                    body_state <= 0;
                end
            end
        end else if (tail_state && aligned_tready) begin
            beat_cnt <= beat_cnt + 1;
            last_beat <= (beat_cnt == ALIGNMENT_PERIOD - 2);
            if (last_beat) begin
                tail_state <= 0;
                if (wqf_valid) begin
                    // Restart.
                    if (wqf_head_present) begin
                        // Insert head
                        head_state <= 1;
                    end else begin
                        // Pass body
                        body_state <= 1;
                    end
                    beat_cnt <= 0;
                    last_beat <= 0;
                    start_pos_m1_ff <= wqf_start_pos_m1;
                    reserve_byte_shift_ff <= wqf_reserve_byte_shift;
                end else begin
                    // Stop.
                    idle_state <= 1;
                end
            end
        end
        
    end
end

assign wqf_ready = (idle_state && wqf_valid)
    || ((body_state && aligned_tready && stream_tvalid) && stream_tlast && (last_beat && !reserve_byte_shift_ff) && wqf_valid)
    || ((tail_state && aligned_tready) && last_beat && wqf_valid);

assign stream_tready = body_state && aligned_tready; 

assign aligned_tvalid = head_state || (body_state && stream_tvalid) || tail_state;
assign aligned_tdata = stream_tdata;
assign aligned_tstrb = (body_state)? stream_tstrb : '0;
assign aligned_tlast = (tail_state && last_beat) || (body_state && stream_tlast && last_beat && !reserve_byte_shift_ff);

endmodule
