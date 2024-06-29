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
// Create Date: 06/04/2018 05:40:42 PM
// Design Name: 
// Module Name: sds_mem_sink_tb
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

module sds_mem_sink_tb();

import axi_vip_pkg::*;
import axi4stream_vip_pkg::*;

import axi_lite_master_vip_pkg::*;
import axi_write_slave_vip_pkg::*;
import axi_stream_master_vip_pkg::*;
import mem_sink_pkg::*;

localparam MEMORY_DATA_WIDTH = 64;
localparam MEMORY_MAX_BURST_LENGTH = 4; // number of transfers in a burst
localparam STREAM_DATA_WIDTH = 16;

localparam BASE_ADDR = 0;
localparam TRANSFER_SIZE = 256;
localparam BEAT_SIZE = MEMORY_DATA_WIDTH / 8;
localparam BURST_SIZE = BEAT_SIZE * MEMORY_MAX_BURST_LENGTH;
localparam STREAM_CLK = "async_clk";

logic reg_bus_clk;
logic reg_bus_reset_n;
logic memory_clk;
logic memory_reset_n;
logic async_clk;
logic async_reset_n;

// Register bus
logic [11:0] reg_bus_awaddr;
logic [2:0] reg_bus_awprot = 0;
logic reg_bus_awvalid;
logic reg_bus_awready;
logic [31:0] reg_bus_wdata;
logic [3:0] reg_bus_wstrb;
logic reg_bus_wvalid;
logic reg_bus_wready;
logic [1:0] reg_bus_bresp;
logic reg_bus_bvalid;
logic reg_bus_bready;
logic [11:0] reg_bus_araddr;
logic [2:0] reg_bus_arprot = 0;
logic reg_bus_arvalid;
logic reg_bus_arready;
logic [31:0] reg_bus_rdata;
logic [1:0] reg_bus_rresp;
logic reg_bus_rvalid;
logic reg_bus_rready;

logic irq_ap_ready;
logic irq_ap_done;

// Accelerator data stream 
logic stream_tvalid;
logic stream_tready;
logic [STREAM_DATA_WIDTH-1:0] stream_tdata;
logic stream_tlast;

// Data write bus (AXI4 master)
logic [31:0] memory_awaddr;
logic [7:0] memory_awlen;
logic [2:0] memory_awsize;
logic [1:0] memory_awburst;
logic [3:0] memory_awcache;
logic [2:0] memory_awprot;
logic memory_awvalid;
logic memory_awready;
logic [MEMORY_DATA_WIDTH-1:0] memory_wdata;
logic [MEMORY_DATA_WIDTH/8-1:0] memory_wstrb;
logic memory_wlast;
logic memory_wvalid;
logic memory_wready;
logic [1:0] memory_bresp;
logic memory_bvalid;
logic memory_bready;

logic stream_clk;
logic stream_reset_n;

if (STREAM_CLK == "async_clk") begin
    assign stream_clk = async_clk; 
    assign stream_reset_n = async_reset_n;
end else begin
    assign stream_clk = memory_clk; 
    assign stream_reset_n = memory_reset_n;
end

axi_lite_master_vip reg_bus_master (
    .aclk(reg_bus_clk),              // input wire aclk
    .aresetn(reg_bus_reset_n),        // input wire aresetn
    .m_axi_awaddr(reg_bus_awaddr),    // output wire [31 : 0] m_axi_awaddr
    .m_axi_awvalid(reg_bus_awvalid),  // output wire m_axi_awvalid
    .m_axi_awready(reg_bus_awready),  // input wire m_axi_awready
    .m_axi_wdata(reg_bus_wdata),      // output wire [31 : 0] m_axi_wdata
    .m_axi_wstrb(reg_bus_wstrb),      // output wire [3 : 0] m_axi_wstrb
    .m_axi_wvalid(reg_bus_wvalid),    // output wire m_axi_wvalid
    .m_axi_wready(reg_bus_wready),    // input wire m_axi_wready
    .m_axi_bresp(reg_bus_bresp),      // input wire [1 : 0] m_axi_bresp
    .m_axi_bvalid(reg_bus_bvalid),    // input wire m_axi_bvalid
    .m_axi_bready(reg_bus_bready),    // output wire m_axi_bready
    .m_axi_araddr(reg_bus_araddr),    // output wire [31 : 0] m_axi_araddr
    .m_axi_arvalid(reg_bus_arvalid),  // output wire m_axi_arvalid
    .m_axi_arready(reg_bus_arready),  // input wire m_axi_arready
    .m_axi_rdata(reg_bus_rdata),      // input wire [31 : 0] m_axi_rdata
    .m_axi_rresp(reg_bus_rresp),      // input wire [1 : 0] m_axi_rresp
    .m_axi_rvalid(reg_bus_rvalid),    // input wire m_axi_rvalid
    .m_axi_rready(reg_bus_rready));   // output wire m_axi_rready

