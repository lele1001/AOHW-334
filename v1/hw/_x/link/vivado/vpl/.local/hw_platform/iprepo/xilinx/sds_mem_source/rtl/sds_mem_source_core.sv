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

module sds_mem_source_core #(
    reg [32*8-1:0] MBUS_CLK_DOMAIN = "memory_clk",        
    int MBUS_ADDR_WIDTH = 32,
    int MBUS_DATA_WIDTH = 64,
    int MBUS_NUM_READ_OUTSTANDING = 8, // maximum number of outstanding requests
    int MBUS_BURST_LENGTH = 4, // number of transfers in a burst
    int MBUS_ARPROT = 0, // AXI AWPROT
    int MBUS_ARCACHE = 4'b1110, // 4'b1110 for cached
    
    reg [32*8-1:0] STREAM_CLK_DOMAIN = "stream_clk",
    int STREAM_DATA_WIDTH = 16,
    
    int USE_BURST_ALIGNMENT = 1, 
    int USE_BEAT_ALIGNMENT = 1,
    reg [128*8-1:0] FAMILY = "zynq",
    longint MAX_TRANSFER_SIZE = 1073741824 // bytes
) (
    input rbus_clk,
    input rbus_reset_n,
    input mbus_clk,
    input mbus_reset_n,
    input stream_clk,
    input stream_reset_n,
    
    // Register bus
    input [11:0] rbus_awaddr,
    input [2:0] rbus_awprot,
    input rbus_awvalid,
    output rbus_awready,
    input [31:0] rbus_wdata,
    input [3:0] rbus_wstrb,
    input rbus_wvalid,
    output rbus_wready,
    output [1:0] rbus_bresp,
    output rbus_bvalid,
    input rbus_bready,
    input [11:0] rbus_araddr,
    input [2:0] rbus_arprot,
    input rbus_arvalid,
    output rbus_arready,
    output [31:0] rbus_rdata,
    output [1:0] rbus_rresp,
    output rbus_rvalid,
    input rbus_rready,

    // Memory bus
    output [MBUS_ADDR_WIDTH-1:0] mbus_araddr,
    output [7:0] mbus_arlen,
    output [2:0] mbus_arsize,
    output [1:0] mbus_arburst,
    output [3:0] mbus_arcache,
    output [2:0] mbus_arprot,
    output mbus_arvalid,
    input mbus_arready,
    input [MBUS_DATA_WIDTH-1:0] mbus_rdata,
    input [1:0] mbus_rresp,
    input mbus_rlast,
    input mbus_rvalid,
    output mbus_rready,

    // NOTE: temporary workaround for XTLM
    output [MBUS_ADDR_WIDTH-1:0] mbus_awaddr,
    output [7:0] mbus_awlen,
    output [2:0] mbus_awsize,
    output [1:0] mbus_awburst,
    output [3:0] mbus_awcache,
    output [2:0] mbus_awprot,
    output mbus_awvalid,
    input mbus_awready,
    output [MBUS_DATA_WIDTH-1:0] mbus_wdata,
    output [MBUS_DATA_WIDTH/8-1:0] mbus_wstrb,
    output mbus_wlast,
    output mbus_wvalid,
    input mbus_wready,
    input [1:0] mbus_bresp,
    input mbus_bvalid,
    output mbus_bready,
    
    // Data source bus (AXI-Stream master)
    output logic stream_tvalid,
    input logic stream_tready,
    output logic [STREAM_DATA_WIDTH-1:0] stream_tdata,
    output logic stream_tlast,
    
    output logic done_irq
);

localparam longint MAX_STREAM_BEATS = MAX_TRANSFER_SIZE / (STREAM_DATA_WIDTH / 8);
localparam longint MAX_BURSTS = MAX_TRANSFER_SIZE / (MBUS_BURST_LENGTH * MBUS_DATA_WIDTH / 8);

assign mbus_awaddr = 0;
assign mbus_awlen = 0;
assign mbus_awsize = $clog2(MBUS_DATA_WIDTH / 8);
assign mbus_awburst = 1;
assign mbus_awcache = 0;
assign mbus_awprot = 0;
assign mbus_awvalid = 0;
assign mbus_wdata = 0;
assign mbus_wstrb = 0;
assign mbus_wlast = 0;
assign mbus_wvalid = 0;
assign mbus_bready = 1;

