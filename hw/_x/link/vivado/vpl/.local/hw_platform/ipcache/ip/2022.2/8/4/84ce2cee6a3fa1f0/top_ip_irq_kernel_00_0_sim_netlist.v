// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Dec  5 00:18:07 2022
// Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_ip_irq_kernel_00_0_sim_netlist.v
// Design      : top_ip_irq_kernel_00_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvc1902-vsvd1760-2MP-e-S
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_ip_irq_kernel_00_0,util_ff_v1_0_1_util_ff,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_ff_v1_0_1_util_ff,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    D,
    Q,
    reset,
    clk_enable);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 99999992, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_4885_pspmc_0_0_pl0_ref_clk, INSERT_VIP 0" *) input clk;
  input [127:0]D;
  output [127:0]Q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input clk_enable;

  wire [127:0]D;
  wire [127:0]Q;
  wire clk;
  wire clk_enable;
  wire reset;

  (* C_CLR_INVERTED = "1'b0" *) 
  (* C_C_INVERTED = "1'b0" *) 
  (* C_D_INVERTED = "1'b0" *) 
  (* C_FF_LEVELS = "1" *) 
  (* C_FF_TYPE = "1" *) 
  (* C_G_INVERTED = "1'b0" *) 
  (* C_INIT = "128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_PRE_INVERTED = "1'b0" *) 
  (* C_R_INVERTED = "1'b1" *) 
  (* C_S_INVERTED = "1'b0" *) 
  (* C_WIDTH = "128" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ff_v1_0_1_util_ff inst
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
(* C_INIT = "128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) (* C_PRE_INVERTED = "1'b0" *) (* C_R_INVERTED = "1'b1" *) 
(* C_S_INVERTED = "1'b0" *) (* C_WIDTH = "128" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ff_v1_0_1_util_ff
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
  input [127:0]D;
  input clk;
  input set;
  input clear;
  input reset;
  input preset;
  input clk_enable;
  input gate_enable;
  input G;
  output [127:0]Q;

  wire [127:0]D;
  wire [127:0]Q;
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
        .D(D[0]),
        .Q(Q[0]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[100].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[100]),
        .Q(Q[100]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[101].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[101]),
        .Q(Q[101]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[102].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[102]),
        .Q(Q[102]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[103].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[103]),
        .Q(Q[103]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[104].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[104]),
        .Q(Q[104]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[105].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[105]),
        .Q(Q[105]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[106].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[106]),
        .Q(Q[106]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[107].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[107]),
        .Q(Q[107]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[108].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[108]),
        .Q(Q[108]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[109].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[109]),
        .Q(Q[109]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[10].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[10]),
        .Q(Q[10]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[110].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[110]),
        .Q(Q[110]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[111].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[111]),
        .Q(Q[111]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[112].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[112]),
        .Q(Q[112]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[113].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[113]),
        .Q(Q[113]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[114].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[114]),
        .Q(Q[114]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[115].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[115]),
        .Q(Q[115]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[116].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[116]),
        .Q(Q[116]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[117].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[117]),
        .Q(Q[117]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[118].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[118]),
        .Q(Q[118]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[119].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[119]),
        .Q(Q[119]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[11].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[11]),
        .Q(Q[11]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[120].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[120]),
        .Q(Q[120]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[121].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[121]),
        .Q(Q[121]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[122].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[122]),
        .Q(Q[122]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[123].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[123]),
        .Q(Q[123]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[124].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[124]),
        .Q(Q[124]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[125].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[125]),
        .Q(Q[125]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[126].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[126]),
        .Q(Q[126]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[127].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[127]),
        .Q(Q[127]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[12].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[12]),
        .Q(Q[12]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[13].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[13]),
        .Q(Q[13]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[14].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[14]),
        .Q(Q[14]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[15].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[15]),
        .Q(Q[15]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[16].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[16]),
        .Q(Q[16]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[17].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[17]),
        .Q(Q[17]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[18].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[18]),
        .Q(Q[18]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[19].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[19]),
        .Q(Q[19]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[1].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[1]),
        .Q(Q[1]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[20].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[20]),
        .Q(Q[20]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[21].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[21]),
        .Q(Q[21]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[22].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[22]),
        .Q(Q[22]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[23].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[23]),
        .Q(Q[23]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[24].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[24]),
        .Q(Q[24]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[25].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[25]),
        .Q(Q[25]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[26].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[26]),
        .Q(Q[26]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[27].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[27]),
        .Q(Q[27]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[28].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[28]),
        .Q(Q[28]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[29].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[29]),
        .Q(Q[29]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[2].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[2]),
        .Q(Q[2]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[30].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[30]),
        .Q(Q[30]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[31].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[31]),
        .Q(Q[31]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[32].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[32]),
        .Q(Q[32]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[33].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[33]),
        .Q(Q[33]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[34].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[34]),
        .Q(Q[34]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[35].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[35]),
        .Q(Q[35]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[36].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[36]),
        .Q(Q[36]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[37].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[37]),
        .Q(Q[37]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[38].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[38]),
        .Q(Q[38]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[39].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[39]),
        .Q(Q[39]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[3].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[3]),
        .Q(Q[3]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[40].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[40]),
        .Q(Q[40]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[41].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[41]),
        .Q(Q[41]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[42].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[42]),
        .Q(Q[42]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[43].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[43]),
        .Q(Q[43]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[44].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[44]),
        .Q(Q[44]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[45].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[45]),
        .Q(Q[45]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[46].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[46]),
        .Q(Q[46]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[47].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[47]),
        .Q(Q[47]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[48].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[48]),
        .Q(Q[48]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[49].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[49]),
        .Q(Q[49]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[4].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[4]),
        .Q(Q[4]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[50].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[50]),
        .Q(Q[50]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[51].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[51]),
        .Q(Q[51]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[52].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[52]),
        .Q(Q[52]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[53].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[53]),
        .Q(Q[53]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[54].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[54]),
        .Q(Q[54]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[55].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[55]),
        .Q(Q[55]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[56].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[56]),
        .Q(Q[56]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[57].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[57]),
        .Q(Q[57]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[58].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[58]),
        .Q(Q[58]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[59].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[59]),
        .Q(Q[59]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[5].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[5]),
        .Q(Q[5]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[60].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[60]),
        .Q(Q[60]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[61].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[61]),
        .Q(Q[61]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[62].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[62]),
        .Q(Q[62]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[63].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[63]),
        .Q(Q[63]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[64].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[64]),
        .Q(Q[64]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[65].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[65]),
        .Q(Q[65]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[66].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[66]),
        .Q(Q[66]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[67].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[67]),
        .Q(Q[67]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[68].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[68]),
        .Q(Q[68]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[69].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[69]),
        .Q(Q[69]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[6].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[6]),
        .Q(Q[6]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[70].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[70]),
        .Q(Q[70]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[71].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[71]),
        .Q(Q[71]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[72].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[72]),
        .Q(Q[72]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[73].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[73]),
        .Q(Q[73]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[74].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[74]),
        .Q(Q[74]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[75].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[75]),
        .Q(Q[75]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[76].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[76]),
        .Q(Q[76]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[77].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[77]),
        .Q(Q[77]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[78].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[78]),
        .Q(Q[78]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[79].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[79]),
        .Q(Q[79]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[7].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[7]),
        .Q(Q[7]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[80].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[80]),
        .Q(Q[80]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[81].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[81]),
        .Q(Q[81]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[82].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[82]),
        .Q(Q[82]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[83].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[83]),
        .Q(Q[83]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[84].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[84]),
        .Q(Q[84]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[85].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[85]),
        .Q(Q[85]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[86].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[86]),
        .Q(Q[86]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[87].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[87]),
        .Q(Q[87]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[88].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[88]),
        .Q(Q[88]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[89].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[89]),
        .Q(Q[89]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[8].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[8]),
        .Q(Q[8]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[90].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[90]),
        .Q(Q[90]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[91].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[91]),
        .Q(Q[91]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[92].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[92]),
        .Q(Q[92]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[93].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[93]),
        .Q(Q[93]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[94].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[94]),
        .Q(Q[94]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[95].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[95]),
        .Q(Q[95]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[96].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[96]),
        .Q(Q[96]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[97].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[97]),
        .Q(Q[97]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[98].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[98]),
        .Q(Q[98]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[99].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[99]),
        .Q(Q[99]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \FDRE.FDRElp[9].FDRE_inst 
       (.C(clk),
        .CE(clk_enable),
        .D(D[9]),
        .Q(Q[9]),
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
