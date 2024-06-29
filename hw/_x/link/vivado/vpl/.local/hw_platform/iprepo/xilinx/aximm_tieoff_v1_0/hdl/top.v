// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
`timescale 1ns / 1ps

module aximm_tieoff (
    output wire [0:0]                      M_AXIMM_AWID,
    output wire [C_AXIMM_ADDR_WIDTH-1:0]   M_AXIMM_AWADDR,
    output wire [7:0]                      M_AXIMM_AWLEN,
    output wire [2:0]                      M_AXIMM_AWSIZE,
    output wire [1:0]                      M_AXIMM_AWBURST,
    output wire [1:0]                      M_AXIMM_AWLOCK,
    output wire [3:0]                      M_AXIMM_AWCACHE,
    output wire [2:0]                      M_AXIMM_AWPROT,
    output wire [3:0]                      M_AXIMM_AWREGION,
    output wire [3:0]                      M_AXIMM_AWQOS,
    output wire [0:0]                      M_AXIMM_AWUSER,
    output wire                            M_AXIMM_AWVALID,
    input  wire                            M_AXIMM_AWREADY,
    output wire [0:0]                      M_AXIMM_WID,
    output wire [C_AXIMM_DATA_WIDTH-1:0]   M_AXIMM_WDATA,
    output wire [C_AXIMM_DATA_WIDTH/8-1:0] M_AXIMM_WSTRB,
    output wire                            M_AXIMM_WLAST,
    output wire [0:0]                      M_AXIMM_WUSER,
    output wire                            M_AXIMM_WVALID,
    input  wire                            M_AXIMM_WREADY,
    input  wire [0:0]                      M_AXIMM_BID,
    input  wire [1:0]                      M_AXIMM_BRESP,
    input  wire [0:0]                      M_AXIMM_BUSER,
    input  wire                            M_AXIMM_BVALID,
    output wire                            M_AXIMM_BREADY,
    output wire [0:0]                      M_AXIMM_ARID,
    output wire [C_AXIMM_ADDR_WIDTH-1:0]   M_AXIMM_ARADDR,
    output wire [7:0]                      M_AXIMM_ARLEN,
    output wire [2:0]                      M_AXIMM_ARSIZE,
    output wire [1:0]                      M_AXIMM_ARBURST,
    output wire [1:0]                      M_AXIMM_ARLOCK,
    output wire [3:0]                      M_AXIMM_ARCACHE,
    output wire [2:0]                      M_AXIMM_ARPROT,
    output wire [3:0]                      M_AXIMM_ARREGION,
    output wire [3:0]                      M_AXIMM_ARQOS,
    output wire [0:0]                      M_AXIMM_ARUSER,
    output wire                            M_AXIMM_ARVALID,
    input  wire                            M_AXIMM_ARREADY,
    input  wire [0:0]                      M_AXIMM_RID,
    input  wire [C_AXIMM_DATA_WIDTH-1:0]   M_AXIMM_RDATA,
    input  wire [1:0]                      M_AXIMM_RRESP,
    input  wire                            M_AXIMM_RLAST,
    input  wire [0:0]                      M_AXIMM_RUSER,
    input  wire                            M_AXIMM_RVALID,
    output wire                            M_AXIMM_RREADY
    );

parameter C_AXIMM_ADDR_WIDTH = 32;
parameter C_AXIMM_DATA_WIDTH = 32;

   assign M_AXIMM_AWID = 1'b0;
   assign M_AXIMM_AWADDR = {C_AXIMM_ADDR_WIDTH{1'b0}};
   assign M_AXIMM_AWLEN = 8'd0;
   assign M_AXIMM_AWSIZE = 3'd0;
   assign M_AXIMM_AWBURST = 2'd0;
   assign M_AXIMM_AWLOCK = 2'd0;
   assign M_AXIMM_AWCACHE = 4'd0;
   assign M_AXIMM_AWPROT = 3'd0;
   assign M_AXIMM_AWREGION = 4'd0;
   assign M_AXIMM_AWQOS = 4'd0;
   assign M_AXIMM_AWUSER = 1'b0;
   assign M_AXIMM_AWVALID = 1'b0;
   assign M_AXIMM_WID = 1'b0;
   assign M_AXIMM_WDATA = {C_AXIMM_DATA_WIDTH{1'b0}};
   assign M_AXIMM_WSTRB = {C_AXIMM_DATA_WIDTH/8{1'b0}};
   assign M_AXIMM_WLAST = 1'b0;
   assign M_AXIMM_WUSER = 1'b1;
   assign M_AXIMM_WVALID = 1'b0;
   assign M_AXIMM_BREADY = 1'b0;
   assign M_AXIMM_ARID = 1'b0;
   assign M_AXIMM_ARADDR = {C_AXIMM_ADDR_WIDTH{1'b0}};
   assign M_AXIMM_ARLEN = 8'd0;
   assign M_AXIMM_ARSIZE = 3'd0;
   assign M_AXIMM_ARBURST = 2'd0;
   assign M_AXIMM_ARLOCK = 2'd0;
   assign M_AXIMM_ARCACHE = 4'd0;
   assign M_AXIMM_ARPROT = 3'd0;
   assign M_AXIMM_ARREGION = 4'd0;
   assign M_AXIMM_ARQOS = 4'd0;
   assign M_AXIMM_ARUSER = 1'b0;
   assign M_AXIMM_ARVALID = 1'b0;
   assign M_AXIMM_RREADY = 1'b0;

endmodule


