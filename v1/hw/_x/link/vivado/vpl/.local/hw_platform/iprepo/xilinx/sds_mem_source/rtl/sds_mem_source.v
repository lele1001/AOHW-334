// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
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

module sds_mem_source #(
    reg [32*8-1:0] MEMORY_CLK_DOMAIN = "memory_clk",
    integer MEMORY_ADDR_WIDTH = 32,
    integer MEMORY_DATA_WIDTH = 64,
    integer MEMORY_NUM_READ_OUTSTANDING = 8, // maximum number of outstanding requests
    integer MEMORY_BURST_LENGTH = 8, // number of transfers in a burst
    integer MEMORY_ARPROT = 0, // AXI AWPROT
    integer MEMORY_ARCACHE = 4'b1110, // 4'b1110 for cached
    
    reg [32*8-1:0] STREAM_CLK_DOMAIN = "stream_clk",
    integer STREAM_DATA_WIDTH = 16,
    
    integer USE_BURST_ALIGNMENT = 1, 
    integer USE_BEAT_ALIGNMENT = 1,
    integer MAX_TRANSFER_SIZE = 1073741824, // bytes
    reg [32*8-1:0] FAMILY = "zynq" 
)(    
    input reg_bus_clk,
    input reg_bus_reset_n,
    input memory_clk,
    input memory_reset_n,
    input stream_clk,
    input stream_reset_n,
     
    // Register bus
    input [11:0] reg_bus_awaddr,
    input [2:0] reg_bus_awprot,
    input reg_bus_awvalid,
    output reg_bus_awready,
    input [31:0] reg_bus_wdata,
    input [3:0] reg_bus_wstrb,
    input reg_bus_wvalid,
    output reg_bus_wready,
    output [1:0] reg_bus_bresp,
    output reg_bus_bvalid,
    input reg_bus_bready,
    input [11:0] reg_bus_araddr,
    input [2:0] reg_bus_arprot,
    input reg_bus_arvalid,
    output reg_bus_arready,
    output [31:0] reg_bus_rdata,
    output [1:0] reg_bus_rresp,
    output reg_bus_rvalid,
    input reg_bus_rready,

    output irq_ap_ready,
    output irq_ap_done,
    
    // Memory bus
    output [MEMORY_ADDR_WIDTH-1:0] memory_araddr,
    output [7:0] memory_arlen,
    output [2:0] memory_arsize,
    output [1:0] memory_arburst,
    output [3:0] memory_arcache,
    output [2:0] memory_arprot,
    output memory_arvalid,
    input memory_arready,
    input [MEMORY_DATA_WIDTH-1:0] memory_rdata,
    input [1:0] memory_rresp,
    input memory_rlast,
    input memory_rvalid,
    output memory_rready,

    // NOTE: temporary workaround for XTLM
    output [MEMORY_ADDR_WIDTH-1:0] memory_awaddr,
    output [7:0] memory_awlen,
    output [2:0] memory_awsize,
    output [1:0] memory_awburst,
    output [3:0] memory_awcache,
    output [2:0] memory_awprot,
    output memory_awvalid,
    input memory_awready,
    output [MEMORY_DATA_WIDTH-1:0] memory_wdata,
    output [MEMORY_DATA_WIDTH/8-1:0] memory_wstrb,
    output memory_wlast,
    output memory_wvalid,
    input memory_wready,
    input [1:0] memory_bresp,
    input memory_bvalid,
    output memory_bready,
    
    // Data source bus (AXI-Stream master)
    output stream_tvalid,
    input stream_tready,
    output [STREAM_DATA_WIDTH-1:0] stream_tdata,
    output stream_tlast
);    