axi_stream_master_vip stream_source (
  .aclk(stream_clk),             // input wire aclk
  .aresetn(stream_reset_n),       // input wire aresetn
  .m_axis_tvalid(stream_tvalid),  // output wire [0 : 0] m_axis_tvalid
  .m_axis_tready(stream_tready),  // input wire [0 : 0] m_axis_tready
  .m_axis_tdata(stream_tdata),    // output wire [63 : 0] m_axis_tdata
  .m_axis_tlast(stream_tlast));    // output wire [0 : 0] m_axis_tlast

top #(
    .MEMORY_ADDR_WIDTH($bits(memory_awaddr)),
    .MEMORY_DATA_WIDTH($bits(memory_wdata)),
    .STREAM_DATA_WIDTH($bits(stream_tdata))
) top_inst (
    .reg_bus_clk(reg_bus_clk),          // input wire reg_bus_clk
    .reg_bus_resetn(reg_bus_reset_n),    // input wire reg_bus_resetn
    .memory_clk(memory_clk),            // input wire memory_clk
    .memory_resetn(memory_reset_n),      // input wire memory_resetn
    .stream_clk(stream_clk),            // input wire stream_clk
    .stream_resetn(stream_reset_n),      // input wire stream_resetn
    .reg_bus_awaddr(reg_bus_awaddr),    // input wire [11 : 0] reg_bus_awaddr
    .reg_bus_awprot(reg_bus_awprot),    // input wire [2 : 0] reg_bus_awprot
    .reg_bus_awvalid(reg_bus_awvalid),  // input wire reg_bus_awvalid
    .reg_bus_awready(reg_bus_awready),  // output wire reg_bus_awready
    .reg_bus_wdata(reg_bus_wdata),      // input wire [31 : 0] reg_bus_wdata
    .reg_bus_wstrb(reg_bus_wstrb),      // input wire [3 : 0] reg_bus_wstrb
    .reg_bus_wvalid(reg_bus_wvalid),    // input wire reg_bus_wvalid
    .reg_bus_wready(reg_bus_wready),    // output wire reg_bus_wready
    .reg_bus_bresp(reg_bus_bresp),      // output wire [1 : 0] reg_bus_bresp
    .reg_bus_bvalid(reg_bus_bvalid),    // output wire reg_bus_bvalid
    .reg_bus_bready(reg_bus_bready),    // input wire reg_bus_bready
    .reg_bus_araddr(reg_bus_araddr),    // input wire [11 : 0] reg_bus_araddr
    .reg_bus_arprot(reg_bus_arprot),    // input wire [2 : 0] reg_bus_arprot
    .reg_bus_arvalid(reg_bus_arvalid),  // input wire reg_bus_arvalid
    .reg_bus_arready(reg_bus_arready),  // output wire reg_bus_arready
    .reg_bus_rdata(reg_bus_rdata),      // output wire [31 : 0] reg_bus_rdata
    .reg_bus_rresp(reg_bus_rresp),      // output wire [1 : 0] reg_bus_rresp
    .reg_bus_rvalid(reg_bus_rvalid),    // output wire reg_bus_rvalid
    .reg_bus_rready(reg_bus_rready),    // input wire reg_bus_rready
    .irq_ap_ready(irq_ap_ready),        // output wire irq_ap_ready
    .irq_ap_done(irq_ap_done),          // output wire irq_ap_done
    .stream_tvalid(stream_tvalid),      // input wire stream_tvalid
    .stream_tready(stream_tready),      // output wire stream_tready
    .stream_tdata(stream_tdata),        // input wire [15 : 0] stream_tdata
    .stream_tlast(stream_tlast),        // input wire stream_tlast
    .memory_awaddr(memory_awaddr),      // output wire [31 : 0] memory_awaddr
    .memory_awlen(memory_awlen),        // output wire [7 : 0] memory_awlen
    .memory_awsize(memory_awsize),      // output wire [2 : 0] memory_awsize
    .memory_awburst(memory_awburst),    // output wire [1 : 0] memory_awburst
    .memory_awcache(memory_awcache),    // output wire [3 : 0] memory_awcache
    .memory_awprot(memory_awprot),      // output wire [2 : 0] memory_awprot
    .memory_awvalid(memory_awvalid),    // output wire memory_awvalid
    .memory_awready(memory_awready),    // input wire memory_awready
    .memory_wdata(memory_wdata),        // output wire [63 : 0] memory_wdata
    .memory_wstrb(memory_wstrb),        // output wire [7 : 0] memory_wstrb
    .memory_wlast(memory_wlast),        // output wire memory_wlast
    .memory_wvalid(memory_wvalid),      // output wire memory_wvalid
    .memory_wready(memory_wready),      // input wire memory_wready
    .memory_bresp(memory_bresp),        // input wire [1 : 0] memory_bresp
    .memory_bvalid(memory_bvalid),      // input wire memory_bvalid
    .memory_bready(memory_bready)      // output wire memory_bready
);

