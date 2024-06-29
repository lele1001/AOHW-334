// (c) Copyright 2022, Advanced Micro Devices, Inc.
// 
// Permission is hereby granted, free of charge, to any person obtaining a 
// copy of this software and associated documentation files (the "Software"), 
// to deal in the Software without restriction, including without limitation 
// the rights to use, copy, modify, merge, publish, distribute, sublicense, 
// and/or sell copies of the Software, and to permit persons to whom the 
// Software is furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in 
// all copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL 
// THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING 
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER 
// DEALINGS IN THE SOFTWARE.
////////////////////////////////////////////////////////////

`timescale 1 ns / 1 ps

	module cmd_queue_v1_0_0 #
	(
		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter 				C_S00_AXI_BASEADDR = 32'hFFFFFFFF,
		parameter 				C_S00_AXI_HIGHADDR = 32'h00000000,
		parameter integer C_S00_AXI_DATA_WIDTH = 32,
		parameter integer C_S00_AXI_ADDR_WIDTH = 9,
		// Parameters of Axi Slave Bus Interface S01_AXI
		parameter 				C_S01_AXI_BASEADDR = 32'hFFFFFFFF,
		parameter 				C_S01_AXI_HIGHADDR = 32'h00000000,		
		parameter integer C_S01_AXI_DATA_WIDTH = 32,
		parameter integer C_S01_AXI_ADDR_WIDTH = 9
	)
	(
		// Users to add ports here
		output wire irq_sq,
		output wire irq_cq,
		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready,

		// Ports of Axi Slave Bus Interface S01_AXI
		input wire [C_S01_AXI_ADDR_WIDTH-1 : 0] s01_axi_awaddr,
		input wire [2 : 0] s01_axi_awprot,
		input wire  s01_axi_awvalid,
		output wire  s01_axi_awready,
		input wire [C_S01_AXI_DATA_WIDTH-1 : 0] s01_axi_wdata,
		input wire [(C_S01_AXI_DATA_WIDTH/8)-1 : 0] s01_axi_wstrb,
		input wire  s01_axi_wvalid,
		output wire  s01_axi_wready,
		output wire [1 : 0] s01_axi_bresp,
		output wire  s01_axi_bvalid,
		input wire  s01_axi_bready,
		input wire [C_S01_AXI_ADDR_WIDTH-1 : 0] s01_axi_araddr,
		input wire [2 : 0] s01_axi_arprot,
		input wire  s01_axi_arvalid,
		output wire  s01_axi_arready,
		output wire [C_S01_AXI_DATA_WIDTH-1 : 0] s01_axi_rdata,
		output wire [1 : 0] s01_axi_rresp,
		output wire  s01_axi_rvalid,
		input wire  s01_axi_rready
	);

   wire 				 s00_axi_awvalid_sq;
   wire 				 s00_axi_awvalid_cq;
   wire 				 s00_axi_awready_sq;
   wire 				 s00_axi_awready_cq;
   wire 				 s00_axi_wvalid_sq;
   wire 				 s00_axi_wvalid_cq;
   wire 				 s00_axi_wready_sq;
   wire 				 s00_axi_wready_cq;
   wire [1 : 0]  s00_axi_bresp_sq;
   wire [1 : 0]  s00_axi_bresp_cq;
   wire 				 s00_axi_bvalid_sq;
   wire 				 s00_axi_bvalid_cq;
   wire 				 s00_axi_arvalid_sq;
   wire 				 s00_axi_arvalid_cq;
   wire 				 s00_axi_arready_sq;
   wire 				 s00_axi_arready_cq;
   wire [C_S00_AXI_DATA_WIDTH-1 : 0] 	 s00_axi_rdata_sq;
   wire [C_S00_AXI_DATA_WIDTH-1 : 0] 	 s00_axi_rdata_cq;
   wire [1 : 0]  s00_axi_rresp_sq;
   wire [1 : 0]  s00_axi_rresp_cq;
   wire 				 s00_axi_rvalid_sq;
   wire 				 s00_axi_rvalid_cq;
   
   wire 				 s01_axi_awvalid_sq;
   wire 				 s01_axi_awvalid_cq;
   wire 				 s01_axi_awready_sq;
   wire 				 s01_axi_awready_cq;
   wire 				 s01_axi_wvalid_sq;
   wire 				 s01_axi_wvalid_cq;
   wire 				 s01_axi_wready_sq;
   wire 				 s01_axi_wready_cq;
   wire [1 : 0]  s01_axi_bresp_sq;
   wire [1 : 0]  s01_axi_bresp_cq;
   wire 				 s01_axi_bvalid_sq;
   wire 				 s01_axi_bvalid_cq;
   wire 				 s01_axi_arvalid_sq;
   wire 				 s01_axi_arvalid_cq;
   wire 				 s01_axi_arready_sq;
   wire 				 s01_axi_arready_cq;
   wire [C_S01_AXI_DATA_WIDTH-1 : 0] 	 s01_axi_rdata_sq;
   wire [C_S01_AXI_DATA_WIDTH-1 : 0] 	 s01_axi_rdata_cq;
   wire [1 : 0]  s01_axi_rresp_sq;
   wire [1 : 0]  s01_axi_rresp_cq;
   wire 				 s01_axi_rvalid_sq;
   wire 				 s01_axi_rvalid_cq;

   //wire 				 s00_sq_wr_sel = !s00_axi_awaddr[8];
   //wire 				 s01_sq_wr_sel = !s01_axi_awaddr[8];   
   //wire 				 s00_cq_wr_sel = s00_axi_awaddr[8];
   //wire 				 s01_cq_wr_sel = s01_axi_awaddr[8];   
   //wire 				 s00_cq_rd_sel = s00_axi_araddr[8];
   //wire 				 s01_cq_rd_sel = s01_axi_araddr[8];   
   //wire 				 s00_sq_rd_sel = !s00_axi_araddr[8];
   //wire 				 s01_sq_rd_sel = !s01_axi_araddr[8];
   
   reg 				 	 s00_sq_wr_sel;
   reg 				 	 s01_sq_wr_sel;
   reg 				 	 s00_cq_wr_sel;
   reg 				 	 s01_cq_wr_sel;
   reg 				 	 s00_cq_rd_sel;
   reg 				 	 s01_cq_rd_sel;
   reg 				 	 s00_sq_rd_sel;
   reg 				 	 s01_sq_rd_sel;

   reg 					 soft_reset;
   wire 				 soft_reset_out_sq;
   wire 				 soft_reset_out_cq;
   
   assign s00_axi_awvalid_sq = s00_sq_wr_sel ? s00_axi_awvalid : 1'b0;
   assign s01_axi_awvalid_sq = s01_sq_wr_sel ? s01_axi_awvalid : 1'b0;
   assign s00_axi_awvalid_cq = s00_cq_wr_sel ? s00_axi_awvalid : 1'b0;
   assign s01_axi_awvalid_cq = s01_cq_wr_sel ? s01_axi_awvalid : 1'b0;
   assign s00_axi_arvalid_sq = s00_sq_rd_sel ? s00_axi_arvalid : 1'b0;
   assign s01_axi_arvalid_sq = s01_sq_rd_sel ? s01_axi_arvalid : 1'b0;
   assign s00_axi_arvalid_cq = s00_cq_rd_sel ? s00_axi_arvalid : 1'b0;
   assign s01_axi_arvalid_cq = s01_cq_rd_sel ? s01_axi_arvalid : 1'b0;
   assign s00_axi_wvalid_sq = s00_sq_wr_sel ? s00_axi_wvalid : 1'b0;
   assign s01_axi_wvalid_sq = s01_sq_wr_sel ? s01_axi_wvalid : 1'b0;
   assign s00_axi_wvalid_cq = s00_cq_wr_sel ? s00_axi_wvalid : 1'b0;
   assign s01_axi_wvalid_cq = s01_cq_wr_sel ? s01_axi_wvalid : 1'b0;
   assign s00_axi_awready = s00_sq_wr_sel ? s00_axi_awready_sq : s00_axi_awready_cq;
   assign s00_axi_wready = s00_sq_wr_sel ? s00_axi_wready_sq : s00_axi_wready_cq;
   assign s00_axi_arready = s00_sq_rd_sel ? s00_axi_arready_sq : s00_axi_arready_cq;
   assign s01_axi_awready = s01_sq_wr_sel ? s01_axi_awready_sq : s01_axi_awready_cq;
   assign s01_axi_wready = s01_sq_wr_sel ? s01_axi_wready_sq : s01_axi_wready_cq;
   assign s01_axi_arready = s01_sq_rd_sel ? s01_axi_arready_sq : s01_axi_arready_cq;
   assign s00_axi_bresp = s00_sq_wr_sel ? s00_axi_bresp_sq : s00_axi_bresp_cq;
   assign s00_axi_bvalid = s00_sq_wr_sel ? s00_axi_bvalid_sq : s00_axi_bvalid_cq;
   assign s01_axi_bresp = s01_sq_wr_sel ? s01_axi_bresp_sq : s01_axi_bresp_cq;
   assign s01_axi_bvalid = s01_sq_wr_sel ? s01_axi_bvalid_sq : s01_axi_bvalid_cq;
   assign s00_axi_rdata = s00_sq_rd_sel ? s00_axi_rdata_sq : s00_axi_rdata_cq;
   assign s00_axi_rvalid = s00_sq_rd_sel ? s00_axi_rvalid_sq : s00_axi_rvalid_cq;
   assign s00_axi_rresp = s00_sq_rd_sel ? s00_axi_rresp_sq : s00_axi_rresp_cq;
   assign s01_axi_rdata = s01_sq_rd_sel ? s01_axi_rdata_sq : s01_axi_rdata_cq;
   assign s01_axi_rvalid = s01_sq_rd_sel ? s01_axi_rvalid_sq : s01_axi_rvalid_cq;
   assign s01_axi_rresp = s01_sq_rd_sel ? s01_axi_rresp_sq : s01_axi_rresp_cq;

   always @(posedge s00_axi_aclk) begin
      soft_reset <= soft_reset_out_sq | soft_reset_out_cq;
   end
   
	always @( posedge s00_axi_aclk )
	begin
	  if ( s00_axi_aresetn == 1'b0 )
	    begin
  			s00_sq_wr_sel <= 0;
  			s01_sq_wr_sel <= 0;
  			s00_cq_wr_sel <= 0;
  			s01_cq_wr_sel <= 0;
  			s00_cq_rd_sel <= 0;
  			s01_cq_rd_sel <= 0;
  			s00_sq_rd_sel <= 0;
  			s01_sq_rd_sel <= 0;
	    end 
	  else
      begin
	 			s00_sq_wr_sel = !s00_axi_awaddr[8];
	 			s00_sq_rd_sel = !s00_axi_araddr[8];
	 			s00_cq_wr_sel = s00_axi_awaddr[8];
	 			s00_cq_rd_sel = s00_axi_araddr[8];
	 			
	 			//s01_sq_wr_sel = !s01_axi_awaddr[8];
	 			//s01_sq_rd_sel = !s01_axi_araddr[8];
	 			//s01_cq_wr_sel = s01_axi_awaddr[8];
	 			//s01_cq_rd_sel = s01_axi_araddr[8];
	 			
	 			s01_sq_wr_sel = s01_axi_awaddr[8];
	 			s01_sq_rd_sel = s01_axi_araddr[8];
	 			s01_cq_wr_sel = !s01_axi_awaddr[8];
	 			s01_cq_rd_sel = !s01_axi_araddr[8];	 			
      end
	end     
   
   // Instantiation of Axi Bus Interface S00_AXI_sq
	cmd_queue_v1_0_0_S00_AXI # ( 
		.C_S00_AXI_BASEADDR(C_S00_AXI_BASEADDR),
		.C_S00_AXI_HIGHADDR(C_S00_AXI_HIGHADDR),
		.C_S00_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S00_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH),
		.C_S01_AXI_BASEADDR(C_S01_AXI_BASEADDR),
		.C_S01_AXI_HIGHADDR(C_S01_AXI_HIGHADDR),
		.C_S01_AXI_DATA_WIDTH(C_S01_AXI_DATA_WIDTH),
		.C_S01_AXI_ADDR_WIDTH(C_S01_AXI_ADDR_WIDTH)		
	) cmd_queue_v1_0_0_S00_AXI_sq_inst (
	  .IRQ(irq_sq),
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.SOFT_RESET(soft_reset),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid_sq),
		.S_AXI_AWREADY(s00_axi_awready_sq),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid_sq),
		.S_AXI_WREADY(s00_axi_wready_sq),
		.S_AXI_BRESP(s00_axi_bresp_sq),
		.S_AXI_BVALID(s00_axi_bvalid_sq),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid_sq),
		.S_AXI_ARREADY(s00_axi_arready_sq),
		.S_AXI_RDATA(s00_axi_rdata_sq),
		.S_AXI_RRESP(s00_axi_rresp_sq),
		.S_AXI_RVALID(s00_axi_rvalid_sq),
		.S_AXI_RREADY(s00_axi_rready),
		.S_AXI_S01_AWADDR(s01_axi_awaddr),
		.S_AXI_S01_AWPROT(s01_axi_awprot),
		.S_AXI_S01_AWVALID(s01_axi_awvalid_sq),
		.S_AXI_S01_AWREADY(s01_axi_awready_sq),
		.S_AXI_S01_WDATA(s01_axi_wdata),
		.S_AXI_S01_WSTRB(s01_axi_wstrb),
		.S_AXI_S01_WVALID(s01_axi_wvalid_sq),
		.S_AXI_S01_WREADY(s01_axi_wready_sq),
		.S_AXI_S01_BRESP(s01_axi_bresp_sq),
		.S_AXI_S01_BVALID(s01_axi_bvalid_sq),
		.S_AXI_S01_BREADY(s01_axi_bready),
		.S_AXI_S01_ARADDR(s01_axi_araddr),
		.S_AXI_S01_ARPROT(s01_axi_arprot),
		.S_AXI_S01_ARVALID(s01_axi_arvalid_sq),
		.S_AXI_S01_ARREADY(s01_axi_arready_sq),
		.S_AXI_S01_RDATA(s01_axi_rdata_sq),
		.S_AXI_S01_RRESP(s01_axi_rresp_sq),
		.S_AXI_S01_RVALID(s01_axi_rvalid_sq),
		.S_AXI_S01_RREADY(s01_axi_rready),
		.SOFT_RESET_OUT(soft_reset_out_sq)
	);

   // Instantiation of Axi Bus Interface S00_AXI_cq
	cmd_queue_v1_0_0_S00_AXI # ( 
		.C_S00_AXI_BASEADDR(C_S00_AXI_BASEADDR),
		.C_S00_AXI_HIGHADDR(C_S00_AXI_HIGHADDR),
		.C_S00_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S00_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH),
		.C_S01_AXI_BASEADDR(C_S01_AXI_BASEADDR),
		.C_S01_AXI_HIGHADDR(C_S01_AXI_HIGHADDR),
		.C_S01_AXI_DATA_WIDTH(C_S01_AXI_DATA_WIDTH),
		.C_S01_AXI_ADDR_WIDTH(C_S01_AXI_ADDR_WIDTH)
	) cmd_queue_v1_0_0_S00_AXI_cq_inst (
	  .IRQ(irq_cq),
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.SOFT_RESET(soft_reset),
		.S_AXI_AWADDR(s01_axi_awaddr),
		.S_AXI_AWPROT(s01_axi_awprot),
		.S_AXI_AWVALID(s01_axi_awvalid_cq),
		.S_AXI_AWREADY(s01_axi_awready_cq),
		.S_AXI_WDATA(s01_axi_wdata),
		.S_AXI_WSTRB(s01_axi_wstrb),
		.S_AXI_WVALID(s01_axi_wvalid_cq),
		.S_AXI_WREADY(s01_axi_wready_cq),
		.S_AXI_BRESP(s01_axi_bresp_cq),
		.S_AXI_BVALID(s01_axi_bvalid_cq),
		.S_AXI_BREADY(s01_axi_bready),
		.S_AXI_ARADDR(s01_axi_araddr),
		.S_AXI_ARPROT(s01_axi_arprot),
		.S_AXI_ARVALID(s01_axi_arvalid_cq),
		.S_AXI_ARREADY(s01_axi_arready_cq),
		.S_AXI_RDATA(s01_axi_rdata_cq),
		.S_AXI_RRESP(s01_axi_rresp_cq),
		.S_AXI_RVALID(s01_axi_rvalid_cq),
		.S_AXI_RREADY(s01_axi_rready),
		.S_AXI_S01_AWADDR(s00_axi_awaddr),
		.S_AXI_S01_AWPROT(s00_axi_awprot),
		.S_AXI_S01_AWVALID(s00_axi_awvalid_cq),
		.S_AXI_S01_AWREADY(s00_axi_awready_cq),
		.S_AXI_S01_WDATA(s00_axi_wdata),
		.S_AXI_S01_WSTRB(s00_axi_wstrb),
		.S_AXI_S01_WVALID(s00_axi_wvalid_cq),
		.S_AXI_S01_WREADY(s00_axi_wready_cq),
		.S_AXI_S01_BRESP(s00_axi_bresp_cq),
		.S_AXI_S01_BVALID(s00_axi_bvalid_cq),
		.S_AXI_S01_BREADY(s00_axi_bready),
		.S_AXI_S01_ARADDR(s00_axi_araddr),
		.S_AXI_S01_ARPROT(s00_axi_arprot),
		.S_AXI_S01_ARVALID(s00_axi_arvalid_cq),
		.S_AXI_S01_ARREADY(s00_axi_arready_cq),
		.S_AXI_S01_RDATA(s00_axi_rdata_cq),
		.S_AXI_S01_RRESP(s00_axi_rresp_cq),
		.S_AXI_S01_RVALID(s00_axi_rvalid_cq),
		.S_AXI_S01_RREADY(s00_axi_rready),
		.SOFT_RESET_OUT(soft_reset_out_cq)
	);

 	// Add user logic here

	// User logic ends

	endmodule


// (c) Copyright 2022, Advanced Micro Devices, Inc.
// 
// Permission is hereby granted, free of charge, to any person obtaining a 
// copy of this software and associated documentation files (the "Software"), 
// to deal in the Software without restriction, including without limitation 
// the rights to use, copy, modify, merge, publish, distribute, sublicense, 
// and/or sell copies of the Software, and to permit persons to whom the 
// Software is furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in 
// all copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL 
// THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING 
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER 
// DEALINGS IN THE SOFTWARE.
////////////////////////////////////////////////////////////

`timescale 1 ns / 1 ps

	module cmd_queue_v1_0_0_S00_AXI #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter 				C_S00_AXI_BASEADDR = 32'hFFFFFFFF,
		parameter 				C_S00_AXI_HIGHADDR = 32'h00000000,
		parameter integer C_S00_AXI_DATA_WIDTH = 32,
		parameter integer C_S00_AXI_ADDR_WIDTH = 9,
		// Parameters of Axi Slave Bus Interface S01_AXI
		parameter 				C_S01_AXI_BASEADDR = 32'hFFFFFFFF,
		parameter 				C_S01_AXI_HIGHADDR = 32'h00000000,		
		parameter integer C_S01_AXI_DATA_WIDTH = 32,
		parameter integer C_S01_AXI_ADDR_WIDTH = 9
	)
	(
		// Users to add ports here
        output wire IRQ,
		// User ports ends
		// Do not modify the ports beyond this line

		// Global Clock Signal
		input wire  S_AXI_ACLK,
		// Global Reset Signal. This Signal is Active LOW
		input wire  S_AXI_ARESETN,
                // Soft Reset
		input wire  SOFT_RESET,
		// Write address (issued by master, acceped by Slave)
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
		// Write channel Protection type. This signal indicates the
    		// privilege and security level of the transaction, and whether
    		// the transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_AWPROT,
		// Write address valid. This signal indicates that the master signaling
    		// valid write address and control information.
		input wire  S_AXI_AWVALID,
		// Write address ready. This signal indicates that the slave is ready
    		// to accept an address and associated control signals.
		output wire  S_AXI_AWREADY,
		// Write data (issued by master, acceped by Slave) 
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
		// Write strobes. This signal indicates which byte lanes hold
    		// valid data. There is one write strobe bit for each eight
    		// bits of the write data bus.    
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
		// Write valid. This signal indicates that valid write
    		// data and strobes are available.
		input wire  S_AXI_WVALID,
		// Write ready. This signal indicates that the slave
    		// can accept the write data.
		output wire  S_AXI_WREADY,
		// Write response. This signal indicates the status
    		// of the write transaction.
		output wire [1 : 0] S_AXI_BRESP,
		// Write response valid. This signal indicates that the channel
    		// is signaling a valid write response.
		output wire  S_AXI_BVALID,
		// Response ready. This signal indicates that the master
    		// can accept a write response.
		input wire  S_AXI_BREADY,
		// Read address (issued by master, acceped by Slave)
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
		// Protection type. This signal indicates the privilege
    		// and security level of the transaction, and whether the
    		// transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_ARPROT,
		// Read address valid. This signal indicates that the channel
    		// is signaling valid read address and control information.
		input wire  S_AXI_ARVALID,
		// Read address ready. This signal indicates that the slave is
    		// ready to accept an address and associated control signals.
		output wire  S_AXI_ARREADY,
		// Read data (issued by slave)
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
		// Read response. This signal indicates the status of the
    		// read transfer.
		output wire [1 : 0] S_AXI_RRESP,
		// Read valid. This signal indicates that the channel is
    		// signaling the required read data.
		output wire  S_AXI_RVALID,
		// Read ready. This signal indicates that the master can
    		// accept the read data and response information.
		input wire  S_AXI_RREADY,

		// Write address (issued by master, acceped by Slave)
		input wire [C_S01_AXI_ADDR_WIDTH-1 : 0] S_AXI_S01_AWADDR,
		// Write channel Protection type. This signal indicates the
    		// privilege and security level of the transaction, and whether
    		// the transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_S01_AWPROT,
		// Write address valid. This signal indicates that the master signaling
    		// valid write address and control information.
		input wire  S_AXI_S01_AWVALID,
		// Write address ready. This signal indicates that the slave is ready
    		// to accept an address and associated control signals.
		output wire  S_AXI_S01_AWREADY,
		// Write data (issued by master, acceped by Slave) 
		input wire [C_S01_AXI_DATA_WIDTH-1 : 0] S_AXI_S01_WDATA,
		// Write strobes. This signal indicates which byte lanes hold
    		// valid data. There is one write strobe bit for each eight
    		// bits of the write data bus.    
		input wire [(C_S01_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_S01_WSTRB,
		// Write valid. This signal indicates that valid write
    		// data and strobes are available.
		input wire  S_AXI_S01_WVALID,
		// Write ready. This signal indicates that the slave
    		// can accept the write data.
		output wire  S_AXI_S01_WREADY,
		// Write response. This signal indicates the status
    		// of the write transaction.
		output wire [1 : 0] S_AXI_S01_BRESP,
		// Write response valid. This signal indicates that the channel
    		// is signaling a valid write response.
		output wire  S_AXI_S01_BVALID,
		// Response ready. This signal indicates that the master
    		// can accept a write response.
		input wire  S_AXI_S01_BREADY,
		// Read address (issued by master, acceped by Slave)
		input wire [C_S01_AXI_ADDR_WIDTH-1 : 0] S_AXI_S01_ARADDR,
		// Protection type. This signal indicates the privilege
    		// and security level of the transaction, and whether the
    		// transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_S01_ARPROT,
		// Read address valid. This signal indicates that the channel
    		// is signaling valid read address and control information.
		input wire  S_AXI_S01_ARVALID,
		// Read address ready. This signal indicates that the slave is
    		// ready to accept an address and associated control signals.
		output wire  S_AXI_S01_ARREADY,
		// Read data (issued by slave)
		output wire [C_S01_AXI_DATA_WIDTH-1 : 0] S_AXI_S01_RDATA,
		// Read response. This signal indicates the status of the
    		// read transfer.
		output wire [1 : 0] S_AXI_S01_RRESP,
		// Read valid. This signal indicates that the channel is
    		// signaling the required read data.
		output wire  S_AXI_S01_RVALID,
		// Read ready. This signal indicates that the master can
    		// accept the read data and response information.
		input wire  S_AXI_S01_RREADY,
                // Soft Reset Output
                output wire SOFT_RESET_OUT
	);

	// AXI4LITE signals
	reg [C_S00_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	reg  	axi_awready;
	reg  	axi_wready;
	reg [1 : 0] 	axi_bresp;
	reg  	axi_bvalid;
	reg [C_S00_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	reg  	axi_arready;
	reg [C_S00_AXI_DATA_WIDTH-1 : 0] 	axi_rdata;
	reg [1 : 0] 	axi_rresp;
	reg  	axi_rvalid;

	// AXI4LITE signals for S01
	reg [C_S01_AXI_ADDR_WIDTH-1 : 0] 	axi_s01_awaddr;
	reg  	axi_s01_awready;
	reg  	axi_s01_wready;
	reg [1 : 0] 	axi_s01_bresp;
	reg  	axi_s01_bvalid;
	reg [C_S01_AXI_ADDR_WIDTH-1 : 0] 	axi_s01_araddr;
	reg  	axi_s01_arready;
	reg [C_S01_AXI_DATA_WIDTH-1 : 0] 	axi_s01_rdata;
	reg [1 : 0] 	axi_s01_rresp;
	reg  	axi_s01_rvalid;

	// Example-specific design signals
	// local parameter for addressing 32 bit / 64 bit C_S00_AXI_DATA_WIDTH
	// ADDR_LSB is used for addressing 32/64 bit registers/memories
	// ADDR_LSB = 2 for 32 bits (n downto 2)
	// ADDR_LSB = 3 for 64 bits (n downto 3)
	localparam integer ADDR_LSB = (C_S00_AXI_DATA_WIDTH/32) + 1;
	localparam integer OPT_MEM_ADDR_BITS = 3;
	//----------------------------------------------
	//-- Signals for user logic register space example
	//------------------------------------------------
	//-- Number of Slave Registers 4
	reg [C_S00_AXI_DATA_WIDTH-1:0]	slv_reg0;  // Tail Pointer
	reg [C_S00_AXI_DATA_WIDTH-1:0]	slv_reg1;  // Interrupt Reg - bit 0: IRQ reg
	reg [C_S00_AXI_DATA_WIDTH-1:0]	slv_reg2_low;  // Queue Memory Address
	reg [C_S00_AXI_DATA_WIDTH-1:0]	slv_reg2_high;  // Queue Memory Address
	reg [C_S00_AXI_DATA_WIDTH-1:0]	slv_reg3;  // Control Register - bit 31: Soft Reset, bit 0: Enable, bit 1: Interrupt Type (0: IRQ on Write, 1: IRQ from reg)
	wire	 slv_reg_rden;
	wire	 slv_reg_wren;
	wire	 slv_reg_s01_rden;
	wire	 slv_reg_s01_wren;
	reg [C_S00_AXI_DATA_WIDTH-1:0]	 reg_data_out;
	reg [C_S01_AXI_DATA_WIDTH-1:0]	 reg_s01_data_out;
	integer	 byte_index;
	reg	 aw_en;
	reg	 aw_s01_en;
	reg irq_reg;
	reg irq_reg_write;
	reg irq_reg_read;
   reg 	    irq_on_write_reg;
   wire     irq_en;
   wire     irq_type;  // 0: Write to reg0 to trigger interrupt;1: Write to reg1 irq_stat to trigger interrupt;

   // IRQ generation logic
   always @( posedge S_AXI_ACLK )
     begin
	if ( S_AXI_ARESETN == 1'b0)
	  begin
	     irq_reg = 1'b0;
	  end
	else
	  begin
	     irq_reg = irq_en ? (irq_type ? slv_reg1[0] : irq_on_write_reg) : 1'b0;
	  end
     end

	// I/O Connections assignments

	assign S_AXI_AWREADY	= axi_awready;
	assign S_AXI_WREADY	= axi_wready;
	assign S_AXI_BRESP	= axi_bresp;
	assign S_AXI_BVALID	= axi_bvalid;
	assign S_AXI_ARREADY	= axi_arready;
	assign S_AXI_RDATA	= axi_rdata;
	assign S_AXI_RRESP	= axi_rresp;
	assign S_AXI_RVALID	= axi_rvalid;
	assign S_AXI_S01_AWREADY	= axi_s01_awready;
	assign S_AXI_S01_WREADY	= axi_s01_wready;
	assign S_AXI_S01_BRESP	= axi_s01_bresp;
	assign S_AXI_S01_BVALID	= axi_s01_bvalid;
	assign S_AXI_S01_ARREADY	= axi_s01_arready;
	assign S_AXI_S01_RDATA	= axi_s01_rdata;
	assign S_AXI_S01_RRESP	= axi_s01_rresp;
	assign S_AXI_S01_RVALID	= axi_s01_rvalid;
	assign IRQ = irq_reg;
        assign SOFT_RESET_OUT = slv_reg3[31];
        assign irq_type = slv_reg3[1];
        assign irq_en = slv_reg3[0];

	// Implement axi_awready generation
	// axi_awready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
	// de-asserted when reset is low.
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awready <= 1'b0;
	      aw_en <= 1'b1;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
	        begin
	          // slave is ready to accept write address when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_awready <= 1'b1;
	          aw_en <= 1'b0;
	        end
	        else if (S_AXI_BREADY && axi_bvalid)
	            begin
	              aw_en <= 1'b1;
	              axi_awready <= 1'b0;
	            end
	      else           
	        begin
	          axi_awready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_s01_awready generation
	// axi_s01_awready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_S01_AWVALID and S_AXI_S01_WVALID are asserted. axi_s01_awready is
	// de-asserted when reset is low.
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_s01_awready <= 1'b0;
	      aw_s01_en <= 1'b1;
	    end 
	  else
	    begin    
	      if (~axi_s01_awready && S_AXI_S01_AWVALID && S_AXI_S01_WVALID && aw_s01_en)
	        begin
	          // slave is ready to accept write address when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_s01_awready <= 1'b1;
	          aw_s01_en <= 1'b0;
	        end
	        else if (S_AXI_S01_BREADY && axi_s01_bvalid)
	            begin
	              aw_s01_en <= 1'b1;
	              axi_s01_awready <= 1'b0;
	            end
	      else           
	        begin
	          axi_s01_awready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_awaddr latching
	// This process is used to latch the address when both 
	// S_AXI_AWVALID and S_AXI_WVALID are valid. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awaddr <= 0;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
	        begin
	          // Write Address latching 
	          axi_awaddr <= S_AXI_AWADDR;
	        end
	    end 
	end       

	// Implement axi_s01_awaddr latching
	// This process is used to latch the address when both 
	// S_AXI_S01_AWVALID and S_AXI_S01_WVALID are valid. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_s01_awaddr <= 0;
	    end 
	  else
	    begin    
	      if (~axi_s01_awready && S_AXI_S01_AWVALID && S_AXI_S01_WVALID && aw_s01_en)
	        begin
	          // Write Address latching 
	          axi_s01_awaddr <= S_AXI_S01_AWADDR;
	        end
	    end 
	end       

	// Implement axi_wready generation
	// axi_wready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
	// de-asserted when reset is low. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_wready <= 1'b0;
	    end 
	  else
	    begin    
	      if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID && aw_en )
	        begin
	          // slave is ready to accept write data when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_wready <= 1'b1;
	        end
	      else
	        begin
	          axi_wready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_s01_wready generation
	// axi_s01_wready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_S01_AWVALID and S_AXI_S01_WVALID are asserted. axi_s01_wready is 
	// de-asserted when reset is low. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_s01_wready <= 1'b0;
	    end 
	  else
	    begin    
	      if (~axi_s01_wready && S_AXI_S01_WVALID && S_AXI_S01_AWVALID && aw_s01_en )
	        begin
	          // slave is ready to accept write data when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_s01_wready <= 1'b1;
	        end
	      else
	        begin
	          axi_s01_wready <= 1'b0;
	        end
	    end 
	end       

	// Implement memory mapped register select and write logic generation
	// The write data is accepted and written to memory mapped registers when
	// axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
	// select byte enables of slave registers while writing.
	// These registers are cleared when reset (active low) is applied.
	// Slave register write enable is asserted when valid address and data are available
	// and the slave is ready to accept the write address and write data.
	assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;

        always @( posedge S_AXI_ACLK) begin
	   if ( S_AXI_ARESETN == 1'b0 || SOFT_RESET) begin
	      slv_reg1 <= 0;
	   end else begin
	      slv_reg1 <= (slv_reg1 && ~irq_reg_read) || irq_reg_write;
	   end
	end
   
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 || SOFT_RESET)
	    begin
	      slv_reg0 <= 0;
//	      slv_reg1 <= 0;
	      slv_reg2_low <= 0;
	      slv_reg2_high <= 0;
	      slv_reg3 <= 1;
	       irq_on_write_reg <= 1'b0;
	       irq_reg_write <= 1'b0;
	    end 
	  else begin
	    if (slv_reg_wren)
	      begin
	        case ( axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
	          3'h0:
	            for ( byte_index = 0; byte_index <= (C_S00_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 0
	                slv_reg0[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
			 irq_on_write_reg <= 1'b1;
	              end  
	          3'h1:
		    irq_reg_write <= 1'b1;
/* -----\/----- EXCLUDED -----\/-----
	            for ( byte_index = 0; byte_index <= (C_S00_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 1
	                slv_reg1[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
 -----/\----- EXCLUDED -----/\----- */
	          3'h2:
	            for ( byte_index = 0; byte_index <= (C_S00_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 2
	                slv_reg2_low[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          3'h4:
	            for ( byte_index = 0; byte_index <= (C_S00_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 2
	                slv_reg2_high[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          3'h3:
	            for ( byte_index = 0; byte_index <= (C_S00_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 3
	                slv_reg3[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          default : begin
	                      slv_reg0 <= slv_reg0;
//	                      slv_reg1 <= slv_reg1;
	                      slv_reg2_low <= slv_reg2_low;
	                      slv_reg2_high <= slv_reg2_high;
	                      slv_reg3 <= slv_reg3;
	                    end
	        endcase
	      end // if (slv_reg_wren)
	    else
	      begin
		 irq_on_write_reg <= 1'b0;
		 irq_reg_write <= 1'b0;
	      end
	  end
	end    

	// Implement write response logic generation
	// The write response and response valid signals are asserted by the slave 
	// when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
	// This marks the acceptance of address and indicates the status of 
	// write transaction.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_bvalid  <= 0;
	      axi_bresp   <= 2'b0;
	    end 
	  else
	    begin    
	      if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID)
	        begin
	          // indicates a valid write response is available
	          axi_bvalid <= 1'b1;
	          axi_bresp  <= 2'b0; // 'OKAY' response 
	        end                   // work error responses in future
	      else
	        begin
	          if (S_AXI_BREADY && axi_bvalid) 
	            //check if bready is asserted while bvalid is high) 
	            //(there is a possibility that bready is always asserted high)   
	            begin
	              axi_bvalid <= 1'b0; 
	            end  
	        end
	    end
	end   

	// Implement write response logic generation
	// The write response and response valid signals are asserted by the slave 
	// when axi_s01_wready, S_AXI_S01_WVALID, axi_s01_wready and S_AXI_S01_WVALID are asserted.  
	// This marks the acceptance of address and indicates the status of 
	// write transaction.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_s01_bvalid  <= 0;
	      axi_s01_bresp   <= 2'b0;
	    end 
	  else
	    begin    
	      if (axi_s01_awready && S_AXI_S01_AWVALID && ~axi_s01_bvalid && axi_s01_wready && S_AXI_S01_WVALID)
	        begin
	          // indicates a valid write response is available
	          axi_s01_bvalid <= 1'b1;
	          axi_s01_bresp  <= 2'b0; // 'OKAY' response 
	        end                   // work error responses in future
	      else
	        begin
	          if (S_AXI_S01_BREADY && axi_s01_bvalid) 
	            //check if bready is asserted while bvalid is high) 
	            //(there is a possibility that bready is always asserted high)   
	            begin
	              axi_s01_bvalid <= 1'b0; 
	            end  
	        end
	    end
	end   

	// Implement axi_arready generation
	// axi_arready is asserted for one S_AXI_ACLK clock cycle when
	// S_AXI_ARVALID is asserted. axi_awready is 
	// de-asserted when reset (active low) is asserted. 
	// The read address is also latched when S_AXI_ARVALID is 
	// asserted. axi_araddr is reset to zero on reset assertion.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_arready <= 1'b0;
	      axi_araddr  <= 32'b0;
	    end 
	  else
	    begin    
	      if (~axi_arready && S_AXI_ARVALID)
	        begin
	          // indicates that the slave has acceped the valid read address
	          axi_arready <= 1'b1;
	          // Read address latching
	          axi_araddr  <= S_AXI_ARADDR;
	        end
	      else
	        begin
	          axi_arready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_s01_arready generation
	// axi_s01_arready is asserted for one S_AXI_ACLK clock cycle when
	// S_AXI_S01_ARVALID is asserted. axi_s01_awready is 
	// de-asserted when reset (active low) is asserted. 
	// The read address is also latched when S_AXI_S01_ARVALID is 
	// asserted. axi_s01_araddr is reset to zero on reset assertion.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_s01_arready <= 1'b0;
	      axi_s01_araddr  <= 32'b0;
	    end 
	  else
	    begin    
	      if (~axi_s01_arready && S_AXI_S01_ARVALID)
	        begin
	          // indicates that the slave has acceped the valid read address
	          axi_s01_arready <= 1'b1;
	          // Read address latching
	          axi_s01_araddr  <= S_AXI_S01_ARADDR;
	        end
	      else
	        begin
	          axi_s01_arready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_arvalid generation
	// axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
	// S_AXI_ARVALID and axi_arready are asserted. The slave registers 
	// data are available on the axi_rdata bus at this instance. The 
	// assertion of axi_rvalid marks the validity of read data on the 
	// bus and axi_rresp indicates the status of read transaction.axi_rvalid 
	// is deasserted on reset (active low). axi_rresp and axi_rdata are 
	// cleared to zero on reset (active low).  
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rvalid <= 0;
	      axi_rresp  <= 0;
	    end 
	  else
	    begin    
	      if (axi_arready && S_AXI_ARVALID && ~axi_rvalid)
	        begin
	          // Valid read data is available at the read data bus
	          axi_rvalid <= 1'b1;
	          axi_rresp  <= 2'b0; // 'OKAY' response
	        end   
	      else if (axi_rvalid && S_AXI_RREADY)
	        begin
	          // Read data is accepted by the master
	          axi_rvalid <= 1'b0;
	        end                
	    end
	end    

	// Implement axi_s01_arvalid generation
	// axi_s01_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
	// S_AXI_S01_ARVALID and axi_s01_arready are asserted. The slave registers 
	// data are available on the axi_s01_rdata bus at this instance. The 
	// assertion of axi_s01_rvalid marks the validity of read data on the 
	// bus and axi_s01_rresp indicates the status of read transaction.axi_s01_rvalid 
	// is deasserted on reset (active low). axi_s01_rresp and axi_s01_rdata are 
	// cleared to zero on reset (active low).  
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_s01_rvalid <= 0;
	      axi_s01_rresp  <= 0;
	    end 
	  else
	    begin    
	      if (axi_s01_arready && S_AXI_S01_ARVALID && ~axi_s01_rvalid)
	        begin
	          // Valid read data is available at the read data bus
	          axi_s01_rvalid <= 1'b1;
	          axi_s01_rresp  <= 2'b0; // 'OKAY' response
	        end   
	      else if (axi_s01_rvalid && S_AXI_S01_RREADY)
	        begin
	          // Read data is accepted by the master
	          axi_s01_rvalid <= 1'b0;
	        end                
	    end
	end    

	// Implement memory mapped register select and read logic generation
	// Slave register read enable is asserted when valid address is available
	// and the slave is ready to accept the read address.
	assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;
	always @(*)
	begin
	      // Address decoding for reading registers
	      case ( axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
	        3'h0   : reg_data_out <= slv_reg0;
	        3'h1   : reg_data_out <= slv_reg1;
	        3'h2   : reg_data_out <= slv_reg2_low;
	        3'h3   : reg_data_out <= slv_reg3;
	        3'h4   : reg_data_out <= slv_reg2_high;
	        default : reg_data_out <= 0;
	      endcase
	end

	// Output register or memory read data
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rdata  <= 0;
	    end 
	  else
	    begin    
	      // When there is a valid read address (S_AXI_ARVALID) with 
	      // acceptance of read address by the slave (axi_arready), 
	      // output the read dada 
	      if (slv_reg_rden)
	        begin
	          axi_rdata <= reg_data_out;     // register read data
	        end   
	    end
	end    

	// Implement memory mapped register select and read logic generation
	// Slave register read enable is asserted when valid address is available
	// and the slave is ready to accept the read address.
	assign slv_reg_s01_rden = axi_s01_arready & S_AXI_S01_ARVALID & ~axi_s01_rvalid;
	always @(*)
	begin
	      // Address decoding for reading registers
	      case ( axi_s01_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
	        3'h0   : reg_s01_data_out <= slv_reg0;
	        3'h1   : reg_s01_data_out <= slv_reg1;
	        3'h2   : reg_s01_data_out <= slv_reg2_low;
	        3'h3   : reg_s01_data_out <= slv_reg3;
	        3'h4   : reg_s01_data_out <= slv_reg2_high;
	        default : reg_s01_data_out <= 0;
	      endcase
	end

	// Output register or memory read data
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_s01_rdata  <= 0;
	       irq_reg_read <= 1'b0;
	    end 
	  else
	    begin    
	      // When there is a valid read address (S_AXI_S01_ARVALID) with 
	      // acceptance of read address by the slave (axi_s01_arready), 
	      // output the read dada 
	      if (slv_reg_s01_rden)
	        begin
	          axi_s01_rdata <= reg_s01_data_out;     // register read data
		   if(axi_s01_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 2'h1)
		   irq_reg_read <= 1'b1;
	        end
	      else
		begin
	           axi_s01_rdata <= axi_s01_rdata;
		 irq_reg_read <= 1'b0;
		end
	    end
	end    

	// Add user logic here

	// User logic ends

	endmodule


