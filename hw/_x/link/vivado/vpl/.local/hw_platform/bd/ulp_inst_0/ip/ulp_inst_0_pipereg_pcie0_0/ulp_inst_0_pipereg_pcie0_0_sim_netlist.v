// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Dec  5 00:18:04 2022
// Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
// Command     : write_verilog -force -mode funcsim
//               /proj/ipeng-nobkup/ccase/platforms/p4/Platforms_ccase_vck5000_dev0/Platforms/sources/vck5000/chassis/gen4x8_qdma/2/build_1205a_dbg_hub_fw_flop/hardware/xilinx_vck5000_gen4x8_qdma_base_2/xilinx_vck5000_gen4x8_qdma_base_2.gen/sources_1/bd/top/bd/ulp_inst_0/ip/ulp_inst_0_pipereg_pcie0_0/ulp_inst_0_pipereg_pcie0_0_sim_netlist.v
// Design      : ulp_inst_0_pipereg_pcie0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvc1902-vsvd1760-2MP-e-S
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ulp_inst_0_pipereg_pcie0_0,util_ff_v1_0_1_util_ff,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_ff_v1_0_1_util_ff,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module ulp_inst_0_pipereg_pcie0_0
   (clk,
    D,
    Q,
    reset,
    clk_enable);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 249999985, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_4885_pspmc_0_0_pl2_ref_clk, INSERT_VIP 0" *) input clk;
  input [0:0]D;
  output [0:0]Q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input clk_enable;

  wire [0:0]D;
  wire [0:0]Q;
  wire clk;
  wire clk_enable;
  wire reset;

  (* C_CLR_INVERTED = "1'b0" *) 
  (* C_C_INVERTED = "1'b0" *) 
  (* C_D_INVERTED = "1'b0" *) 
  (* C_FF_LEVELS = "1" *) 
  (* C_FF_TYPE = "1" *) 
  (* C_G_INVERTED = "1'b0" *) 
  (* C_INIT = "1'b0" *) 
  (* C_PRE_INVERTED = "1'b0" *) 
  (* C_R_INVERTED = "1'b1" *) 
  (* C_S_INVERTED = "1'b0" *) 
  (* C_WIDTH = "1" *) 
  ulp_inst_0_pipereg_pcie0_0_util_ff_v1_0_1_util_ff inst
       (.D(D),
        .G(1'b0),
        .Q(Q),
        .clear(1'b0),
        .clk(clk),
        .clk_enable(clk_enable),
        .gate_enable(1'b1),
        .preset(1'b0),
        .reset(reset),
        .set(1'b0));
endmodule

(* C_CLR_INVERTED = "1'b0" *) (* C_C_INVERTED = "1'b0" *) (* C_D_INVERTED = "1'b0" *) 
(* C_FF_LEVELS = "1" *) (* C_FF_TYPE = "1" *) (* C_G_INVERTED = "1'b0" *) 
(* C_INIT = "1'b0" *) (* C_PRE_INVERTED = "1'b0" *) (* C_R_INVERTED = "1'b1" *) 
(* C_S_INVERTED = "1'b0" *) (* C_WIDTH = "1" *) (* ORIG_REF_NAME = "util_ff_v1_0_1_util_ff" *) 
module ulp_inst_0_pipereg_pcie0_0_util_ff_v1_0_1_util_ff
   (D,
    clk,
    set,
    clear,
    reset,
    preset,
    clk_enable,
    gate_enable,
    G,
    Q);
  input [0:0]D;
  input clk;
  input set;
  input clear;
  input reset;
  input preset;
  input clk_enable;
  input gate_enable;
  input G;
  output [0:0]Q;

  wire [0:0]D;
  wire [0:0]Q;
  wire clk;
  wire clk_enable;
  wire reset;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[0].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D),
        .Q(Q),
        .R(reset));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