sds_mem_source_core #(
    .MBUS_CLK_DOMAIN(MEMORY_CLK_DOMAIN),        
    .MBUS_ADDR_WIDTH(MEMORY_ADDR_WIDTH),
    .MBUS_DATA_WIDTH(MEMORY_DATA_WIDTH),
    .MBUS_NUM_READ_OUTSTANDING(MEMORY_NUM_READ_OUTSTANDING),
    .MBUS_BURST_LENGTH(MEMORY_BURST_LENGTH),
    .MBUS_ARPROT(MEMORY_ARPROT),
    .MBUS_ARCACHE(MEMORY_ARCACHE),
    
    .STREAM_CLK_DOMAIN(STREAM_CLK_DOMAIN),
    .STREAM_DATA_WIDTH(STREAM_DATA_WIDTH),
    
    .USE_BURST_ALIGNMENT(USE_BURST_ALIGNMENT), 
    .USE_BEAT_ALIGNMENT(USE_BEAT_ALIGNMENT),
    .MAX_TRANSFER_SIZE(MAX_TRANSFER_SIZE),
    .FAMILY(FAMILY)
) sds_mem_source0 (
    .rbus_clk(reg_bus_clk),
    .rbus_reset_n(reg_bus_reset_n),
    .mbus_clk(memory_clk),
    .mbus_reset_n(memory_reset_n),
    .stream_clk(stream_clk),
    .stream_reset_n(stream_reset_n),
    
    // Register bus    
    .rbus_awaddr(reg_bus_awaddr),
    .rbus_awprot(reg_bus_awprot),
    .rbus_awvalid(reg_bus_awvalid),
    .rbus_awready(reg_bus_awready),
    .rbus_wdata(reg_bus_wdata),
    .rbus_wstrb(reg_bus_wstrb),
    .rbus_wvalid(reg_bus_wvalid),
    .rbus_wready(reg_bus_wready),
    .rbus_bresp(reg_bus_bresp),
    .rbus_bvalid(reg_bus_bvalid),
    .rbus_bready(reg_bus_bready),
    .rbus_araddr(reg_bus_araddr),
    .rbus_arprot(reg_bus_arprot),
    .rbus_arvalid(reg_bus_arvalid),
    .rbus_arready(reg_bus_arready),
    .rbus_rdata(reg_bus_rdata),
    .rbus_rresp(reg_bus_rresp),
    .rbus_rvalid(reg_bus_rvalid),
    .rbus_rready(reg_bus_rready),
        
    // Memory bus
    .mbus_araddr(memory_araddr),
    .mbus_arlen(memory_arlen),
    .mbus_arsize(memory_arsize),
    .mbus_arburst(memory_arburst),
    .mbus_arcache(memory_arcache),
    .mbus_arprot(memory_arprot),
    .mbus_arvalid(memory_arvalid),
    .mbus_arready(memory_arready),
    .mbus_rdata(memory_rdata),
    .mbus_rresp(memory_rresp),
    .mbus_rlast(memory_rlast),
    .mbus_rvalid(memory_rvalid),
    .mbus_rready(memory_rready),
    
    // NOTE: temporary workaround for XTLM
    .mbus_awaddr(memory_awaddr),
    .mbus_awlen(memory_awlen),
    .mbus_awsize(memory_awsize),
    .mbus_awburst(memory_awburst),
    .mbus_awcache(memory_awcache),
    .mbus_awprot(memory_awprot),
    .mbus_awvalid(memory_awvalid),
    .mbus_awready(memory_awready),
    .mbus_wdata(memory_wdata),
    .mbus_wstrb(memory_wstrb),
    .mbus_wlast(memory_wlast),
    .mbus_wvalid(memory_wvalid),
    .mbus_wready(memory_wready),
    .mbus_bresp(memory_bresp),
    .mbus_bvalid(memory_bvalid),
    .mbus_bready(memory_bready),
        
    // Streaming bus
    .stream_tvalid(stream_tvalid),
    .stream_tready(stream_tready),
    .stream_tdata(stream_tdata),
    .stream_tlast(stream_tlast),
    
    .done_irq(irq_ap_done)
);    

assign irq_ap_ready = 0;

endmodule
