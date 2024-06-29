// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689

//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx
// Engineer: Sam Skalicky
//
// Create Date: 05/12/2016 04:15:24 PM
// Design Name: AXI4-Full Accessible FIFO
// Module Name: AXI_FIFO_Register_v3_0
// Project Name: SDSoC Trace Framework
// Target Devices: Zynq
// Tool Versions: 2016.3
// Description: This module interfaces between standard AXI-Stream interfaces and an
//      AXI4-Full bus. It exposes registers to the AXI4-Full bus, status registers,
//      and a range of registers that allow for burst reads of the stream.
//	The core is currently configured to accept a 32-bit input data element 
//	from the strean. Any address read from 2 up results in a read on the stream.
//	Reading address 0 returns the read status register value, which is a 31-bit
//	count from the AXI Stream Data FIFO and an upper bit (bit 31) to provide
//	the TVALID signal on the input AXI-Stream. Reading address 1 returns the 
//      write status register value, which is a 31-bit count fromt he AXI Stream
//      Data FIFO and an upper bit (bit 31) to provide the TREADY signal on the 
//      output AXI-Stream. Writing data to address 2 causes the data to be written 
//      to the output AXI-Stream with TLAST asserted. Writing to any other address 
//      from 3 up results in a write to the output AXI-Stream without TLAST asserted.
//
// Dependencies: axi_full_interface.v
//
// Revision: 1.0
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns / 1 ps

