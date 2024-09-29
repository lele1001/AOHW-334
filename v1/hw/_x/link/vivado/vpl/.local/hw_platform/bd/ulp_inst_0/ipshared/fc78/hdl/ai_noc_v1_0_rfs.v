
`timescale 1 ns / 1 ps
(* DONT_TOUCH = "TRUE" *)
	module ai_noc_v1_0_0_ai_noc #
	(

		parameter integer C_NOC_INTF_TYPE	= 0, // 0 for mm; 1 for stream
        parameter integer C_NOC_INTF_MODE = 0, // 0 for slave; 1 for master
		// Parameters of Axi Slave Bus Interface S_AXI
		parameter integer C_S_AXI_ID_WIDTH	= 1,
		parameter integer C_S_AXI_DATA_WIDTH	= 128,
		parameter integer C_S_AXI_ADDR_WIDTH	= 64,
		parameter integer C_S_AXI_AWUSER_WIDTH	= 18,
		parameter integer C_S_AXI_ARUSER_WIDTH	= 18,
		parameter integer C_S_AXI_WUSER_WIDTH	= 19,
		parameter integer C_S_AXI_RUSER_WIDTH	= 17,
		parameter integer C_S_AXI_BUSER_WIDTH	= 16,

		// Parameters of Axi Slave Bus Interface S_AXIS
		parameter integer C_S_AXIS_TDATA_WIDTH	= 32,
		parameter integer C_S_AXIS_TDEST_WIDTH	= 10,
		parameter integer C_S_AXIS_TID_WIDTH	= 2,

		// Parameters of Axi Master Bus Interface M_AXI
		parameter integer C_M_AXI_ID_WIDTH	= 1,
		parameter integer C_M_AXI_ADDR_WIDTH	= 64,
		parameter integer C_M_AXI_DATA_WIDTH	= 128,
		parameter integer C_M_AXI_AWUSER_WIDTH	= 18,
		parameter integer C_M_AXI_ARUSER_WIDTH	= 18,
		parameter integer C_M_AXI_WUSER_WIDTH	= 19,
		parameter integer C_M_AXI_RUSER_WIDTH	= 17,
		parameter integer C_M_AXI_BUSER_WIDTH	= 16,

		// Parameters of Axi Master Bus Interface M_AXIS
		parameter integer C_M_AXIS_TDATA_WIDTH	= 32,
		parameter integer C_M_AXIS_TDEST_WIDTH	= 10,
		parameter integer C_M_AXIS_TID_WIDTH	= 2,
		parameter integer C_AIE_MODE = 0
        
	)
	(
		// Ports of Axi Slave Bus Interface S_AXI
		output wire  s_axi_aclk,
		input wire  s_axi_aresetn,
		input wire [C_S_AXI_ID_WIDTH-1 : 0] s_axi_awid,
//        input wire [3 : 0] s_axi_wid,
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] s_axi_awaddr,
		input wire [7 : 0] s_axi_awlen,
		input wire [2 : 0] s_axi_awsize,
		input wire [1 : 0] s_axi_awburst,
		input wire  s_axi_awlock,
		input wire [3 : 0] s_axi_awcache,
		input wire [2 : 0] s_axi_awprot,
		input wire [3 : 0] s_axi_awqos,
		input wire [3 : 0] s_axi_awregion,
		input wire [C_S_AXI_AWUSER_WIDTH-1 : 0] s_axi_awuser,
		input wire  s_axi_awvalid,
		output wire  s_axi_awready,
		input wire [C_S_AXI_DATA_WIDTH-1 : 0] s_axi_wdata,
		input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] s_axi_wstrb,
		input wire  s_axi_wlast,
		input wire [C_S_AXI_WUSER_WIDTH-1 : 0] s_axi_wuser,
		input wire  s_axi_wvalid,
		output wire  s_axi_wready,
		output wire [C_S_AXI_ID_WIDTH-1 : 0] s_axi_bid,
		output wire [1 : 0] s_axi_bresp,
		output wire [C_S_AXI_BUSER_WIDTH-1 : 0] s_axi_buser,
		output wire  s_axi_bvalid,
		input wire  s_axi_bready,
		input wire [C_S_AXI_ID_WIDTH-1 : 0] s_axi_arid,
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] s_axi_araddr,
		input wire [7 : 0] s_axi_arlen,
		input wire [2 : 0] s_axi_arsize,
		input wire [1 : 0] s_axi_arburst,
		input wire  s_axi_arlock,
		input wire [3 : 0] s_axi_arcache,
		input wire [2 : 0] s_axi_arprot,
		input wire [3 : 0] s_axi_arqos,
		input wire [3 : 0] s_axi_arregion,
		input wire [C_S_AXI_ARUSER_WIDTH-1 : 0] s_axi_aruser,
		input wire  s_axi_arvalid,
		output wire  s_axi_arready,
		output wire [C_S_AXI_ID_WIDTH-1 : 0] s_axi_rid,
		output wire [C_S_AXI_DATA_WIDTH-1 : 0] s_axi_rdata,
		output wire [1 : 0] s_axi_rresp,
		output wire  s_axi_rlast,
		output wire [C_S_AXI_RUSER_WIDTH-1 : 0] s_axi_ruser,
		output wire  s_axi_rvalid,
		input wire  s_axi_rready,

		// Ports of Axi Slave Bus Interface S_AXIS
		output wire  s_axis_aclk,
		input wire  s_axis_aresetn,
		output wire  s_axis_tready,
        input wire  [C_S_AXIS_TID_WIDTH-1:0] s_axis_tid,
		input wire  [C_S_AXIS_TDEST_WIDTH-1:0] s_axis_tdest,
		input wire [C_S_AXIS_TDATA_WIDTH-1 : 0] s_axis_tdata,
        input wire [C_S_AXIS_TDATA_WIDTH/8-1 : 0] s_axis_tkeep,
		input wire  s_axis_tlast,
		input wire  s_axis_tvalid,
        
        output to_aie_2,
        output to_aie_3,
        output to_aie_6,
        output to_aie_7,

		// Ports of Axi Master Bus Interface M_AXI
		output wire  m_axi_aclk,
		input wire  m_axi_aresetn,
		output wire [C_M_AXI_ID_WIDTH-1 : 0] m_axi_awid,
	//	output wire [3 : 0] m_axi_wid,
		output wire [C_M_AXI_ADDR_WIDTH-1 : 0] m_axi_awaddr,
		output wire [7 : 0] m_axi_awlen,
		output wire [2 : 0] m_axi_awsize,
		output wire [1 : 0] m_axi_awburst,
		output wire  m_axi_awlock,
		output wire [3 : 0] m_axi_awcache,
		output wire [2 : 0] m_axi_awprot,
		output wire [3 : 0] m_axi_awqos,
		output wire [3 : 0] m_axi_arregion,
        output wire [3 : 0] m_axi_awregion,
		output wire [C_M_AXI_AWUSER_WIDTH-1 : 0] m_axi_awuser,
		output wire  m_axi_awvalid,
		input wire  m_axi_awready,
		output wire [C_M_AXI_DATA_WIDTH-1 : 0] m_axi_wdata,
		output wire [C_M_AXI_DATA_WIDTH/8-1 : 0] m_axi_wstrb,
		output wire  m_axi_wlast,
		output wire [C_M_AXI_WUSER_WIDTH-1 : 0] m_axi_wuser,
		output wire  m_axi_wvalid,
		input wire  m_axi_wready,
		input wire [C_M_AXI_ID_WIDTH-1 : 0] m_axi_bid,
		input wire [1 : 0] m_axi_bresp,
		input wire [C_M_AXI_BUSER_WIDTH-1 : 0] m_axi_buser,
		input wire  m_axi_bvalid,
		output wire  m_axi_bready,
		output wire [C_M_AXI_ID_WIDTH-1 : 0] m_axi_arid,
		output wire [C_M_AXI_ADDR_WIDTH-1 : 0] m_axi_araddr,
		output wire [7 : 0] m_axi_arlen,
		output wire [2 : 0] m_axi_arsize,
		output wire [1 : 0] m_axi_arburst,
		output wire  m_axi_arlock,
		output wire [3 : 0] m_axi_arcache,
		output wire [2 : 0] m_axi_arprot,
		output wire [3 : 0] m_axi_arqos,
		output wire [C_M_AXI_ARUSER_WIDTH-1 : 0] m_axi_aruser,
		output wire  m_axi_arvalid,
		input wire  m_axi_arready,
		input wire [C_M_AXI_ID_WIDTH-1 : 0] m_axi_rid,
		input wire [C_M_AXI_DATA_WIDTH-1 : 0] m_axi_rdata,
		input wire [1 : 0] m_axi_rresp,
		input wire  m_axi_rlast,
		input wire [C_M_AXI_RUSER_WIDTH-1 : 0] m_axi_ruser,
		input wire  m_axi_rvalid,
		output wire  m_axi_rready,
      
        output [11:0] m_axi_destid_wr,
        output m_axi_destmode_wr,
        output [11:0] m_axi_destid_rd,
        output m_axi_destmode_rd,
		// Ports of Axi Master Bus Interface M_AXIS
		output wire  m_axis_aclk,
		input wire  m_axis_aresetn,
		output wire  m_axis_tvalid,
		output wire  [C_M_AXIS_TID_WIDTH-1:0] m_axis_tid,
		output wire  [C_M_AXIS_TDEST_WIDTH-1:0] m_axis_tdest,
		output wire [C_M_AXIS_TDATA_WIDTH-1 : 0] m_axis_tdata,
		output wire [C_M_AXIS_TDATA_WIDTH/8-1 : 0] m_axis_tkeep,
		output wire  m_axis_tlast,
		input wire  m_axis_tready,
        
        input from_aie_2,
        input from_aie_3,
        input from_aie_4,
        input from_aie_5        
	);


  generate

    if (C_NOC_INTF_TYPE==0 && C_NOC_INTF_MODE == 0 && C_AIE_MODE == 0)
    begin  
    
    (* DONT_TOUCH = "TRUE" *)  AIE_NOC_S_AXI  noc_ai_mm (
		.S_AXI_ACLK(s_axi_aclk),
	//	.ARESETN(s_axi_aresetn),
	//	.S_AXI_WID(s_axi_wid),    
    	.S_AXI_AWID(s_axi_awid),
		.S_AXI_AWADDR(s_axi_awaddr),
		.S_AXI_AWLEN(s_axi_awlen),
		.S_AXI_AWSIZE(s_axi_awsize),
		.S_AXI_AWBURST(s_axi_awburst),
		.S_AXI_AWLOCK(s_axi_awlock),
		.S_AXI_AWCACHE(s_axi_awcache),
		.S_AXI_AWPROT(s_axi_awprot),
		.S_AXI_AWQOS(s_axi_awqos),
		.S_AXI_AWREGION(s_axi_awregion),
		.S_AXI_AWUSER(s_axi_awuser),
		.S_AXI_AWVALID(s_axi_awvalid),
		.S_AXI_AWREADY(s_axi_awready),
		.S_AXI_WDATA(s_axi_wdata),
		.S_AXI_WSTRB(s_axi_wstrb),
		.S_AXI_WLAST(s_axi_wlast),
		.S_AXI_WUSER(s_axi_wuser),
		.S_AXI_WVALID(s_axi_wvalid),
		.S_AXI_WREADY(s_axi_wready),
		.S_AXI_BID(s_axi_bid),
		.S_AXI_BRESP(s_axi_bresp),
		.S_AXI_BUSER(s_axi_buser),
		.S_AXI_BVALID(s_axi_bvalid),
		.S_AXI_BREADY(s_axi_bready),
		.S_AXI_ARID(s_axi_arid),
		.S_AXI_ARADDR(s_axi_araddr),
		.S_AXI_ARLEN(s_axi_arlen),
		.S_AXI_ARSIZE(s_axi_arsize),
		.S_AXI_ARBURST(s_axi_arburst),
		.S_AXI_ARLOCK(s_axi_arlock),
		.S_AXI_ARCACHE(s_axi_arcache),
		.S_AXI_ARPROT(s_axi_arprot),
		.S_AXI_ARQOS(s_axi_arqos),
		.S_AXI_ARREGION(s_axi_arregion),
		.S_AXI_ARUSER(s_axi_aruser),
		.S_AXI_ARVALID(s_axi_arvalid),
		.S_AXI_ARREADY(s_axi_arready),
		.S_AXI_RID(s_axi_rid),
		.S_AXI_RDATA(s_axi_rdata),
		.S_AXI_RRESP(s_axi_rresp),
		.S_AXI_RLAST(s_axi_rlast),
		.S_AXI_RUSER(s_axi_ruser),
		.S_AXI_RVALID(s_axi_rvalid),
		.S_AXI_RREADY(s_axi_rready),
        .TO_AIE_2(to_aie_2),
        .TO_AIE_3(to_aie_3),
        .TO_AIE_6(to_aie_6),
        .TO_AIE_7(to_aie_7)        
	  );

    end
    
     if (C_NOC_INTF_TYPE==0 && C_NOC_INTF_MODE == 0 && C_AIE_MODE == 1)
    begin  
    
    (* DONT_TOUCH = "TRUE" *)  AIE_ML_NOC_S_AXI  noc_ai_mm (
		.S_AXI_ACLK(s_axi_aclk),
	//	.ARESETN(s_axi_aresetn),
	//	.S_AXI_WID(s_axi_wid),    
    	.S_AXI_AWID(s_axi_awid),
		.S_AXI_AWADDR(s_axi_awaddr),
		.S_AXI_AWLEN(s_axi_awlen),
		.S_AXI_AWSIZE(s_axi_awsize),
		.S_AXI_AWBURST(s_axi_awburst),
		.S_AXI_AWLOCK(s_axi_awlock),
		.S_AXI_AWCACHE(s_axi_awcache),
		.S_AXI_AWPROT(s_axi_awprot),
		.S_AXI_AWQOS(s_axi_awqos),
		.S_AXI_AWREGION(s_axi_awregion),
		.S_AXI_AWUSER(s_axi_awuser),
		.S_AXI_AWVALID(s_axi_awvalid),
		.S_AXI_AWREADY(s_axi_awready),
		.S_AXI_WDATA(s_axi_wdata),
		.S_AXI_WSTRB(s_axi_wstrb),
		.S_AXI_WLAST(s_axi_wlast),
		.S_AXI_WUSER(s_axi_wuser),
		.S_AXI_WVALID(s_axi_wvalid),
		.S_AXI_WREADY(s_axi_wready),
		.S_AXI_BID(s_axi_bid),
		.S_AXI_BRESP(s_axi_bresp),
		.S_AXI_BUSER(s_axi_buser),
		.S_AXI_BVALID(s_axi_bvalid),
		.S_AXI_BREADY(s_axi_bready),
		.S_AXI_ARID(s_axi_arid),
		.S_AXI_ARADDR(s_axi_araddr),
		.S_AXI_ARLEN(s_axi_arlen),
		.S_AXI_ARSIZE(s_axi_arsize),
		.S_AXI_ARBURST(s_axi_arburst),
		.S_AXI_ARLOCK(s_axi_arlock),
		.S_AXI_ARCACHE(s_axi_arcache),
		.S_AXI_ARPROT(s_axi_arprot),
		.S_AXI_ARQOS(s_axi_arqos),
		.S_AXI_ARREGION(s_axi_arregion),
		.S_AXI_ARUSER(s_axi_aruser),
		.S_AXI_ARVALID(s_axi_arvalid),
		.S_AXI_ARREADY(s_axi_arready),
		.S_AXI_RID(s_axi_rid),
		.S_AXI_RDATA(s_axi_rdata),
		.S_AXI_RRESP(s_axi_rresp),
		.S_AXI_RLAST(s_axi_rlast),
		.S_AXI_RUSER(s_axi_ruser),
		.S_AXI_RVALID(s_axi_rvalid),
		.S_AXI_RREADY(s_axi_rready),
        .TO_AIE_2(to_aie_2),
        .TO_AIE_3(to_aie_3),
        .TO_AIE_6(to_aie_6),
        .TO_AIE_7(to_aie_7)        
	  );

    end
    
    else if (C_NOC_INTF_TYPE==0 && C_NOC_INTF_MODE == 1 && C_AIE_MODE == 0) 
    begin

   (* DONT_TOUCH = "TRUE" *)   AIE_NOC_M_AXI  ai_noc_mm (
		.M_AXI_ACLK(m_axi_aclk),
        .DESTID_WR(m_axi_destid_wr),
        .DESTID_RD(m_axi_destid_rd),
        .DESTMODE_WR(m_axi_destmode_wr),    
        .DESTMODE_RD(m_axi_destmode_rd),        
    //	.ARESETN(m_axi_aresetn),
		.M_AXI_AWID(m_axi_awid),
    //  .M_AXI_WID(m_axi_wid),
		.M_AXI_AWADDR(m_axi_awaddr),
		.M_AXI_AWLEN(m_axi_awlen),
		.M_AXI_AWSIZE(m_axi_awsize),
		.M_AXI_AWBURST(m_axi_awburst),
		.M_AXI_AWLOCK(m_axi_awlock),
		.M_AXI_AWCACHE(m_axi_awcache),
		.M_AXI_AWPROT(m_axi_awprot),
		.M_AXI_AWQOS(m_axi_awqos),
		.M_AXI_AWREGION(m_axi_awregion),
		.M_AXI_AWUSER(m_axi_awuser),
		.M_AXI_AWVALID(m_axi_awvalid),
		.M_AXI_AWREADY(m_axi_awready),
		.M_AXI_WDATA(m_axi_wdata),
		.M_AXI_WSTRB(m_axi_wstrb),
		.M_AXI_WLAST(m_axi_wlast),
		.M_AXI_WUSER(m_axi_wuser),
		.M_AXI_WVALID(m_axi_wvalid),
		.M_AXI_WREADY(m_axi_wready),
		.M_AXI_BID(m_axi_bid),
		.M_AXI_BRESP(m_axi_bresp),
		.M_AXI_BUSER(m_axi_buser),
		.M_AXI_BVALID(m_axi_bvalid),
		.M_AXI_BREADY(m_axi_bready),
		.M_AXI_ARID(m_axi_arid),
		.M_AXI_ARADDR(m_axi_araddr),
		.M_AXI_ARLEN(m_axi_arlen),
		.M_AXI_ARSIZE(m_axi_arsize),
		.M_AXI_ARBURST(m_axi_arburst),
		.M_AXI_ARLOCK(m_axi_arlock),
		.M_AXI_ARCACHE(m_axi_arcache),
		.M_AXI_ARPROT(m_axi_arprot),
		.M_AXI_ARQOS(m_axi_arqos),
		.M_AXI_ARREGION(m_axi_arregion),
		.M_AXI_ARUSER(m_axi_aruser),
		.M_AXI_ARVALID(m_axi_arvalid),
		.M_AXI_ARREADY(m_axi_arready),
		.M_AXI_RID(m_axi_rid),
		.M_AXI_RDATA(m_axi_rdata),
		.M_AXI_RRESP(m_axi_rresp),
		.M_AXI_RLAST(m_axi_rlast),
		.M_AXI_RUSER(m_axi_ruser),
		.M_AXI_RVALID(m_axi_rvalid),
		.M_AXI_RREADY(m_axi_rready),
        .FROM_AIE_2(from_aie_2),
        .FROM_AIE_3(from_aie_3),
        .FROM_AIE_4(from_aie_4),
        .FROM_AIE_5(from_aie_5)         
	);

    end
    
    else if (C_NOC_INTF_TYPE==0 && C_NOC_INTF_MODE == 1 && C_AIE_MODE == 1) 
    begin

   (* DONT_TOUCH = "TRUE" *)   AIE_ML_NOC_M_AXI  ai_noc_mm (
		.M_AXI_ACLK(m_axi_aclk),
        .DESTID_WR(m_axi_destid_wr),
        .DESTID_RD(m_axi_destid_rd),
        .DESTMODE_WR(m_axi_destmode_wr),    
        .DESTMODE_RD(m_axi_destmode_rd),        
    //	.ARESETN(m_axi_aresetn),
		.M_AXI_AWID(m_axi_awid),
    //  .M_AXI_WID(m_axi_wid),
		.M_AXI_AWADDR(m_axi_awaddr),
		.M_AXI_AWLEN(m_axi_awlen),
		.M_AXI_AWSIZE(m_axi_awsize),
		.M_AXI_AWBURST(m_axi_awburst),
		.M_AXI_AWLOCK(m_axi_awlock),
		.M_AXI_AWCACHE(m_axi_awcache),
		.M_AXI_AWPROT(m_axi_awprot),
		.M_AXI_AWQOS(m_axi_awqos),
		.M_AXI_AWREGION(m_axi_awregion),
		.M_AXI_AWUSER(m_axi_awuser),
		.M_AXI_AWVALID(m_axi_awvalid),
		.M_AXI_AWREADY(m_axi_awready),
		.M_AXI_WDATA(m_axi_wdata),
		.M_AXI_WSTRB(m_axi_wstrb),
		.M_AXI_WLAST(m_axi_wlast),
		.M_AXI_WUSER(m_axi_wuser),
		.M_AXI_WVALID(m_axi_wvalid),
		.M_AXI_WREADY(m_axi_wready),
		.M_AXI_BID(m_axi_bid),
		.M_AXI_BRESP(m_axi_bresp),
		.M_AXI_BUSER(m_axi_buser),
		.M_AXI_BVALID(m_axi_bvalid),
		.M_AXI_BREADY(m_axi_bready),
		.M_AXI_ARID(m_axi_arid),
		.M_AXI_ARADDR(m_axi_araddr),
		.M_AXI_ARLEN(m_axi_arlen),
		.M_AXI_ARSIZE(m_axi_arsize),
		.M_AXI_ARBURST(m_axi_arburst),
		.M_AXI_ARLOCK(m_axi_arlock),
		.M_AXI_ARCACHE(m_axi_arcache),
		.M_AXI_ARPROT(m_axi_arprot),
		.M_AXI_ARQOS(m_axi_arqos),
		.M_AXI_ARREGION(m_axi_arregion),
		.M_AXI_ARUSER(m_axi_aruser),
		.M_AXI_ARVALID(m_axi_arvalid),
		.M_AXI_ARREADY(m_axi_arready),
		.M_AXI_RID(m_axi_rid),
		.M_AXI_RDATA(m_axi_rdata),
		.M_AXI_RRESP(m_axi_rresp),
		.M_AXI_RLAST(m_axi_rlast),
		.M_AXI_RUSER(m_axi_ruser),
		.M_AXI_RVALID(m_axi_rvalid),
		.M_AXI_RREADY(m_axi_rready),
        .FROM_AIE_2(from_aie_2),
        .FROM_AIE_3(from_aie_3),
        .FROM_AIE_4(from_aie_4),
        .FROM_AIE_5(from_aie_5)         
	);

    end
    
    else if (C_NOC_INTF_TYPE==1 && C_NOC_INTF_MODE == 0 && C_AIE_MODE == 0) 
    begin

    (* DONT_TOUCH = "TRUE" *)  AIE_NOC_S_AXIS  noc_ai_str (
		.S_AXIS_ACLK(s_axis_aclk),
    //	.ARESETN(s_axis_aresetn),
        .S_AXIS_TDATA(s_axis_tdata),
		.S_AXIS_TKEEP(s_axis_tkeep),
		.S_AXIS_TVALID(s_axis_tvalid),
		.S_AXIS_TREADY(s_axis_tready),
		.S_AXIS_TID(s_axis_tid),
		.S_AXIS_TDEST(s_axis_tdest),
		.S_AXIS_TLAST(s_axis_tlast),
        .TO_AIE_2(to_aie_2),
        .TO_AIE_3(to_aie_3),
        .TO_AIE_6(to_aie_6),
        .TO_AIE_7(to_aie_7)
      );

    end
    else if (C_NOC_INTF_TYPE==1 && C_NOC_INTF_MODE == 0 && C_AIE_MODE == 1) 
    begin

    (* DONT_TOUCH = "TRUE" *)  AIE_ML_NOC_S_AXIS  noc_ai_str (
		.S_AXIS_ACLK(s_axis_aclk),
    //	.ARESETN(s_axis_aresetn),
        .S_AXIS_TDATA(s_axis_tdata),
		.S_AXIS_TKEEP(s_axis_tkeep),
		.S_AXIS_TVALID(s_axis_tvalid),
		.S_AXIS_TREADY(s_axis_tready),
		.S_AXIS_TID(s_axis_tid),
		.S_AXIS_TDEST(s_axis_tdest),
		.S_AXIS_TLAST(s_axis_tlast),
        .TO_AIE_2(to_aie_2),
        .TO_AIE_3(to_aie_3),
        .TO_AIE_6(to_aie_6),
        .TO_AIE_7(to_aie_7)
      );

    end
    else if (C_NOC_INTF_TYPE==1 && C_NOC_INTF_MODE == 1 && C_AIE_MODE == 0) 
    begin
    (* DONT_TOUCH = "TRUE" *)  AIE_NOC_M_AXIS ai_noc_str (
		.M_AXIS_ACLK(m_axis_aclk),
    //	.ARESETN(s_axis_aresetn),
        .M_AXIS_TDATA(m_axis_tdata),
		.M_AXIS_TKEEP(m_axis_tkeep),
		.M_AXIS_TVALID(m_axis_tvalid),
		.M_AXIS_TREADY(m_axis_tready),
		.M_AXIS_TID(m_axis_tid),
		.M_AXIS_TDEST(m_axis_tdest),
		.M_AXIS_TLAST(m_axis_tlast),
        .FROM_AIE_2(from_aie_2),
        .FROM_AIE_3(from_aie_3),
        .FROM_AIE_4(from_aie_4),
        .FROM_AIE_5(from_aie_5) 
      );

    end
    else if (C_NOC_INTF_TYPE==1 && C_NOC_INTF_MODE == 1 && C_AIE_MODE == 1) 
    begin
    (* DONT_TOUCH = "TRUE" *)  AIE_ML_NOC_M_AXIS ai_noc_str (
		.M_AXIS_ACLK(m_axis_aclk),
    //	.ARESETN(s_axis_aresetn),
        .M_AXIS_TDATA(m_axis_tdata),
		.M_AXIS_TKEEP(m_axis_tkeep),
		.M_AXIS_TVALID(m_axis_tvalid),
		.M_AXIS_TREADY(m_axis_tready),
		.M_AXIS_TID(m_axis_tid),
		.M_AXIS_TDEST(m_axis_tdest),
		.M_AXIS_TLAST(m_axis_tlast),
        .FROM_AIE_2(from_aie_2),
        .FROM_AIE_3(from_aie_3),
        .FROM_AIE_4(from_aie_4),
        .FROM_AIE_5(from_aie_5) 
      );

    end
  endgenerate

endmodule


