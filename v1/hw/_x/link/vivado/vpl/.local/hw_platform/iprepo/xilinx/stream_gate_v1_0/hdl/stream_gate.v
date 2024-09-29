// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx
// Engineer: Sam Skalicky
// 
// Create Date: 11/20/2015 11:37:55 AM
// Design Name: Stream Gate
// Module Name: stream_gate
// Project Name: SDSoC Framework
// Target Devices: Zynq
// Tool Versions: 2015.4
// Description: This module gates the axi stream signals into the accelerator adapter
//      until the execute step (single iteration) command is written into the 
//      adapter's control register 0x28
//
// Dependencies: None 
// 
// Revision: 1.0
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module stream_gate(
    input s_axis_aclk,
    //input AXI Stream
    input [TDATA_NUM_BYTES*8-1:0] in_tdata,
    input [4:0] in_tdest,
    input [4:0] in_tid,
    input [8:0] in_tkeep,
    input in_tlast,
    output in_tready,
    input [8:0] in_tstrb,
    input [8:0] in_tuser,
    input in_tvalid,
    //output AXI Stream
    output [TDATA_NUM_BYTES*8-1:0] out_tdata,
    output [4:0] out_tdest,
    output [4:0] out_tid,
    output [8:0] out_tkeep,
    output out_tlast,
    input out_tready,
    output [8:0] out_tstrb,
    output [8:0] out_tuser,
    output out_tvalid,
    //Monitored AXI-Lite bus for adapter
    input s_axi_aclk,
    input s_axi_aresetn,
    input [31 : 0] s_axi_awaddr,
    input [2 : 0] s_axi_awprot,
    input s_axi_awvalid,
    input s_axi_awready,
    input [31 : 0] s_axi_wdata,
    input [3 : 0] s_axi_wstrb,
    input s_axi_wvalid,
    input s_axi_wready,
    input [1 : 0] s_axi_bresp,
    input s_axi_bvalid,
    input s_axi_bready,
    input [31 : 0] s_axi_araddr,
    input [2 : 0] s_axi_arprot,
    input s_axi_arvalid,
    input s_axi_arready,
    input [31 : 0] s_axi_rdata,
    input [1 : 0] s_axi_rresp,
    input s_axi_rvalid,
    input s_axi_rready
    );
    
parameter TDATA_NUM_BYTES=8;
    
    reg transfer_started=0;
    reg transfer_finished_n=0;
    wire enable;
    
    assign enable = transfer_started & transfer_finished_n;
    
    //state machine for starting transaction using axi-lite clock
    always @(posedge s_axi_aclk) begin
        if(s_axi_aresetn == 0)
            transfer_started <= 0;
        else if(!transfer_started) begin
           //look for write to command register 0x28 with value 0x0002 0000
            if(s_axi_awready && s_axi_wready && //slave ready 
               s_axi_awvalid && s_axi_wvalid && //master attempting a write 
               s_axi_awaddr == 32'h28 &&        //address matches
               s_axi_wdata[17] == 1)            //data matches
                    transfer_started <= 1;
        end
        else if(transfer_finished_n == 0)
            transfer_started <= 0;
    end
    
    //state machine for finishing transaction using axi-stream clock
    always @(posedge s_axis_aclk) begin
        if(s_axi_aresetn == 0)
            transfer_finished_n <= 1;
        //look for transfer finished state when tlast is 1, and tready is 1
        else if(transfer_started && in_tlast && out_tready)
            transfer_finished_n <= 0;
        else if(!transfer_started)
            transfer_finished_n <= 1;
    end
    
    assign out_tdata =  in_tdata;
    assign out_tdest =  in_tdest;
    assign out_tid =    in_tid;
    assign out_tkeep =  in_tkeep;
    assign out_tlast =  in_tlast;
    assign in_tready =  (enable) ? out_tready : 0;
    assign out_tstrb =  in_tstrb;
    assign out_tuser =  in_tuser;
    assign out_tvalid = (enable) ? in_tvalid  : 0;
    
endmodule


