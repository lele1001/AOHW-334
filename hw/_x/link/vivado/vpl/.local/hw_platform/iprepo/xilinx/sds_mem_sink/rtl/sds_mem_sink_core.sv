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

module sds_mem_sink_core #(
    reg [32*8-1:0] MBUS_CLK_DOMAIN = "mbus_clk",
    int MBUS_ADDR_WIDTH = 32,
    int MBUS_DATA_WIDTH = 64,
    int MBUS_NUM_WRITE_OUTSTANDING = 8, // maximum number of outstanding requests
    int MBUS_BURST_LENGTH = 4, // number of transfers in a burst
    int MBUS_AWPROT = 0, // AXI AWPROT
    int MBUS_AWCACHE = 4'b1110, // 4'b1110 for cached
    
    reg [32*8-1:0] STREAM_CLK_DOMAIN = "stream_clk",
    int STREAM_DATA_WIDTH = 16,
    
    int USE_BURST_ALIGNMENT = 1, 
    int USE_BEAT_ALIGNMENT = 1,
    longint MAX_TRANSFER_SIZE = 1073741824,
    reg [32*8-1:0] FAMILY = "zynq" 
)(
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
    
    // Streaming bus
    input stream_tvalid,
    output stream_tready,
    input [STREAM_DATA_WIDTH-1:0] stream_tdata,
    input stream_tlast,
    
    // Memory bus
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
    
    // NOTE: temporary workaround for XTLM
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
    
    output logic done_irq
);

localparam longint MAX_STREAM_BEATS = MAX_TRANSFER_SIZE / (STREAM_DATA_WIDTH / 8);
localparam longint MAX_BURSTS = MAX_TRANSFER_SIZE / (MBUS_BURST_LENGTH * MBUS_DATA_WIDTH / 8);

assign mbus_araddr = 0;
assign mbus_arlen = 0;
assign mbus_arsize = $clog2(MBUS_DATA_WIDTH / 8);
assign mbus_arburst = 0;
assign mbus_arcache = 0;
assign mbus_arprot = 0;
assign mbus_arvalid = 0;
assign mbus_rready = 1;

// Registers
//
localparam NUM_REGS = 8;
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
logic [$clog2(MBUS_BURST_LENGTH)-1:0] wregs_start_pos_m1; // data position in the first burst
logic wregs_head_present; // tell if alignment is needed
logic wregs_use_byte_shift;
logic [$clog2(MBUS_DATA_WIDTH/8)-1:0] wregs_byte_shift_m1; // byte shift for byte alignment
logic [$clog2(MAX_BURSTS)-1:0] wregs_num_bursts_m1; // bursts in a transfer minus 1
logic wregs_num_bursts_eq1; // number of bursts is equal to 1
logic [$clog2(MAX_STREAM_BEATS)-1:0] rregs_num_stream_beats;
logic [$clog2(MAX_STREAM_BEATS)-1:0] wregs_num_stream_beats;

always_comb begin
  fback = wregs;
  rregs = 0;
  
  wregs_valid = wregs[0][0]; // start
  rregs[0][1] = 1; // ready
  done_irq = rregs_valid && wregs[0][2]; // gated done IRQ
  fback[0][0] = 0; // clear start
  
  rregs[1][0] = rregs_valid; // done
  rregs_ready = wregs[1][1]; // cont
  fback[1][1] = 0; // clear cont
   
  wregs_base_addr = {wregs[3], wregs[2]};
  {wregs_start_pos_m1, wregs_head_present} = wregs[4];
  {wregs_byte_shift_m1, wregs_use_byte_shift} = wregs[5];
  {wregs_num_bursts_m1, wregs_num_bursts_eq1} = wregs[6];
  wregs_num_stream_beats = wregs[7];
  rregs[7] = rregs_num_stream_beats;
end

// Register handshake mux
//
logic [1:0] rregs_valid_mux;
assign rregs_valid = &(rregs_valid_mux);

logic beat_cnt_tvalid;
logic beat_cnt_tready;
logic [STREAM_DATA_WIDTH-1:0] beat_cnt_tdata;
logic beat_cnt_tlast;

// Count number of beats received
//
sds_beat_cnt #(
    .MAX_TRANSFER_LEN(MAX_STREAM_BEATS),
    .STREAM_DATA_WIDTH(STREAM_DATA_WIDTH)
) beat_cnt_inst (
    .stream_clk(stream_clk),
    .stream_reset_n(stream_reset_n),
    .rbus_clk(rbus_clk),
    .rbus_reset_n(rbus_reset_n),
    
    // Input stream
    .istream_tready(stream_tready),
    .istream_tvalid(stream_tvalid),
    .istream_tdata(stream_tdata),
    .istream_tlast(stream_tlast),

    // Output stream
    .ostream_tready(beat_cnt_tready),
    .ostream_tvalid(beat_cnt_tvalid),
    .ostream_tdata(beat_cnt_tdata),
    .ostream_tlast(beat_cnt_tlast),
    
    .wregs_valid(wregs_valid),
    .wregs_num_stream_beats(wregs_num_stream_beats),
    
    .rregs_valid(rregs_valid_mux[1]),
    .rregs_ready(rregs_ready),
    .rregs_num_stream_beats(rregs_num_stream_beats)
);