module AXI_FIFO_Register_v3_0  #(
        //AXI Lite paramters
        parameter C_S_AXI_ID_WIDTH = 12,
        parameter C_S_AXI_AWUSER_WIDTH = 0,
        parameter C_S_AXI_ARUSER_WIDTH = 0,
        parameter C_S_AXI_WUSER_WIDTH = 0,
        parameter C_S_AXI_RUSER_WIDTH = 0,
        parameter C_S_AXI_BUSER_WIDTH = 0,
        parameter AXI_FULL = 0,     //Enable AXI Full interface (1), default is AXI Lite (0)
        //AXI Stream Parameters
        parameter ENABLE_INPUT = 0,
        parameter ENABLE_OUTPUT = 1
    )(
        //HW-facing FIFO INPUT interface
        input wire S_AXIS_TVALID,
        output reg S_AXIS_TREADY,
        input wire [31:0] S_AXIS_TDATA,
        input wire [31:0] S_AXIS_count,      
        
        //HW-facing FIFO OUTPUT interface
        output wire M_AXIS_TVALID,
        input wire M_AXIS_TREADY,
        output wire [31:0] M_AXIS_TDATA,
        output wire M_AXIS_TLAST,
        output wire [3:0] M_AXIS_TKEEP,
        input wire [31:0] M_AXIS_count,      
        
        //AXI Full Interface
        input wire  AXI_ACLK,
        input wire  AXI_ARESETN,
//        input wire [C_S_AXI_ID_WIDTH-1 : 0] AXI_AWID,
        input wire [31 : 0] AXI_AWADDR,
        input wire [7 : 0] AXI_AWLEN,
        input wire [2 : 0] AXI_AWSIZE,
        input wire [1 : 0] AXI_AWBURST,
        input wire  AXI_AWLOCK,
        input wire [3 : 0] AXI_AWCACHE,
        input wire [2 : 0] AXI_AWPROT,
        input wire [3 : 0] AXI_AWQOS,
        input wire [3 : 0] AXI_AWREGION,
//        input wire [C_S_AXI_AWUSER_WIDTH-1 : 0] AXI_AWUSER,
        input wire  AXI_AWVALID,
        output wire  AXI_AWREADY,
        input wire [31 : 0] AXI_WDATA,
        input wire [3 : 0] AXI_WSTRB,
        input wire  AXI_WLAST,
//        input wire [C_S_AXI_WUSER_WIDTH-1 : 0] AXI_WUSER,
        input wire  AXI_WVALID,
        output wire  AXI_WREADY,
        output wire [C_S_AXI_ID_WIDTH-1 : 0] AXI_BID,
        output wire [1 : 0] AXI_BRESP,
//        output wire [C_S_AXI_BUSER_WIDTH-1 : 0] AXI_BUSER,
        output wire  AXI_BVALID,
        input wire  AXI_BREADY,
        input wire [C_S_AXI_ID_WIDTH-1 : 0] AXI_ARID,
        input wire [31 : 0] AXI_ARADDR,
        input wire [7 : 0] AXI_ARLEN,
        input wire [2 : 0] AXI_ARSIZE,
        input wire [1 : 0] AXI_ARBURST,
        input wire  AXI_ARLOCK,
        input wire [3 : 0] AXI_ARCACHE,
        input wire [2 : 0] AXI_ARPROT,
        input wire [3 : 0] AXI_ARQOS,
        input wire [3 : 0] AXI_ARREGION,
//        input wire [C_S_AXI_ARUSER_WIDTH-1 : 0] AXI_ARUSER,
        input wire  AXI_ARVALID,
        output wire  AXI_ARREADY,
        output wire [C_S_AXI_ID_WIDTH-1 : 0] AXI_RID,
        output wire [31 : 0] AXI_RDATA,
        output wire [1 : 0] AXI_RRESP,
        output wire  AXI_RLAST,
//        output wire [C_S_AXI_RUSER_WIDTH-1 : 0] AXI_RUSER,
        output wire  AXI_RVALID,
        input wire  AXI_RREADY
);
    //internal BRAM interface	
    wire [31:0] if_address;	//address being read
    reg [31:0] if_data_out;	//data being read
    wire [31:0] if_data_in;	//data being written
    wire if_mem_rden;		//read-enable
    wire if_mem_wren;		//write-enable
    wire [3:0] if_data_strb;

    wire [31:0] input_status;
    wire [31:0] output_status;
    wire [31:0] input_data;   
   
    reg [31:0] out_data_reg = 0;//store output data
    wire rvalid_i;		//interval AXI-RVALID signal
    reg tlast_i=0;
    
    assign AXI_RVALID = rvalid_i;	//assign internal rvalid signal to port
    
    assign M_AXIS_TDATA = if_data_in;
    assign M_AXIS_TLAST = (if_address == 2) && if_mem_wren;
    assign M_AXIS_TVALID = if_mem_wren;
    assign M_AXIS_TKEEP = if_data_strb;
    
   generate
      if(ENABLE_INPUT) begin
     assign input_status = {S_AXIS_TVALID,S_AXIS_count[30:0]};
     assign input_data = S_AXIS_TDATA;     
      end
      else begin
     assign input_status = 32'hD15AB1E0;
     assign input_data = 32'hDEADBEEF;     
      end

      if(ENABLE_OUTPUT) begin
     assign output_status = {M_AXIS_TREADY,M_AXIS_count[30:0]};     
      end
      else begin
     assign output_status = 32'hD15AB1ED;     
      end
   endgenerate
   
    //clocked signals
    always @(posedge AXI_ACLK) begin
       //dequeue a value from the fifo if the address is greater than 1 and rvalid is 1 (means the previous value has already been written)
       S_AXIS_TREADY <= (if_address > 1) && rvalid_i;
    end
    
    always @(*) begin
    //latch the data from the mux so it can be written out the AXI4-Full interface
        case (if_address) 
            0: // data is read status register
              if_data_out <= input_status;
            1: // data is write status register
              if_data_out <= output_status;
            default:  //read data is fifo data
              if_data_out <= input_data;
        endcase
    end

    generate
        if(AXI_FULL) begin
            axi_full_interface #(
               .C_S_AXI_ID_WIDTH(C_S_AXI_ID_WIDTH),
               .C_S_AXI_AWUSER_WIDTH(C_S_AXI_AWUSER_WIDTH),
               .C_S_AXI_ARUSER_WIDTH(C_S_AXI_ARUSER_WIDTH),
               .C_S_AXI_WUSER_WIDTH(C_S_AXI_WUSER_WIDTH),
               .C_S_AXI_RUSER_WIDTH(C_S_AXI_RUSER_WIDTH),
               .C_S_AXI_BUSER_WIDTH(C_S_AXI_BUSER_WIDTH)
            ) axi_full_0 (
                .addr(if_address),		
                .data_in(if_data_out),
                .data_out(if_data_in),
                .addr_vld(if_mem_rden),
                .data_in_vld(1),
                //.data_in_ack(),
                .data_out_vld(if_mem_wren),
                .data_out_strb(if_data_strb),
                .S_AXI_ACLK(AXI_ACLK),
                .S_AXI_ARESETN(AXI_ARESETN),
                .S_AXI_AWID(AXI_AWID),
                .S_AXI_AWADDR(AXI_AWADDR),
                .S_AXI_AWLEN(AXI_AWLEN),
                .S_AXI_AWSIZE(AXI_AWSIZE),
                .S_AXI_AWBURST(AXI_AWBURST),
                .S_AXI_AWLOCK(AXI_AWLOCK),
                .S_AXI_AWCACHE(AXI_AWCACHE),
                .S_AXI_AWPROT(AXI_AWPROT),
                .S_AXI_AWQOS(AXI_AWQOS),
                .S_AXI_AWREGION(AXI_AWREGION),
                .S_AXI_AWUSER(AXI_AWUSER),
                .S_AXI_AWVALID(AXI_AWVALID),
                .S_AXI_AWREADY(AXI_AWREADY),
                .S_AXI_WDATA(AXI_WDATA),
                .S_AXI_WSTRB(AXI_WSTRB),
                .S_AXI_WLAST(AXI_WLAST),
                .S_AXI_WUSER(AXI_WUSER),
                .S_AXI_WVALID(AXI_WVALID),
                .S_AXI_WREADY(AXI_WREADY),
                .S_AXI_BID(AXI_BID),
                .S_AXI_BRESP(AXI_BRESP),
                .S_AXI_BUSER(AXI_BUSER),
                .S_AXI_BVALID(AXI_BVALID),
                .S_AXI_BREADY(AXI_BREADY),
                .S_AXI_ARID(AXI_ARID),
                .S_AXI_ARADDR(AXI_ARADDR),
                .S_AXI_ARLEN(AXI_ARLEN),
                .S_AXI_ARSIZE(AXI_ARSIZE),
                .S_AXI_ARBURST(AXI_ARBURST),
                .S_AXI_ARLOCK(AXI_ARLOCK),
                .S_AXI_ARCACHE(AXI_ARCACHE),
                .S_AXI_ARPROT(AXI_ARPROT),
                .S_AXI_ARQOS(AXI_ARQOS),
                .S_AXI_ARREGION(AXI_ARREGION),
                .S_AXI_ARUSER(AXI_ARUSER),
                .S_AXI_ARVALID(AXI_ARVALID),
                .S_AXI_ARREADY(AXI_ARREADY),
                .S_AXI_RID(AXI_RID),
                .S_AXI_RDATA(AXI_RDATA),
                .S_AXI_RRESP(AXI_RRESP),
                .S_AXI_RLAST(AXI_RLAST),
                .S_AXI_RUSER(AXI_RUSER),
                .S_AXI_RVALID(rvalid_i),
                .S_AXI_RREADY(AXI_RREADY)
            );
        end
        else begin
            REG_AXI_LITE_IF axi_lite_i (
                .addr(if_address),        
                .data_in(if_data_out),
                .data_out(if_data_in),
                .addr_vld(if_mem_rden),
                .data_in_vld(1),
                //.data_in_ack(),
                .data_out_vld(if_mem_wren),
                .data_out_strb(if_data_strb),
                .S_AXI_ACLK(AXI_ACLK),
                .S_AXI_ARESETN(AXI_ARESETN),
                .S_AXI_AWADDR(AXI_AWADDR),
                .S_AXI_AWPROT(AXI_AWPROT),
                .S_AXI_AWVALID(AXI_AWVALID),
                .S_AXI_AWREADY(AXI_AWREADY),
                .S_AXI_WDATA(AXI_WDATA),
                .S_AXI_WSTRB(AXI_WSTRB),
                .S_AXI_WVALID(AXI_WVALID),
                .S_AXI_WREADY(AXI_WREADY),
                .S_AXI_BRESP(AXI_BRESP),
                .S_AXI_BVALID(AXI_BVALID),
                .S_AXI_BREADY(AXI_BREADY),
                .S_AXI_ARADDR(AXI_ARADDR),
                .S_AXI_ARPROT(AXI_ARPROT),
                .S_AXI_ARVALID(AXI_ARVALID),
                .S_AXI_ARREADY(AXI_ARREADY),
                .S_AXI_RDATA(AXI_RDATA),
                .S_AXI_RRESP(AXI_RRESP),
                .S_AXI_RVALID(rvalid_i),
                .S_AXI_RREADY(AXI_RREADY)
            );
        end
    endgenerate

endmodule