// Data write bus (AXI4 master)
logic [31:0] mem_ff_awaddr;
logic [7:0] mem_ff_awlen;
logic [2:0] mem_ff_awsize;
logic [1:0] mem_ff_awburst;
logic [3:0] mem_ff_awcache;
logic [2:0] mem_ff_awprot;
logic mem_ff_awvalid;
logic mem_ff_awready;
logic [MEMORY_DATA_WIDTH-1:0] mem_ff_wdata;
logic [MEMORY_DATA_WIDTH/8-1:0] mem_ff_wstrb;
logic mem_ff_wlast;
logic mem_ff_wvalid;
logic mem_ff_wready;
logic [1:0] mem_ff_bresp;
logic mem_ff_bvalid;
logic mem_ff_bready;

sds_axi_ff #(
    .DATA_WIDTH($bits({memory_awaddr, memory_awlen, memory_awsize, memory_awburst, memory_awcache, memory_awprot}))
) mem_ff_aw_inst (
    .clk(memory_clk),
    .reset_n(memory_reset_n),
    
    .s_ready(memory_awready),
    .s_valid(memory_awvalid),
    .s_data({memory_awaddr, memory_awlen, memory_awsize, memory_awburst, memory_awcache, memory_awprot}),
    
    .m_ready(mem_ff_awready),
    .m_valid(mem_ff_awvalid),
    .m_data({mem_ff_awaddr, mem_ff_awlen, mem_ff_awsize, mem_ff_awburst, mem_ff_awcache, mem_ff_awprot})
);

sds_axi_ff #(
    .DATA_WIDTH($bits({memory_wdata, memory_wstrb, memory_wlast}))
) mem_ff_w_inst (
    .clk(memory_clk),
    .reset_n(memory_reset_n),
    
    .s_ready(memory_wready),
    .s_valid(memory_wvalid),
    .s_data({memory_wdata, memory_wstrb, memory_wlast}),
    
    .m_ready(mem_ff_wready),
    .m_valid(mem_ff_wvalid),
    .m_data({mem_ff_wdata, mem_ff_wstrb, mem_ff_wlast})
);

assign memory_bresp = mem_ff_bresp;
assign memory_bvalid = mem_ff_bvalid;
assign mem_ff_bready = memory_bready;