// Resize.
//
logic resize_tready;
logic [MBUS_DATA_WIDTH-1:0] resize_tdata;
logic [MBUS_DATA_WIDTH/8-1:0] resize_tstrb;
logic resize_tlast;
logic resize_tvalid;

if ($bits(stream_tdata) != $bits(resize_tdata)) begin: use_resize 
    axis_dwidth_converter_sds #(
        .C_FAMILY(FAMILY),
        .C_S_AXIS_TDATA_WIDTH($bits(stream_tdata)),
        .C_M_AXIS_TDATA_WIDTH($bits(resize_tdata)),
        .C_AXIS_TID_WIDTH(1),
        .C_AXIS_TDEST_WIDTH(1),
        .C_S_AXIS_TUSER_WIDTH(1),
        .C_M_AXIS_TUSER_WIDTH(1),
        .C_AXIS_SIGNAL_SET('B00000000000000000000000000010111)
    ) resize0 (
        .aclk(stream_clk),
        .aresetn(stream_reset_n),
        .aclken(1'H1),
        .s_axis_tvalid(beat_cnt_tvalid),
        .s_axis_tready(beat_cnt_tready),
        .s_axis_tdata(beat_cnt_tdata),
        .s_axis_tstrb('1),
        .s_axis_tkeep('1),
        .s_axis_tlast(beat_cnt_tlast),
        .s_axis_tid(1'H0),
        .s_axis_tdest(1'H0),
        .s_axis_tuser(1'H0),
        .m_axis_tvalid(resize_tvalid),
        .m_axis_tready(resize_tready),
        .m_axis_tdata(resize_tdata),
        .m_axis_tstrb(resize_tstrb),
        .m_axis_tkeep(),
        .m_axis_tlast(resize_tlast),
        .m_axis_tid(),
        .m_axis_tdest(),
        .m_axis_tuser()
    );
end else begin: omit_resize
    assign beat_cnt_tready = resize_tready;
    assign resize_tvalid = beat_cnt_tvalid;
    assign resize_tdata = beat_cnt_tdata;
    assign resize_tstrb = '1;
    assign resize_tlast = beat_cnt_tlast;
end




// Buffer
//
logic buffered_tvalid;
logic buffered_tready;
logic [$bits(resize_tdata)-1:0] buffered_tdata;
logic [$bits(resize_tdata)/8-1:0] buffered_tstrb;
logic buffered_tlast;

sds_queue_cdc #(
  .WIDTH($bits({resize_tdata, resize_tstrb, resize_tlast})),
  .DEPTH(32)) 
buffer_inst (
  .back_clk(stream_clk),
  .back_reset_n(stream_reset_n),
  .back_valid(resize_tvalid),
  .back_ready(resize_tready),
  .back_data({resize_tdata, resize_tstrb, resize_tlast}),
  .front_clk(mbus_clk),
  .front_reset_n(mbus_reset_n),
  .front_valid(buffered_tvalid),
  .front_ready(buffered_tready),
  .front_data({buffered_tdata, buffered_tstrb, buffered_tlast}));

// Burst alignment
//
logic burst_aligned_tvalid;
logic burst_aligned_tready;
logic [$bits(resize_tdata)-1:0] burst_aligned_tdata;
logic [$bits(resize_tdata)/8-1:0] burst_aligned_tstrb;
logic burst_aligned_tlast;
  
if (USE_BURST_ALIGNMENT) begin: use_burst_alignment
    // Beat alignment
    sds_align_beat_to_burst #(
        .DATA_WIDTH($bits(buffered_tdata)),
        .ALIGNMENT_PERIOD(MBUS_BURST_LENGTH)
    ) burst_aligner (
        .stream_clk(mbus_clk),
        .stream_reset_n(mbus_reset_n),
        .rbus_clk(rbus_clk),
        .rbus_reset_n(rbus_reset_n),
        
        .stream_tvalid(buffered_tvalid),
        .stream_tready(buffered_tready),
        .stream_tdata(buffered_tdata),
        .stream_tstrb(buffered_tstrb),
        .stream_tlast(buffered_tlast),
        
        .aligned_tvalid(burst_aligned_tvalid),
        .aligned_tready(burst_aligned_tready),
        .aligned_tdata(burst_aligned_tdata),
        .aligned_tstrb(burst_aligned_tstrb),
        .aligned_tlast(burst_aligned_tlast),
        
        .wregs_valid(wregs_valid),
        .wregs_start_pos_m1(wregs_start_pos_m1),
        .wregs_head_present(wregs_head_present),
        .wregs_reserve_byte_shift(wregs_use_byte_shift)
    );
end else begin
    assign buffered_tready = burst_aligned_tready;
    assign burst_aligned_tvalid = buffered_tvalid;
    assign burst_aligned_tdata = buffered_tdata;
    assign burst_aligned_tstrb = buffered_tstrb;
    assign burst_aligned_tlast = buffered_tlast;
end  


// Beat alignment
//
logic beat_aligned_tvalid;
logic beat_aligned_tready;
logic [$bits(resize_tdata)-1:0] beat_aligned_tdata;
logic [$bits(resize_tdata)/8-1:0] beat_aligned_tstrb;
logic beat_aligned_tlast;

if (USE_BURST_ALIGNMENT && USE_BEAT_ALIGNMENT) begin: use_beat_alignment
    sds_byte_aligner #(
        .DATA_WIDTH($bits(beat_aligned_tdata))
    ) beat_aligner (
        .stream_clk(mbus_clk),
        .stream_reset_n(mbus_reset_n),
        .rbus_clk(rbus_clk),
        .rbus_reset_n(rbus_reset_n),
        
        // Input stream
        .stream_tvalid(burst_aligned_tvalid),
        .stream_tready(burst_aligned_tready),
        .stream_tdata(burst_aligned_tdata),
        .stream_tstrb(burst_aligned_tstrb),
        .stream_tlast(burst_aligned_tlast),
        
        // Output stream
        .aligned_tvalid(beat_aligned_tvalid),
        .aligned_tready(beat_aligned_tready),
        .aligned_tdata(beat_aligned_tdata),
        .aligned_tstrb(beat_aligned_tstrb),
        .aligned_tlast(beat_aligned_tlast),
        
        // Registers
        .wregs_valid(wregs_valid),
        .wregs_byte_shift_m1(wregs_byte_shift_m1),
        .wregs_use_byte_shift(wregs_use_byte_shift)
    );   
end else begin: no_byte_align0
    assign burst_aligned_tready = beat_aligned_tready;
    assign beat_aligned_tvalid = burst_aligned_tvalid;
    assign beat_aligned_tdata = burst_aligned_tdata;
    assign beat_aligned_tstrb = burst_aligned_tstrb;
    assign beat_aligned_tlast = burst_aligned_tlast;
end


// AXI write client
//
sds_s2mm #(
    .MBUS_ADDR_WIDTH(MBUS_ADDR_WIDTH),
    .MBUS_DATA_WIDTH(MBUS_DATA_WIDTH),
    .MBUS_NUM_WRITE_OUTSTANDING(MBUS_NUM_WRITE_OUTSTANDING), 
    .MBUS_BURST_LENGTH(MBUS_BURST_LENGTH),
    .MBUS_AWPROT(MBUS_AWPROT),
    .MBUS_AWCACHE(MBUS_AWCACHE),
    
    .MAX_TRANSFER_LEN(MAX_BURSTS)  
) s2mm_inst (
    .mbus_clk,
    .mbus_reset_n,
    .rbus_clk,
    .rbus_reset_n,

    // Data sink bus (AXI-Stream slave)
    .stream_tvalid(beat_aligned_tvalid),
    .stream_tready(beat_aligned_tready),
    .stream_tdata(beat_aligned_tdata),
    .stream_tstrb(beat_aligned_tstrb),
    .stream_tlast(beat_aligned_tlast),

    // Memory bus
    .mbus_awaddr(mbus_awaddr),
    .mbus_awlen(mbus_awlen),
    .mbus_awsize(mbus_awsize),
    .mbus_awburst(mbus_awburst),
    .mbus_awcache(mbus_awcache),
    .mbus_awprot(mbus_awprot),
    .mbus_awvalid(mbus_awvalid),
    .mbus_awready(mbus_awready),
    .mbus_wdata(mbus_wdata),
    .mbus_wstrb(mbus_wstrb),
    .mbus_wlast(mbus_wlast),
    .mbus_wvalid(mbus_wvalid),
    .mbus_wready(mbus_wready),
    .mbus_bresp(mbus_bresp),
    .mbus_bvalid(mbus_bvalid),
    .mbus_bready(mbus_bready),
    
    // Registers
    .wregs_valid(wregs_valid),
    .wregs_base_addr(wregs_base_addr),
    .wregs_num_bursts_m1(wregs_num_bursts_m1),
    .wregs_num_bursts_eq1(wregs_num_bursts_eq1),
    
    .rregs_valid(rregs_valid_mux[0]),
    .rregs_ready(rregs_ready)
); 

endmodule
