
// file: ulp_inst_0_axi_dbg_hub_0_axi_dbg_hub.v
//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Niloy Roy
//  
// Create a Date: 08/08/2017 11:42:54 AM
// Design Name: Debug Controller
// Module Name: dbg_ctrl
// Project Name: Everest Debug
// Target Devices: Everest Family
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
`timescale 1 ns / 1 ps

      
(* KEEP_HIERARCHY = "SOFT" , ADDRESS_OFFSET = "0x20205800000" , ADDRESS_RANGE  = "0x00200000" *)
module ulp_inst_0_axi_dbg_hub_0_axi_dbg_hub #(
    parameter integer C_NUM_DEBUG_CORES              = 32,
    parameter integer C_EN_FALLBACK		             = 1,
    parameter integer C_AXI_ID_WIDTH                 = 1, 
    parameter integer C_AXI_DATA_WIDTH               = 128, 
    parameter integer C_AXI_ADDR_WIDTH               = 32,
    parameter integer C_NUM_WR_OUTSTANDING_TXN       = 1,
    parameter integer C_NUM_RD_OUTSTANDING_TXN       = 1,
    parameter integer C_AXIS_TDATA_WIDTH             = 32,
    parameter [43:0]  C_ADDR_OFFSET		     = 44'h00000000000,
    parameter [31:0]  C_ADDR_RANGE		     = 32'h00000000 
) ( 
    // debug Controller clock
    input aclk,
    // debug Controller active low Reset
    input aresetn,
	input wire [C_AXI_ID_WIDTH-1 : 0] s_axi_awid,
//        input wire [3 : 0] s_axi_wid,
    input wire [C_AXI_ADDR_WIDTH-1 : 0] s_axi_awaddr,
    input wire [7 : 0] s_axi_awlen,
    input wire [2 : 0] s_axi_awsize,
    input wire [1 : 0] s_axi_awburst,
    input wire  s_axi_awlock,
    input wire [3 : 0] s_axi_awcache,
    input wire [2 : 0] s_axi_awprot,
    input wire [3 : 0] s_axi_awqos,
    input wire [3 : 0] s_axi_awregion,
    input wire  s_axi_awvalid,
    output wire  s_axi_awready,
    input wire [C_AXI_DATA_WIDTH-1 : 0] s_axi_wdata,
    input wire [(C_AXI_DATA_WIDTH/8)-1 : 0] s_axi_wstrb,
    input wire  s_axi_wlast,
    input wire  s_axi_wvalid,
    output wire  s_axi_wready,
    output wire [C_AXI_ID_WIDTH-1 : 0] s_axi_bid,
    output wire [1 : 0] s_axi_bresp,
    output wire  s_axi_bvalid,
    input wire  s_axi_bready,
    input wire [C_AXI_ID_WIDTH-1 : 0] s_axi_arid,
    input wire [C_AXI_ADDR_WIDTH-1 : 0] s_axi_araddr,
    input wire [7 : 0] s_axi_arlen,
    input wire [2 : 0] s_axi_arsize,
    input wire [1 : 0] s_axi_arburst,
    input wire  s_axi_arlock,
    input wire [3 : 0] s_axi_arcache,
    input wire [2 : 0] s_axi_arprot,
    input wire [3 : 0] s_axi_arqos,
    input wire [3 : 0] s_axi_arregion,
    input wire  s_axi_arvalid,
    output wire  s_axi_arready,
    output wire [C_AXI_ID_WIDTH-1 : 0] s_axi_rid,
    output wire [C_AXI_DATA_WIDTH-1 : 0] s_axi_rdata,
    output wire [1 : 0] s_axi_rresp,
    output wire  s_axi_rlast,
    output wire  s_axi_rvalid,
    input wire  s_axi_rready,

   input  wire   s_bscan_update,
   input  wire   s_bscan_capture,
   input  wire   s_bscan_reset,
   input  wire   s_bscan_runtest,
   input  wire   s_bscan_tck,
   input  wire   s_bscan_tms,
   input  wire   s_bscan_tdi,
   input  wire   s_bscan_sel,
   input  wire   s_bscan_shift,
   input  wire   s_bscan_drck,
   output wire   s_bscan_tdo,
   input  wire   s_bscan_bscanid_en,

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s00_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s00_axis_tdata,
    input wire  s00_axis_tlast,
    input wire  s00_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m00_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m00_axis_tdata,
    output wire  m00_axis_tlast,
    input wire  m00_axis_tready,

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s03_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s03_axis_tdata,
    input wire  s03_axis_tlast,
    input wire  s03_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m03_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m03_axis_tdata,
    output wire  m03_axis_tlast,
    input wire  m03_axis_tready,

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s02_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s02_axis_tdata,
    input wire  s02_axis_tlast,
    input wire  s02_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m02_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m02_axis_tdata,
    output wire  m02_axis_tlast,
    input wire  m02_axis_tready,
            
    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s01_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s01_axis_tdata,
    input wire  s01_axis_tlast,
    input wire  s01_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m01_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m01_axis_tdata,
    output wire  m01_axis_tlast,
    input wire  m01_axis_tready,

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s04_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s04_axis_tdata,
    input wire  s04_axis_tlast,
    input wire  s04_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m04_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m04_axis_tdata,
    output wire  m04_axis_tlast,
    input wire  m04_axis_tready,

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s05_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s05_axis_tdata,
    input wire  s05_axis_tlast,
    input wire  s05_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m05_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m05_axis_tdata,
    output wire  m05_axis_tlast,
    input wire  m05_axis_tready,   

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s06_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s06_axis_tdata,
    input wire  s06_axis_tlast,
    input wire  s06_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m06_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m06_axis_tdata,
    output wire  m06_axis_tlast,
    input wire  m06_axis_tready,   

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s07_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s07_axis_tdata,
    input wire  s07_axis_tlast,
    input wire  s07_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m07_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m07_axis_tdata,
    output wire  m07_axis_tlast,
    input wire  m07_axis_tready,  

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s08_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s08_axis_tdata,
    input wire  s08_axis_tlast,
    input wire  s08_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m08_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m08_axis_tdata,
    output wire  m08_axis_tlast,
    input wire  m08_axis_tready,   

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s09_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s09_axis_tdata,
    input wire  s09_axis_tlast,
    input wire  s09_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m09_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m09_axis_tdata,
    output wire  m09_axis_tlast,
    input wire  m09_axis_tready,  

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s10_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s10_axis_tdata,
    input wire  s10_axis_tlast,
    input wire  s10_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m10_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m10_axis_tdata,
    output wire  m10_axis_tlast,
    input wire  m10_axis_tready,  

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s11_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s11_axis_tdata,
    input wire  s11_axis_tlast,
    input wire  s11_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m11_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m11_axis_tdata,
    output wire  m11_axis_tlast,
    input wire  m11_axis_tready,  

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s12_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s12_axis_tdata,
    input wire  s12_axis_tlast,
    input wire  s12_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m12_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m12_axis_tdata,
    output wire  m12_axis_tlast,
    input wire  m12_axis_tready,   

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s13_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s13_axis_tdata,
    input wire  s13_axis_tlast,
    input wire  s13_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m13_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m13_axis_tdata,
    output wire  m13_axis_tlast,
    input wire  m13_axis_tready,   

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s14_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s14_axis_tdata,
    input wire  s14_axis_tlast,
    input wire  s14_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m14_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m14_axis_tdata,
    output wire  m14_axis_tlast,
    input wire  m14_axis_tready,   

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s15_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s15_axis_tdata,
    input wire  s15_axis_tlast,
    input wire  s15_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m15_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m15_axis_tdata,
    output wire  m15_axis_tlast,
    input wire  m15_axis_tready,       

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s16_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s16_axis_tdata,
    input wire  s16_axis_tlast,
    input wire  s16_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m16_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m16_axis_tdata,
    output wire  m16_axis_tlast,
    input wire  m16_axis_tready,   

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s17_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s17_axis_tdata,
    input wire  s17_axis_tlast,
    input wire  s17_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m17_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m17_axis_tdata,
    output wire  m17_axis_tlast,
    input wire  m17_axis_tready,  

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s18_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s18_axis_tdata,
    input wire  s18_axis_tlast,
    input wire  s18_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m18_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m18_axis_tdata,
    output wire  m18_axis_tlast,
    input wire  m18_axis_tready,   

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s19_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s19_axis_tdata,
    input wire  s19_axis_tlast,
    input wire  s19_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m19_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m19_axis_tdata,
    output wire  m19_axis_tlast,
    input wire  m19_axis_tready, 


    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s20_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s20_axis_tdata,
    input wire  s20_axis_tlast,
    input wire  s20_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m20_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m20_axis_tdata,
    output wire  m20_axis_tlast,
    input wire  m20_axis_tready,  

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s21_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s21_axis_tdata,
    input wire  s21_axis_tlast,
    input wire  s21_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m21_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m21_axis_tdata,
    output wire  m21_axis_tlast,
    input wire  m21_axis_tready,  

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s22_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s22_axis_tdata,
    input wire  s22_axis_tlast,
    input wire  s22_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m22_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m22_axis_tdata,
    output wire  m22_axis_tlast,
    input wire  m22_axis_tready,   

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s23_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s23_axis_tdata,
    input wire  s23_axis_tlast,
    input wire  s23_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m23_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m23_axis_tdata,
    output wire  m23_axis_tlast,
    input wire  m23_axis_tready,   

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s24_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s24_axis_tdata,
    input wire  s24_axis_tlast,
    input wire  s24_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m24_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m24_axis_tdata,
    output wire  m24_axis_tlast,
    input wire  m24_axis_tready,   

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s25_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s25_axis_tdata,
    input wire  s25_axis_tlast,
    input wire  s25_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m25_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m25_axis_tdata,
    output wire  m25_axis_tlast,
    input wire  m25_axis_tready,       

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s26_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s26_axis_tdata,
    input wire  s26_axis_tlast,
    input wire  s26_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m26_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m26_axis_tdata,
    output wire  m26_axis_tlast,
    input wire  m26_axis_tready,   

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s27_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s27_axis_tdata,
    input wire  s27_axis_tlast,
    input wire  s27_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m27_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m27_axis_tdata,
    output wire  m27_axis_tlast,
    input wire  m27_axis_tready,  

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s28_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s28_axis_tdata,
    input wire  s28_axis_tlast,
    input wire  s28_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m28_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m28_axis_tdata,
    output wire  m28_axis_tlast,
    input wire  m28_axis_tready,   

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s29_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s29_axis_tdata,
    input wire  s29_axis_tlast,
    input wire  s29_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m29_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m29_axis_tdata,
    output wire  m29_axis_tlast,
    input wire  m29_axis_tready, 

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s30_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s30_axis_tdata,
    input wire  s30_axis_tlast,
    input wire  s30_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m30_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m30_axis_tdata,
    output wire  m30_axis_tlast,
    input wire  m30_axis_tready,  

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s31_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s31_axis_tdata,
    input wire  s31_axis_tlast,
    input wire  s31_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m31_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m31_axis_tdata,
    output wire  m31_axis_tlast,
    input wire  m31_axis_tready,  

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s32_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s32_axis_tdata,
    input wire  s32_axis_tlast,
    input wire  s32_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m32_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m32_axis_tdata,
    output wire  m32_axis_tlast,
    input wire  m32_axis_tready,   

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s33_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s33_axis_tdata,
    input wire  s33_axis_tlast,
    input wire  s33_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m33_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m33_axis_tdata,
    output wire  m33_axis_tlast,
    input wire  m33_axis_tready,   

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s34_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s34_axis_tdata,
    input wire  s34_axis_tlast,
    input wire  s34_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m34_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m34_axis_tdata,
    output wire  m34_axis_tlast,
    input wire  m34_axis_tready,   

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s35_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s35_axis_tdata,
    input wire  s35_axis_tlast,
    input wire  s35_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m35_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m35_axis_tdata,
    output wire  m35_axis_tlast,
    input wire  m35_axis_tready,       

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s36_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s36_axis_tdata,
    input wire  s36_axis_tlast,
    input wire  s36_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m36_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m36_axis_tdata,
    output wire  m36_axis_tlast,
    input wire  m36_axis_tready,   

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s37_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s37_axis_tdata,
    input wire  s37_axis_tlast,
    input wire  s37_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m37_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m37_axis_tdata,
    output wire  m37_axis_tlast,
    input wire  m37_axis_tready,  

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s38_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s38_axis_tdata,
    input wire  s38_axis_tlast,
    input wire  s38_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m38_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m38_axis_tdata,
    output wire  m38_axis_tlast,
    input wire  m38_axis_tready,   

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s39_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s39_axis_tdata,
    input wire  s39_axis_tlast,
    input wire  s39_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m39_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m39_axis_tdata,
    output wire  m39_axis_tlast,
    input wire  m39_axis_tready, 
    
    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s40_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s40_axis_tdata,
    input wire  s40_axis_tlast,
    input wire  s40_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m40_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m40_axis_tdata,
    output wire  m40_axis_tlast,
    input wire  m40_axis_tready,  

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s41_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s41_axis_tdata,
    input wire  s41_axis_tlast,
    input wire  s41_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m41_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m41_axis_tdata,
    output wire  m41_axis_tlast,
    input wire  m41_axis_tready,  

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s42_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s42_axis_tdata,
    input wire  s42_axis_tlast,
    input wire  s42_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m42_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m42_axis_tdata,
    output wire  m42_axis_tlast,
    input wire  m42_axis_tready,   

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s43_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s43_axis_tdata,
    input wire  s43_axis_tlast,
    input wire  s43_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m43_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m43_axis_tdata,
    output wire  m43_axis_tlast,
    input wire  m43_axis_tready,   

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s44_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s44_axis_tdata,
    input wire  s44_axis_tlast,
    input wire  s44_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m44_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m44_axis_tdata,
    output wire  m44_axis_tlast,
    input wire  m44_axis_tready,   

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s45_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s45_axis_tdata,
    input wire  s45_axis_tlast,
    input wire  s45_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m45_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m45_axis_tdata,
    output wire  m45_axis_tlast,
    input wire  m45_axis_tready,       

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s46_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s46_axis_tdata,
    input wire  s46_axis_tlast,
    input wire  s46_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m46_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m46_axis_tdata,
    output wire  m46_axis_tlast,
    input wire  m46_axis_tready,   

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s47_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s47_axis_tdata,
    input wire  s47_axis_tlast,
    input wire  s47_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m47_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m47_axis_tdata,
    output wire  m47_axis_tlast,
    input wire  m47_axis_tready,  

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s48_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s48_axis_tdata,
    input wire  s48_axis_tlast,
    input wire  s48_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m48_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m48_axis_tdata,
    output wire  m48_axis_tlast,
    input wire  m48_axis_tready,   

    // Ports of Axi Slave Bus Interface S_AXIS
    output wire  s49_axis_tready,
    input wire [C_AXIS_TDATA_WIDTH-1 : 0] s49_axis_tdata,
    input wire  s49_axis_tlast,
    input wire  s49_axis_tvalid,

    // Ports of Axi Master Bus Interface M_AXIS
    output wire  m49_axis_tvalid,
    output wire [C_AXIS_TDATA_WIDTH-1 : 0] m49_axis_tdata,
    output wire  m49_axis_tlast,
    input wire  m49_axis_tready, 
    
   // Ports of Axi Slave Bus Interface S_AXIS
     output wire  s50_axis_tready,
     input wire [C_AXIS_TDATA_WIDTH-1 : 0] s50_axis_tdata,
     input wire  s50_axis_tlast,
     input wire  s50_axis_tvalid,
 
     // Ports of Axi Master Bus Interface M_AXIS
     output wire  m50_axis_tvalid,
     output wire [C_AXIS_TDATA_WIDTH-1 : 0] m50_axis_tdata,
     output wire  m50_axis_tlast,
     input wire  m50_axis_tready,  
 
     // Ports of Axi Slave Bus Interface S_AXIS
     output wire  s51_axis_tready,
     input wire [C_AXIS_TDATA_WIDTH-1 : 0] s51_axis_tdata,
     input wire  s51_axis_tlast,
     input wire  s51_axis_tvalid,
 
     // Ports of Axi Master Bus Interface M_AXIS
     output wire  m51_axis_tvalid,
     output wire [C_AXIS_TDATA_WIDTH-1 : 0] m51_axis_tdata,
     output wire  m51_axis_tlast,
     input wire  m51_axis_tready,  
 
     // Ports of Axi Slave Bus Interface S_AXIS
     output wire  s52_axis_tready,
     input wire [C_AXIS_TDATA_WIDTH-1 : 0] s52_axis_tdata,
     input wire  s52_axis_tlast,
     input wire  s52_axis_tvalid,
 
     // Ports of Axi Master Bus Interface M_AXIS
     output wire  m52_axis_tvalid,
     output wire [C_AXIS_TDATA_WIDTH-1 : 0] m52_axis_tdata,
     output wire  m52_axis_tlast,
     input wire  m52_axis_tready,   
 
     // Ports of Axi Slave Bus Interface S_AXIS
     output wire  s53_axis_tready,
     input wire [C_AXIS_TDATA_WIDTH-1 : 0] s53_axis_tdata,
     input wire  s53_axis_tlast,
     input wire  s53_axis_tvalid,
 
     // Ports of Axi Master Bus Interface M_AXIS
     output wire  m53_axis_tvalid,
     output wire [C_AXIS_TDATA_WIDTH-1 : 0] m53_axis_tdata,
     output wire  m53_axis_tlast,
     input wire  m53_axis_tready,   
 
     // Ports of Axi Slave Bus Interface S_AXIS
     output wire  s54_axis_tready,
     input wire [C_AXIS_TDATA_WIDTH-1 : 0] s54_axis_tdata,
     input wire  s54_axis_tlast,
     input wire  s54_axis_tvalid,
 
     // Ports of Axi Master Bus Interface M_AXIS
     output wire  m54_axis_tvalid,
     output wire [C_AXIS_TDATA_WIDTH-1 : 0] m54_axis_tdata,
     output wire  m54_axis_tlast,
     input wire  m54_axis_tready,   
 
     // Ports of Axi Slave Bus Interface S_AXIS
     output wire  s55_axis_tready,
     input wire [C_AXIS_TDATA_WIDTH-1 : 0] s55_axis_tdata,
     input wire  s55_axis_tlast,
     input wire  s55_axis_tvalid,
 
     // Ports of Axi Master Bus Interface M_AXIS
     output wire  m55_axis_tvalid,
     output wire [C_AXIS_TDATA_WIDTH-1 : 0] m55_axis_tdata,
     output wire  m55_axis_tlast,
     input wire  m55_axis_tready,       
 
     // Ports of Axi Slave Bus Interface S_AXIS
     output wire  s56_axis_tready,
     input wire [C_AXIS_TDATA_WIDTH-1 : 0] s56_axis_tdata,
     input wire  s56_axis_tlast,
     input wire  s56_axis_tvalid,
 
     // Ports of Axi Master Bus Interface M_AXIS
     output wire  m56_axis_tvalid,
     output wire [C_AXIS_TDATA_WIDTH-1 : 0] m56_axis_tdata,
     output wire  m56_axis_tlast,
     input wire  m56_axis_tready,   
 
     // Ports of Axi Slave Bus Interface S_AXIS
     output wire  s57_axis_tready,
     input wire [C_AXIS_TDATA_WIDTH-1 : 0] s57_axis_tdata,
     input wire  s57_axis_tlast,
     input wire  s57_axis_tvalid,
 
     // Ports of Axi Master Bus Interface M_AXIS
     output wire  m57_axis_tvalid,
     output wire [C_AXIS_TDATA_WIDTH-1 : 0] m57_axis_tdata,
     output wire  m57_axis_tlast,
     input wire  m57_axis_tready,  
 
     // Ports of Axi Slave Bus Interface S_AXIS
     output wire  s58_axis_tready,
     input wire [C_AXIS_TDATA_WIDTH-1 : 0] s58_axis_tdata,
     input wire  s58_axis_tlast,
     input wire  s58_axis_tvalid,
 
     // Ports of Axi Master Bus Interface M_AXIS
     output wire  m58_axis_tvalid,
     output wire [C_AXIS_TDATA_WIDTH-1 : 0] m58_axis_tdata,
     output wire  m58_axis_tlast,
     input wire  m58_axis_tready,   
 
     // Ports of Axi Slave Bus Interface S_AXIS
     output wire  s59_axis_tready,
     input wire [C_AXIS_TDATA_WIDTH-1 : 0] s59_axis_tdata,
     input wire  s59_axis_tlast,
     input wire  s59_axis_tvalid,
 
     // Ports of Axi Master Bus Interface M_AXIS
     output wire  m59_axis_tvalid,
     output wire [C_AXIS_TDATA_WIDTH-1 : 0] m59_axis_tdata,
     output wire  m59_axis_tlast,
     input wire  m59_axis_tready, 
     
     // Ports of Axi Slave Bus Interface S_AXIS
     output wire  s60_axis_tready,
     input wire [C_AXIS_TDATA_WIDTH-1 : 0] s60_axis_tdata,
     input wire  s60_axis_tlast,
     input wire  s60_axis_tvalid,
       
     // Ports of Axi Master Bus Interface M_AXIS
     output wire  m60_axis_tvalid,
     output wire [C_AXIS_TDATA_WIDTH-1 : 0] m60_axis_tdata,
     output wire  m60_axis_tlast,
     input wire  m60_axis_tready,  
     
     // Ports of Axi Slave Bus Interface S_AXIS
     output wire  s61_axis_tready,
     input wire [C_AXIS_TDATA_WIDTH-1 : 0] s61_axis_tdata,
     input wire  s61_axis_tlast,
     input wire  s61_axis_tvalid,
     
     // Ports of Axi Master Bus Interface M_AXIS
     output wire  m61_axis_tvalid,
     output wire [C_AXIS_TDATA_WIDTH-1 : 0] m61_axis_tdata,
     output wire  m61_axis_tlast,
     input wire  m61_axis_tready,  
     
     // Ports of Axi Slave Bus Interface S_AXIS
     output wire  s62_axis_tready,
     input wire [C_AXIS_TDATA_WIDTH-1 : 0] s62_axis_tdata,
     input wire  s62_axis_tlast,
     input wire  s62_axis_tvalid,
     
     // Ports of Axi Master Bus Interface M_AXIS
     output wire  m62_axis_tvalid,
     output wire [C_AXIS_TDATA_WIDTH-1 : 0] m62_axis_tdata,
     output wire  m62_axis_tlast,
     input wire  m62_axis_tready,   
     
     // Ports of Axi Slave Bus Interface S_AXIS
     output wire  s63_axis_tready,
     input wire [C_AXIS_TDATA_WIDTH-1 : 0] s63_axis_tdata,
     input wire  s63_axis_tlast,
     input wire  s63_axis_tvalid,
     
     // Ports of Axi Master Bus Interface M_AXIS
     output wire  m63_axis_tvalid,
     output wire [C_AXIS_TDATA_WIDTH-1 : 0] m63_axis_tdata,
     output wire  m63_axis_tlast,
     input wire  m63_axis_tready

);    

wire [127:0] uuid;
// Interface for termination logic output to existing logic
    wire [C_AXI_ID_WIDTH-1 : 0] s0_axi_awid;
    wire [C_AXI_ADDR_WIDTH-1 : 0] s0_axi_awaddr;
    wire [7 : 0] s0_axi_awlen;
    wire [2 : 0] s0_axi_awsize;
    wire [1 : 0] s0_axi_awburst;
    wire  s0_axi_awlock;
    wire [3 : 0] s0_axi_awcache;
    wire [2 : 0] s0_axi_awprot;
    wire [3 : 0] s0_axi_awqos;
    wire [3 : 0] s0_axi_awregion;
    wire  s0_axi_awvalid;
    wire  s0_axi_awready;
    wire  s_axi_awready_i;
    wire [C_AXI_DATA_WIDTH-1 : 0] s0_axi_wdata;
    wire [(C_AXI_DATA_WIDTH/8)-1 : 0] s0_axi_wstrb;
    wire  s0_axi_wlast;
    wire  s0_axi_wvalid;
    wire  s0_axi_wready;
    wire  s_axi_wready_i;
    wire [C_AXI_ID_WIDTH-1 : 0] s0_axi_bid;
    wire [1 : 0] s0_axi_bresp;
    wire  s0_axi_bvalid;
    wire [C_AXI_ID_WIDTH-1 : 0] s_axi_bid_i;
    wire [1 : 0] s_axi_bresp_i;
    wire  s_axi_bvalid_i;
    wire  s0_axi_bready;
    wire [C_AXI_ID_WIDTH-1 : 0] s0_axi_arid;
    wire [C_AXI_ADDR_WIDTH-1 : 0] s0_axi_araddr;
    wire [7 : 0] s0_axi_arlen;
    wire [2 : 0] s0_axi_arsize;
    wire [1 : 0] s0_axi_arburst;
    wire  s0_axi_arlock;
    wire [3 : 0] s0_axi_arcache;
    wire [2 : 0] s0_axi_arprot;
    wire [3 : 0] s0_axi_arqos;
    wire [3 : 0] s0_axi_arregion;
    wire  s0_axi_arvalid;
    wire  s0_axi_arready;
    wire  s_axi_arready_i;
    wire [C_AXI_ID_WIDTH-1 : 0] s0_axi_rid;
    wire [C_AXI_DATA_WIDTH-1 : 0] s0_axi_rdata;
    wire [1 : 0] s0_axi_rresp;
    wire  s0_axi_rlast;
    wire  s0_axi_rvalid;
    wire  s0_axi_rready;
    wire [C_AXI_ID_WIDTH-1 : 0] s_axi_rid_i;
    wire [C_AXI_DATA_WIDTH-1 : 0] s_axi_rdata_i;
    wire [1 : 0] s_axi_rresp_i;
    wire  s_axi_rlast_i;
    wire  s_axi_rvalid_i;
wire en_fallback_bscan;
reg en_fallback;
wire en_fallback_ack;
reg rst_o;




// Interface for bscan outsput to termination logic 01 input	
   wire [C_AXI_ID_WIDTH-1:0]      s01_axi_awid;
   wire [C_AXI_ADDR_WIDTH-1:0]    s01_axi_awaddr;
   wire [8-1:0]                     s01_axi_awlen;
   wire [3-1:0]                     s01_axi_awsize;
   wire [2-1:0]                     s01_axi_awburst;
   wire                             s01_axi_awlock;
   wire [4-1:0]                     s01_axi_awcache;
   wire [3-1:0]                     s01_axi_awprot;
   wire [4-1:0]                     s01_axi_awqos;
   wire                             s01_axi_awvalid;
    wire                             s01_axi_awready;
   wire [C_AXI_DATA_WIDTH-1:0]    s01_axi_wdata;
   wire [C_AXI_DATA_WIDTH/8-1:0]  s01_axi_wstrb;
   wire                             s01_axi_wlast;
   wire                             s01_axi_wvalid;
    wire                             s01_axi_wready;
    wire [C_AXI_ID_WIDTH-1:0]      s01_axi_bid;
    wire [2-1:0]                     s01_axi_bresp;
    wire                             s01_axi_bvalid;
   wire                             s01_axi_bready;
   wire [C_AXI_ID_WIDTH-1:0]      s01_axi_arid;
   wire [C_AXI_ADDR_WIDTH-1:0]    s01_axi_araddr;
   wire [8-1:0]                     s01_axi_arlen;
   wire [3-1:0]                     s01_axi_arsize;
   wire [2-1:0]                     s01_axi_arburst;
   wire                             s01_axi_arlock;
   wire [4-1:0]                     s01_axi_arcache;
   wire [3-1:0]                     s01_axi_arprot;
   wire [4-1:0]                     s01_axi_arqos;
   wire                             s01_axi_arvalid;
    wire                             s01_axi_arready;
    wire [C_AXI_ID_WIDTH-1:0]      s01_axi_rid;
    wire [C_AXI_DATA_WIDTH-1:0]    s01_axi_rdata;
    wire [2-1:0]                     s01_axi_rresp;
    wire                             s01_axi_rlast;
    wire                             s01_axi_rvalid;
   wire                             s01_axi_rready;


generate 
  if (C_EN_FALLBACK == 1)
  begin: JTAG_FB

axi_dbg_hub_v2_0_4_termination_logic #(.C_AXI_DATA_WIDTH(C_AXI_DATA_WIDTH),
                .C_AXI_ADDR_WIDTH(C_AXI_ADDR_WIDTH),
                .C_AXI_ID_WIDTH(C_AXI_ID_WIDTH),
                .C_AXIS_TDATA_WIDTH(C_AXIS_TDATA_WIDTH),
                .C_NUM_DEBUG_CORES(C_NUM_DEBUG_CORES)
	) termination_logic_inst (
    .aclk 		 (aclk		   ),
    .aresetn 		 (aresetn	   ),
    .en_fallback  	 (en_fallback	   ),
    .en_fallback_ack 	 (en_fallback_ack  ),

    .s00_axi_awid	 (s_axi_awid	   ),
    .s00_axi_awaddr      (s_axi_awaddr     ),
    .s00_axi_awlen       (s_axi_awlen      ),
    .s00_axi_awsize      (s_axi_awsize     ),
    .s00_axi_awburst     (s_axi_awburst    ),
    .s00_axi_awlock      (s_axi_awlock     ),
    .s00_axi_awcache     (s_axi_awcache    ),
    .s00_axi_awprot      (s_axi_awprot     ),
    .s00_axi_awqos       (s_axi_awqos      ),
    .s00_axi_awregion    (s_axi_awregion   ),
    .s00_axi_awvalid     (s_axi_awvalid    ),
    .s00_axi_awready     (s_axi_awready    ),
    .s00_axi_wdata       (s_axi_wdata      ),
    .s00_axi_wstrb       (s_axi_wstrb      ),
    .s00_axi_wlast       (s_axi_wlast      ),
    .s00_axi_wvalid      (s_axi_wvalid     ),
    .s00_axi_wready      (s_axi_wready     ),
    .s00_axi_bid         (s_axi_bid        ),
    .s00_axi_bresp       (s_axi_bresp      ),
    .s00_axi_bvalid      (s_axi_bvalid     ),
    .s00_axi_bready      (s_axi_bready     ),
    .s00_axi_arid        (s_axi_arid       ),
    .s00_axi_araddr      (s_axi_araddr     ),
    .s00_axi_arlen       (s_axi_arlen      ),
    .s00_axi_arsize      (s_axi_arsize     ),
    .s00_axi_arburst     (s_axi_arburst    ),
    .s00_axi_arlock      (s_axi_arlock     ),
    .s00_axi_arcache     (s_axi_arcache    ),
    .s00_axi_arprot      (s_axi_arprot     ),
    .s00_axi_arqos       (s_axi_arqos      ),
    .s00_axi_arregion    (s_axi_arregion   ),
    .s00_axi_arvalid     (s_axi_arvalid    ),
    .s00_axi_arready     (s_axi_arready    ),
    .s00_axi_rid         (s_axi_rid        ),
    .s00_axi_rdata       (s_axi_rdata      ),
    .s00_axi_rresp       (s_axi_rresp      ),
    .s00_axi_rlast       (s_axi_rlast      ),
    .s00_axi_rvalid      (s_axi_rvalid     ),
    .s00_axi_rready      (s_axi_rready     ),
	
	.s01_axi_awid		(s01_axi_awid	    ),
    .s01_axi_awaddr      (s01_axi_awaddr     ),
    .s01_axi_awlen       (s01_axi_awlen      ),
    .s01_axi_awsize      (s01_axi_awsize     ),
    .s01_axi_awburst     (s01_axi_awburst    ),
    .s01_axi_awlock      (s01_axi_awlock     ),
    .s01_axi_awcache     (s01_axi_awcache    ),
    .s01_axi_awprot      (s01_axi_awprot     ),
    .s01_axi_awqos       (s01_axi_awqos      ),
    .s01_axi_awvalid     (s01_axi_awvalid    ),
    .s01_axi_awready     (s01_axi_awready    ),
    .s01_axi_wdata       (s01_axi_wdata      ),
    .s01_axi_wstrb       (s01_axi_wstrb      ),
    .s01_axi_wlast       (s01_axi_wlast      ),
    .s01_axi_wvalid      (s01_axi_wvalid     ),
    .s01_axi_wready      (s01_axi_wready     ),
    .s01_axi_bid         (s01_axi_bid        ),
    .s01_axi_bresp       (s01_axi_bresp      ),
    .s01_axi_bvalid      (s01_axi_bvalid     ),
    .s01_axi_bready      (s01_axi_bready     ),
    .s01_axi_arid        (s01_axi_arid       ),
    .s01_axi_araddr      (s01_axi_araddr     ),
    .s01_axi_arlen       (s01_axi_arlen      ),
    .s01_axi_arsize      (s01_axi_arsize     ),
    .s01_axi_arburst     (s01_axi_arburst    ),
    .s01_axi_arlock      (s01_axi_arlock     ),
    .s01_axi_arcache     (s01_axi_arcache    ),
    .s01_axi_arprot      (s01_axi_arprot     ),
    .s01_axi_arqos       (s01_axi_arqos      ),
    .s01_axi_arvalid     (s01_axi_arvalid    ),
    .s01_axi_arready     (s01_axi_arready    ),
    .s01_axi_rid         (s01_axi_rid        ),
    .s01_axi_rdata       (s01_axi_rdata      ),
    .s01_axi_rresp       (s01_axi_rresp      ),
    .s01_axi_rlast       (s01_axi_rlast      ),
    .s01_axi_rvalid      (s01_axi_rvalid     ),
    .s01_axi_rready      (s01_axi_rready     ),

    .m0_axi_awid	 (s0_axi_awid      ),
    .m0_axi_awaddr      (s0_axi_awaddr     ),
    .m0_axi_awlen       (s0_axi_awlen      ),
    .m0_axi_awsize      (s0_axi_awsize     ),
    .m0_axi_awburst     (s0_axi_awburst    ),
    .m0_axi_awlock      (s0_axi_awlock     ),
    .m0_axi_awcache     (s0_axi_awcache    ),
    .m0_axi_awprot      (s0_axi_awprot     ),
    .m0_axi_awqos       (s0_axi_awqos      ),
    .m0_axi_awregion    (s0_axi_awregion   ),
    .m0_axi_awvalid     (s0_axi_awvalid    ),
    .m0_axi_awready     (s0_axi_awready    ),
    .m0_axi_wdata       (s0_axi_wdata      ),
    .m0_axi_wstrb       (s0_axi_wstrb      ),
    .m0_axi_wlast       (s0_axi_wlast      ),
    .m0_axi_wvalid      (s0_axi_wvalid     ),
    .m0_axi_wready      (s0_axi_wready     ),
    .m0_axi_bid         (s0_axi_bid        ),
    .m0_axi_bresp       (s0_axi_bresp      ),
    .m0_axi_bvalid      (s0_axi_bvalid     ),
    .m0_axi_bready      (s0_axi_bready     ),
    .m0_axi_arid        (s0_axi_arid       ),
    .m0_axi_araddr      (s0_axi_araddr     ),
    .m0_axi_arlen       (s0_axi_arlen      ),
    .m0_axi_arsize      (s0_axi_arsize     ),
    .m0_axi_arburst     (s0_axi_arburst    ),
    .m0_axi_arlock      (s0_axi_arlock     ),
    .m0_axi_arcache     (s0_axi_arcache    ),
    .m0_axi_arprot      (s0_axi_arprot     ),
    .m0_axi_arqos       (s0_axi_arqos      ),
    .m0_axi_arregion    (s0_axi_arregion   ),
    .m0_axi_arvalid     (s0_axi_arvalid    ),
    .m0_axi_arready     (s0_axi_arready    ),
    .m0_axi_rid         (s0_axi_rid        ),
    .m0_axi_rdata       (s0_axi_rdata      ),
    .m0_axi_rresp       (s0_axi_rresp      ),
    .m0_axi_rlast       (s0_axi_rlast      ),
    .m0_axi_rvalid      (s0_axi_rvalid     ),
    .m0_axi_rready      (s0_axi_rready     )


//    .s00_axi		 (m00_axi	   ),
//    .s01_axi		 (m01_axi	   ),
//    .m0_axi		 (m0_axi	   )	
	);

always @ (posedge aclk)
begin
  if (!aresetn) begin
    en_fallback <= 1'b0;
  end else begin
    if (en_fallback_bscan == 1'b0 || en_fallback_bscan == 1'b1) begin
	en_fallback <= en_fallback_bscan;
    end else begin
	en_fallback <= 1'b0;
    end
  end
end

bscan_axi_v1_0_0_bscan_axi #
  (
  .C_M_AXI_ID_WIDTH      (1),
  .C_M_AXI_ADDR_WIDTH    (C_AXI_ADDR_WIDTH),
  .C_M_AXI_DATA_WIDTH    (C_AXI_DATA_WIDTH),
  .C_EXT_BSCAN           (1),
  .C_BSCANID             (32'h04900700),
  .C_ADDR_OFFSET         (C_ADDR_OFFSET),
  .C_ADDR_RANGE          (C_ADDR_RANGE)
  ) bscan_axi_inst
  (
   .m_axi_awid          (s01_axi_awid),
   .m_axi_awaddr        (s01_axi_awaddr),
   .m_axi_awlen         (s01_axi_awlen),
   .m_axi_awsize        (s01_axi_awsize),
   .m_axi_awburst       (s01_axi_awburst),
   .m_axi_awlock        (s01_axi_awlock),
   .m_axi_awcache       (s01_axi_awcache),
   .m_axi_awprot        (s01_axi_awprot),
   .m_axi_awqos         (s01_axi_awqos),
   .m_axi_awvalid       (s01_axi_awvalid),
   .m_axi_awready       (s01_axi_awready),
   .m_axi_wdata         (s01_axi_wdata),
   .m_axi_wstrb         (s01_axi_wstrb),
   .m_axi_wlast         (s01_axi_wlast),
   .m_axi_wvalid        (s01_axi_wvalid),
   .m_axi_wready        (s01_axi_wready),
   .m_axi_bid           (s01_axi_bid),
   .m_axi_bresp         (s01_axi_bresp),
   .m_axi_bvalid        (s01_axi_bvalid),
   .m_axi_bready        (s01_axi_bready),
   .m_axi_arid          (s01_axi_arid),
   .m_axi_araddr        (s01_axi_araddr),
   .m_axi_arlen         (s01_axi_arlen),
   .m_axi_arsize        (s01_axi_arsize),
   .m_axi_arburst       (s01_axi_arburst),
   .m_axi_arlock        (s01_axi_arlock),
   .m_axi_arcache       (s01_axi_arcache),
   .m_axi_arprot        (s01_axi_arprot),
   .m_axi_arqos         (s01_axi_arqos),
   .m_axi_arvalid       (s01_axi_arvalid),
   .m_axi_arready       (s01_axi_arready),
   .m_axi_rid           (s01_axi_rid),
   .m_axi_rdata         (s01_axi_rdata),
   .m_axi_rresp         (s01_axi_rresp),
   .m_axi_rlast         (s01_axi_rlast),
   .m_axi_rvalid        (s01_axi_rvalid),
   .m_axi_rready        (s01_axi_rready),
   .s_bscan_update      (s_bscan_update),
   .s_bscan_capture     (s_bscan_capture),
   .s_bscan_reset       (s_bscan_reset),
   .s_bscan_runtest     (s_bscan_runtest),
   .s_bscan_tck         (s_bscan_tck),
   .s_bscan_tms         (s_bscan_tms),
   .s_bscan_tdi         (s_bscan_tdi),
   .s_bscan_sel         (s_bscan_sel),
   .s_bscan_shift       (s_bscan_shift),
   .s_bscan_drck        (s_bscan_drck),
   .s_bscan_tdo         (s_bscan_tdo),
   .s_bscan_bscanid_en  (s_bscan_bscanid_en),
   .aclk                (aclk),
   .aresetn             (aresetn),
   .rst_o               (), // rst_o
   .uuid                (uuid),
   .en_fallback_ack     (en_fallback_ack),
   .en_fallback         (en_fallback_bscan)
);

  end
endgenerate
axi_dbg_hub_v2_0_4_sv_top #(.C_AXI_DATA_WIDTH(C_AXI_DATA_WIDTH),
                .C_AXI_ADDR_WIDTH(C_AXI_ADDR_WIDTH),
                .C_AXI_ID_WIDTH(C_AXI_ID_WIDTH),
                .C_AXIS_TDATA_WIDTH(C_AXIS_TDATA_WIDTH),
                .C_NUM_DEBUG_CORES(C_NUM_DEBUG_CORES)) 
    sv_top_inst (.aclk (aclk),
          .aresetn (aresetn),
	      .uuid (uuid),
          .s_axi_awaddr    ((C_EN_FALLBACK == 0) ? s_axi_awaddr   : s0_axi_awaddr),
          .s_axi_awid      ((C_EN_FALLBACK == 0) ? s_axi_awid     : s0_axi_awid),
          .s_axi_awlen     ((C_EN_FALLBACK == 0) ? s_axi_awlen    : s0_axi_awlen),
          .s_axi_awsize    ((C_EN_FALLBACK == 0) ? s_axi_awsize   : s0_axi_awsize),
          .s_axi_awburst   ((C_EN_FALLBACK == 0) ? s_axi_awburst  : s0_axi_awburst),
          .s_axi_awlock    ((C_EN_FALLBACK == 0) ? s_axi_awlock   : s0_axi_awlock),
          .s_axi_awcache   ((C_EN_FALLBACK == 0) ? s_axi_awcache  : s0_axi_awcache),
          .s_axi_awprot    ((C_EN_FALLBACK == 0) ? s_axi_awprot   : s0_axi_awprot),
          .s_axi_awqos     ((C_EN_FALLBACK == 0) ? s_axi_awqos    : s0_axi_awqos),
          .s_axi_awregion  ((C_EN_FALLBACK == 0) ? s_axi_awregion : s0_axi_awregion),
          .s_axi_awvalid   ((C_EN_FALLBACK == 0) ? s_axi_awvalid  : s0_axi_awvalid),
          .s_axi_awready   (s_axi_awready_i),
          .s_axi_wdata     ((C_EN_FALLBACK == 0) ? s_axi_wdata    : s0_axi_wdata),
          .s_axi_wstrb     ((C_EN_FALLBACK == 0) ? s_axi_wstrb    : s0_axi_wstrb),
          .s_axi_wlast     ((C_EN_FALLBACK == 0) ? s_axi_wlast    : s0_axi_wlast),
          .s_axi_wvalid    ((C_EN_FALLBACK == 0) ? s_axi_wvalid   : s0_axi_wvalid),
          .s_axi_wready    (s_axi_wready_i),
          .s_axi_bresp     (s_axi_bresp_i),
          .s_axi_bid       (s_axi_bid_i),
          .s_axi_bvalid    (s_axi_bvalid_i),
          .s_axi_bready    ((C_EN_FALLBACK == 0) ? s_axi_bready   : s0_axi_bready),
          .s_axi_araddr    ((C_EN_FALLBACK == 0) ? s_axi_araddr   : s0_axi_araddr),
          .s_axi_arid      ((C_EN_FALLBACK == 0) ? s_axi_arid     : s0_axi_arid),
          .s_axi_arlen     ((C_EN_FALLBACK == 0) ? s_axi_arlen    : s0_axi_arlen),
          .s_axi_arsize    ((C_EN_FALLBACK == 0) ? s_axi_arsize   : s0_axi_arsize),
          .s_axi_arburst   ((C_EN_FALLBACK == 0) ? s_axi_arburst  : s0_axi_arburst),
          .s_axi_arlock    ((C_EN_FALLBACK == 0) ? s_axi_arlock   : s0_axi_arlock),
          .s_axi_arcache   ((C_EN_FALLBACK == 0) ? s_axi_arcache  : s0_axi_arcache),
          .s_axi_arprot    ((C_EN_FALLBACK == 0) ? s_axi_arprot   : s0_axi_arprot),
          .s_axi_arqos     ((C_EN_FALLBACK == 0) ? s_axi_arqos    : s0_axi_arqos),
          .s_axi_arregion  ((C_EN_FALLBACK == 0) ? s_axi_arregion : s0_axi_arregion),
          .s_axi_arvalid   ((C_EN_FALLBACK == 0) ? s_axi_arvalid  : s0_axi_arvalid),
          .s_axi_arready   (s_axi_arready_i),
          .s_axi_rdata     (s_axi_rdata_i),
          .s_axi_rresp     (s_axi_rresp_i),
          .s_axi_rid       (s_axi_rid_i),
          .s_axi_rlast     (s_axi_rlast_i),
          .s_axi_rvalid    (s_axi_rvalid_i),
          .s_axi_rready    ((C_EN_FALLBACK == 0) ? s_axi_rready   : s0_axi_rready),  
          .s0_axis_tready  (s00_axis_tready),
          .s0_axis_tdata   (s00_axis_tdata),
          .s0_axis_tvalid  (s00_axis_tvalid),
          .s0_axis_tlast   (s00_axis_tlast),
          .m0_axis_tready  (m00_axis_tready),
          .m0_axis_tdata   (m00_axis_tdata),
          .m0_axis_tvalid  (m00_axis_tvalid),
          .m0_axis_tlast   (m00_axis_tlast),  
          .s1_axis_tready  (s01_axis_tready),
          .s1_axis_tdata   (s01_axis_tdata),
          .s1_axis_tvalid  (s01_axis_tvalid),
          .s1_axis_tlast   (s01_axis_tlast),
          .m1_axis_tready  (m01_axis_tready),
          .m1_axis_tdata   (m01_axis_tdata),
          .m1_axis_tvalid  (m01_axis_tvalid),
          .m1_axis_tlast   (m01_axis_tlast),  
          .s2_axis_tready  (s02_axis_tready),
          .s2_axis_tdata   (s02_axis_tdata),
          .s2_axis_tvalid  (s02_axis_tvalid),
          .s2_axis_tlast   (s02_axis_tlast),
          .m2_axis_tready  (m02_axis_tready),
          .m2_axis_tdata   (m02_axis_tdata),
          .m2_axis_tvalid  (m02_axis_tvalid),
          .m2_axis_tlast   (m02_axis_tlast),  
          .s3_axis_tready  (s03_axis_tready),
          .s3_axis_tdata   (s03_axis_tdata),
          .s3_axis_tvalid  (s03_axis_tvalid),
          .s3_axis_tlast   (s03_axis_tlast),
          .m3_axis_tready  (m03_axis_tready),
          .m3_axis_tdata   (m03_axis_tdata),
          .m3_axis_tvalid  (m03_axis_tvalid),
          .m3_axis_tlast   (m03_axis_tlast), 
          .s4_axis_tready  (s04_axis_tready),
          .s4_axis_tdata   (s04_axis_tdata),
          .s4_axis_tvalid  (s04_axis_tvalid),
          .s4_axis_tlast   (s04_axis_tlast),
          .m4_axis_tready  (m04_axis_tready),
          .m4_axis_tdata   (m04_axis_tdata),
          .m4_axis_tvalid  (m04_axis_tvalid),
          .m4_axis_tlast   (m04_axis_tlast),  
          .s5_axis_tready  (s05_axis_tready),
          .s5_axis_tdata   (s05_axis_tdata),
          .s5_axis_tvalid  (s05_axis_tvalid),
          .s5_axis_tlast   (s05_axis_tlast),
          .m5_axis_tready  (m05_axis_tready),
          .m5_axis_tdata   (m05_axis_tdata),
          .m5_axis_tvalid  (m05_axis_tvalid),
          .m5_axis_tlast   (m05_axis_tlast),  
          .s6_axis_tready  (s06_axis_tready),
          .s6_axis_tdata   (s06_axis_tdata),
          .s6_axis_tvalid  (s06_axis_tvalid),
          .s6_axis_tlast   (s06_axis_tlast),
          .m6_axis_tready  (m06_axis_tready),
          .m6_axis_tdata   (m06_axis_tdata),
          .m6_axis_tvalid  (m06_axis_tvalid),
          .m6_axis_tlast   (m06_axis_tlast),  
          .s7_axis_tready  (s07_axis_tready),
          .s7_axis_tdata   (s07_axis_tdata),
          .s7_axis_tvalid  (s07_axis_tvalid),
          .s7_axis_tlast   (s07_axis_tlast),
          .m7_axis_tready  (m07_axis_tready),
          .m7_axis_tdata   (m07_axis_tdata),
          .m7_axis_tvalid  (m07_axis_tvalid),
          .m7_axis_tlast   (m07_axis_tlast), 
          .s8_axis_tready  (s08_axis_tready),
          .s8_axis_tdata   (s08_axis_tdata),
          .s8_axis_tvalid  (s08_axis_tvalid),
          .s8_axis_tlast   (s08_axis_tlast),
          .m8_axis_tready  (m08_axis_tready),
          .m8_axis_tdata   (m08_axis_tdata),
          .m8_axis_tvalid  (m08_axis_tvalid),
          .m8_axis_tlast   (m08_axis_tlast),  
          .s9_axis_tready  (s09_axis_tready),
          .s9_axis_tdata   (s09_axis_tdata),
          .s9_axis_tvalid  (s09_axis_tvalid),
          .s9_axis_tlast   (s09_axis_tlast),
          .m9_axis_tready  (m09_axis_tready),
          .m9_axis_tdata   (m09_axis_tdata),
          .m9_axis_tvalid  (m09_axis_tvalid),
          .m9_axis_tlast   (m09_axis_tlast), 
          .s10_axis_tready  (s10_axis_tready),
          .s10_axis_tdata   (s10_axis_tdata),
          .s10_axis_tvalid  (s10_axis_tvalid),
          .s10_axis_tlast   (s10_axis_tlast),
          .m10_axis_tready  (m10_axis_tready),
          .m10_axis_tdata   (m10_axis_tdata),
          .m10_axis_tvalid  (m10_axis_tvalid),
          .m10_axis_tlast   (m10_axis_tlast),  
          .s11_axis_tready  (s11_axis_tready),
          .s11_axis_tdata   (s11_axis_tdata),
          .s11_axis_tvalid  (s11_axis_tvalid),
          .s11_axis_tlast   (s11_axis_tlast),
          .m11_axis_tready  (m11_axis_tready),
          .m11_axis_tdata   (m11_axis_tdata),
          .m11_axis_tvalid  (m11_axis_tvalid),
          .m11_axis_tlast   (m11_axis_tlast),  
          .s12_axis_tready  (s12_axis_tready),
          .s12_axis_tdata   (s12_axis_tdata),
          .s12_axis_tvalid  (s12_axis_tvalid),
          .s12_axis_tlast   (s12_axis_tlast),
          .m12_axis_tready  (m12_axis_tready),
          .m12_axis_tdata   (m12_axis_tdata),
          .m12_axis_tvalid  (m12_axis_tvalid),
          .m12_axis_tlast   (m12_axis_tlast),  
          .s13_axis_tready  (s13_axis_tready),
          .s13_axis_tdata   (s13_axis_tdata),
          .s13_axis_tvalid  (s13_axis_tvalid),
          .s13_axis_tlast   (s13_axis_tlast),
          .m13_axis_tready  (m13_axis_tready),
          .m13_axis_tdata   (m13_axis_tdata),
          .m13_axis_tvalid  (m13_axis_tvalid),
          .m13_axis_tlast   (m13_axis_tlast), 
          .s14_axis_tready  (s14_axis_tready),
          .s14_axis_tdata   (s14_axis_tdata),
          .s14_axis_tvalid  (s14_axis_tvalid),
          .s14_axis_tlast   (s14_axis_tlast),
          .m14_axis_tready  (m14_axis_tready),
          .m14_axis_tdata   (m14_axis_tdata),
          .m14_axis_tvalid  (m14_axis_tvalid),
          .m14_axis_tlast   (m14_axis_tlast),  
          .s15_axis_tready  (s15_axis_tready),
          .s15_axis_tdata   (s15_axis_tdata),
          .s15_axis_tvalid  (s15_axis_tvalid),
          .s15_axis_tlast   (s15_axis_tlast),
          .m15_axis_tready  (m15_axis_tready),
          .m15_axis_tdata   (m15_axis_tdata),
          .m15_axis_tvalid  (m15_axis_tvalid),
          .m15_axis_tlast   (m15_axis_tlast),  
          .s16_axis_tready  (s16_axis_tready),
          .s16_axis_tdata   (s16_axis_tdata),
          .s16_axis_tvalid  (s16_axis_tvalid),
          .s16_axis_tlast   (s16_axis_tlast),
          .m16_axis_tready  (m16_axis_tready),
          .m16_axis_tdata   (m16_axis_tdata),
          .m16_axis_tvalid  (m16_axis_tvalid),
          .m16_axis_tlast   (m16_axis_tlast),  
          .s17_axis_tready  (s17_axis_tready),
          .s17_axis_tdata   (s17_axis_tdata),
          .s17_axis_tvalid  (s17_axis_tvalid),
          .s17_axis_tlast   (s17_axis_tlast),
          .m17_axis_tready  (m17_axis_tready),
          .m17_axis_tdata   (m17_axis_tdata),
          .m17_axis_tvalid  (m17_axis_tvalid),
          .m17_axis_tlast   (m17_axis_tlast), 
          .s18_axis_tready  (s18_axis_tready),
          .s18_axis_tdata   (s18_axis_tdata),
          .s18_axis_tvalid  (s18_axis_tvalid),
          .s18_axis_tlast   (s18_axis_tlast),
          .m18_axis_tready  (m18_axis_tready),
          .m18_axis_tdata   (m18_axis_tdata),
          .m18_axis_tvalid  (m18_axis_tvalid),
          .m18_axis_tlast   (m18_axis_tlast),  
          .s19_axis_tready  (s19_axis_tready),
          .s19_axis_tdata   (s19_axis_tdata),
          .s19_axis_tvalid  (s19_axis_tvalid),
          .s19_axis_tlast   (s19_axis_tlast),
          .m19_axis_tready  (m19_axis_tready),
          .m19_axis_tdata   (m19_axis_tdata),
          .m19_axis_tvalid  (m19_axis_tvalid),
          .m19_axis_tlast   (m19_axis_tlast),           
          .s20_axis_tready  (s20_axis_tready),
          .s20_axis_tdata   (s20_axis_tdata),
          .s20_axis_tvalid  (s20_axis_tvalid),
          .s20_axis_tlast   (s20_axis_tlast),
          .m20_axis_tready  (m20_axis_tready),
          .m20_axis_tdata   (m20_axis_tdata),
          .m20_axis_tvalid  (m20_axis_tvalid),
          .m20_axis_tlast   (m20_axis_tlast),  
          .s21_axis_tready  (s21_axis_tready),
          .s21_axis_tdata   (s21_axis_tdata),
          .s21_axis_tvalid  (s21_axis_tvalid),
          .s21_axis_tlast   (s21_axis_tlast),
          .m21_axis_tready  (m21_axis_tready),
          .m21_axis_tdata   (m21_axis_tdata),
          .m21_axis_tvalid  (m21_axis_tvalid),
          .m21_axis_tlast   (m21_axis_tlast), 
          .s22_axis_tready  (s22_axis_tready),
          .s22_axis_tdata   (s22_axis_tdata),
          .s22_axis_tvalid  (s22_axis_tvalid),
          .s22_axis_tlast   (s22_axis_tlast),
          .m22_axis_tready  (m22_axis_tready),
          .m22_axis_tdata   (m22_axis_tdata),
          .m22_axis_tvalid  (m22_axis_tvalid),
          .m22_axis_tlast   (m22_axis_tlast),  
          .s23_axis_tready  (s23_axis_tready),
          .s23_axis_tdata   (s23_axis_tdata),
          .s23_axis_tvalid  (s23_axis_tvalid),
          .s23_axis_tlast   (s23_axis_tlast),
          .m23_axis_tready  (m23_axis_tready),
          .m23_axis_tdata   (m23_axis_tdata),
          .m23_axis_tvalid  (m23_axis_tvalid),
          .m23_axis_tlast   (m23_axis_tlast),  
          .s24_axis_tready  (s24_axis_tready),
          .s24_axis_tdata   (s24_axis_tdata),
          .s24_axis_tvalid  (s24_axis_tvalid),
          .s24_axis_tlast   (s24_axis_tlast),
          .m24_axis_tready  (m24_axis_tready),
          .m24_axis_tdata   (m24_axis_tdata),
          .m24_axis_tvalid  (m24_axis_tvalid),
          .m24_axis_tlast   (m24_axis_tlast),  
          .s25_axis_tready  (s25_axis_tready),
          .s25_axis_tdata   (s25_axis_tdata),
          .s25_axis_tvalid  (s25_axis_tvalid),
          .s25_axis_tlast   (s25_axis_tlast),
          .m25_axis_tready  (m25_axis_tready),
          .m25_axis_tdata   (m25_axis_tdata),
          .m25_axis_tvalid  (m25_axis_tvalid),
          .m25_axis_tlast   (m25_axis_tlast),
          .s26_axis_tready  (s26_axis_tready),
          .s26_axis_tdata   (s26_axis_tdata),
          .s26_axis_tvalid  (s26_axis_tvalid),
          .s26_axis_tlast   (s26_axis_tlast),
          .m26_axis_tready  (m26_axis_tready),
          .m26_axis_tdata   (m26_axis_tdata),
          .m26_axis_tvalid  (m26_axis_tvalid),
          .m26_axis_tlast   (m26_axis_tlast),  
          .s27_axis_tready  (s27_axis_tready),
          .s27_axis_tdata   (s27_axis_tdata),
          .s27_axis_tvalid  (s27_axis_tvalid),
          .s27_axis_tlast   (s27_axis_tlast),
          .m27_axis_tready  (m27_axis_tready),
          .m27_axis_tdata   (m27_axis_tdata),
          .m27_axis_tvalid  (m27_axis_tvalid),
          .m27_axis_tlast   (m27_axis_tlast), 
          .s28_axis_tready  (s28_axis_tready),
          .s28_axis_tdata   (s28_axis_tdata),
          .s28_axis_tvalid  (s28_axis_tvalid),
          .s28_axis_tlast   (s28_axis_tlast),
          .m28_axis_tready  (m28_axis_tready),
          .m28_axis_tdata   (m28_axis_tdata),
          .m28_axis_tvalid  (m28_axis_tvalid),
          .m28_axis_tlast   (m28_axis_tlast),  
          .s29_axis_tready  (s29_axis_tready),
          .s29_axis_tdata   (s29_axis_tdata),
          .s29_axis_tvalid  (s29_axis_tvalid),
          .s29_axis_tlast   (s29_axis_tlast),
          .m29_axis_tready  (m29_axis_tready),
          .m29_axis_tdata   (m29_axis_tdata),
          .m29_axis_tvalid  (m29_axis_tvalid),
          .m29_axis_tlast   (m29_axis_tlast),  
          .s30_axis_tready  (s30_axis_tready),
          .s30_axis_tdata   (s30_axis_tdata),
          .s30_axis_tvalid  (s30_axis_tvalid),
          .s30_axis_tlast   (s30_axis_tlast),
          .m30_axis_tready  (m30_axis_tready),
          .m30_axis_tdata   (m30_axis_tdata),
          .m30_axis_tvalid  (m30_axis_tvalid),
          .m30_axis_tlast   (m30_axis_tlast),  
          .s31_axis_tready  (s31_axis_tready),
          .s31_axis_tdata   (s31_axis_tdata),
          .s31_axis_tvalid  (s31_axis_tvalid),
          .s31_axis_tlast   (s31_axis_tlast),
          .m31_axis_tready  (m31_axis_tready),
          .m31_axis_tdata   (m31_axis_tdata),
          .m31_axis_tvalid  (m31_axis_tvalid),
          .m31_axis_tlast   (m31_axis_tlast), 
          .s32_axis_tready  (s32_axis_tready),
          .s32_axis_tdata   (s32_axis_tdata),
          .s32_axis_tvalid  (s32_axis_tvalid),
          .s32_axis_tlast   (s32_axis_tlast),
          .m32_axis_tready  (m32_axis_tready),
          .m32_axis_tdata   (m32_axis_tdata),
          .m32_axis_tvalid  (m32_axis_tvalid),
          .m32_axis_tlast   (m32_axis_tlast),  
          .s33_axis_tready  (s33_axis_tready),
          .s33_axis_tdata   (s33_axis_tdata),
          .s33_axis_tvalid  (s33_axis_tvalid),
          .s33_axis_tlast   (s33_axis_tlast),
          .m33_axis_tready  (m33_axis_tready),
          .m33_axis_tdata   (m33_axis_tdata),
          .m33_axis_tvalid  (m33_axis_tvalid),
          .m33_axis_tlast   (m33_axis_tlast),  
          .s34_axis_tready  (s34_axis_tready),
          .s34_axis_tdata   (s34_axis_tdata),
          .s34_axis_tvalid  (s34_axis_tvalid),
          .s34_axis_tlast   (s34_axis_tlast),
          .m34_axis_tready  (m34_axis_tready),
          .m34_axis_tdata   (m34_axis_tdata),
          .m34_axis_tvalid  (m34_axis_tvalid),
          .m34_axis_tlast   (m34_axis_tlast),  
          .s35_axis_tready  (s35_axis_tready),
          .s35_axis_tdata   (s35_axis_tdata),
          .s35_axis_tvalid  (s35_axis_tvalid),
          .s35_axis_tlast   (s35_axis_tlast),
          .m35_axis_tready  (m35_axis_tready),
          .m35_axis_tdata   (m35_axis_tdata),
          .m35_axis_tvalid  (m35_axis_tvalid),
          .m35_axis_tlast   (m35_axis_tlast),
          .s36_axis_tready  (s36_axis_tready),
          .s36_axis_tdata   (s36_axis_tdata),
          .s36_axis_tvalid  (s36_axis_tvalid),
          .s36_axis_tlast   (s36_axis_tlast),
          .m36_axis_tready  (m36_axis_tready),
          .m36_axis_tdata   (m36_axis_tdata),
          .m36_axis_tvalid  (m36_axis_tvalid),
          .m36_axis_tlast   (m36_axis_tlast),  
          .s37_axis_tready  (s37_axis_tready),
          .s37_axis_tdata   (s37_axis_tdata),
          .s37_axis_tvalid  (s37_axis_tvalid),
          .s37_axis_tlast   (s37_axis_tlast),
          .m37_axis_tready  (m37_axis_tready),
          .m37_axis_tdata   (m37_axis_tdata),
          .m37_axis_tvalid  (m37_axis_tvalid),
          .m37_axis_tlast   (m37_axis_tlast), 
          .s38_axis_tready  (s38_axis_tready),
          .s38_axis_tdata   (s38_axis_tdata),
          .s38_axis_tvalid  (s38_axis_tvalid),
          .s38_axis_tlast   (s38_axis_tlast),
          .m38_axis_tready  (m38_axis_tready),
          .m38_axis_tdata   (m38_axis_tdata),
          .m38_axis_tvalid  (m38_axis_tvalid),
          .m38_axis_tlast   (m38_axis_tlast),  
          .s39_axis_tready  (s39_axis_tready),
          .s39_axis_tdata   (s39_axis_tdata),
          .s39_axis_tvalid  (s39_axis_tvalid),
          .s39_axis_tlast   (s39_axis_tlast),
          .m39_axis_tready  (m39_axis_tready),
          .m39_axis_tdata   (m39_axis_tdata),
          .m39_axis_tvalid  (m39_axis_tvalid),
          .m39_axis_tlast   (m39_axis_tlast),  
          .s40_axis_tready  (s40_axis_tready),
          .s40_axis_tdata   (s40_axis_tdata),
          .s40_axis_tvalid  (s40_axis_tvalid),
          .s40_axis_tlast   (s40_axis_tlast),
          .m40_axis_tready  (m40_axis_tready),
          .m40_axis_tdata   (m40_axis_tdata),
          .m40_axis_tvalid  (m40_axis_tvalid),
          .m40_axis_tlast   (m40_axis_tlast),  
          .s41_axis_tready  (s41_axis_tready),
          .s41_axis_tdata   (s41_axis_tdata),
          .s41_axis_tvalid  (s41_axis_tvalid),
          .s41_axis_tlast   (s41_axis_tlast),
          .m41_axis_tready  (m41_axis_tready),
          .m41_axis_tdata   (m41_axis_tdata),
          .m41_axis_tvalid  (m41_axis_tvalid),
          .m41_axis_tlast   (m41_axis_tlast), 
          .s42_axis_tready  (s42_axis_tready),
          .s42_axis_tdata   (s42_axis_tdata),
          .s42_axis_tvalid  (s42_axis_tvalid),
          .s42_axis_tlast   (s42_axis_tlast),
          .m42_axis_tready  (m42_axis_tready),
          .m42_axis_tdata   (m42_axis_tdata),
          .m42_axis_tvalid  (m42_axis_tvalid),
          .m42_axis_tlast   (m42_axis_tlast),  
          .s43_axis_tready  (s43_axis_tready),
          .s43_axis_tdata   (s43_axis_tdata),
          .s43_axis_tvalid  (s43_axis_tvalid),
          .s43_axis_tlast   (s43_axis_tlast),
          .m43_axis_tready  (m43_axis_tready),
          .m43_axis_tdata   (m43_axis_tdata),
          .m43_axis_tvalid  (m43_axis_tvalid),
          .m43_axis_tlast   (m43_axis_tlast),  
          .s44_axis_tready  (s44_axis_tready),
          .s44_axis_tdata   (s44_axis_tdata),
          .s44_axis_tvalid  (s44_axis_tvalid),
          .s44_axis_tlast   (s44_axis_tlast),
          .m44_axis_tready  (m44_axis_tready),
          .m44_axis_tdata   (m44_axis_tdata),
          .m44_axis_tvalid  (m44_axis_tvalid),
          .m44_axis_tlast   (m44_axis_tlast),  
          .s45_axis_tready  (s45_axis_tready),
          .s45_axis_tdata   (s45_axis_tdata),
          .s45_axis_tvalid  (s45_axis_tvalid),
          .s45_axis_tlast   (s45_axis_tlast),
          .m45_axis_tready  (m45_axis_tready),
          .m45_axis_tdata   (m45_axis_tdata),
          .m45_axis_tvalid  (m45_axis_tvalid),
          .m45_axis_tlast   (m45_axis_tlast),
          .s46_axis_tready  (s46_axis_tready),
          .s46_axis_tdata   (s46_axis_tdata),
          .s46_axis_tvalid  (s46_axis_tvalid),
          .s46_axis_tlast   (s46_axis_tlast),
          .m46_axis_tready  (m46_axis_tready),
          .m46_axis_tdata   (m46_axis_tdata),
          .m46_axis_tvalid  (m46_axis_tvalid),
          .m46_axis_tlast   (m46_axis_tlast),  
          .s47_axis_tready  (s47_axis_tready),
          .s47_axis_tdata   (s47_axis_tdata),
          .s47_axis_tvalid  (s47_axis_tvalid),
          .s47_axis_tlast   (s47_axis_tlast),
          .m47_axis_tready  (m47_axis_tready),
          .m47_axis_tdata   (m47_axis_tdata),
          .m47_axis_tvalid  (m47_axis_tvalid),
          .m47_axis_tlast   (m47_axis_tlast), 
          .s48_axis_tready  (s48_axis_tready),
          .s48_axis_tdata   (s48_axis_tdata),
          .s48_axis_tvalid  (s48_axis_tvalid),
          .s48_axis_tlast   (s48_axis_tlast),
          .m48_axis_tready  (m48_axis_tready),
          .m48_axis_tdata   (m48_axis_tdata),
          .m48_axis_tvalid  (m48_axis_tvalid),
          .m48_axis_tlast   (m48_axis_tlast),  
          .s49_axis_tready  (s49_axis_tready),
          .s49_axis_tdata   (s49_axis_tdata),
          .s49_axis_tvalid  (s49_axis_tvalid),
          .s49_axis_tlast   (s49_axis_tlast),
          .m49_axis_tready  (m49_axis_tready),
          .m49_axis_tdata   (m49_axis_tdata),
          .m49_axis_tvalid  (m49_axis_tvalid),
          .m49_axis_tlast   (m49_axis_tlast),  
          .s50_axis_tready  (s50_axis_tready),
          .s50_axis_tdata   (s50_axis_tdata),
          .s50_axis_tvalid  (s50_axis_tvalid),
          .s50_axis_tlast   (s50_axis_tlast),
          .m50_axis_tready  (m50_axis_tready),
          .m50_axis_tdata   (m50_axis_tdata),
          .m50_axis_tvalid  (m50_axis_tvalid),
          .m50_axis_tlast   (m50_axis_tlast),  
          .s51_axis_tready  (s51_axis_tready),
          .s51_axis_tdata   (s51_axis_tdata),
          .s51_axis_tvalid  (s51_axis_tvalid),
          .s51_axis_tlast   (s51_axis_tlast),
          .m51_axis_tready  (m51_axis_tready),
          .m51_axis_tdata   (m51_axis_tdata),
          .m51_axis_tvalid  (m51_axis_tvalid),
          .m51_axis_tlast   (m51_axis_tlast), 
          .s52_axis_tready  (s52_axis_tready),
          .s52_axis_tdata   (s52_axis_tdata),
          .s52_axis_tvalid  (s52_axis_tvalid),
          .s52_axis_tlast   (s52_axis_tlast),
          .m52_axis_tready  (m52_axis_tready),
          .m52_axis_tdata   (m52_axis_tdata),
          .m52_axis_tvalid  (m52_axis_tvalid),
          .m52_axis_tlast   (m52_axis_tlast),  
          .s53_axis_tready  (s53_axis_tready),
          .s53_axis_tdata   (s53_axis_tdata),
          .s53_axis_tvalid  (s53_axis_tvalid),
          .s53_axis_tlast   (s53_axis_tlast),
          .m53_axis_tready  (m53_axis_tready),
          .m53_axis_tdata   (m53_axis_tdata),
          .m53_axis_tvalid  (m53_axis_tvalid),
          .m53_axis_tlast   (m53_axis_tlast),  
          .s54_axis_tready  (s54_axis_tready),
          .s54_axis_tdata   (s54_axis_tdata),
          .s54_axis_tvalid  (s54_axis_tvalid),
          .s54_axis_tlast   (s54_axis_tlast),
          .m54_axis_tready  (m54_axis_tready),
          .m54_axis_tdata   (m54_axis_tdata),
          .m54_axis_tvalid  (m54_axis_tvalid),
          .m54_axis_tlast   (m54_axis_tlast),  
          .s55_axis_tready  (s55_axis_tready),
          .s55_axis_tdata   (s55_axis_tdata),
          .s55_axis_tvalid  (s55_axis_tvalid),
          .s55_axis_tlast   (s55_axis_tlast),
          .m55_axis_tready  (m55_axis_tready),
          .m55_axis_tdata   (m55_axis_tdata),
          .m55_axis_tvalid  (m55_axis_tvalid),
          .m55_axis_tlast   (m55_axis_tlast),
          .s56_axis_tready  (s56_axis_tready),
          .s56_axis_tdata   (s56_axis_tdata),
          .s56_axis_tvalid  (s56_axis_tvalid),
          .s56_axis_tlast   (s56_axis_tlast),
          .m56_axis_tready  (m56_axis_tready),
          .m56_axis_tdata   (m56_axis_tdata),
          .m56_axis_tvalid  (m56_axis_tvalid),
          .m56_axis_tlast   (m56_axis_tlast),  
          .s57_axis_tready  (s57_axis_tready),
          .s57_axis_tdata   (s57_axis_tdata),
          .s57_axis_tvalid  (s57_axis_tvalid),
          .s57_axis_tlast   (s57_axis_tlast),
          .m57_axis_tready  (m57_axis_tready),
          .m57_axis_tdata   (m57_axis_tdata),
          .m57_axis_tvalid  (m57_axis_tvalid),
          .m57_axis_tlast   (m57_axis_tlast), 
          .s58_axis_tready  (s58_axis_tready),
          .s58_axis_tdata   (s58_axis_tdata),
          .s58_axis_tvalid  (s58_axis_tvalid),
          .s58_axis_tlast   (s58_axis_tlast),
          .m58_axis_tready  (m58_axis_tready),
          .m58_axis_tdata   (m58_axis_tdata),
          .m58_axis_tvalid  (m58_axis_tvalid),
          .m58_axis_tlast   (m58_axis_tlast),  
          .s59_axis_tready  (s59_axis_tready),
          .s59_axis_tdata   (s59_axis_tdata),
          .s59_axis_tvalid  (s59_axis_tvalid),
          .s59_axis_tlast   (s59_axis_tlast),
          .m59_axis_tready  (m59_axis_tready),
          .m59_axis_tdata   (m59_axis_tdata),
          .m59_axis_tvalid  (m59_axis_tvalid),
          .m59_axis_tlast   (m59_axis_tlast),  
          .s60_axis_tready  (s60_axis_tready),
          .s60_axis_tdata   (s60_axis_tdata),
          .s60_axis_tvalid  (s60_axis_tvalid),
          .s60_axis_tlast   (s60_axis_tlast),
          .m60_axis_tready  (m60_axis_tready),
          .m60_axis_tdata   (m60_axis_tdata),
          .m60_axis_tvalid  (m60_axis_tvalid),
          .m60_axis_tlast   (m60_axis_tlast),  
          .s61_axis_tready  (s61_axis_tready),
          .s61_axis_tdata   (s61_axis_tdata),
          .s61_axis_tvalid  (s61_axis_tvalid),
          .s61_axis_tlast   (s61_axis_tlast),
          .m61_axis_tready  (m61_axis_tready),
          .m61_axis_tdata   (m61_axis_tdata),
          .m61_axis_tvalid  (m61_axis_tvalid),
          .m61_axis_tlast   (m61_axis_tlast), 
          .s62_axis_tready  (s62_axis_tready),
          .s62_axis_tdata   (s62_axis_tdata),
          .s62_axis_tvalid  (s62_axis_tvalid),
          .s62_axis_tlast   (s62_axis_tlast),
          .m62_axis_tready  (m62_axis_tready),
          .m62_axis_tdata   (m62_axis_tdata),
          .m62_axis_tvalid  (m62_axis_tvalid),
          .m62_axis_tlast   (m62_axis_tlast),  
          .s63_axis_tready  (s63_axis_tready),
          .s63_axis_tdata   (s63_axis_tdata),
          .s63_axis_tvalid  (s63_axis_tvalid),
          .s63_axis_tlast   (s63_axis_tlast),
          .m63_axis_tready  (m63_axis_tready),
          .m63_axis_tdata   (m63_axis_tdata),
          .m63_axis_tvalid  (m63_axis_tvalid),
          .m63_axis_tlast   (m63_axis_tlast) 
         );

       generate
         if (C_EN_FALLBACK == 0)
         begin
           assign s_axi_awready = s_axi_awready_i;
           assign s_axi_arready = s_axi_arready_i;
           assign s_axi_wready = s_axi_wready_i;
           assign s_axi_bresp = s_axi_bresp_i;
           assign s_axi_bvalid = s_axi_bvalid_i;
           assign s_axi_bid = s_axi_bid_i;
           assign s_axi_rvalid = s_axi_rvalid_i;
           assign s_axi_rdata = s_axi_rdata_i;
           assign s_axi_rresp = s_axi_rresp_i;
           assign s_axi_rid = s_axi_rid_i;
           assign s_axi_rlast = s_axi_rlast_i;
         end
         else
         begin
           assign s0_axi_awready = s_axi_awready_i;
           assign s0_axi_arready = s_axi_arready_i;
           assign s0_axi_wready = s_axi_wready_i;
           assign s0_axi_bresp = s_axi_bresp_i;
           assign s0_axi_bvalid = s_axi_bvalid_i;
           assign s0_axi_bid = s_axi_bid_i;
           assign s0_axi_rvalid = s_axi_rvalid_i;
           assign s0_axi_rdata = s_axi_rdata_i;
           assign s0_axi_rresp = s_axi_rresp_i;
           assign s0_axi_rid = s_axi_rid_i;
           assign s0_axi_rlast = s_axi_rlast_i;
         end
       endgenerate



endmodule
