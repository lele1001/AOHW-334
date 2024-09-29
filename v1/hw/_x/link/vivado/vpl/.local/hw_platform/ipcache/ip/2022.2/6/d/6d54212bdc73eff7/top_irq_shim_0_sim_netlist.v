// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Dec  5 00:21:02 2022
// Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_irq_shim_0_sim_netlist.v
// Design      : top_irq_shim_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvc1902-vsvd1760-2MP-e-S
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_irq_shim
   (irq_req,
    irq_in,
    clk,
    irq_ack,
    rstn);
  output [15:0]irq_req;
  input [15:0]irq_in;
  input clk;
  input [15:0]irq_ack;
  input rstn;

  wire clk;
  wire \dest_reg_reg_n_0_[0] ;
  wire \dest_reg_reg_n_0_[10] ;
  wire \dest_reg_reg_n_0_[11] ;
  wire \dest_reg_reg_n_0_[12] ;
  wire \dest_reg_reg_n_0_[13] ;
  wire \dest_reg_reg_n_0_[14] ;
  wire \dest_reg_reg_n_0_[1] ;
  wire \dest_reg_reg_n_0_[2] ;
  wire \dest_reg_reg_n_0_[3] ;
  wire \dest_reg_reg_n_0_[4] ;
  wire \dest_reg_reg_n_0_[5] ;
  wire \dest_reg_reg_n_0_[6] ;
  wire \dest_reg_reg_n_0_[7] ;
  wire \dest_reg_reg_n_0_[8] ;
  wire \dest_reg_reg_n_0_[9] ;
  wire [15:0]irq_ack;
  wire [15:0]irq_in;
  wire [15:0]irq_req;
  wire \irq_req[0]_i_1_n_0 ;
  wire \irq_req[10]_i_1_n_0 ;
  wire \irq_req[11]_i_1_n_0 ;
  wire \irq_req[12]_i_1_n_0 ;
  wire \irq_req[13]_i_1_n_0 ;
  wire \irq_req[14]_i_1_n_0 ;
  wire \irq_req[15]_i_2_n_0 ;
  wire \irq_req[1]_i_1_n_0 ;
  wire \irq_req[2]_i_1_n_0 ;
  wire \irq_req[3]_i_1_n_0 ;
  wire \irq_req[4]_i_1_n_0 ;
  wire \irq_req[5]_i_1_n_0 ;
  wire \irq_req[6]_i_1_n_0 ;
  wire \irq_req[7]_i_1_n_0 ;
  wire \irq_req[8]_i_1_n_0 ;
  wire \irq_req[9]_i_1_n_0 ;
  wire p_0_in;
  wire p_0_in_0;
  wire p_1_in;
  wire p_1_in10_in;
  wire p_1_in13_in;
  wire p_1_in16_in;
  wire p_1_in19_in;
  wire p_1_in1_in;
  wire p_1_in22_in;
  wire p_1_in25_in;
  wire p_1_in28_in;
  wire p_1_in31_in;
  wire p_1_in34_in;
  wire p_1_in37_in;
  wire p_1_in40_in;
  wire p_1_in43_in;
  wire p_1_in4_in;
  wire p_1_in7_in;
  wire rstn;

  FDRE #(
    .INIT(1'b0)) 
    \dest_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in),
        .Q(\dest_reg_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \dest_reg_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in28_in),
        .Q(\dest_reg_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \dest_reg_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in31_in),
        .Q(\dest_reg_reg_n_0_[11] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \dest_reg_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in34_in),
        .Q(\dest_reg_reg_n_0_[12] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \dest_reg_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in37_in),
        .Q(\dest_reg_reg_n_0_[13] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \dest_reg_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in40_in),
        .Q(\dest_reg_reg_n_0_[14] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \dest_reg_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in43_in),
        .Q(p_0_in_0),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \dest_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in1_in),
        .Q(\dest_reg_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \dest_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in4_in),
        .Q(\dest_reg_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \dest_reg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in7_in),
        .Q(\dest_reg_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \dest_reg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in10_in),
        .Q(\dest_reg_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \dest_reg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in13_in),
        .Q(\dest_reg_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \dest_reg_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in16_in),
        .Q(\dest_reg_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \dest_reg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in19_in),
        .Q(\dest_reg_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \dest_reg_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in22_in),
        .Q(\dest_reg_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \dest_reg_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in25_in),
        .Q(\dest_reg_reg_n_0_[9] ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h4F44)) 
    \irq_req[0]_i_1 
       (.I0(\dest_reg_reg_n_0_[0] ),
        .I1(p_1_in),
        .I2(irq_ack[0]),
        .I3(irq_req[0]),
        .O(\irq_req[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \irq_req[10]_i_1 
       (.I0(\dest_reg_reg_n_0_[10] ),
        .I1(p_1_in28_in),
        .I2(irq_ack[10]),
        .I3(irq_req[10]),
        .O(\irq_req[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \irq_req[11]_i_1 
       (.I0(\dest_reg_reg_n_0_[11] ),
        .I1(p_1_in31_in),
        .I2(irq_ack[11]),
        .I3(irq_req[11]),
        .O(\irq_req[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \irq_req[12]_i_1 
       (.I0(\dest_reg_reg_n_0_[12] ),
        .I1(p_1_in34_in),
        .I2(irq_ack[12]),
        .I3(irq_req[12]),
        .O(\irq_req[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \irq_req[13]_i_1 
       (.I0(\dest_reg_reg_n_0_[13] ),
        .I1(p_1_in37_in),
        .I2(irq_ack[13]),
        .I3(irq_req[13]),
        .O(\irq_req[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \irq_req[14]_i_1 
       (.I0(\dest_reg_reg_n_0_[14] ),
        .I1(p_1_in40_in),
        .I2(irq_ack[14]),
        .I3(irq_req[14]),
        .O(\irq_req[14]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \irq_req[15]_i_1 
       (.I0(rstn),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'h4F44)) 
    \irq_req[15]_i_2 
       (.I0(p_0_in_0),
        .I1(p_1_in43_in),
        .I2(irq_ack[15]),
        .I3(irq_req[15]),
        .O(\irq_req[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \irq_req[1]_i_1 
       (.I0(\dest_reg_reg_n_0_[1] ),
        .I1(p_1_in1_in),
        .I2(irq_ack[1]),
        .I3(irq_req[1]),
        .O(\irq_req[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \irq_req[2]_i_1 
       (.I0(\dest_reg_reg_n_0_[2] ),
        .I1(p_1_in4_in),
        .I2(irq_ack[2]),
        .I3(irq_req[2]),
        .O(\irq_req[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \irq_req[3]_i_1 
       (.I0(\dest_reg_reg_n_0_[3] ),
        .I1(p_1_in7_in),
        .I2(irq_ack[3]),
        .I3(irq_req[3]),
        .O(\irq_req[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \irq_req[4]_i_1 
       (.I0(\dest_reg_reg_n_0_[4] ),
        .I1(p_1_in10_in),
        .I2(irq_ack[4]),
        .I3(irq_req[4]),
        .O(\irq_req[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \irq_req[5]_i_1 
       (.I0(\dest_reg_reg_n_0_[5] ),
        .I1(p_1_in13_in),
        .I2(irq_ack[5]),
        .I3(irq_req[5]),
        .O(\irq_req[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \irq_req[6]_i_1 
       (.I0(\dest_reg_reg_n_0_[6] ),
        .I1(p_1_in16_in),
        .I2(irq_ack[6]),
        .I3(irq_req[6]),
        .O(\irq_req[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \irq_req[7]_i_1 
       (.I0(\dest_reg_reg_n_0_[7] ),
        .I1(p_1_in19_in),
        .I2(irq_ack[7]),
        .I3(irq_req[7]),
        .O(\irq_req[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \irq_req[8]_i_1 
       (.I0(\dest_reg_reg_n_0_[8] ),
        .I1(p_1_in22_in),
        .I2(irq_ack[8]),
        .I3(irq_req[8]),
        .O(\irq_req[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \irq_req[9]_i_1 
       (.I0(\dest_reg_reg_n_0_[9] ),
        .I1(p_1_in25_in),
        .I2(irq_ack[9]),
        .I3(irq_req[9]),
        .O(\irq_req[9]_i_1_n_0 ));
  FDRE \irq_req_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\irq_req[0]_i_1_n_0 ),
        .Q(irq_req[0]),
        .R(p_0_in));
  FDRE \irq_req_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\irq_req[10]_i_1_n_0 ),
        .Q(irq_req[10]),
        .R(p_0_in));
  FDRE \irq_req_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\irq_req[11]_i_1_n_0 ),
        .Q(irq_req[11]),
        .R(p_0_in));
  FDRE \irq_req_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\irq_req[12]_i_1_n_0 ),
        .Q(irq_req[12]),
        .R(p_0_in));
  FDRE \irq_req_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\irq_req[13]_i_1_n_0 ),
        .Q(irq_req[13]),
        .R(p_0_in));
  FDRE \irq_req_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\irq_req[14]_i_1_n_0 ),
        .Q(irq_req[14]),
        .R(p_0_in));
  FDRE \irq_req_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\irq_req[15]_i_2_n_0 ),
        .Q(irq_req[15]),
        .R(p_0_in));
  FDRE \irq_req_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\irq_req[1]_i_1_n_0 ),
        .Q(irq_req[1]),
        .R(p_0_in));
  FDRE \irq_req_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\irq_req[2]_i_1_n_0 ),
        .Q(irq_req[2]),
        .R(p_0_in));
  FDRE \irq_req_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\irq_req[3]_i_1_n_0 ),
        .Q(irq_req[3]),
        .R(p_0_in));
  FDRE \irq_req_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\irq_req[4]_i_1_n_0 ),
        .Q(irq_req[4]),
        .R(p_0_in));
  FDRE \irq_req_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\irq_req[5]_i_1_n_0 ),
        .Q(irq_req[5]),
        .R(p_0_in));
  FDRE \irq_req_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\irq_req[6]_i_1_n_0 ),
        .Q(irq_req[6]),
        .R(p_0_in));
  FDRE \irq_req_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\irq_req[7]_i_1_n_0 ),
        .Q(irq_req[7]),
        .R(p_0_in));
  FDRE \irq_req_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\irq_req[8]_i_1_n_0 ),
        .Q(irq_req[8]),
        .R(p_0_in));
  FDRE \irq_req_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\irq_req[9]_i_1_n_0 ),
        .Q(irq_req[9]),
        .R(p_0_in));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "16" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single xpm_cdc_array_single_inst
       (.dest_clk(clk),
        .dest_out({p_1_in43_in,p_1_in40_in,p_1_in37_in,p_1_in34_in,p_1_in31_in,p_1_in28_in,p_1_in25_in,p_1_in22_in,p_1_in19_in,p_1_in16_in,p_1_in13_in,p_1_in10_in,p_1_in7_in,p_1_in4_in,p_1_in1_in,p_1_in}),
        .src_clk(1'b0),
        .src_in(irq_in));
endmodule

(* CHECK_LICENSE_TYPE = "top_irq_shim_0,irq_shim,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "irq_shim,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rstn,
    irq_in,
    irq_req,
    irq_ack);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_4885_cpm_0_0_pcie0_user_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  input [15:0]irq_in;
  output [15:0]irq_req;
  input [15:0]irq_ack;

  wire clk;
  wire [15:0]irq_ack;
  wire [15:0]irq_in;
  wire [15:0]irq_req;
  wire rstn;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_irq_shim inst
       (.clk(clk),
        .irq_ack(irq_ack),
        .irq_in(irq_in),
        .irq_req(irq_req),
        .rstn(rstn));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* WIDTH = "16" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [15:0]src_in;
  input dest_clk;
  output [15:0]dest_out;

  wire [15:0]async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [15:0]\syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [15:0]\syncstages_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [15:0]\syncstages_ff[2] ;

  assign async_path_bit = src_in[15:0];
  assign dest_out[15:0] = \syncstages_ff[2] ;
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[0]),
        .Q(\syncstages_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[10]),
        .Q(\syncstages_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[11]),
        .Q(\syncstages_ff[0] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][12] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[12]),
        .Q(\syncstages_ff[0] [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][13] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[13]),
        .Q(\syncstages_ff[0] [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][14] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[14]),
        .Q(\syncstages_ff[0] [14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][15] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[15]),
        .Q(\syncstages_ff[0] [15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[1]),
        .Q(\syncstages_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[2]),
        .Q(\syncstages_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[3]),
        .Q(\syncstages_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[4]),
        .Q(\syncstages_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[5]),
        .Q(\syncstages_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[6]),
        .Q(\syncstages_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[7]),
        .Q(\syncstages_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[8]),
        .Q(\syncstages_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[9]),
        .Q(\syncstages_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [0]),
        .Q(\syncstages_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [10]),
        .Q(\syncstages_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [11]),
        .Q(\syncstages_ff[1] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][12] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [12]),
        .Q(\syncstages_ff[1] [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][13] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [13]),
        .Q(\syncstages_ff[1] [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][14] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [14]),
        .Q(\syncstages_ff[1] [14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][15] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [15]),
        .Q(\syncstages_ff[1] [15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [1]),
        .Q(\syncstages_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [2]),
        .Q(\syncstages_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [3]),
        .Q(\syncstages_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [4]),
        .Q(\syncstages_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [5]),
        .Q(\syncstages_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [6]),
        .Q(\syncstages_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [7]),
        .Q(\syncstages_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [8]),
        .Q(\syncstages_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [9]),
        .Q(\syncstages_ff[1] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [0]),
        .Q(\syncstages_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [10]),
        .Q(\syncstages_ff[2] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [11]),
        .Q(\syncstages_ff[2] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][12] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [12]),
        .Q(\syncstages_ff[2] [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][13] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [13]),
        .Q(\syncstages_ff[2] [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][14] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [14]),
        .Q(\syncstages_ff[2] [14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][15] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [15]),
        .Q(\syncstages_ff[2] [15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [1]),
        .Q(\syncstages_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [2]),
        .Q(\syncstages_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [3]),
        .Q(\syncstages_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [4]),
        .Q(\syncstages_ff[2] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [5]),
        .Q(\syncstages_ff[2] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [6]),
        .Q(\syncstages_ff[2] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [7]),
        .Q(\syncstages_ff[2] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [8]),
        .Q(\syncstages_ff[2] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [9]),
        .Q(\syncstages_ff[2] [9]),
        .R(1'b0));
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