// Registers
//
localparam NUM_REGS = 10;
logic [NUM_REGS-1:0][31:0] wregs, fback, rregs;

sds_regs #(
    .RBUS_ADDR_WIDTH($bits(rbus_awaddr)),
    .NUM_REGS(NUM_REGS),
    .DEFAULT_VALUES(0)   
) regs_inst (
    .rbus_clk,
    .rbus_reset_n,
    
    // Register bus
    .rbus_awaddr(rbus_awaddr),
    .rbus_awprot(rbus_awprot),
    .rbus_awvalid(rbus_awvalid),
    .rbus_awready(rbus_awready),
    .rbus_wdata(rbus_wdata),
    .rbus_wstrb(rbus_wstrb),
    .rbus_wvalid(rbus_wvalid),
    .rbus_wready(rbus_wready),
    .rbus_bresp(rbus_bresp),
    .rbus_bvalid(rbus_bvalid),
    .rbus_bready(rbus_bready),
    .rbus_araddr(rbus_araddr),
    .rbus_arprot(rbus_arprot),
    .rbus_arvalid(rbus_arvalid),
    .rbus_arready(rbus_arready),
    .rbus_rdata(rbus_rdata),
    .rbus_rresp(rbus_rresp),
    .rbus_rvalid(rbus_rvalid),
    .rbus_rready(rbus_rready),
        
    .write_values(wregs),
    .fback_values(fback),
    .read_values(rregs)
);      

logic wregs_valid;
logic rregs_valid;
logic rregs_ready;

logic [MBUS_ADDR_WIDTH-1:0] wregs_base_addr; // base address, burst aligned
logic [$clog2(MAX_BURSTS)-1:0] wregs_num_bursts_m1; // bursts in a transfer minus 1
logic wregs_num_bursts_eq1; // number of bursts is equal to 1
logic wregs_use_byte_shift;
logic [$clog2(MBUS_DATA_WIDTH/8)-1:0] wregs_byte_shift_m1; // byte shift for byte alignment
logic [$clog2(MBUS_BURST_LENGTH)-1:0] wregs_start_pos_m1; // position of the sample before the head
logic wregs_head_present; // head alignment needed
logic wregs_beat_end_pos_eq1; // stream length equals 1
logic [$clog2(MAX_STREAM_BEATS)-1:0] wregs_end_pos_m2; // postion of the sample before the tail
logic [MBUS_DATA_WIDTH/8-1:0] wregs_tail_mask; // mask last beat
 
always_comb begin
  fback = wregs;
  rregs = 0;
  
  wregs_valid = wregs[0][0]; // start
  fback[0][0] = 0; // clear start
  rregs[0][1] = 1; // ready
  done_irq = rregs_valid && wregs[0][2]; // done IRQ
  
  rregs_ready = wregs[1][1]; // cont
  fback[1][1] = 0; // clear cont
  rregs[1][0] = rregs_valid; // done

  wregs_base_addr = {wregs[3], wregs[2]};
  {wregs_num_bursts_m1, wregs_num_bursts_eq1} = wregs[4];
  {wregs_byte_shift_m1, wregs_use_byte_shift} = wregs[5];
  {wregs_start_pos_m1, wregs_beat_end_pos_eq1, wregs_head_present} = wregs[6];
  wregs_end_pos_m2 = wregs[7];
  wregs_tail_mask = {wregs[9], wregs[8]};
end

// Register handshake mux
//
logic [0:0] rregs_valid_mux;
assign rregs_valid = &(rregs_valid_mux);


// Memory master to stream
//
logic mm2s_tready;
logic [MBUS_DATA_WIDTH-1:0] mm2s_tdata;
logic mm2s_tlast;
logic mm2s_tvalid;

