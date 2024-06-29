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
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/04/2018 03:37:01 PM
// Design Name: 
// Module Name: sds_apctrl_reg
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module sds_apctrl #(
    RBUS_ADDR = 0
)(
    input logic rbus_clk,
    input logic rbus_reset_n,
        
    // Register bus
    input logic [31:0] rbus_awaddr,
    input logic [2:0] rbus_awprot,
    input logic rbus_awvalid,
    output logic rbus_awready,
    input logic [31:0] rbus_wdata,
    input logic [3:0] rbus_wstrb,
    input logic rbus_wvalid,
    output logic rbus_wready,
    output logic [1:0] rbus_bresp,
    output logic rbus_bvalid,
    input logic rbus_bready,
    input logic [31:0] rbus_araddr,
    input logic [2:0] rbus_arprot,
    input logic rbus_arvalid,
    output logic rbus_arready,
    output logic [31:0] rbus_rdata,
    output logic [1:0] rbus_rresp,
    output logic rbus_rvalid,
    input logic rbus_rready,

    // Scalar handshake
    output logic scalar_rbus_mc_en,
    output logic scalar_rbus_start_valid,
    input logic scalar_rbus_start_ready,
    output logic scalar_rbus_cont_valid,
    input logic scalar_rbus_cont_ready,
    input logic scalar_rbus_ready_valid,
    output logic scalar_rbus_ready_ready,
    input logic scalar_rbus_done_valid,
    output logic scalar_rbus_done_ready,

    output logic irq_ap_ready,
    output logic irq_ap_done
);  

assign scalar_rbus_mc_en = 1;

// Control flag write logic
//
logic start_flag;
logic ready_flag;
logic done_flag;
logic cont_flag;
logic irq_ap_ready_en;
logic irq_ap_done_en;

assign scalar_rbus_start_valid = start_flag;
assign scalar_rbus_ready_ready = !ready_flag;
assign scalar_rbus_done_ready = !done_flag;
assign scalar_rbus_cont_valid = cont_flag;

always_ff @(posedge rbus_clk or negedge rbus_reset_n) begin
    if (!rbus_reset_n) begin
        start_flag <= 0;
        ready_flag <= 0;
        done_flag <= 0;
        cont_flag <= 0;
        irq_ap_ready_en <= 0;
        irq_ap_done_en <= 0;
    end else begin
        if (scalar_rbus_start_valid && scalar_rbus_start_ready && scalar_rbus_mc_en) begin
            start_flag <= 0;
        end
        if (scalar_rbus_ready_valid && scalar_rbus_ready_ready && scalar_rbus_mc_en) begin 
            ready_flag <= 1;
        end
        if (scalar_rbus_done_valid && scalar_rbus_done_ready && scalar_rbus_mc_en) begin
            done_flag <= 1;
        end
        if (scalar_rbus_cont_valid && scalar_rbus_cont_ready && scalar_rbus_mc_en) begin
            cont_flag <= 0;
        end
        if (rbus_awvalid && rbus_wvalid && rbus_bready) begin
            if (((rbus_awaddr & ~3) == (RBUS_ADDR & ~3)) && (rbus_wstrb == 4'hF)) begin
                if (rbus_wdata[16]) begin
                    start_flag <= rbus_wdata[0];
                end
                if (rbus_wdata[17]) begin
                    ready_flag <= rbus_wdata[1];    
                end
                if (rbus_wdata[18]) begin
                    done_flag <= rbus_wdata[2];
                end
                if (rbus_wdata[19]) begin
                    cont_flag <= rbus_wdata[3]; 
                end
                if (rbus_wdata[20]) begin
                    irq_ap_ready_en <= rbus_wdata[4];
                end
                if (rbus_wdata[21]) begin
                    irq_ap_done_en <= rbus_wdata[5];
                end
            end
        end
    end
end    

assign rbus_bresp = 0;
assign rbus_awready = rbus_wvalid && rbus_bready;
assign rbus_wready = rbus_awvalid && rbus_bready;
assign rbus_bvalid = rbus_awvalid && rbus_wvalid;

// Control flag read logic
//
always_comb begin
    rbus_rdata = 0;
    if (rbus_arvalid && rbus_rready) begin
        if (((rbus_araddr & ~3) == (RBUS_ADDR & ~3))) begin
            rbus_rdata[0] = start_flag;
            rbus_rdata[1] = ready_flag;
            rbus_rdata[2] = done_flag;
            rbus_rdata[3] = cont_flag;
            rbus_rdata[4] = irq_ap_ready_en;
            rbus_rdata[5] = irq_ap_done_en;
        end
    end
end

assign rbus_rresp = 0;
assign rbus_arready = rbus_rready;
assign rbus_rvalid = rbus_arvalid;

assign irq_ap_ready = ready_flag && irq_ap_ready_en;
assign irq_ap_done = done_flag && irq_ap_done_en;

endmodule
