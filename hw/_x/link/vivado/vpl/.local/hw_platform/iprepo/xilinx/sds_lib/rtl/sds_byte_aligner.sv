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

module sds_byte_aligner #(
    DATA_WIDTH = 64
) (
    input logic stream_clk,
    input logic stream_reset_n,
    input logic rbus_clk,
    input logic rbus_reset_n,
    
    // Input stream
    output logic stream_tready,
    input logic stream_tvalid,
    input logic [DATA_WIDTH-1:0] stream_tdata,
    input logic [DATA_WIDTH/8-1:0] stream_tstrb,
    input logic stream_tlast,
    
    // Output stream
    input logic aligned_tready,
    output logic aligned_tvalid,
    output logic [DATA_WIDTH-1:0] aligned_tdata,
    output logic [DATA_WIDTH/8-1:0] aligned_tstrb,
    output logic aligned_tlast,
    
    // Registers
    input logic wregs_valid,    
    input logic [$clog2(DATA_WIDTH/8)-1:0] wregs_byte_shift_m1, //byte shift
    input logic wregs_use_byte_shift
);

logic wqf_valid;
logic wqf_ready;
logic [$clog2(DATA_WIDTH/8)-1:0] wqf_byte_shift_m1;
logic wqf_use_byte_shift;

sds_queue_cdc #(
  .WIDTH($bits({wregs_byte_shift_m1, wregs_use_byte_shift})),
  .DEPTH(32)) 
wqueue_inst (
  .back_clk(rbus_clk),
  .back_reset_n(rbus_reset_n),
  .back_valid(wregs_valid),
  .back_ready(), // never get overflown
  .back_data({wregs_byte_shift_m1, wregs_use_byte_shift}),
  .front_clk(stream_clk),
  .front_reset_n(stream_reset_n),
  .front_valid(wqf_valid),
  .front_ready(wqf_ready),
  .front_data({wqf_byte_shift_m1, wqf_use_byte_shift}));


logic idle, run;
logic [$bits(wregs_byte_shift_m1)-1:0] byte_shift_m1_ff1;
logic use_byte_shift_ff1;

// Start-ready state-machine to latch register values.
always_ff @(posedge stream_clk or negedge stream_reset_n) begin
    if (!stream_reset_n) begin
        idle <= 1;
        run <= 0;
        byte_shift_m1_ff1 <= 0;
        use_byte_shift_ff1 <= 0;
    end else begin
        if (idle && wqf_valid) begin
            // Start
            idle <= 0;
            run <= 1;
            byte_shift_m1_ff1 <= wqf_byte_shift_m1;
            use_byte_shift_ff1 <= wqf_use_byte_shift;
        end else if (run && stream_tvalid && aligned_tready) begin
            if (stream_tlast) begin
                if (wqf_valid) begin
                    // Restart
                    byte_shift_m1_ff1 <= wqf_byte_shift_m1;
                    use_byte_shift_ff1 <= wqf_use_byte_shift;
                end else begin
                    // Stop
                    idle <= 1;
                    run <= 0;
                end
            end
        end
    end
end

assign wqf_ready = (idle && wqf_valid)
    ||((run && stream_tvalid && aligned_tready) && stream_tlast && wqf_valid);

logic [DATA_WIDTH/8-1:0][2*DATA_WIDTH-1:0] shifted_data_mux;
logic [2*DATA_WIDTH-1:0] shifted_data;
logic [DATA_WIDTH/8-1:0][2*DATA_WIDTH/8-1:0] shifted_strb_mux;
logic [2*DATA_WIDTH/8-1:0] shifted_strb;

// Shift bytes.
always_comb begin
    // Generate shifts.
    for (int i = 0; i < DATA_WIDTH / 8; i++) begin
        shifted_data_mux[i] = {stream_tdata, {DATA_WIDTH{1'b0}}} >> (i * 8);
        shifted_strb_mux[i] = {stream_tstrb, {DATA_WIDTH/8{1'b0}}} >> (i * 1);
    end
    shifted_data = (shifted_data_mux[byte_shift_m1_ff1] >> 8);
    shifted_strb = (shifted_strb_mux[byte_shift_m1_ff1] >> 1);
end

logic [DATA_WIDTH-1:0] leftover_data;
logic [DATA_WIDTH/8-1:0] leftover_strb;

// Stitch adjacent shifted beats.
// Multiplex shifts and merge with the leftover_data from the previos beat.
always_ff @(posedge stream_clk or negedge stream_reset_n) begin
    if (!stream_reset_n) begin
        leftover_data <= 0;
        leftover_strb <= 0;
        aligned_tdata <= 0;
        aligned_tstrb <= 0;
        aligned_tlast <= 0;
        aligned_tvalid <= 0;
    end else begin
        if (idle && wqf_valid) begin
            leftover_data <= 0;
            leftover_strb <= 0;
        end else if (aligned_tready) begin
            if (stream_tvalid) begin
                if (use_byte_shift_ff1) begin
                    if (run && stream_tlast && wqf_valid) begin
                        leftover_data <= 0;
                        leftover_strb <= 0;
                    end else begin
                        leftover_data <= shifted_data >> DATA_WIDTH;
                        leftover_strb <= shifted_strb >> (DATA_WIDTH/8);
                    end
                end else begin
                    leftover_data <= 0;
                    leftover_strb <= 0;
                end
            end
        end

        if (aligned_tready) begin
            if (stream_tvalid) begin
                aligned_tdata <= leftover_data | shifted_data;
                aligned_tstrb <= leftover_strb | shifted_strb;
                aligned_tlast <= stream_tlast;
            end
            aligned_tvalid <= stream_tvalid;
        end

    end
end

assign stream_tready = aligned_tready;

endmodule