sds_mm2s #(
    .MBUS_ADDR_WIDTH(MBUS_ADDR_WIDTH),
    .MBUS_DATA_WIDTH(MBUS_DATA_WIDTH),
    .MBUS_NUM_READ_OUTSTANDING(MBUS_NUM_READ_OUTSTANDING), 
    .MBUS_BURST_LENGTH(MBUS_BURST_LENGTH),
    .MBUS_ARPROT(MBUS_ARPROT),
    .MBUS_ARCACHE(MBUS_ARCACHE),
    
    .MAX_TRANSFER_LEN(MAX_BURSTS)
) mm2s_inst (
    .mbus_clk,
    .mbus_reset_n,
    .rbus_clk,
    .rbus_reset_n,

    // Memory bus
    .mbus_araddr(mbus_araddr),
    .mbus_arlen(mbus_arlen),
    .mbus_arsize(mbus_arsize),
    .mbus_arburst(mbus_arburst),
    .mbus_arcache(mbus_arcache),
    .mbus_arprot(mbus_arprot),
    .mbus_arvalid(mbus_arvalid),
    .mbus_arready(mbus_arready),
    .mbus_rdata(mbus_rdata),
    .mbus_rresp(mbus_rresp),
    .mbus_rlast(mbus_rlast),
    .mbus_rvalid(mbus_rvalid),
    .mbus_rready(mbus_rready),    
    
    // Data source bus (AXI-Stream master)
    .stream_tvalid(mm2s_tvalid),
    .stream_tready(mm2s_tready),
    .stream_tdata(mm2s_tdata),
    .stream_tlast(mm2s_tlast),
    
    // Registers
    .wregs_valid(wregs_valid),
    .wregs_base_addr(wregs_base_addr),
    .wregs_num_bursts_m1(wregs_num_bursts_m1),
    .wregs_num_bursts_eq1(wregs_num_bursts_eq1),
    
    .rregs_valid(rregs_valid_mux[0]),
    .rregs_ready(rregs_ready)
);


// Byte shift
//
logic shifted_tvalid;
logic shifted_tready;
logic [$bits(mm2s_tdata)-1:0] shifted_tdata;
logic shifted_tlast;

if (USE_BURST_ALIGNMENT && USE_BEAT_ALIGNMENT) begin: use_beat_alignment
    sds_byte_aligner #(
        .DATA_WIDTH($bits(shifted_tdata))
    ) beat_align_inst (
        .stream_clk(mbus_clk),
        .stream_reset_n(mbus_reset_n),
        .rbus_clk,
        .rbus_reset_n,
        
        // Input stream
        .stream_tvalid(mm2s_tvalid),
        .stream_tready(mm2s_tready),
        .stream_tdata(mm2s_tdata),
        .stream_tstrb('1),
        .stream_tlast(mm2s_tlast),
        
        // Output stream
        .aligned_tvalid(shifted_tvalid),
        .aligned_tready(shifted_tready),
        .aligned_tdata(shifted_tdata),
        .aligned_tstrb(),
        .aligned_tlast(shifted_tlast),
        
        // Registers
        .wregs_valid(wregs_valid),
        .wregs_byte_shift_m1(wregs_byte_shift_m1),
        .wregs_use_byte_shift(wregs_use_byte_shift)
    );   
end else begin: no_beat_alignment
    assign mm2s_tready = shifted_tready;
    assign shifted_tvalid = mm2s_tvalid;
    assign shifted_tdata = mm2s_tdata;
    assign shifted_tlast = mm2s_tlast;
end



// Beat-to-burst alignment
//
logic aligned_tvalid;
logic aligned_tready;
logic [$bits(shifted_tdata)-1:0] aligned_tdata;
logic [$bits(shifted_tdata)/8-1:0] aligned_tstrb;
logic aligned_tlast;

if (USE_BURST_ALIGNMENT) begin: use_burst_alignment
    sds_align_burst_to_beat #(
        .DATA_WIDTH($bits(aligned_tdata)),
        .ALIGNMENT_PERIOD(MBUS_BURST_LENGTH),
        .MAX_TRANSFER_LEN(MAX_STREAM_BEATS)
    ) burst_align_inst (
        .stream_clk(mbus_clk),
        .stream_reset_n(mbus_reset_n),
        .rbus_clk,
        .rbus_reset_n,
    
        // Input stream
        .stream_tvalid(shifted_tvalid),
        .stream_tready(shifted_tready),
        .stream_tdata(shifted_tdata),
        .stream_tlast(shifted_tlast),
        
        // Output stream
        .aligned_tvalid,
        .aligned_tready,
        .aligned_tdata,
        .aligned_tstrb,
        .aligned_tlast,
        
        .wregs_valid(wregs_valid),
        .wregs_start_pos_m1(wregs_start_pos_m1),
        .wregs_head_present(wregs_head_present),
        .wregs_end_pos_m2(wregs_end_pos_m2),
        .wregs_tail_mask(wregs_tail_mask),
        .wregs_beat_end_pos_eq1(wregs_beat_end_pos_eq1)
    );