axi_write_slave_vip memory_slave (
  .aclk(memory_clk),              // input wire aclk
  .aresetn(memory_reset_n),        // input wire aresetn
  .s_axi_awaddr(mem_ff_awaddr),    // input wire [31 : 0] s_axi_awaddr
  .s_axi_awlen(mem_ff_awlen),      // input wire [7 : 0] s_axi_awlen
  .s_axi_awcache(mem_ff_awcache),  // input wire [3 : 0] s_axi_awcache
  .s_axi_awvalid(mem_ff_awvalid),  // input wire s_axi_awvalid
  .s_axi_awready(mem_ff_awready),  // output wire s_axi_awready
  .s_axi_wdata(mem_ff_wdata),      // input wire [63 : 0] s_axi_wdata
  .s_axi_wstrb(mem_ff_wstrb),      // input wire [7 : 0] s_axi_wstrb
  .s_axi_wlast(mem_ff_wlast),      // input wire s_axi_wlast
  .s_axi_wvalid(mem_ff_wvalid),    // input wire s_axi_wvalid
  .s_axi_wready(mem_ff_wready),    // output wire s_axi_wready
  .s_axi_bresp(mem_ff_bresp),      // output wire [1 : 0] s_axi_bresp
  .s_axi_bvalid(mem_ff_bvalid),    // output wire s_axi_bvalid
  .s_axi_bready(mem_ff_bready));   // input wire s_axi_bready


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Local tasks
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
task automatic request_transfer(input axi_lite_master_vip_mst_t reg_bus_agent, input int id, input int addr, input int size);
    const int unsigned aligned_addr = addr & ~(BURST_SIZE - 1);
    const int unsigned aligned_size = ((addr + size + BURST_SIZE - 1) & ~(BURST_SIZE - 1)) - aligned_addr; 
    axi_transaction wr_trans;
    axi_transaction rd_trans;
    int unsigned word = 0;
    $display("request_transfer: %d", id);
    
    // Prepare the register bus.
    wr_trans = reg_bus_agent.wr_driver.create_transaction("write register");
    wr_trans.set_id(0);
    wr_trans.set_prot(0);
    wr_trans.set_lock(XIL_AXI_ALOCK_NOLOCK);
    wr_trans.set_cache(3);
    wr_trans.set_region(0);
    wr_trans.set_qos(0);

    rd_trans = reg_bus_agent.rd_driver.create_transaction("read register");
    rd_trans.set_id(0);
    rd_trans.set_prot(0);
    rd_trans.set_lock(XIL_AXI_ALOCK_NOLOCK);
    rd_trans.set_cache(3);
    rd_trans.set_region(0);
    rd_trans.set_qos(0);
    rd_trans.set_driver_return_item_policy(XIL_AXI_PAYLOAD_RETURN);

    wait (irq_ap_ready === 1); // wait for the module to be ready

    // read-back CTRL register for debug
    rd_trans.set_read_cmd(CTRL_REG_ADDR);
    reg_bus_agent.rd_driver.send(rd_trans);
    reg_bus_agent.rd_driver.wait_rsp(rd_trans);
    word = rd_trans.get_data_block();
    $display("CTRL_REG = %x", word);
        
    // Set address.
    wr_trans.set_write_cmd(BASE_ADDR_LO_REG_ADDR);
    wr_trans.set_data_block(aligned_addr);
    reg_bus_agent.wr_driver.send(wr_trans);

    // Set alignment.
    begin
        byte unsigned head_bytes = addr - aligned_addr;
        byte unsigned tail_bytes = (aligned_addr + aligned_size) - (addr + size);
        word = 0;
        word |= ((head_bytes - 1) << ALIGNMENT_REG_HEAD_BYTES_M1_BITN) & ALIGNMENT_REG_HEAD_BYTES_M1_MASK; 
        word |= ((tail_bytes - 1) << ALIGNMENT_REG_TAIL_BYTES_M1_BITN) & ALIGNMENT_REG_TAIL_BYTES_M1_MASK;
        word |= ((head_bytes != 0) << ALIGNMENT_REG_HEAD_PRESENT_BITN) & ALIGNMENT_REG_HEAD_PRESENT_MASK;
        word |= ((tail_bytes != 0) << ALIGNMENT_REG_TAIL_PRESENT_BITN) & ALIGNMENT_REG_TAIL_PRESENT_MASK;
        wr_trans.set_data_block(word);
        wr_trans.set_write_cmd(ALIGNMENT_REG_ADDR);
        reg_bus_agent.wr_driver.send(wr_trans);
    end
    
    // Set length.
    wr_trans.set_write_cmd(TRANSFER_BYTES_M1_REG_ADDR);
    wr_trans.set_data_block(aligned_size - 1);
    reg_bus_agent.wr_driver.send(wr_trans);

    // Set start request.
    wr_trans.set_write_cmd(CTRL_REG_ADDR);
    wr_trans.set_data_block(CTRL_REG_START_MASK);
    reg_bus_agent.wr_driver.send(wr_trans);

    // Wait for all the transactions to reach their destination.
    reg_bus_agent.wait_drivers_idle();
