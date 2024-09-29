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

module sds_regs #(
    RBUS_ADDR_WIDTH = 12,
    NUM_REGS = 1,
    logic [NUM_REGS-1:0][31:0] DEFAULT_VALUES = 0
)(
    input logic rbus_clk,
    input logic rbus_reset_n,
    
    // Register bus
    input [RBUS_ADDR_WIDTH-1:0] rbus_awaddr,
    input [2:0] rbus_awprot,
    input rbus_awvalid,
    output logic rbus_awready,
    input [31:0] rbus_wdata,
    input [3:0] rbus_wstrb,
    input rbus_wvalid,
    output logic rbus_wready,
    output logic [1:0] rbus_bresp,
    output logic rbus_bvalid,
    input rbus_bready,
    input [RBUS_ADDR_WIDTH-1:0] rbus_araddr,
    input [2:0] rbus_arprot,
    input rbus_arvalid,
    output logic rbus_arready,
    output logic [31:0] rbus_rdata,
    output logic [1:0] rbus_rresp,
    output logic rbus_rvalid,
    input rbus_rready,
    
    output logic [NUM_REGS-1:0][31:0] write_values,
    input logic [NUM_REGS-1:0][31:0] fback_values,
    input logic [NUM_REGS-1:0][31:0] read_values
);      

localparam RBUS_BASE_ADDR = 0;

logic rbus_bready_int;
logic rbus_bvalid_int;

always_ff @( posedge rbus_clk or negedge rbus_reset_n) begin
    if (!rbus_reset_n) begin
        write_values <= DEFAULT_VALUES;
    end else begin
        write_values <= fback_values; // to support self-clear
        if (rbus_awvalid && rbus_wvalid && rbus_bready_int) begin
            // Iterate over regs.
            for (int k = 0; k < NUM_REGS; k += 1) begin
                if ((rbus_awaddr & ~3) == ((RBUS_BASE_ADDR + k * 4) & ~3)) begin
                    // Interate over bytes.
                    for (int i = 0; i < 4; i += 1) begin
                        if (rbus_wstrb[i]) begin
                            write_values[k][8*i+:8] <= rbus_wdata[8*i+:8];
                        end
                    end
                end
            end
        end
    end
end    

assign rbus_awready = rbus_wvalid && rbus_bready_int;
assign rbus_wready = rbus_awvalid && rbus_bready_int;
assign rbus_bvalid_int = rbus_awvalid && rbus_wvalid;
assign rbus_bready_int = !rbus_bvalid || (rbus_bvalid && rbus_bready);

// Add register slice on response path.
always @(posedge rbus_clk or negedge rbus_reset_n) begin
    if (!rbus_reset_n) begin
        rbus_bvalid <= 0;
    end else begin
        if (!rbus_bvalid || (rbus_bvalid && rbus_bready)) begin
            rbus_bvalid <= rbus_bvalid_int;
        end
    end
end

assign rbus_bresp = 0;

logic [$bits(rbus_rdata)-1:0] rbus_rdata_int;
logic rbus_rvalid_int;
logic rbus_rready_int;

always_comb begin
    rbus_rdata_int = 0;
    if (rbus_arvalid) begin
        // Iterate over regs.
        for (int k = 0; k < NUM_REGS; k += 1) begin
            if ((rbus_araddr & ~3) == ((RBUS_BASE_ADDR + k * 4) & ~3)) begin
                rbus_rdata_int = read_values[k];
            end
        end
    end
end

assign rbus_arready = rbus_rready_int;
assign rbus_rvalid_int = rbus_arvalid;
assign rbus_rready_int = !rbus_rvalid || (rbus_rvalid && rbus_rready);

// Add register slice on response path.
always @(posedge rbus_clk or negedge rbus_reset_n) begin
    if (!rbus_reset_n) begin
        {rbus_rvalid, rbus_rdata} <= 0;
    end else begin
        if (!rbus_rvalid || (rbus_rvalid && rbus_rready)) begin
            {rbus_rvalid, rbus_rdata} <= {rbus_rvalid_int, rbus_rdata_int};
        end
    end
end

assign rbus_rresp = 0;

endmodule