end else begin: no_burst_alignment
    assign aligned_tvalid = shifted_tvalid;
    assign aligned_tready = shifted_tready;
    assign aligned_tdata = shifted_tdata;
    assign aligned_tstrb = '1;
    assign aligned_tlast = shifted_tlast;
end



// Buffer
// 
logic buffered_tvalid;
logic buffered_tready;
logic [$bits(shifted_tdata)-1:0] buffered_tdata;
logic [$bits(shifted_tdata)/8-1:0] buffered_tstrb;
logic buffered_tlast;

sds_queue_cdc #(
  .WIDTH($bits({aligned_tdata, aligned_tstrb, aligned_tlast})),
  .DEPTH(32)) 
buffer_inst (
  .back_clk(mbus_clk),
  .back_reset_n(mbus_reset_n),
  .back_valid(aligned_tvalid),
  .back_ready(aligned_tready),
  .back_data({aligned_tdata, aligned_tstrb, aligned_tlast}),
  .front_clk(stream_clk),
  .front_reset_n(stream_reset_n),
  .front_valid(buffered_tvalid),
  .front_ready(buffered_tready),
  .front_data({buffered_tdata, buffered_tstrb, buffered_tlast}));


// Resize.
//
logic resized_tvalid;
logic resized_tready;
logic [$bits(stream_tdata)-1:0] resized_tdata;
logic resized_tlast;

if (STREAM_DATA_WIDTH != MBUS_DATA_WIDTH) begin: resize0_gen0
    axis_dwidth_converter_sds #(
        .C_FAMILY(FAMILY),
        .C_S_AXIS_TDATA_WIDTH($bits(buffered_tdata)),
        .C_M_AXIS_TDATA_WIDTH($bits(resized_tdata)),
        .C_AXIS_TID_WIDTH(1),
        .C_AXIS_TDEST_WIDTH(1),
        .C_S_AXIS_TUSER_WIDTH(1),
        .C_M_AXIS_TUSER_WIDTH(1),
        .C_AXIS_SIGNAL_SET('B00000000000000000000000000011011)
    ) resize0_inst (
        .aclk(stream_clk),
        .aresetn(stream_reset_n),
        .aclken(1'H1),
        .s_axis_tvalid(buffered_tvalid),
        .s_axis_tready(buffered_tready),
        .s_axis_tdata(buffered_tdata),
        .s_axis_tstrb('1),
        .s_axis_tkeep(buffered_tstrb),
        .s_axis_tlast(buffered_tlast),
        .s_axis_tid(1'H0),
        .s_axis_tdest(1'H0),
        .s_axis_tuser(1'H0),
        .m_axis_tvalid(resized_tvalid),
        .m_axis_tready(resized_tready),
        .m_axis_tdata(resized_tdata),
        .m_axis_tstrb(),
        .m_axis_tkeep(),
        .m_axis_tlast(resized_tlast),
        .m_axis_tid(),
        .m_axis_tdest(),
        .m_axis_tuser()
    );
end else begin: resize0_gen1
    assign resized_tvalid = buffered_tvalid;
    assign buffered_tready = resized_tready;
    assign resized_tdata = buffered_tdata;
    assign resized_tlast = buffered_tlast;
end


assign resized_tready = stream_tready;
assign stream_tvalid = resized_tvalid;
assign stream_tdata = resized_tdata;
assign stream_tlast = resized_tlast;

endmodule