endtask

task automatic wait_for_response(input axi_lite_master_vip_mst_t reg_bus_agent, input int id);
    axi_transaction wr_trans;
    $display("wait_for_response: %d", id);
    
    // Prepare the register bus.
    wr_trans = reg_bus_agent.wr_driver.create_transaction("write register");
    wr_trans.set_id(0);
    wr_trans.set_prot(0);
    wr_trans.set_lock(XIL_AXI_ALOCK_NOLOCK);
    wr_trans.set_cache(3);
    wr_trans.set_region(0);
    wr_trans.set_qos(0);

    wait (irq_ap_done === 1); // wait for the end of transfer
        
    // Clear done.
    wr_trans.set_write_cmd(CTRL_REG_ADDR);
    wr_trans.set_data_block(CTRL_REG_CONT_MASK);
    reg_bus_agent.wr_driver.send(wr_trans);
    
    wait (irq_ap_done === 0); // for debug  
    
    // Wait for all the transactions to reach their destination.
    reg_bus_agent.wait_drivers_idle();
endtask;

task automatic display_memory(input axi_write_slave_vip_slv_mem_t mem_agent, input int addr, input int size);
    const int unsigned aligned_addr = addr & ~(BURST_SIZE - 1);
    const int unsigned aligned_size = ((addr + size + BURST_SIZE - 1) & ~(BURST_SIZE - 1)) - aligned_addr; 
    $display("Received:");
    for (int i = 0; i < aligned_size / BEAT_SIZE; i += 1) begin
        automatic bit [MEMORY_DATA_WIDTH-1:0] data;
        data = mem_agent.mem_model.backdoor_memory_read(aligned_addr + i * BEAT_SIZE);
        $write("%x,", data);
    end
    $write("\n");
endtask

initial begin: stimuli
    fork // top level simulation threads
        begin
            memory_clk = 0;
            while(1) begin
                for (int i = 0; i < 8; i += 1) begin
                    memory_clk = ((i & 1) == 0);
                    //reg_bus_clk = ((i & 4) != 0);
                    #5;
                end
            end
        end
    
        begin
            memory_reset_n = 0;
            #100;
            @(posedge memory_clk);
            #0; // insert delta delay 
            memory_reset_n = 1;
        end
    
        begin
            async_clk = 0;
            while(1) begin
                for (int i = 0; i < 8; i += 1) begin
                    async_clk = ((i & 1) == 0);
                    #7;
                end
            end
        end
        
        begin
            async_reset_n = 0;
            #100;
            @(posedge async_clk);
            #0; // insert delta delay 
            async_reset_n = 1;
        end

        begin
            reg_bus_clk = 0;
            while(1) begin
                reg_bus_clk = 0;
                #10;
                reg_bus_clk = 1;
                #10;
            end
        end
        
        begin
            reg_bus_reset_n = 0;
            #100;
            @(posedge reg_bus_clk);
            #0; // insert delta delay 
            reg_bus_reset_n = 1;
        end

        begin: GenerateData
            automatic axi_stream_master_vip_mst_t stream_agent;
            automatic axi4stream_transaction wr_trans;
            
            stream_agent = new("stream_source VIP", tb.stream_source.inst.IF);
            /***************************************************************************************************
            * When bus is in idle, it must drive everything to 0.otherwise it will 
            * trigger false assertion failure from axi_protocol_chekcer
            ***************************************************************************************************/
            stream_agent.vif_proxy.set_dummy_drive_type(XIL_AXI4STREAM_VIF_DRIVE_NONE); // avoid triggering false assertion failure from axi_protocol_chekcer
            stream_agent.set_agent_tag("Stream VIP");            
            stream_agent.start_master();

            // Wait for reset.
            wait (stream_reset_n);
            
            while(1) begin
                $display("GenerateData: Started transfer");
                wr_trans = stream_agent.driver.create_transaction("send transaction");
                wr_trans.set_delay_range(0, 0);
                for (int i = 0; i < TRANSFER_SIZE / (STREAM_DATA_WIDTH / 8); i += 1) begin
                    automatic xil_axi4stream_data_beat data = i;
                    WR_TRANSACTION_FAIL: assert(wr_trans.randomize());
                    wr_trans.set_data_beat(data);
                    wr_trans.set_last(0);
                    if (i == TRANSFER_SIZE / (STREAM_DATA_WIDTH / 8) - 1) begin
                        wr_trans.set_last(1);
                    end
                    stream_agent.driver.send(wr_trans);
                end
                $display("GenerateData: Stopped transfer");
            end
        end

        begin: PsControl
            automatic axi_lite_master_vip_mst_t reg_bus_agent;
            automatic axi_write_slave_vip_slv_mem_t mem_agent;
            automatic axi_ready_gen awready_gen;
            automatic axi_ready_gen wready_gen;
            automatic int transfer_num;
            
            // Start AXI VIP agents.
            reg_bus_agent = new("reg_bus_master VIP", tb.reg_bus_master.inst.IF);
            reg_bus_agent.start_master();
            
            mem_agent = new("memory_slave VIP", tb.memory_slave.inst.IF);
            mem_agent.start_slave();
            
            // Randomize ready.
            awready_gen = mem_agent.wr_driver.create_ready("awready");
            awready_gen.set_ready_policy(XIL_AXI_READY_GEN_RANDOM);
            awready_gen.set_low_time_range(0, 0);
            awready_gen.set_high_time_range(1, 1);
            awready_gen.set_event_count_range(1, 1);
            assert(awready_gen.randomize() with {ready_rand_policy == XIL_AXI_READY_RAND_OSC;});
            mem_agent.wr_driver.set_awready_gen(awready_gen);
            
            // Randomize ready.
            wready_gen = mem_agent.wr_driver.create_ready("wready");
            wready_gen.set_ready_policy(XIL_AXI_READY_GEN_RANDOM);
            wready_gen.set_low_time_range(0, 0);
            wready_gen.set_high_time_range(1, 1);
            wready_gen.set_event_count_range(1, 1);
            assert(wready_gen.randomize() with {ready_rand_policy == XIL_AXI_READY_RAND_OSC;});
            mem_agent.wr_driver.set_wready_gen(wready_gen);
        
            // Wait for reset.
            wait (memory_reset_n);

            // Prefetch.
            transfer_num = 0;
            request_transfer(reg_bus_agent, transfer_num, BASE_ADDR + TRANSFER_SIZE * (transfer_num % 2), TRANSFER_SIZE);
            transfer_num += 1;
            // Loop.
            while (transfer_num < 4) begin 
                request_transfer(reg_bus_agent, transfer_num, BASE_ADDR + TRANSFER_SIZE * (transfer_num % 2), TRANSFER_SIZE);
                wait_for_response(reg_bus_agent, transfer_num - 1); 
                display_memory(mem_agent, BASE_ADDR + TRANSFER_SIZE * ((transfer_num - 1) % 2), TRANSFER_SIZE);
                transfer_num += 1;
            end
            wait_for_response(reg_bus_agent, transfer_num - 1);
            display_memory(mem_agent, BASE_ADDR + TRANSFER_SIZE * ((transfer_num - 1) % 2), TRANSFER_SIZE);
        end
       
    join // top level simulation threads
    $display("tb: successfully terminated");
    $finish();
end

endmodule
