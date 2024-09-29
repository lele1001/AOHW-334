// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Dec  5 00:21:24 2022
// Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_shell_utils_ucc_0_sim_netlist.v
// Design      : top_shell_utils_ucc_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvc1902-vsvd1760-2MP-e-S
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_ucc_v1_0_0_aclk_kernel
   (CLK,
    aclk_kernel_cont_01,
    aclk_kernel_01,
    rst_async_kernel_01,
    ext_tog_ctrl_kernel_01_out,
    power_down_out_d1,
    \syncstages_ff_reg[0] ,
    p_6_in,
    src_in,
    aresetn_ctrl,
    \arststages_ff_reg[0] ,
    \arststages_ff_reg[0]_0 ,
    shutdown_latch,
    clk_in_kernel_01,
    ext_tog_ctrl_kernel_01_in,
    ext_tog_ctrl_kernel_01_enable);
  output CLK;
  output aclk_kernel_cont_01;
  output aclk_kernel_01;
  output rst_async_kernel_01;
  output ext_tog_ctrl_kernel_01_out;
  output power_down_out_d1;
  input \syncstages_ff_reg[0] ;
  input [8:0]p_6_in;
  input src_in;
  input aresetn_ctrl;
  input \arststages_ff_reg[0] ;
  input \arststages_ff_reg[0]_0 ;
  input shutdown_latch;
  input clk_in_kernel_01;
  input ext_tog_ctrl_kernel_01_in;
  input ext_tog_ctrl_kernel_01_enable;

  wire CLK;
  wire aclk_kernel_01;
  wire aclk_kernel_cont_01;
  wire aresetn_ctrl;
  wire \arststages_ff_reg[0] ;
  wire \arststages_ff_reg[0]_0 ;
  wire clk_in_kernel_01;
  wire ext_tog_ctrl_kernel_01_enable;
  wire ext_tog_ctrl_kernel_01_in;
  wire ext_tog_ctrl_kernel_01_out;
  wire [8:0]p_6_in;
  wire power_down_out_d1;
  wire rst_async_kernel_01;
  wire shutdown_latch;
  wire src_in;
  wire \syncstages_ff_reg[0] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_ucc_v1_0_0_clock_throttling clock_throttling_aclk_kernel_00
       (.ICCLK_0(CLK),
        .aclk_kernel_01(aclk_kernel_01),
        .aclk_kernel_cont_01(aclk_kernel_cont_01),
        .aresetn_ctrl(aresetn_ctrl),
        .\arststages_ff_reg[0] (\arststages_ff_reg[0] ),
        .\arststages_ff_reg[0]_0 (\arststages_ff_reg[0]_0 ),
        .clk_in_kernel_01(clk_in_kernel_01),
        .ext_tog_ctrl_kernel_01_enable(ext_tog_ctrl_kernel_01_enable),
        .ext_tog_ctrl_kernel_01_in(ext_tog_ctrl_kernel_01_in),
        .ext_tog_ctrl_kernel_01_out(ext_tog_ctrl_kernel_01_out),
        .p_6_in(p_6_in),
        .power_down_out_d1(power_down_out_d1),
        .rst_async_kernel_01(rst_async_kernel_01),
        .shutdown_latch(shutdown_latch),
        .src_in(src_in),
        .\syncstages_ff_reg[0] (\syncstages_ff_reg[0] ));
endmodule

(* ORIG_REF_NAME = "shell_utils_ucc_v1_0_0_aclk_kernel" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_ucc_v1_0_0_aclk_kernel__xdcDup__1
   (CLK,
    aclk_kernel_cont_00,
    aclk_kernel_00,
    rst_async_kernel_00,
    ext_tog_ctrl_kernel_00_out,
    power_down_out_d1,
    \syncstages_ff_reg[0] ,
    p_6_in,
    src_in,
    aresetn_ctrl,
    src_arst,
    \arststages_ff_reg[0] ,
    shutdown_latch,
    clk_in_kernel_00,
    ext_tog_ctrl_kernel_00_in,
    ext_tog_ctrl_kernel_00_enable);
  output CLK;
  output aclk_kernel_cont_00;
  output aclk_kernel_00;
  output rst_async_kernel_00;
  output ext_tog_ctrl_kernel_00_out;
  output power_down_out_d1;
  input \syncstages_ff_reg[0] ;
  input [8:0]p_6_in;
  input src_in;
  input aresetn_ctrl;
  input src_arst;
  input \arststages_ff_reg[0] ;
  input shutdown_latch;
  input clk_in_kernel_00;
  input ext_tog_ctrl_kernel_00_in;
  input ext_tog_ctrl_kernel_00_enable;

  wire CLK;
  wire aclk_kernel_00;
  wire aclk_kernel_cont_00;
  wire aresetn_ctrl;
  wire \arststages_ff_reg[0] ;
  wire clk_in_kernel_00;
  wire ext_tog_ctrl_kernel_00_enable;
  wire ext_tog_ctrl_kernel_00_in;
  wire ext_tog_ctrl_kernel_00_out;
  wire [8:0]p_6_in;
  wire power_down_out_d1;
  wire rst_async_kernel_00;
  wire shutdown_latch;
  wire src_arst;
  wire src_in;
  wire \syncstages_ff_reg[0] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_ucc_v1_0_0_clock_throttling__xdcDup__1 clock_throttling_aclk_kernel_00
       (.ICCLK_0(CLK),
        .aclk_kernel_00(aclk_kernel_00),
        .aclk_kernel_cont_00(aclk_kernel_cont_00),
        .aresetn_ctrl(aresetn_ctrl),
        .\arststages_ff_reg[0] (\arststages_ff_reg[0] ),
        .clk_in_kernel_00(clk_in_kernel_00),
        .ext_tog_ctrl_kernel_00_enable(ext_tog_ctrl_kernel_00_enable),
        .ext_tog_ctrl_kernel_00_in(ext_tog_ctrl_kernel_00_in),
        .ext_tog_ctrl_kernel_00_out(ext_tog_ctrl_kernel_00_out),
        .p_6_in(p_6_in),
        .power_down_out_d1(power_down_out_d1),
        .rst_async_kernel_00(rst_async_kernel_00),
        .shutdown_latch(shutdown_latch),
        .src_arst(src_arst),
        .src_in(src_in),
        .\syncstages_ff_reg[0] (\syncstages_ff_reg[0] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_ucc_v1_0_0_clock_throttling
   (ICCLK_0,
    aclk_kernel_cont_01,
    aclk_kernel_01,
    rst_async_kernel_01,
    ext_tog_ctrl_kernel_01_out,
    power_down_out_d1,
    \syncstages_ff_reg[0] ,
    p_6_in,
    src_in,
    aresetn_ctrl,
    \arststages_ff_reg[0] ,
    \arststages_ff_reg[0]_0 ,
    shutdown_latch,
    clk_in_kernel_01,
    ext_tog_ctrl_kernel_01_in,
    ext_tog_ctrl_kernel_01_enable);
  output ICCLK_0;
  output aclk_kernel_cont_01;
  output aclk_kernel_01;
  output rst_async_kernel_01;
  output ext_tog_ctrl_kernel_01_out;
  output power_down_out_d1;
  input \syncstages_ff_reg[0] ;
  input [8:0]p_6_in;
  input src_in;
  input aresetn_ctrl;
  input \arststages_ff_reg[0] ;
  input \arststages_ff_reg[0]_0 ;
  input shutdown_latch;
  input clk_in_kernel_01;
  input ext_tog_ctrl_kernel_01_in;
  input ext_tog_ctrl_kernel_01_enable;

  wire Ext_Tog_En_SW_cdc;
  wire Ext_Tog_En_SW_ret;
  wire Ext_Tog_Out_int_i_1__0_n_0;
  (* DONT_TOUCH *) wire Gate_Div;
  (* DONT_TOUCH *) wire Gate_Div_d1;
  wire Gate_Div_i_1__0_n_0;
  (* DONT_TOUCH *) wire Gate_Fast;
  (* DONT_TOUCH *) wire Gate_Fast_d1;
  wire Gate_Fast_i_1__0_n_0;
  wire ICCLK_0;
  wire Last_Ext_Tog_In;
  wire Last_Rate_Upd_Tog_CDC;
  wire Locked_cdc;
  wire Locked_ret;
  wire \Mbufg_Clrb_SR_reg_n_0_[1] ;
  wire \Mbufg_Clrb_SR_reg_n_0_[2] ;
  wire \Mbufg_Clrb_SR_reg_n_0_[3] ;
  wire \Mbufg_Clrb_SR_reg_n_0_[4] ;
  wire \Mbufg_Clrb_SR_reg_n_0_[5] ;
  wire \Mbufg_Clrb_SR_reg_n_0_[6] ;
  wire \Mbufg_Clrb_SR_reg_n_0_[7] ;
  wire \Mbufg_Clrb_SR_reg_n_0_[8] ;
  wire [7:0]Rate_In_CDC;
  wire Rate_Lim0;
  wire \Rate_Lim_reg_n_0_[0] ;
  wire \Rate_Lim_reg_n_0_[1] ;
  wire \Rate_Lim_reg_n_0_[2] ;
  wire \Rate_Lim_reg_n_0_[3] ;
  wire \Rate_Lim_reg_n_0_[4] ;
  wire \Rate_Lim_reg_n_0_[5] ;
  wire \Rate_Lim_reg_n_0_[6] ;
  wire \Rate_Lim_reg_n_0_[7] ;
  wire Rate_Upd0;
  wire Rate_Upd_reg_n_0;
  wire \Rate_int[7]_i_1__0_n_0 ;
  wire \Rate_int_reg_n_0_[0] ;
  wire \Rate_int_reg_n_0_[1] ;
  wire \Rate_int_reg_n_0_[2] ;
  wire \Rate_int_reg_n_0_[3] ;
  wire \Rate_int_reg_n_0_[4] ;
  wire \Rate_int_reg_n_0_[5] ;
  wire \Rate_int_reg_n_0_[6] ;
  wire \Rate_int_reg_n_0_[7] ;
  wire Rst_In_ret;
  wire Rst_Int0__0;
  wire Shutdown_Latch_CDC;
  wire Startup_Done_cdc;
  wire Startup_Done_ret;
  wire \Synth_reg[0]_i_1_n_0 ;
  wire \Synth_reg[0]_i_1_n_1 ;
  wire \Synth_reg[0]_i_1_n_2 ;
  wire \Synth_reg[0]_i_1_n_3 ;
  wire \Synth_reg[1]_i_1_n_0 ;
  wire \Synth_reg[1]_i_1_n_1 ;
  wire \Synth_reg[1]_i_1_n_2 ;
  wire \Synth_reg[1]_i_1_n_3 ;
  wire \Synth_reg[2]_i_1_n_0 ;
  wire \Synth_reg[2]_i_1_n_1 ;
  wire \Synth_reg[2]_i_1_n_2 ;
  wire \Synth_reg[2]_i_1_n_3 ;
  wire \Synth_reg[3]_i_1_n_0 ;
  wire \Synth_reg[3]_i_1_n_1 ;
  wire \Synth_reg[3]_i_1_n_2 ;
  wire \Synth_reg[3]_i_1_n_3 ;
  wire \Synth_reg[4]_i_1_n_0 ;
  wire \Synth_reg[4]_i_1_n_1 ;
  wire \Synth_reg[4]_i_1_n_2 ;
  wire \Synth_reg[4]_i_1_n_3 ;
  wire \Synth_reg[5]_i_1_n_0 ;
  wire \Synth_reg[5]_i_1_n_1 ;
  wire \Synth_reg[5]_i_1_n_2 ;
  wire \Synth_reg[5]_i_1_n_3 ;
  wire \Synth_reg[6]_i_1_n_0 ;
  wire \Synth_reg[6]_i_1_n_1 ;
  wire \Synth_reg[6]_i_1_n_2 ;
  wire \Synth_reg[6]_i_1_n_3 ;
  wire \Synth_reg[6]_i_2__0_n_0 ;
  wire \Synth_reg[6]_i_2__0_n_1 ;
  wire \Synth_reg[6]_i_2__0_n_2 ;
  wire \Synth_reg[6]_i_2__0_n_3 ;
  wire \Synth_reg[7]_i_1_n_0 ;
  wire \Synth_reg[7]_i_1_n_1 ;
  wire \Synth_reg[7]_i_1_n_2 ;
  wire \Synth_reg[7]_i_1_n_3 ;
  wire \Synth_reg_n_0_[0] ;
  wire \Synth_reg_n_0_[1] ;
  wire \Synth_reg_n_0_[2] ;
  wire \Synth_reg_n_0_[3] ;
  wire \Synth_reg_n_0_[4] ;
  wire \Synth_reg_n_0_[5] ;
  wire \Synth_reg_n_0_[6] ;
  wire aclk_kernel_01;
  wire aclk_kernel_cont_01;
  wire aresetn_ctrl;
  wire \arststages_ff_reg[0] ;
  wire \arststages_ff_reg[0]_0 ;
  wire clk_in_kernel_01;
  wire dest_arst;
  wire dest_out;
  wire ext_tog_ctrl_kernel_01_enable;
  wire ext_tog_ctrl_kernel_01_in;
  wire ext_tog_ctrl_kernel_01_out;
  wire p_0_in;
  wire [8:0]p_6_in;
  wire power_down_in_cdc;
  wire power_down_in_ret_reg_n_0;
  wire power_down_out_d1;
  wire power_down_out_d1_i_1__0_n_0;
  wire rst_async_kernel_01;
  wire shutdown_latch;
  wire src_in;
  wire \syncstages_ff_reg[0] ;

  (* box_type = "PRIMITIVE" *) 
  BUFGCE #(
    .CE_TYPE("HARDSYNC"),
    .IS_CE_INVERTED(1'b0),
    .IS_I_INVERTED(1'b0),
    .SIM_DEVICE("VERSAL_AI_CORE"),
    .STARTUP_SYNC("FALSE")) 
    ECCLK
       (.CE(Startup_Done_cdc),
        .I(clk_in_kernel_01),
        .O(aclk_kernel_cont_01));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__12 \ETG.ETSE_CDC 
       (.dest_clk(ICCLK_0),
        .dest_out(Ext_Tog_En_SW_cdc),
        .src_clk(1'b0),
        .src_in(p_6_in[8]));
  FDRE #(
    .INIT(1'b0)) 
    Ext_Tog_En_SW_ret_reg
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(Ext_Tog_En_SW_cdc),
        .Q(Ext_Tog_En_SW_ret),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0880)) 
    Ext_Tog_Out_int_i_1__0
       (.I0(Ext_Tog_En_SW_ret),
        .I1(ext_tog_ctrl_kernel_01_enable),
        .I2(p_0_in),
        .I3(ext_tog_ctrl_kernel_01_out),
        .O(Ext_Tog_Out_int_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Ext_Tog_Out_int_reg
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(Ext_Tog_Out_int_i_1__0_n_0),
        .Q(ext_tog_ctrl_kernel_01_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6FFF600000000000)) 
    Gate_Div_i_1__0
       (.I0(ext_tog_ctrl_kernel_01_in),
        .I1(Last_Ext_Tog_In),
        .I2(ext_tog_ctrl_kernel_01_enable),
        .I3(Ext_Tog_En_SW_ret),
        .I4(p_0_in),
        .I5(\Mbufg_Clrb_SR_reg_n_0_[8] ),
        .O(Gate_Div_i_1__0_n_0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    Gate_Div_reg
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(Gate_Div_i_1__0_n_0),
        .Q(Gate_Div),
        .R(\Rate_int[7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h6FFF6000)) 
    Gate_Fast_i_1__0
       (.I0(Last_Ext_Tog_In),
        .I1(ext_tog_ctrl_kernel_01_in),
        .I2(ext_tog_ctrl_kernel_01_enable),
        .I3(Ext_Tog_En_SW_ret),
        .I4(p_0_in),
        .O(Gate_Fast_i_1__0_n_0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    Gate_Fast_reg
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(Gate_Fast_i_1__0_n_0),
        .Q(Gate_Fast),
        .R(\Rate_int[7]_i_1__0_n_0 ));
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("VERSAL_AI_CORE")) 
    ICCLK
       (.CE(1'b1),
        .I(clk_in_kernel_01),
        .O(ICCLK_0));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__11 LA_CDC
       (.dest_clk(ICCLK_0),
        .dest_out(Shutdown_Latch_CDC),
        .src_clk(1'b0),
        .src_in(src_in));
  (* DEF_VAL = "1'b1" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* INV_DEF_VAL = "1'b0" *) 
  (* RST_ACTIVE_HIGH = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__7 LCK_CDC
       (.dest_arst(Locked_cdc),
        .dest_clk(ICCLK_0),
        .src_arst(\arststages_ff_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    Last_Ext_Tog_In_reg
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(ext_tog_ctrl_kernel_01_in),
        .Q(Last_Ext_Tog_In),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    Last_Rate_Upd_Tog_CDC_reg
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(dest_out),
        .Q(Last_Rate_Upd_Tog_CDC),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    Locked_ret_reg
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(Locked_cdc),
        .Q(Locked_ret),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Mbufg_Clrb_SR_reg[1] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(1'b1),
        .Q(\Mbufg_Clrb_SR_reg_n_0_[1] ),
        .R(\Rate_int[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Mbufg_Clrb_SR_reg[2] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(\Mbufg_Clrb_SR_reg_n_0_[1] ),
        .Q(\Mbufg_Clrb_SR_reg_n_0_[2] ),
        .R(\Rate_int[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Mbufg_Clrb_SR_reg[3] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(\Mbufg_Clrb_SR_reg_n_0_[2] ),
        .Q(\Mbufg_Clrb_SR_reg_n_0_[3] ),
        .R(\Rate_int[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Mbufg_Clrb_SR_reg[4] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(\Mbufg_Clrb_SR_reg_n_0_[3] ),
        .Q(\Mbufg_Clrb_SR_reg_n_0_[4] ),
        .R(\Rate_int[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Mbufg_Clrb_SR_reg[5] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(\Mbufg_Clrb_SR_reg_n_0_[4] ),
        .Q(\Mbufg_Clrb_SR_reg_n_0_[5] ),
        .R(\Rate_int[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Mbufg_Clrb_SR_reg[6] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(\Mbufg_Clrb_SR_reg_n_0_[5] ),
        .Q(\Mbufg_Clrb_SR_reg_n_0_[6] ),
        .R(\Rate_int[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Mbufg_Clrb_SR_reg[7] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(\Mbufg_Clrb_SR_reg_n_0_[6] ),
        .Q(\Mbufg_Clrb_SR_reg_n_0_[7] ),
        .R(\Rate_int[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Mbufg_Clrb_SR_reg[8] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(\Mbufg_Clrb_SR_reg_n_0_[7] ),
        .Q(\Mbufg_Clrb_SR_reg_n_0_[8] ),
        .R(\Rate_int[7]_i_1__0_n_0 ));
  (* DEF_VAL = "1'b1" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* INV_DEF_VAL = "1'b0" *) 
  (* RST_ACTIVE_HIGH = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst PD_CDC
       (.dest_arst(power_down_in_cdc),
        .dest_clk(ICCLK_0),
        .src_arst(shutdown_latch));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "8" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single RATE_CDC
       (.dest_clk(ICCLK_0),
        .dest_out(Rate_In_CDC),
        .src_clk(1'b0),
        .src_in(p_6_in[7:0]));
  (* DEF_VAL = "1'b1" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* INV_DEF_VAL = "1'b0" *) 
  (* RST_ACTIVE_HIGH = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__6 RST_CDC
       (.dest_arst(dest_arst),
        .dest_clk(ICCLK_0),
        .src_arst(aresetn_ctrl));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \Rate_Lim[7]_i_1__0 
       (.I0(Shutdown_Latch_CDC),
        .I1(\Rate_int_reg_n_0_[6] ),
        .I2(\Rate_int_reg_n_0_[7] ),
        .I3(\Rate_int_reg_n_0_[5] ),
        .O(Rate_Lim0));
  FDRE #(
    .INIT(1'b1)) 
    \Rate_Lim_reg[0] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(\Rate_int_reg_n_0_[0] ),
        .Q(\Rate_Lim_reg_n_0_[0] ),
        .R(Rate_Lim0));
  FDRE #(
    .INIT(1'b1)) 
    \Rate_Lim_reg[1] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(\Rate_int_reg_n_0_[1] ),
        .Q(\Rate_Lim_reg_n_0_[1] ),
        .R(Rate_Lim0));
  FDRE #(
    .INIT(1'b1)) 
    \Rate_Lim_reg[2] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(\Rate_int_reg_n_0_[2] ),
        .Q(\Rate_Lim_reg_n_0_[2] ),
        .R(Rate_Lim0));
  FDRE #(
    .INIT(1'b1)) 
    \Rate_Lim_reg[3] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(\Rate_int_reg_n_0_[3] ),
        .Q(\Rate_Lim_reg_n_0_[3] ),
        .R(Rate_Lim0));
  FDRE #(
    .INIT(1'b1)) 
    \Rate_Lim_reg[4] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(\Rate_int_reg_n_0_[4] ),
        .Q(\Rate_Lim_reg_n_0_[4] ),
        .R(Rate_Lim0));
  FDSE #(
    .INIT(1'b1)) 
    \Rate_Lim_reg[5] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(\Rate_int_reg_n_0_[5] ),
        .Q(\Rate_Lim_reg_n_0_[5] ),
        .S(Rate_Lim0));
  FDRE #(
    .INIT(1'b1)) 
    \Rate_Lim_reg[6] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(\Rate_int_reg_n_0_[6] ),
        .Q(\Rate_Lim_reg_n_0_[6] ),
        .R(Rate_Lim0));
  FDRE #(
    .INIT(1'b1)) 
    \Rate_Lim_reg[7] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(\Rate_int_reg_n_0_[7] ),
        .Q(\Rate_Lim_reg_n_0_[7] ),
        .R(Rate_Lim0));
  LUT2 #(
    .INIT(4'h6)) 
    Rate_Upd_i_1__0
       (.I0(Last_Rate_Upd_Tog_CDC),
        .I1(dest_out),
        .O(Rate_Upd0));
  FDRE #(
    .INIT(1'b0)) 
    Rate_Upd_reg
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(Rate_Upd0),
        .Q(Rate_Upd_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \Rate_int[7]_i_1__0 
       (.I0(rst_async_kernel_01),
        .O(\Rate_int[7]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Rate_int_reg[0] 
       (.C(ICCLK_0),
        .CE(Rate_Upd_reg_n_0),
        .D(Rate_In_CDC[0]),
        .Q(\Rate_int_reg_n_0_[0] ),
        .S(\Rate_int[7]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Rate_int_reg[1] 
       (.C(ICCLK_0),
        .CE(Rate_Upd_reg_n_0),
        .D(Rate_In_CDC[1]),
        .Q(\Rate_int_reg_n_0_[1] ),
        .S(\Rate_int[7]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Rate_int_reg[2] 
       (.C(ICCLK_0),
        .CE(Rate_Upd_reg_n_0),
        .D(Rate_In_CDC[2]),
        .Q(\Rate_int_reg_n_0_[2] ),
        .S(\Rate_int[7]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Rate_int_reg[3] 
       (.C(ICCLK_0),
        .CE(Rate_Upd_reg_n_0),
        .D(Rate_In_CDC[3]),
        .Q(\Rate_int_reg_n_0_[3] ),
        .S(\Rate_int[7]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Rate_int_reg[4] 
       (.C(ICCLK_0),
        .CE(Rate_Upd_reg_n_0),
        .D(Rate_In_CDC[4]),
        .Q(\Rate_int_reg_n_0_[4] ),
        .S(\Rate_int[7]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Rate_int_reg[5] 
       (.C(ICCLK_0),
        .CE(Rate_Upd_reg_n_0),
        .D(Rate_In_CDC[5]),
        .Q(\Rate_int_reg_n_0_[5] ),
        .S(\Rate_int[7]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Rate_int_reg[6] 
       (.C(ICCLK_0),
        .CE(Rate_Upd_reg_n_0),
        .D(Rate_In_CDC[6]),
        .Q(\Rate_int_reg_n_0_[6] ),
        .S(\Rate_int[7]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Rate_int_reg[7] 
       (.C(ICCLK_0),
        .CE(Rate_Upd_reg_n_0),
        .D(Rate_In_CDC[7]),
        .Q(\Rate_int_reg_n_0_[7] ),
        .S(\Rate_int[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    Rst_In_ret_reg
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(dest_arst),
        .Q(Rst_In_ret),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    Rst_Int0
       (.I0(Rst_In_ret),
        .I1(Locked_ret),
        .I2(Startup_Done_ret),
        .O(Rst_Int0__0));
  FDRE #(
    .INIT(1'b0)) 
    Rst_Int_reg
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(Rst_Int0__0),
        .Q(rst_async_kernel_01),
        .R(1'b0));
  (* DEF_VAL = "1'b1" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* INV_DEF_VAL = "1'b0" *) 
  (* RST_ACTIVE_HIGH = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__8 SRT_CDC
       (.dest_arst(Startup_Done_cdc),
        .dest_clk(ICCLK_0),
        .src_arst(\arststages_ff_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    Startup_Done_ret_reg
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(Startup_Done_cdc),
        .Q(Startup_Done_ret),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \Synth_reg[0] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(\Synth_reg[0]_i_1_n_1 ),
        .Q(\Synth_reg_n_0_[0] ),
        .S(\Rate_int[7]_i_1__0_n_0 ));
  LUT6CY #(
    .INIT(64'hCFCC0C003C33C3CC)) 
    \Synth_reg[0]_i_1 
       (.GE(\Synth_reg[0]_i_1_n_0 ),
        .I0(1'b1),
        .I1(\Synth_reg_n_0_[0] ),
        .I2(\Rate_int_reg_n_0_[7] ),
        .I3(\Rate_Lim_reg_n_0_[0] ),
        .I4(1'b0),
        .O51(\Synth_reg[0]_i_1_n_1 ),
        .O52(\Synth_reg[0]_i_1_n_2 ),
        .PROP(\Synth_reg[0]_i_1_n_3 ));
  FDSE #(
    .INIT(1'b1)) 
    \Synth_reg[1] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(\Synth_reg[1]_i_1_n_1 ),
        .Q(\Synth_reg_n_0_[1] ),
        .S(\Rate_int[7]_i_1__0_n_0 ));
  LUT6CY #(
    .INIT(64'hCFCC0C003C33C3CC)) 
    \Synth_reg[1]_i_1 
       (.GE(\Synth_reg[1]_i_1_n_0 ),
        .I0(1'b1),
        .I1(\Synth_reg_n_0_[1] ),
        .I2(\Rate_int_reg_n_0_[7] ),
        .I3(\Rate_Lim_reg_n_0_[1] ),
        .I4(\Synth_reg[0]_i_1_n_2 ),
        .O51(\Synth_reg[1]_i_1_n_1 ),
        .O52(\Synth_reg[1]_i_1_n_2 ),
        .PROP(\Synth_reg[1]_i_1_n_3 ));
  FDSE #(
    .INIT(1'b1)) 
    \Synth_reg[2] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(\Synth_reg[2]_i_1_n_1 ),
        .Q(\Synth_reg_n_0_[2] ),
        .S(\Rate_int[7]_i_1__0_n_0 ));
  LUT6CY #(
    .INIT(64'hCFCC0C003C33C3CC)) 
    \Synth_reg[2]_i_1 
       (.GE(\Synth_reg[2]_i_1_n_0 ),
        .I0(1'b1),
        .I1(\Synth_reg_n_0_[2] ),
        .I2(\Rate_int_reg_n_0_[7] ),
        .I3(\Rate_Lim_reg_n_0_[2] ),
        .I4(\Synth_reg[6]_i_2__0_n_0 ),
        .O51(\Synth_reg[2]_i_1_n_1 ),
        .O52(\Synth_reg[2]_i_1_n_2 ),
        .PROP(\Synth_reg[2]_i_1_n_3 ));
  FDSE #(
    .INIT(1'b1)) 
    \Synth_reg[3] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(\Synth_reg[3]_i_1_n_1 ),
        .Q(\Synth_reg_n_0_[3] ),
        .S(\Rate_int[7]_i_1__0_n_0 ));
  LUT6CY #(
    .INIT(64'hCFCC0C003C33C3CC)) 
    \Synth_reg[3]_i_1 
       (.GE(\Synth_reg[3]_i_1_n_0 ),
        .I0(1'b1),
        .I1(\Synth_reg_n_0_[3] ),
        .I2(\Rate_int_reg_n_0_[7] ),
        .I3(\Rate_Lim_reg_n_0_[3] ),
        .I4(\Synth_reg[2]_i_1_n_2 ),
        .O51(\Synth_reg[3]_i_1_n_1 ),
        .O52(\Synth_reg[3]_i_1_n_2 ),
        .PROP(\Synth_reg[3]_i_1_n_3 ));
  FDSE #(
    .INIT(1'b1)) 
    \Synth_reg[4] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(\Synth_reg[4]_i_1_n_1 ),
        .Q(\Synth_reg_n_0_[4] ),
        .S(\Rate_int[7]_i_1__0_n_0 ));
  LUT6CY #(
    .INIT(64'hCFCC0C003C33C3CC)) 
    \Synth_reg[4]_i_1 
       (.GE(\Synth_reg[4]_i_1_n_0 ),
        .I0(1'b1),
        .I1(\Synth_reg_n_0_[4] ),
        .I2(\Rate_int_reg_n_0_[7] ),
        .I3(\Rate_Lim_reg_n_0_[4] ),
        .I4(\Synth_reg[6]_i_2__0_n_1 ),
        .O51(\Synth_reg[4]_i_1_n_1 ),
        .O52(\Synth_reg[4]_i_1_n_2 ),
        .PROP(\Synth_reg[4]_i_1_n_3 ));
  FDSE #(
    .INIT(1'b1)) 
    \Synth_reg[5] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(\Synth_reg[5]_i_1_n_1 ),
        .Q(\Synth_reg_n_0_[5] ),
        .S(\Rate_int[7]_i_1__0_n_0 ));
  LUT6CY #(
    .INIT(64'hCFCC0C003C33C3CC)) 
    \Synth_reg[5]_i_1 
       (.GE(\Synth_reg[5]_i_1_n_0 ),
        .I0(1'b1),
        .I1(\Synth_reg_n_0_[5] ),
        .I2(\Rate_int_reg_n_0_[7] ),
        .I3(\Rate_Lim_reg_n_0_[5] ),
        .I4(\Synth_reg[4]_i_1_n_2 ),
        .O51(\Synth_reg[5]_i_1_n_1 ),
        .O52(\Synth_reg[5]_i_1_n_2 ),
        .PROP(\Synth_reg[5]_i_1_n_3 ));
  FDSE #(
    .INIT(1'b1)) 
    \Synth_reg[6] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(\Synth_reg[6]_i_1_n_1 ),
        .Q(\Synth_reg_n_0_[6] ),
        .S(\Rate_int[7]_i_1__0_n_0 ));
  LUT6CY #(
    .INIT(64'hCFCC0C003C33C3CC)) 
    \Synth_reg[6]_i_1 
       (.GE(\Synth_reg[6]_i_1_n_0 ),
        .I0(1'b1),
        .I1(\Synth_reg_n_0_[6] ),
        .I2(\Rate_int_reg_n_0_[7] ),
        .I3(\Rate_Lim_reg_n_0_[6] ),
        .I4(\Synth_reg[6]_i_2__0_n_2 ),
        .O51(\Synth_reg[6]_i_1_n_1 ),
        .O52(\Synth_reg[6]_i_1_n_2 ),
        .PROP(\Synth_reg[6]_i_1_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("FALSE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \Synth_reg[6]_i_2__0 
       (.CIN(1'b0),
        .COUTB(\Synth_reg[6]_i_2__0_n_0 ),
        .COUTD(\Synth_reg[6]_i_2__0_n_1 ),
        .COUTF(\Synth_reg[6]_i_2__0_n_2 ),
        .COUTH(\Synth_reg[6]_i_2__0_n_3 ),
        .CYA(\Synth_reg[0]_i_1_n_2 ),
        .CYB(\Synth_reg[1]_i_1_n_2 ),
        .CYC(\Synth_reg[2]_i_1_n_2 ),
        .CYD(\Synth_reg[3]_i_1_n_2 ),
        .CYE(\Synth_reg[4]_i_1_n_2 ),
        .CYF(\Synth_reg[5]_i_1_n_2 ),
        .CYG(\Synth_reg[6]_i_1_n_2 ),
        .CYH(\Synth_reg[7]_i_1_n_2 ),
        .GEA(\Synth_reg[0]_i_1_n_0 ),
        .GEB(\Synth_reg[1]_i_1_n_0 ),
        .GEC(\Synth_reg[2]_i_1_n_0 ),
        .GED(\Synth_reg[3]_i_1_n_0 ),
        .GEE(\Synth_reg[4]_i_1_n_0 ),
        .GEF(\Synth_reg[5]_i_1_n_0 ),
        .GEG(\Synth_reg[6]_i_1_n_0 ),
        .GEH(\Synth_reg[7]_i_1_n_0 ),
        .PROPA(\Synth_reg[0]_i_1_n_3 ),
        .PROPB(\Synth_reg[1]_i_1_n_3 ),
        .PROPC(\Synth_reg[2]_i_1_n_3 ),
        .PROPD(\Synth_reg[3]_i_1_n_3 ),
        .PROPE(\Synth_reg[4]_i_1_n_3 ),
        .PROPF(\Synth_reg[5]_i_1_n_3 ),
        .PROPG(\Synth_reg[6]_i_1_n_3 ),
        .PROPH(\Synth_reg[7]_i_1_n_3 ));
  FDSE #(
    .INIT(1'b1)) 
    \Synth_reg[7] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(\Synth_reg[7]_i_1_n_1 ),
        .Q(p_0_in),
        .S(\Rate_int[7]_i_1__0_n_0 ));
  LUT6CY #(
    .INIT(64'hFFF0FFF0000FFFF0)) 
    \Synth_reg[7]_i_1 
       (.GE(\Synth_reg[7]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(\Rate_int_reg_n_0_[7] ),
        .I3(\Rate_Lim_reg_n_0_[7] ),
        .I4(\Synth_reg[6]_i_1_n_2 ),
        .O51(\Synth_reg[7]_i_1_n_1 ),
        .O52(\Synth_reg[7]_i_1_n_2 ),
        .PROP(\Synth_reg[7]_i_1_n_3 ));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__10 UP_CDC
       (.dest_clk(ICCLK_0),
        .dest_out(dest_out),
        .src_clk(1'b0),
        .src_in(\syncstages_ff_reg[0] ));
  (* box_type = "PRIMITIVE" *) 
  BUFGCE #(
    .CE_TYPE("HARDSYNC"),
    .IS_CE_INVERTED(1'b0),
    .IS_I_INVERTED(1'b0),
    .SIM_DEVICE("VERSAL_AI_CORE"),
    .STARTUP_SYNC("FALSE")) 
    \VGC.FCLK 
       (.CE(Gate_Fast),
        .I(clk_in_kernel_01),
        .O(aclk_kernel_01));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(Gate_Fast_d1));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(Gate_Div_d1));
  FDRE #(
    .INIT(1'b0)) 
    power_down_in_ret_reg
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(power_down_in_cdc),
        .Q(power_down_in_ret_reg_n_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hE2)) 
    power_down_out_d1_i_1__0
       (.I0(power_down_in_ret_reg_n_0),
        .I1(rst_async_kernel_01),
        .I2(power_down_out_d1),
        .O(power_down_out_d1_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    power_down_out_d1_reg
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(power_down_out_d1_i_1__0_n_0),
        .Q(power_down_out_d1),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "shell_utils_ucc_v1_0_0_clock_throttling" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_ucc_v1_0_0_clock_throttling__xdcDup__1
   (ICCLK_0,
    aclk_kernel_cont_00,
    aclk_kernel_00,
    rst_async_kernel_00,
    ext_tog_ctrl_kernel_00_out,
    power_down_out_d1,
    \syncstages_ff_reg[0] ,
    p_6_in,
    src_in,
    aresetn_ctrl,
    src_arst,
    \arststages_ff_reg[0] ,
    shutdown_latch,
    clk_in_kernel_00,
    ext_tog_ctrl_kernel_00_in,
    ext_tog_ctrl_kernel_00_enable);
  output ICCLK_0;
  output aclk_kernel_cont_00;
  output aclk_kernel_00;
  output rst_async_kernel_00;
  output ext_tog_ctrl_kernel_00_out;
  output power_down_out_d1;
  input \syncstages_ff_reg[0] ;
  input [8:0]p_6_in;
  input src_in;
  input aresetn_ctrl;
  input src_arst;
  input \arststages_ff_reg[0] ;
  input shutdown_latch;
  input clk_in_kernel_00;
  input ext_tog_ctrl_kernel_00_in;
  input ext_tog_ctrl_kernel_00_enable;

  wire Ext_Tog_En_SW_cdc;
  wire Ext_Tog_En_SW_ret;
  wire Ext_Tog_Out_int_i_1_n_0;
  (* DONT_TOUCH *) wire Gate_Div;
  (* DONT_TOUCH *) wire Gate_Div_d1;
  wire Gate_Div_i_1_n_0;
  (* DONT_TOUCH *) wire Gate_Fast;
  (* DONT_TOUCH *) wire Gate_Fast_d1;
  wire Gate_Fast_i_1_n_0;
  wire ICCLK_0;
  wire Last_Ext_Tog_In;
  wire Last_Rate_Upd_Tog_CDC;
  wire Locked_cdc;
  wire Locked_ret;
  wire \Mbufg_Clrb_SR_reg_n_0_[1] ;
  wire \Mbufg_Clrb_SR_reg_n_0_[2] ;
  wire \Mbufg_Clrb_SR_reg_n_0_[3] ;
  wire \Mbufg_Clrb_SR_reg_n_0_[4] ;
  wire \Mbufg_Clrb_SR_reg_n_0_[5] ;
  wire \Mbufg_Clrb_SR_reg_n_0_[6] ;
  wire \Mbufg_Clrb_SR_reg_n_0_[7] ;
  wire \Mbufg_Clrb_SR_reg_n_0_[8] ;
  wire [7:0]Rate_In_CDC;
  wire [7:0]Rate_Lim;
  wire Rate_Lim0;
  wire Rate_Upd;
  wire Rate_Upd0;
  wire [7:0]Rate_int;
  wire \Rate_int[7]_i_1_n_0 ;
  wire Rst_In_ret;
  wire Rst_Int0__0;
  wire Shutdown_Latch_CDC;
  wire Startup_Done_cdc;
  wire Startup_Done_ret;
  wire [7:0]Synth;
  wire \Synth_reg[0]_i_1_n_0 ;
  wire \Synth_reg[0]_i_1_n_2 ;
  wire \Synth_reg[0]_i_1_n_3 ;
  wire \Synth_reg[1]_i_1_n_0 ;
  wire \Synth_reg[1]_i_1_n_2 ;
  wire \Synth_reg[1]_i_1_n_3 ;
  wire \Synth_reg[2]_i_1_n_0 ;
  wire \Synth_reg[2]_i_1_n_2 ;
  wire \Synth_reg[2]_i_1_n_3 ;
  wire \Synth_reg[3]_i_1_n_0 ;
  wire \Synth_reg[3]_i_1_n_2 ;
  wire \Synth_reg[3]_i_1_n_3 ;
  wire \Synth_reg[4]_i_1_n_0 ;
  wire \Synth_reg[4]_i_1_n_2 ;
  wire \Synth_reg[4]_i_1_n_3 ;
  wire \Synth_reg[5]_i_1_n_0 ;
  wire \Synth_reg[5]_i_1_n_2 ;
  wire \Synth_reg[5]_i_1_n_3 ;
  wire \Synth_reg[6]_i_1_n_0 ;
  wire \Synth_reg[6]_i_1_n_2 ;
  wire \Synth_reg[6]_i_1_n_3 ;
  wire \Synth_reg[6]_i_2_n_0 ;
  wire \Synth_reg[6]_i_2_n_1 ;
  wire \Synth_reg[6]_i_2_n_2 ;
  wire \Synth_reg[6]_i_2_n_3 ;
  wire \Synth_reg[7]_i_1_n_0 ;
  wire \Synth_reg[7]_i_1_n_2 ;
  wire \Synth_reg[7]_i_1_n_3 ;
  wire \Synth_reg_n_0_[0] ;
  wire \Synth_reg_n_0_[1] ;
  wire \Synth_reg_n_0_[2] ;
  wire \Synth_reg_n_0_[3] ;
  wire \Synth_reg_n_0_[4] ;
  wire \Synth_reg_n_0_[5] ;
  wire \Synth_reg_n_0_[6] ;
  wire aclk_kernel_00;
  wire aclk_kernel_cont_00;
  wire aresetn_ctrl;
  wire \arststages_ff_reg[0] ;
  wire clk_in_kernel_00;
  wire dest_arst;
  wire dest_out;
  wire ext_tog_ctrl_kernel_00_enable;
  wire ext_tog_ctrl_kernel_00_in;
  wire ext_tog_ctrl_kernel_00_out;
  wire p_0_in;
  wire [8:0]p_6_in;
  wire power_down_in_cdc;
  wire power_down_in_ret;
  wire power_down_out_d1;
  wire power_down_out_d1_i_1_n_0;
  wire rst_async_kernel_00;
  wire shutdown_latch;
  wire src_arst;
  wire src_in;
  wire \syncstages_ff_reg[0] ;

  (* box_type = "PRIMITIVE" *) 
  BUFGCE #(
    .CE_TYPE("HARDSYNC"),
    .IS_CE_INVERTED(1'b0),
    .IS_I_INVERTED(1'b0),
    .SIM_DEVICE("VERSAL_AI_CORE"),
    .STARTUP_SYNC("FALSE")) 
    ECCLK
       (.CE(Startup_Done_cdc),
        .I(clk_in_kernel_00),
        .O(aclk_kernel_cont_00));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__9 \ETG.ETSE_CDC 
       (.dest_clk(ICCLK_0),
        .dest_out(Ext_Tog_En_SW_cdc),
        .src_clk(1'b0),
        .src_in(p_6_in[8]));
  FDRE #(
    .INIT(1'b0)) 
    Ext_Tog_En_SW_ret_reg
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(Ext_Tog_En_SW_cdc),
        .Q(Ext_Tog_En_SW_ret),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0880)) 
    Ext_Tog_Out_int_i_1
       (.I0(Ext_Tog_En_SW_ret),
        .I1(ext_tog_ctrl_kernel_00_enable),
        .I2(p_0_in),
        .I3(ext_tog_ctrl_kernel_00_out),
        .O(Ext_Tog_Out_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Ext_Tog_Out_int_reg
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(Ext_Tog_Out_int_i_1_n_0),
        .Q(ext_tog_ctrl_kernel_00_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6FFF600000000000)) 
    Gate_Div_i_1
       (.I0(ext_tog_ctrl_kernel_00_in),
        .I1(Last_Ext_Tog_In),
        .I2(ext_tog_ctrl_kernel_00_enable),
        .I3(Ext_Tog_En_SW_ret),
        .I4(p_0_in),
        .I5(\Mbufg_Clrb_SR_reg_n_0_[8] ),
        .O(Gate_Div_i_1_n_0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    Gate_Div_reg
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(Gate_Div_i_1_n_0),
        .Q(Gate_Div),
        .R(\Rate_int[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6FFF6000)) 
    Gate_Fast_i_1
       (.I0(Last_Ext_Tog_In),
        .I1(ext_tog_ctrl_kernel_00_in),
        .I2(ext_tog_ctrl_kernel_00_enable),
        .I3(Ext_Tog_En_SW_ret),
        .I4(p_0_in),
        .O(Gate_Fast_i_1_n_0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    Gate_Fast_reg
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(Gate_Fast_i_1_n_0),
        .Q(Gate_Fast),
        .R(\Rate_int[7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("VERSAL_AI_CORE")) 
    ICCLK
       (.CE(1'b1),
        .I(clk_in_kernel_00),
        .O(ICCLK_0));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__8 LA_CDC
       (.dest_clk(ICCLK_0),
        .dest_out(Shutdown_Latch_CDC),
        .src_clk(1'b0),
        .src_in(src_in));
  (* DEF_VAL = "1'b1" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* INV_DEF_VAL = "1'b0" *) 
  (* RST_ACTIVE_HIGH = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__3 LCK_CDC
       (.dest_arst(Locked_cdc),
        .dest_clk(ICCLK_0),
        .src_arst(src_arst));
  FDRE #(
    .INIT(1'b0)) 
    Last_Ext_Tog_In_reg
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(ext_tog_ctrl_kernel_00_in),
        .Q(Last_Ext_Tog_In),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    Last_Rate_Upd_Tog_CDC_reg
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(dest_out),
        .Q(Last_Rate_Upd_Tog_CDC),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    Locked_ret_reg
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(Locked_cdc),
        .Q(Locked_ret),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Mbufg_Clrb_SR_reg[1] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(1'b1),
        .Q(\Mbufg_Clrb_SR_reg_n_0_[1] ),
        .R(\Rate_int[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Mbufg_Clrb_SR_reg[2] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(\Mbufg_Clrb_SR_reg_n_0_[1] ),
        .Q(\Mbufg_Clrb_SR_reg_n_0_[2] ),
        .R(\Rate_int[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Mbufg_Clrb_SR_reg[3] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(\Mbufg_Clrb_SR_reg_n_0_[2] ),
        .Q(\Mbufg_Clrb_SR_reg_n_0_[3] ),
        .R(\Rate_int[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Mbufg_Clrb_SR_reg[4] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(\Mbufg_Clrb_SR_reg_n_0_[3] ),
        .Q(\Mbufg_Clrb_SR_reg_n_0_[4] ),
        .R(\Rate_int[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Mbufg_Clrb_SR_reg[5] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(\Mbufg_Clrb_SR_reg_n_0_[4] ),
        .Q(\Mbufg_Clrb_SR_reg_n_0_[5] ),
        .R(\Rate_int[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Mbufg_Clrb_SR_reg[6] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(\Mbufg_Clrb_SR_reg_n_0_[5] ),
        .Q(\Mbufg_Clrb_SR_reg_n_0_[6] ),
        .R(\Rate_int[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Mbufg_Clrb_SR_reg[7] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(\Mbufg_Clrb_SR_reg_n_0_[6] ),
        .Q(\Mbufg_Clrb_SR_reg_n_0_[7] ),
        .R(\Rate_int[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Mbufg_Clrb_SR_reg[8] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(\Mbufg_Clrb_SR_reg_n_0_[7] ),
        .Q(\Mbufg_Clrb_SR_reg_n_0_[8] ),
        .R(\Rate_int[7]_i_1_n_0 ));
  (* DEF_VAL = "1'b1" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* INV_DEF_VAL = "1'b0" *) 
  (* RST_ACTIVE_HIGH = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__5 PD_CDC
       (.dest_arst(power_down_in_cdc),
        .dest_clk(ICCLK_0),
        .src_arst(shutdown_latch));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "8" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__2 RATE_CDC
       (.dest_clk(ICCLK_0),
        .dest_out(Rate_In_CDC),
        .src_clk(1'b0),
        .src_in(p_6_in[7:0]));
  (* DEF_VAL = "1'b1" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* INV_DEF_VAL = "1'b0" *) 
  (* RST_ACTIVE_HIGH = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__2 RST_CDC
       (.dest_arst(dest_arst),
        .dest_clk(ICCLK_0),
        .src_arst(aresetn_ctrl));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \Rate_Lim[7]_i_1 
       (.I0(Shutdown_Latch_CDC),
        .I1(Rate_int[6]),
        .I2(Rate_int[7]),
        .I3(Rate_int[5]),
        .O(Rate_Lim0));
  FDRE #(
    .INIT(1'b1)) 
    \Rate_Lim_reg[0] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(Rate_int[0]),
        .Q(Rate_Lim[0]),
        .R(Rate_Lim0));
  FDRE #(
    .INIT(1'b1)) 
    \Rate_Lim_reg[1] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(Rate_int[1]),
        .Q(Rate_Lim[1]),
        .R(Rate_Lim0));
  FDRE #(
    .INIT(1'b1)) 
    \Rate_Lim_reg[2] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(Rate_int[2]),
        .Q(Rate_Lim[2]),
        .R(Rate_Lim0));
  FDRE #(
    .INIT(1'b1)) 
    \Rate_Lim_reg[3] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(Rate_int[3]),
        .Q(Rate_Lim[3]),
        .R(Rate_Lim0));
  FDRE #(
    .INIT(1'b1)) 
    \Rate_Lim_reg[4] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(Rate_int[4]),
        .Q(Rate_Lim[4]),
        .R(Rate_Lim0));
  FDSE #(
    .INIT(1'b1)) 
    \Rate_Lim_reg[5] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(Rate_int[5]),
        .Q(Rate_Lim[5]),
        .S(Rate_Lim0));
  FDRE #(
    .INIT(1'b1)) 
    \Rate_Lim_reg[6] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(Rate_int[6]),
        .Q(Rate_Lim[6]),
        .R(Rate_Lim0));
  FDRE #(
    .INIT(1'b1)) 
    \Rate_Lim_reg[7] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(Rate_int[7]),
        .Q(Rate_Lim[7]),
        .R(Rate_Lim0));
  LUT2 #(
    .INIT(4'h6)) 
    Rate_Upd_i_1
       (.I0(Last_Rate_Upd_Tog_CDC),
        .I1(dest_out),
        .O(Rate_Upd0));
  FDRE #(
    .INIT(1'b0)) 
    Rate_Upd_reg
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(Rate_Upd0),
        .Q(Rate_Upd),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \Rate_int[7]_i_1 
       (.I0(rst_async_kernel_00),
        .O(\Rate_int[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Rate_int_reg[0] 
       (.C(ICCLK_0),
        .CE(Rate_Upd),
        .D(Rate_In_CDC[0]),
        .Q(Rate_int[0]),
        .S(\Rate_int[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Rate_int_reg[1] 
       (.C(ICCLK_0),
        .CE(Rate_Upd),
        .D(Rate_In_CDC[1]),
        .Q(Rate_int[1]),
        .S(\Rate_int[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Rate_int_reg[2] 
       (.C(ICCLK_0),
        .CE(Rate_Upd),
        .D(Rate_In_CDC[2]),
        .Q(Rate_int[2]),
        .S(\Rate_int[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Rate_int_reg[3] 
       (.C(ICCLK_0),
        .CE(Rate_Upd),
        .D(Rate_In_CDC[3]),
        .Q(Rate_int[3]),
        .S(\Rate_int[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Rate_int_reg[4] 
       (.C(ICCLK_0),
        .CE(Rate_Upd),
        .D(Rate_In_CDC[4]),
        .Q(Rate_int[4]),
        .S(\Rate_int[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Rate_int_reg[5] 
       (.C(ICCLK_0),
        .CE(Rate_Upd),
        .D(Rate_In_CDC[5]),
        .Q(Rate_int[5]),
        .S(\Rate_int[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Rate_int_reg[6] 
       (.C(ICCLK_0),
        .CE(Rate_Upd),
        .D(Rate_In_CDC[6]),
        .Q(Rate_int[6]),
        .S(\Rate_int[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Rate_int_reg[7] 
       (.C(ICCLK_0),
        .CE(Rate_Upd),
        .D(Rate_In_CDC[7]),
        .Q(Rate_int[7]),
        .S(\Rate_int[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    Rst_In_ret_reg
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(dest_arst),
        .Q(Rst_In_ret),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    Rst_Int0
       (.I0(Rst_In_ret),
        .I1(Locked_ret),
        .I2(Startup_Done_ret),
        .O(Rst_Int0__0));
  FDRE #(
    .INIT(1'b0)) 
    Rst_Int_reg
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(Rst_Int0__0),
        .Q(rst_async_kernel_00),
        .R(1'b0));
  (* DEF_VAL = "1'b1" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* INV_DEF_VAL = "1'b0" *) 
  (* RST_ACTIVE_HIGH = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__4 SRT_CDC
       (.dest_arst(Startup_Done_cdc),
        .dest_clk(ICCLK_0),
        .src_arst(\arststages_ff_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    Startup_Done_ret_reg
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(Startup_Done_cdc),
        .Q(Startup_Done_ret),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \Synth_reg[0] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(Synth[0]),
        .Q(\Synth_reg_n_0_[0] ),
        .S(\Rate_int[7]_i_1_n_0 ));
  LUT6CY #(
    .INIT(64'hCFCC0C003C33C3CC)) 
    \Synth_reg[0]_i_1 
       (.GE(\Synth_reg[0]_i_1_n_0 ),
        .I0(1'b1),
        .I1(\Synth_reg_n_0_[0] ),
        .I2(Rate_int[7]),
        .I3(Rate_Lim[0]),
        .I4(1'b0),
        .O51(Synth[0]),
        .O52(\Synth_reg[0]_i_1_n_2 ),
        .PROP(\Synth_reg[0]_i_1_n_3 ));
  FDSE #(
    .INIT(1'b1)) 
    \Synth_reg[1] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(Synth[1]),
        .Q(\Synth_reg_n_0_[1] ),
        .S(\Rate_int[7]_i_1_n_0 ));
  LUT6CY #(
    .INIT(64'hCFCC0C003C33C3CC)) 
    \Synth_reg[1]_i_1 
       (.GE(\Synth_reg[1]_i_1_n_0 ),
        .I0(1'b1),
        .I1(\Synth_reg_n_0_[1] ),
        .I2(Rate_int[7]),
        .I3(Rate_Lim[1]),
        .I4(\Synth_reg[0]_i_1_n_2 ),
        .O51(Synth[1]),
        .O52(\Synth_reg[1]_i_1_n_2 ),
        .PROP(\Synth_reg[1]_i_1_n_3 ));
  FDSE #(
    .INIT(1'b1)) 
    \Synth_reg[2] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(Synth[2]),
        .Q(\Synth_reg_n_0_[2] ),
        .S(\Rate_int[7]_i_1_n_0 ));
  LUT6CY #(
    .INIT(64'hCFCC0C003C33C3CC)) 
    \Synth_reg[2]_i_1 
       (.GE(\Synth_reg[2]_i_1_n_0 ),
        .I0(1'b1),
        .I1(\Synth_reg_n_0_[2] ),
        .I2(Rate_int[7]),
        .I3(Rate_Lim[2]),
        .I4(\Synth_reg[6]_i_2_n_0 ),
        .O51(Synth[2]),
        .O52(\Synth_reg[2]_i_1_n_2 ),
        .PROP(\Synth_reg[2]_i_1_n_3 ));
  FDSE #(
    .INIT(1'b1)) 
    \Synth_reg[3] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(Synth[3]),
        .Q(\Synth_reg_n_0_[3] ),
        .S(\Rate_int[7]_i_1_n_0 ));
  LUT6CY #(
    .INIT(64'hCFCC0C003C33C3CC)) 
    \Synth_reg[3]_i_1 
       (.GE(\Synth_reg[3]_i_1_n_0 ),
        .I0(1'b1),
        .I1(\Synth_reg_n_0_[3] ),
        .I2(Rate_int[7]),
        .I3(Rate_Lim[3]),
        .I4(\Synth_reg[2]_i_1_n_2 ),
        .O51(Synth[3]),
        .O52(\Synth_reg[3]_i_1_n_2 ),
        .PROP(\Synth_reg[3]_i_1_n_3 ));
  FDSE #(
    .INIT(1'b1)) 
    \Synth_reg[4] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(Synth[4]),
        .Q(\Synth_reg_n_0_[4] ),
        .S(\Rate_int[7]_i_1_n_0 ));
  LUT6CY #(
    .INIT(64'hCFCC0C003C33C3CC)) 
    \Synth_reg[4]_i_1 
       (.GE(\Synth_reg[4]_i_1_n_0 ),
        .I0(1'b1),
        .I1(\Synth_reg_n_0_[4] ),
        .I2(Rate_int[7]),
        .I3(Rate_Lim[4]),
        .I4(\Synth_reg[6]_i_2_n_1 ),
        .O51(Synth[4]),
        .O52(\Synth_reg[4]_i_1_n_2 ),
        .PROP(\Synth_reg[4]_i_1_n_3 ));
  FDSE #(
    .INIT(1'b1)) 
    \Synth_reg[5] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(Synth[5]),
        .Q(\Synth_reg_n_0_[5] ),
        .S(\Rate_int[7]_i_1_n_0 ));
  LUT6CY #(
    .INIT(64'hCFCC0C003C33C3CC)) 
    \Synth_reg[5]_i_1 
       (.GE(\Synth_reg[5]_i_1_n_0 ),
        .I0(1'b1),
        .I1(\Synth_reg_n_0_[5] ),
        .I2(Rate_int[7]),
        .I3(Rate_Lim[5]),
        .I4(\Synth_reg[4]_i_1_n_2 ),
        .O51(Synth[5]),
        .O52(\Synth_reg[5]_i_1_n_2 ),
        .PROP(\Synth_reg[5]_i_1_n_3 ));
  FDSE #(
    .INIT(1'b1)) 
    \Synth_reg[6] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(Synth[6]),
        .Q(\Synth_reg_n_0_[6] ),
        .S(\Rate_int[7]_i_1_n_0 ));
  LUT6CY #(
    .INIT(64'hCFCC0C003C33C3CC)) 
    \Synth_reg[6]_i_1 
       (.GE(\Synth_reg[6]_i_1_n_0 ),
        .I0(1'b1),
        .I1(\Synth_reg_n_0_[6] ),
        .I2(Rate_int[7]),
        .I3(Rate_Lim[6]),
        .I4(\Synth_reg[6]_i_2_n_2 ),
        .O51(Synth[6]),
        .O52(\Synth_reg[6]_i_1_n_2 ),
        .PROP(\Synth_reg[6]_i_1_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("FALSE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \Synth_reg[6]_i_2 
       (.CIN(1'b0),
        .COUTB(\Synth_reg[6]_i_2_n_0 ),
        .COUTD(\Synth_reg[6]_i_2_n_1 ),
        .COUTF(\Synth_reg[6]_i_2_n_2 ),
        .COUTH(\Synth_reg[6]_i_2_n_3 ),
        .CYA(\Synth_reg[0]_i_1_n_2 ),
        .CYB(\Synth_reg[1]_i_1_n_2 ),
        .CYC(\Synth_reg[2]_i_1_n_2 ),
        .CYD(\Synth_reg[3]_i_1_n_2 ),
        .CYE(\Synth_reg[4]_i_1_n_2 ),
        .CYF(\Synth_reg[5]_i_1_n_2 ),
        .CYG(\Synth_reg[6]_i_1_n_2 ),
        .CYH(\Synth_reg[7]_i_1_n_2 ),
        .GEA(\Synth_reg[0]_i_1_n_0 ),
        .GEB(\Synth_reg[1]_i_1_n_0 ),
        .GEC(\Synth_reg[2]_i_1_n_0 ),
        .GED(\Synth_reg[3]_i_1_n_0 ),
        .GEE(\Synth_reg[4]_i_1_n_0 ),
        .GEF(\Synth_reg[5]_i_1_n_0 ),
        .GEG(\Synth_reg[6]_i_1_n_0 ),
        .GEH(\Synth_reg[7]_i_1_n_0 ),
        .PROPA(\Synth_reg[0]_i_1_n_3 ),
        .PROPB(\Synth_reg[1]_i_1_n_3 ),
        .PROPC(\Synth_reg[2]_i_1_n_3 ),
        .PROPD(\Synth_reg[3]_i_1_n_3 ),
        .PROPE(\Synth_reg[4]_i_1_n_3 ),
        .PROPF(\Synth_reg[5]_i_1_n_3 ),
        .PROPG(\Synth_reg[6]_i_1_n_3 ),
        .PROPH(\Synth_reg[7]_i_1_n_3 ));
  FDSE #(
    .INIT(1'b1)) 
    \Synth_reg[7] 
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(Synth[7]),
        .Q(p_0_in),
        .S(\Rate_int[7]_i_1_n_0 ));
  LUT6CY #(
    .INIT(64'hFFF0FFF0000FFFF0)) 
    \Synth_reg[7]_i_1 
       (.GE(\Synth_reg[7]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Rate_int[7]),
        .I3(Rate_Lim[7]),
        .I4(\Synth_reg[6]_i_1_n_2 ),
        .O51(Synth[7]),
        .O52(\Synth_reg[7]_i_1_n_2 ),
        .PROP(\Synth_reg[7]_i_1_n_3 ));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__7 UP_CDC
       (.dest_clk(ICCLK_0),
        .dest_out(dest_out),
        .src_clk(1'b0),
        .src_in(\syncstages_ff_reg[0] ));
  (* box_type = "PRIMITIVE" *) 
  BUFGCE #(
    .CE_TYPE("HARDSYNC"),
    .IS_CE_INVERTED(1'b0),
    .IS_I_INVERTED(1'b0),
    .SIM_DEVICE("VERSAL_AI_CORE"),
    .STARTUP_SYNC("FALSE")) 
    \VGC.FCLK 
       (.CE(Gate_Fast),
        .I(clk_in_kernel_00),
        .O(aclk_kernel_00));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(Gate_Fast_d1));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(Gate_Div_d1));
  FDRE #(
    .INIT(1'b0)) 
    power_down_in_ret_reg
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(power_down_in_cdc),
        .Q(power_down_in_ret),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hE2)) 
    power_down_out_d1_i_1
       (.I0(power_down_in_ret),
        .I1(rst_async_kernel_00),
        .I2(power_down_out_d1),
        .O(power_down_out_d1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    power_down_out_d1_reg
       (.C(ICCLK_0),
        .CE(1'b1),
        .D(power_down_out_d1_i_1_n_0),
        .Q(power_down_out_d1),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_ucc_v1_0_0_frequency_counter
   (src_in,
    aclk_kernel_cont_01,
    aclk_freerun,
    aclk_kernel_01,
    dest_arst,
    \rst_cnt_reg[0]_0 );
  output [64:0]src_in;
  input aclk_kernel_cont_01;
  input aclk_freerun;
  input aclk_kernel_01;
  input dest_arst;
  input \rst_cnt_reg[0]_0 ;

  wire \CLKS[0].test_clk_cntr[0][0]_i_1__1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][0]_i_2__1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][0]_i_2__1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][0]_i_2__1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][0]_i_2__1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][10]_i_1__1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][10]_i_1__1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][10]_i_1__1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][10]_i_1__1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][10]_i_2__1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][10]_i_2__1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][10]_i_2__1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][10]_i_2__1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][11]_i_1__1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][11]_i_1__1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][11]_i_1__1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][11]_i_1__1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][12]_i_1__1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][12]_i_1__1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][12]_i_1__1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][12]_i_1__1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][13]_i_1__1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][13]_i_1__1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][13]_i_1__1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][13]_i_1__1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][14]_i_1__1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][14]_i_1__1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][14]_i_1__1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][14]_i_1__1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][15]_i_1__1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][15]_i_1__1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][15]_i_1__1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][15]_i_1__1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][16]_i_1__1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][16]_i_1__1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][16]_i_1__1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][16]_i_1__1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][17]_i_1__1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][17]_i_1__1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][17]_i_1__1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][17]_i_1__1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_1__1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_1__1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_1__1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_1__1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_2__1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_2__1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_2__1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_2__1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_3__1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_3__1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_3__1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_3__1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][19]_i_1__1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][19]_i_1__1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][19]_i_1__1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][19]_i_1__1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][1]_i_1__1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][1]_i_1__1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][1]_i_1__1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][1]_i_1__1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][20]_i_1__1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][20]_i_1__1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][20]_i_1__1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][20]_i_1__1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][21]_i_1__1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][21]_i_1__1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][21]_i_1__1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][21]_i_1__1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][22]_i_1__1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][22]_i_1__1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][22]_i_1__1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][22]_i_1__1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][2]_i_1__1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][2]_i_1__1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][2]_i_1__1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][2]_i_1__1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][2]_i_2__1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][2]_i_2__1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][2]_i_2__1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][2]_i_2__1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][3]_i_1__1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][3]_i_1__1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][3]_i_1__1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][3]_i_1__1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][4]_i_1__1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][4]_i_1__1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][4]_i_1__1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][4]_i_1__1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][5]_i_1__1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][5]_i_1__1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][5]_i_1__1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][5]_i_1__1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][6]_i_1__1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][6]_i_1__1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][6]_i_1__1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][6]_i_1__1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][7]_i_1__1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][7]_i_1__1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][7]_i_1__1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][7]_i_1__1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][8]_i_1__1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][8]_i_1__1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][8]_i_1__1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][8]_i_1__1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][9]_i_1__1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][9]_i_1__1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][9]_i_1__1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][9]_i_1__1_n_3 ;
  wire [22:0]\CLKS[0].test_clk_cntr_reg[0]_0 ;
  wire \CLKS[1].test_clk_cntr[1][0]_i_1__0_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][0]_i_2__0_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][0]_i_2__0_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][0]_i_2__0_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][0]_i_2__0_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][10]_i_1__0_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][10]_i_1__0_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][10]_i_1__0_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][10]_i_1__0_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][10]_i_2__0_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][10]_i_2__0_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][10]_i_2__0_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][10]_i_2__0_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][11]_i_1__0_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][11]_i_1__0_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][11]_i_1__0_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][11]_i_1__0_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][12]_i_1__0_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][12]_i_1__0_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][12]_i_1__0_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][12]_i_1__0_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][13]_i_1__0_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][13]_i_1__0_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][13]_i_1__0_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][13]_i_1__0_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][14]_i_1__0_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][14]_i_1__0_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][14]_i_1__0_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][14]_i_1__0_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][15]_i_1__0_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][15]_i_1__0_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][15]_i_1__0_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][15]_i_1__0_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][16]_i_1__0_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][16]_i_1__0_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][16]_i_1__0_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][16]_i_1__0_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][17]_i_1__0_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][17]_i_1__0_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][17]_i_1__0_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][17]_i_1__0_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_1__0_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_1__0_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_1__0_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_1__0_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_2__0_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_2__0_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_2__0_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_2__0_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_3__0_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_3__0_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_3__0_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_3__0_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][19]_i_1__0_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][19]_i_1__0_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][19]_i_1__0_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][19]_i_1__0_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][1]_i_1__0_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][1]_i_1__0_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][1]_i_1__0_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][1]_i_1__0_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][20]_i_1__0_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][20]_i_1__0_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][20]_i_1__0_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][20]_i_1__0_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][21]_i_1__0_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][21]_i_1__0_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][21]_i_1__0_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][21]_i_1__0_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][22]_i_1__0_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][22]_i_1__0_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][22]_i_1__0_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][22]_i_1__0_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][2]_i_1__0_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][2]_i_1__0_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][2]_i_1__0_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][2]_i_1__0_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][2]_i_2__0_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][2]_i_2__0_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][2]_i_2__0_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][2]_i_2__0_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][3]_i_1__0_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][3]_i_1__0_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][3]_i_1__0_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][3]_i_1__0_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][4]_i_1__0_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][4]_i_1__0_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][4]_i_1__0_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][4]_i_1__0_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][5]_i_1__0_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][5]_i_1__0_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][5]_i_1__0_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][5]_i_1__0_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][6]_i_1__0_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][6]_i_1__0_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][6]_i_1__0_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][6]_i_1__0_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][7]_i_1__0_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][7]_i_1__0_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][7]_i_1__0_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][7]_i_1__0_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][8]_i_1__0_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][8]_i_1__0_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][8]_i_1__0_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][8]_i_1__0_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][9]_i_1__0_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][9]_i_1__0_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][9]_i_1__0_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][9]_i_1__0_n_3 ;
  wire [22:0]\CLKS[1].test_clk_cntr_reg[1]_1 ;
  wire aclk_freerun;
  wire aclk_kernel_01;
  wire aclk_kernel_cont_01;
  wire dest_arst;
  (* RTL_KEEP = "true" *) wire [3:0]done;
  wire done_ref_i_i_1__0_n_0;
  wire done_ref_i_i_2__0_n_0;
  wire done_ref_i_i_3__0_n_0;
  wire done_ref_i_i_4__0_n_0;
  wire done_synced_0;
  wire done_synced_1;
  wire \genblk1[1].cdc_freq_cntr_kernel_i_10_n_0 ;
  wire \genblk1[1].cdc_freq_cntr_kernel_i_3_n_0 ;
  wire \genblk1[1].cdc_freq_cntr_kernel_i_4_n_0 ;
  wire \genblk1[1].cdc_freq_cntr_kernel_i_5_n_0 ;
  wire \genblk1[1].cdc_freq_cntr_kernel_i_6_n_0 ;
  wire \genblk1[1].cdc_freq_cntr_kernel_i_7_n_0 ;
  wire \genblk1[1].cdc_freq_cntr_kernel_i_8_n_0 ;
  wire \genblk1[1].cdc_freq_cntr_kernel_i_9_n_0 ;
  wire [15:1]p_0_in;
  wire \ref_clk_cntr_i[0]_i_1__0_n_0 ;
  wire \ref_clk_cntr_i_reg[10]_i_1__0_n_0 ;
  wire \ref_clk_cntr_i_reg[10]_i_1__0_n_2 ;
  wire \ref_clk_cntr_i_reg[10]_i_1__0_n_3 ;
  wire \ref_clk_cntr_i_reg[11]_i_1__0_n_0 ;
  wire \ref_clk_cntr_i_reg[11]_i_1__0_n_2 ;
  wire \ref_clk_cntr_i_reg[11]_i_1__0_n_3 ;
  wire \ref_clk_cntr_i_reg[12]_i_1__0_n_0 ;
  wire \ref_clk_cntr_i_reg[12]_i_1__0_n_2 ;
  wire \ref_clk_cntr_i_reg[12]_i_1__0_n_3 ;
  wire \ref_clk_cntr_i_reg[13]_i_1__0_n_0 ;
  wire \ref_clk_cntr_i_reg[13]_i_1__0_n_2 ;
  wire \ref_clk_cntr_i_reg[13]_i_1__0_n_3 ;
  wire \ref_clk_cntr_i_reg[14]_i_1__0_n_0 ;
  wire \ref_clk_cntr_i_reg[14]_i_1__0_n_2 ;
  wire \ref_clk_cntr_i_reg[14]_i_1__0_n_3 ;
  wire \ref_clk_cntr_i_reg[15]_i_1__0_n_0 ;
  wire \ref_clk_cntr_i_reg[15]_i_1__0_n_2 ;
  wire \ref_clk_cntr_i_reg[15]_i_1__0_n_3 ;
  wire \ref_clk_cntr_i_reg[15]_i_2__0_n_0 ;
  wire \ref_clk_cntr_i_reg[15]_i_2__0_n_1 ;
  wire \ref_clk_cntr_i_reg[15]_i_2__0_n_2 ;
  wire \ref_clk_cntr_i_reg[15]_i_2__0_n_3 ;
  wire \ref_clk_cntr_i_reg[15]_i_3__0_n_0 ;
  wire \ref_clk_cntr_i_reg[15]_i_3__0_n_1 ;
  wire \ref_clk_cntr_i_reg[15]_i_3__0_n_2 ;
  wire \ref_clk_cntr_i_reg[15]_i_3__0_n_3 ;
  wire \ref_clk_cntr_i_reg[1]_i_1__0_n_0 ;
  wire \ref_clk_cntr_i_reg[1]_i_1__0_n_2 ;
  wire \ref_clk_cntr_i_reg[1]_i_1__0_n_3 ;
  wire \ref_clk_cntr_i_reg[2]_i_1__0_n_0 ;
  wire \ref_clk_cntr_i_reg[2]_i_1__0_n_2 ;
  wire \ref_clk_cntr_i_reg[2]_i_1__0_n_3 ;
  wire \ref_clk_cntr_i_reg[3]_i_1__0_n_0 ;
  wire \ref_clk_cntr_i_reg[3]_i_1__0_n_2 ;
  wire \ref_clk_cntr_i_reg[3]_i_1__0_n_3 ;
  wire \ref_clk_cntr_i_reg[4]_i_1__0_n_0 ;
  wire \ref_clk_cntr_i_reg[4]_i_1__0_n_2 ;
  wire \ref_clk_cntr_i_reg[4]_i_1__0_n_3 ;
  wire \ref_clk_cntr_i_reg[5]_i_1__0_n_0 ;
  wire \ref_clk_cntr_i_reg[5]_i_1__0_n_2 ;
  wire \ref_clk_cntr_i_reg[5]_i_1__0_n_3 ;
  wire \ref_clk_cntr_i_reg[6]_i_1__0_n_0 ;
  wire \ref_clk_cntr_i_reg[6]_i_1__0_n_2 ;
  wire \ref_clk_cntr_i_reg[6]_i_1__0_n_3 ;
  wire \ref_clk_cntr_i_reg[7]_i_1__0_n_0 ;
  wire \ref_clk_cntr_i_reg[7]_i_1__0_n_2 ;
  wire \ref_clk_cntr_i_reg[7]_i_1__0_n_3 ;
  wire \ref_clk_cntr_i_reg[8]_i_1__0_n_0 ;
  wire \ref_clk_cntr_i_reg[8]_i_1__0_n_2 ;
  wire \ref_clk_cntr_i_reg[8]_i_1__0_n_3 ;
  wire \ref_clk_cntr_i_reg[9]_i_1__0_n_0 ;
  wire \ref_clk_cntr_i_reg[9]_i_1__0_n_2 ;
  wire \ref_clk_cntr_i_reg[9]_i_1__0_n_3 ;
  wire \ref_clk_cntr_i_reg[9]_i_2__0_n_0 ;
  wire \ref_clk_cntr_i_reg[9]_i_2__0_n_1 ;
  wire \ref_clk_cntr_i_reg[9]_i_2__0_n_2 ;
  wire \ref_clk_cntr_i_reg[9]_i_2__0_n_3 ;
  (* RTL_KEEP = "true" *) wire [3:0]rst_cnt;
  wire rst_cnt_c;
  (* RTL_KEEP = "true" *) wire rst_cnt_ref;
  wire \rst_cnt_reg[0]_0 ;
  wire rst_cnt_synced_0;
  wire rst_cnt_synced_1;
  wire [64:0]src_in;

  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "1" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0__8 \CLKS[0].cdc_done 
       (.dest_clk(aclk_kernel_cont_01),
        .dest_out(done_synced_0),
        .src_clk(1'b0),
        .src_in(done[0]));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__parameterized1__5 \CLKS[0].cdc_rst_cn0 
       (.dest_arst(rst_cnt_synced_0),
        .dest_clk(aclk_kernel_cont_01),
        .src_arst(rst_cnt[0]));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "23" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized1__8 \CLKS[0].cdc_test_clk0_cntr 
       (.dest_clk(aclk_freerun),
        .dest_out(src_in[46:24]),
        .src_clk(1'b0),
        .src_in(\CLKS[0].test_clk_cntr_reg[0]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CLKS[0].test_clk_cntr[0][0]_i_1__1 
       (.I0(done_synced_0),
        .O(\CLKS[0].test_clk_cntr[0][0]_i_1__1_n_0 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][0] 
       (.C(aclk_kernel_cont_01),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][0]_i_2__1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [0]));
  LUT6CY #(
    .INIT(64'hFFFFFF00FF0000FF)) 
    \CLKS[0].test_clk_cntr_reg[0][0]_i_2__1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][0]_i_2__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [0]),
        .I4(1'b0),
        .O51(\CLKS[0].test_clk_cntr_reg[0][0]_i_2__1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][0]_i_2__1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][0]_i_2__1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][10] 
       (.C(aclk_kernel_cont_01),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][10]_i_1__1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [10]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][10]_i_1__1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][10]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [10]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][10]_i_2__1_n_0 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][10]_i_1__1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][10]_i_1__1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][10]_i_1__1_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("TRUE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \CLKS[0].test_clk_cntr_reg[0][10]_i_2__1 
       (.CIN(\CLKS[0].test_clk_cntr_reg[0][2]_i_2__1_n_3 ),
        .COUTB(\CLKS[0].test_clk_cntr_reg[0][10]_i_2__1_n_0 ),
        .COUTD(\CLKS[0].test_clk_cntr_reg[0][10]_i_2__1_n_1 ),
        .COUTF(\CLKS[0].test_clk_cntr_reg[0][10]_i_2__1_n_2 ),
        .COUTH(\CLKS[0].test_clk_cntr_reg[0][10]_i_2__1_n_3 ),
        .CYA(\CLKS[0].test_clk_cntr_reg[0][8]_i_1__1_n_2 ),
        .CYB(\CLKS[0].test_clk_cntr_reg[0][9]_i_1__1_n_2 ),
        .CYC(\CLKS[0].test_clk_cntr_reg[0][10]_i_1__1_n_2 ),
        .CYD(\CLKS[0].test_clk_cntr_reg[0][11]_i_1__1_n_2 ),
        .CYE(\CLKS[0].test_clk_cntr_reg[0][12]_i_1__1_n_2 ),
        .CYF(\CLKS[0].test_clk_cntr_reg[0][13]_i_1__1_n_2 ),
        .CYG(\CLKS[0].test_clk_cntr_reg[0][14]_i_1__1_n_2 ),
        .CYH(\CLKS[0].test_clk_cntr_reg[0][15]_i_1__1_n_2 ),
        .GEA(\CLKS[0].test_clk_cntr_reg[0][8]_i_1__1_n_0 ),
        .GEB(\CLKS[0].test_clk_cntr_reg[0][9]_i_1__1_n_0 ),
        .GEC(\CLKS[0].test_clk_cntr_reg[0][10]_i_1__1_n_0 ),
        .GED(\CLKS[0].test_clk_cntr_reg[0][11]_i_1__1_n_0 ),
        .GEE(\CLKS[0].test_clk_cntr_reg[0][12]_i_1__1_n_0 ),
        .GEF(\CLKS[0].test_clk_cntr_reg[0][13]_i_1__1_n_0 ),
        .GEG(\CLKS[0].test_clk_cntr_reg[0][14]_i_1__1_n_0 ),
        .GEH(\CLKS[0].test_clk_cntr_reg[0][15]_i_1__1_n_0 ),
        .PROPA(\CLKS[0].test_clk_cntr_reg[0][8]_i_1__1_n_3 ),
        .PROPB(\CLKS[0].test_clk_cntr_reg[0][9]_i_1__1_n_3 ),
        .PROPC(\CLKS[0].test_clk_cntr_reg[0][10]_i_1__1_n_3 ),
        .PROPD(\CLKS[0].test_clk_cntr_reg[0][11]_i_1__1_n_3 ),
        .PROPE(\CLKS[0].test_clk_cntr_reg[0][12]_i_1__1_n_3 ),
        .PROPF(\CLKS[0].test_clk_cntr_reg[0][13]_i_1__1_n_3 ),
        .PROPG(\CLKS[0].test_clk_cntr_reg[0][14]_i_1__1_n_3 ),
        .PROPH(\CLKS[0].test_clk_cntr_reg[0][15]_i_1__1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][11] 
       (.C(aclk_kernel_cont_01),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][11]_i_1__1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [11]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][11]_i_1__1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][11]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [11]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][10]_i_1__1_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][11]_i_1__1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][11]_i_1__1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][11]_i_1__1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][12] 
       (.C(aclk_kernel_cont_01),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][12]_i_1__1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [12]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][12]_i_1__1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][12]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [12]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][10]_i_2__1_n_1 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][12]_i_1__1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][12]_i_1__1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][12]_i_1__1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][13] 
       (.C(aclk_kernel_cont_01),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][13]_i_1__1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [13]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][13]_i_1__1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][13]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [13]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][12]_i_1__1_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][13]_i_1__1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][13]_i_1__1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][13]_i_1__1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][14] 
       (.C(aclk_kernel_cont_01),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][14]_i_1__1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [14]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][14]_i_1__1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][14]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [14]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][10]_i_2__1_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][14]_i_1__1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][14]_i_1__1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][14]_i_1__1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][15] 
       (.C(aclk_kernel_cont_01),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][15]_i_1__1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [15]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][15]_i_1__1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][15]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [15]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][14]_i_1__1_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][15]_i_1__1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][15]_i_1__1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][15]_i_1__1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][16] 
       (.C(aclk_kernel_cont_01),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][16]_i_1__1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [16]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][16]_i_1__1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][16]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [16]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][10]_i_2__1_n_3 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][16]_i_1__1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][16]_i_1__1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][16]_i_1__1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][17] 
       (.C(aclk_kernel_cont_01),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][17]_i_1__1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [17]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][17]_i_1__1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][17]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [17]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][16]_i_1__1_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][17]_i_1__1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][17]_i_1__1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][17]_i_1__1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][18] 
       (.C(aclk_kernel_cont_01),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][18]_i_1__1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [18]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][18]_i_1__1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][18]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [18]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][18]_i_2__1_n_0 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][18]_i_1__1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][18]_i_1__1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][18]_i_1__1_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("TRUE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \CLKS[0].test_clk_cntr_reg[0][18]_i_2__1 
       (.CIN(\CLKS[0].test_clk_cntr_reg[0][10]_i_2__1_n_3 ),
        .COUTB(\CLKS[0].test_clk_cntr_reg[0][18]_i_2__1_n_0 ),
        .COUTD(\CLKS[0].test_clk_cntr_reg[0][18]_i_2__1_n_1 ),
        .COUTF(\CLKS[0].test_clk_cntr_reg[0][18]_i_2__1_n_2 ),
        .COUTH(\CLKS[0].test_clk_cntr_reg[0][18]_i_2__1_n_3 ),
        .CYA(\CLKS[0].test_clk_cntr_reg[0][16]_i_1__1_n_2 ),
        .CYB(\CLKS[0].test_clk_cntr_reg[0][17]_i_1__1_n_2 ),
        .CYC(\CLKS[0].test_clk_cntr_reg[0][18]_i_1__1_n_2 ),
        .CYD(\CLKS[0].test_clk_cntr_reg[0][19]_i_1__1_n_2 ),
        .CYE(\CLKS[0].test_clk_cntr_reg[0][20]_i_1__1_n_2 ),
        .CYF(\CLKS[0].test_clk_cntr_reg[0][21]_i_1__1_n_2 ),
        .CYG(\CLKS[0].test_clk_cntr_reg[0][22]_i_1__1_n_2 ),
        .CYH(\CLKS[0].test_clk_cntr_reg[0][18]_i_3__1_n_2 ),
        .GEA(\CLKS[0].test_clk_cntr_reg[0][16]_i_1__1_n_0 ),
        .GEB(\CLKS[0].test_clk_cntr_reg[0][17]_i_1__1_n_0 ),
        .GEC(\CLKS[0].test_clk_cntr_reg[0][18]_i_1__1_n_0 ),
        .GED(\CLKS[0].test_clk_cntr_reg[0][19]_i_1__1_n_0 ),
        .GEE(\CLKS[0].test_clk_cntr_reg[0][20]_i_1__1_n_0 ),
        .GEF(\CLKS[0].test_clk_cntr_reg[0][21]_i_1__1_n_0 ),
        .GEG(\CLKS[0].test_clk_cntr_reg[0][22]_i_1__1_n_0 ),
        .GEH(\CLKS[0].test_clk_cntr_reg[0][18]_i_3__1_n_0 ),
        .PROPA(\CLKS[0].test_clk_cntr_reg[0][16]_i_1__1_n_3 ),
        .PROPB(\CLKS[0].test_clk_cntr_reg[0][17]_i_1__1_n_3 ),
        .PROPC(\CLKS[0].test_clk_cntr_reg[0][18]_i_1__1_n_3 ),
        .PROPD(\CLKS[0].test_clk_cntr_reg[0][19]_i_1__1_n_3 ),
        .PROPE(\CLKS[0].test_clk_cntr_reg[0][20]_i_1__1_n_3 ),
        .PROPF(\CLKS[0].test_clk_cntr_reg[0][21]_i_1__1_n_3 ),
        .PROPG(\CLKS[0].test_clk_cntr_reg[0][22]_i_1__1_n_3 ),
        .PROPH(\CLKS[0].test_clk_cntr_reg[0][18]_i_3__1_n_3 ));
  LUT6CY #(
    .INIT(64'h00000000FF000000)) 
    \CLKS[0].test_clk_cntr_reg[0][18]_i_3__1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][18]_i_3__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(1'b0),
        .I4(1'b0),
        .O51(\CLKS[0].test_clk_cntr_reg[0][18]_i_3__1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][18]_i_3__1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][18]_i_3__1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][19] 
       (.C(aclk_kernel_cont_01),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][19]_i_1__1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [19]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][19]_i_1__1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][19]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [19]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][18]_i_1__1_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][19]_i_1__1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][19]_i_1__1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][19]_i_1__1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][1] 
       (.C(aclk_kernel_cont_01),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][1]_i_1__1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [1]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][1]_i_1__1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][1]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [1]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][0]_i_2__1_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][1]_i_1__1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][1]_i_1__1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][1]_i_1__1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][20] 
       (.C(aclk_kernel_cont_01),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][20]_i_1__1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [20]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][20]_i_1__1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][20]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [20]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][18]_i_2__1_n_1 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][20]_i_1__1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][20]_i_1__1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][20]_i_1__1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][21] 
       (.C(aclk_kernel_cont_01),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][21]_i_1__1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [21]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][21]_i_1__1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][21]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [21]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][20]_i_1__1_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][21]_i_1__1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][21]_i_1__1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][21]_i_1__1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][22] 
       (.C(aclk_kernel_cont_01),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][22]_i_1__1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [22]));
  LUT6CY #(
    .INIT(64'hFF00FF0000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][22]_i_1__1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][22]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [22]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][18]_i_2__1_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][22]_i_1__1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][22]_i_1__1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][22]_i_1__1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][2] 
       (.C(aclk_kernel_cont_01),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][2]_i_1__1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [2]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][2]_i_1__1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][2]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [2]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][2]_i_2__1_n_0 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][2]_i_1__1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][2]_i_1__1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][2]_i_1__1_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("FALSE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \CLKS[0].test_clk_cntr_reg[0][2]_i_2__1 
       (.CIN(1'b0),
        .COUTB(\CLKS[0].test_clk_cntr_reg[0][2]_i_2__1_n_0 ),
        .COUTD(\CLKS[0].test_clk_cntr_reg[0][2]_i_2__1_n_1 ),
        .COUTF(\CLKS[0].test_clk_cntr_reg[0][2]_i_2__1_n_2 ),
        .COUTH(\CLKS[0].test_clk_cntr_reg[0][2]_i_2__1_n_3 ),
        .CYA(\CLKS[0].test_clk_cntr_reg[0][0]_i_2__1_n_2 ),
        .CYB(\CLKS[0].test_clk_cntr_reg[0][1]_i_1__1_n_2 ),
        .CYC(\CLKS[0].test_clk_cntr_reg[0][2]_i_1__1_n_2 ),
        .CYD(\CLKS[0].test_clk_cntr_reg[0][3]_i_1__1_n_2 ),
        .CYE(\CLKS[0].test_clk_cntr_reg[0][4]_i_1__1_n_2 ),
        .CYF(\CLKS[0].test_clk_cntr_reg[0][5]_i_1__1_n_2 ),
        .CYG(\CLKS[0].test_clk_cntr_reg[0][6]_i_1__1_n_2 ),
        .CYH(\CLKS[0].test_clk_cntr_reg[0][7]_i_1__1_n_2 ),
        .GEA(\CLKS[0].test_clk_cntr_reg[0][0]_i_2__1_n_0 ),
        .GEB(\CLKS[0].test_clk_cntr_reg[0][1]_i_1__1_n_0 ),
        .GEC(\CLKS[0].test_clk_cntr_reg[0][2]_i_1__1_n_0 ),
        .GED(\CLKS[0].test_clk_cntr_reg[0][3]_i_1__1_n_0 ),
        .GEE(\CLKS[0].test_clk_cntr_reg[0][4]_i_1__1_n_0 ),
        .GEF(\CLKS[0].test_clk_cntr_reg[0][5]_i_1__1_n_0 ),
        .GEG(\CLKS[0].test_clk_cntr_reg[0][6]_i_1__1_n_0 ),
        .GEH(\CLKS[0].test_clk_cntr_reg[0][7]_i_1__1_n_0 ),
        .PROPA(\CLKS[0].test_clk_cntr_reg[0][0]_i_2__1_n_3 ),
        .PROPB(\CLKS[0].test_clk_cntr_reg[0][1]_i_1__1_n_3 ),
        .PROPC(\CLKS[0].test_clk_cntr_reg[0][2]_i_1__1_n_3 ),
        .PROPD(\CLKS[0].test_clk_cntr_reg[0][3]_i_1__1_n_3 ),
        .PROPE(\CLKS[0].test_clk_cntr_reg[0][4]_i_1__1_n_3 ),
        .PROPF(\CLKS[0].test_clk_cntr_reg[0][5]_i_1__1_n_3 ),
        .PROPG(\CLKS[0].test_clk_cntr_reg[0][6]_i_1__1_n_3 ),
        .PROPH(\CLKS[0].test_clk_cntr_reg[0][7]_i_1__1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][3] 
       (.C(aclk_kernel_cont_01),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][3]_i_1__1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [3]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][3]_i_1__1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][3]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [3]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][2]_i_1__1_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][3]_i_1__1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][3]_i_1__1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][3]_i_1__1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][4] 
       (.C(aclk_kernel_cont_01),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][4]_i_1__1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [4]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][4]_i_1__1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][4]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [4]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][2]_i_2__1_n_1 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][4]_i_1__1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][4]_i_1__1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][4]_i_1__1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][5] 
       (.C(aclk_kernel_cont_01),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][5]_i_1__1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [5]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][5]_i_1__1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][5]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [5]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][4]_i_1__1_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][5]_i_1__1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][5]_i_1__1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][5]_i_1__1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][6] 
       (.C(aclk_kernel_cont_01),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][6]_i_1__1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [6]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][6]_i_1__1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][6]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [6]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][2]_i_2__1_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][6]_i_1__1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][6]_i_1__1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][6]_i_1__1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][7] 
       (.C(aclk_kernel_cont_01),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][7]_i_1__1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [7]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][7]_i_1__1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][7]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [7]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][6]_i_1__1_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][7]_i_1__1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][7]_i_1__1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][7]_i_1__1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][8] 
       (.C(aclk_kernel_cont_01),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][8]_i_1__1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [8]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][8]_i_1__1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][8]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [8]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][2]_i_2__1_n_3 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][8]_i_1__1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][8]_i_1__1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][8]_i_1__1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][9] 
       (.C(aclk_kernel_cont_01),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][9]_i_1__1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [9]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][9]_i_1__1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][9]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [9]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][8]_i_1__1_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][9]_i_1__1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][9]_i_1__1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][9]_i_1__1_n_3 ));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "1" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0__9 \CLKS[1].cdc_done 
       (.dest_clk(aclk_kernel_01),
        .dest_out(done_synced_1),
        .src_clk(1'b0),
        .src_in(done[1]));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__parameterized1__6 \CLKS[1].cdc_rst_cn0 
       (.dest_arst(rst_cnt_synced_1),
        .dest_clk(aclk_kernel_01),
        .src_arst(rst_cnt[1]));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "23" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized1__9 \CLKS[1].cdc_test_clk0_cntr 
       (.dest_clk(aclk_freerun),
        .dest_out(src_in[22:0]),
        .src_clk(1'b0),
        .src_in(\CLKS[1].test_clk_cntr_reg[1]_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CLKS[1].test_clk_cntr[1][0]_i_1__0 
       (.I0(done_synced_1),
        .O(\CLKS[1].test_clk_cntr[1][0]_i_1__0_n_0 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][0] 
       (.C(aclk_kernel_01),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][0]_i_2__0_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [0]));
  LUT6CY #(
    .INIT(64'hFFFFFF00FF0000FF)) 
    \CLKS[1].test_clk_cntr_reg[1][0]_i_2__0 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][0]_i_2__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [0]),
        .I4(1'b0),
        .O51(\CLKS[1].test_clk_cntr_reg[1][0]_i_2__0_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][0]_i_2__0_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][0]_i_2__0_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][10] 
       (.C(aclk_kernel_01),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][10]_i_1__0_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [10]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][10]_i_1__0 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][10]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [10]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][10]_i_2__0_n_0 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][10]_i_1__0_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][10]_i_1__0_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][10]_i_1__0_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("TRUE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \CLKS[1].test_clk_cntr_reg[1][10]_i_2__0 
       (.CIN(\CLKS[1].test_clk_cntr_reg[1][2]_i_2__0_n_3 ),
        .COUTB(\CLKS[1].test_clk_cntr_reg[1][10]_i_2__0_n_0 ),
        .COUTD(\CLKS[1].test_clk_cntr_reg[1][10]_i_2__0_n_1 ),
        .COUTF(\CLKS[1].test_clk_cntr_reg[1][10]_i_2__0_n_2 ),
        .COUTH(\CLKS[1].test_clk_cntr_reg[1][10]_i_2__0_n_3 ),
        .CYA(\CLKS[1].test_clk_cntr_reg[1][8]_i_1__0_n_2 ),
        .CYB(\CLKS[1].test_clk_cntr_reg[1][9]_i_1__0_n_2 ),
        .CYC(\CLKS[1].test_clk_cntr_reg[1][10]_i_1__0_n_2 ),
        .CYD(\CLKS[1].test_clk_cntr_reg[1][11]_i_1__0_n_2 ),
        .CYE(\CLKS[1].test_clk_cntr_reg[1][12]_i_1__0_n_2 ),
        .CYF(\CLKS[1].test_clk_cntr_reg[1][13]_i_1__0_n_2 ),
        .CYG(\CLKS[1].test_clk_cntr_reg[1][14]_i_1__0_n_2 ),
        .CYH(\CLKS[1].test_clk_cntr_reg[1][15]_i_1__0_n_2 ),
        .GEA(\CLKS[1].test_clk_cntr_reg[1][8]_i_1__0_n_0 ),
        .GEB(\CLKS[1].test_clk_cntr_reg[1][9]_i_1__0_n_0 ),
        .GEC(\CLKS[1].test_clk_cntr_reg[1][10]_i_1__0_n_0 ),
        .GED(\CLKS[1].test_clk_cntr_reg[1][11]_i_1__0_n_0 ),
        .GEE(\CLKS[1].test_clk_cntr_reg[1][12]_i_1__0_n_0 ),
        .GEF(\CLKS[1].test_clk_cntr_reg[1][13]_i_1__0_n_0 ),
        .GEG(\CLKS[1].test_clk_cntr_reg[1][14]_i_1__0_n_0 ),
        .GEH(\CLKS[1].test_clk_cntr_reg[1][15]_i_1__0_n_0 ),
        .PROPA(\CLKS[1].test_clk_cntr_reg[1][8]_i_1__0_n_3 ),
        .PROPB(\CLKS[1].test_clk_cntr_reg[1][9]_i_1__0_n_3 ),
        .PROPC(\CLKS[1].test_clk_cntr_reg[1][10]_i_1__0_n_3 ),
        .PROPD(\CLKS[1].test_clk_cntr_reg[1][11]_i_1__0_n_3 ),
        .PROPE(\CLKS[1].test_clk_cntr_reg[1][12]_i_1__0_n_3 ),
        .PROPF(\CLKS[1].test_clk_cntr_reg[1][13]_i_1__0_n_3 ),
        .PROPG(\CLKS[1].test_clk_cntr_reg[1][14]_i_1__0_n_3 ),
        .PROPH(\CLKS[1].test_clk_cntr_reg[1][15]_i_1__0_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][11] 
       (.C(aclk_kernel_01),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][11]_i_1__0_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [11]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][11]_i_1__0 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][11]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [11]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][10]_i_1__0_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][11]_i_1__0_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][11]_i_1__0_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][11]_i_1__0_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][12] 
       (.C(aclk_kernel_01),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][12]_i_1__0_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [12]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][12]_i_1__0 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][12]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [12]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][10]_i_2__0_n_1 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][12]_i_1__0_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][12]_i_1__0_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][12]_i_1__0_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][13] 
       (.C(aclk_kernel_01),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][13]_i_1__0_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [13]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][13]_i_1__0 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][13]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [13]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][12]_i_1__0_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][13]_i_1__0_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][13]_i_1__0_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][13]_i_1__0_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][14] 
       (.C(aclk_kernel_01),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][14]_i_1__0_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [14]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][14]_i_1__0 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][14]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [14]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][10]_i_2__0_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][14]_i_1__0_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][14]_i_1__0_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][14]_i_1__0_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][15] 
       (.C(aclk_kernel_01),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][15]_i_1__0_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [15]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][15]_i_1__0 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][15]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [15]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][14]_i_1__0_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][15]_i_1__0_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][15]_i_1__0_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][15]_i_1__0_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][16] 
       (.C(aclk_kernel_01),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][16]_i_1__0_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [16]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][16]_i_1__0 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][16]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [16]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][10]_i_2__0_n_3 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][16]_i_1__0_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][16]_i_1__0_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][16]_i_1__0_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][17] 
       (.C(aclk_kernel_01),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][17]_i_1__0_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [17]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][17]_i_1__0 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][17]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [17]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][16]_i_1__0_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][17]_i_1__0_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][17]_i_1__0_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][17]_i_1__0_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][18] 
       (.C(aclk_kernel_01),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][18]_i_1__0_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [18]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][18]_i_1__0 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][18]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [18]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][18]_i_2__0_n_0 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][18]_i_1__0_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][18]_i_1__0_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][18]_i_1__0_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("TRUE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \CLKS[1].test_clk_cntr_reg[1][18]_i_2__0 
       (.CIN(\CLKS[1].test_clk_cntr_reg[1][10]_i_2__0_n_3 ),
        .COUTB(\CLKS[1].test_clk_cntr_reg[1][18]_i_2__0_n_0 ),
        .COUTD(\CLKS[1].test_clk_cntr_reg[1][18]_i_2__0_n_1 ),
        .COUTF(\CLKS[1].test_clk_cntr_reg[1][18]_i_2__0_n_2 ),
        .COUTH(\CLKS[1].test_clk_cntr_reg[1][18]_i_2__0_n_3 ),
        .CYA(\CLKS[1].test_clk_cntr_reg[1][16]_i_1__0_n_2 ),
        .CYB(\CLKS[1].test_clk_cntr_reg[1][17]_i_1__0_n_2 ),
        .CYC(\CLKS[1].test_clk_cntr_reg[1][18]_i_1__0_n_2 ),
        .CYD(\CLKS[1].test_clk_cntr_reg[1][19]_i_1__0_n_2 ),
        .CYE(\CLKS[1].test_clk_cntr_reg[1][20]_i_1__0_n_2 ),
        .CYF(\CLKS[1].test_clk_cntr_reg[1][21]_i_1__0_n_2 ),
        .CYG(\CLKS[1].test_clk_cntr_reg[1][22]_i_1__0_n_2 ),
        .CYH(\CLKS[1].test_clk_cntr_reg[1][18]_i_3__0_n_2 ),
        .GEA(\CLKS[1].test_clk_cntr_reg[1][16]_i_1__0_n_0 ),
        .GEB(\CLKS[1].test_clk_cntr_reg[1][17]_i_1__0_n_0 ),
        .GEC(\CLKS[1].test_clk_cntr_reg[1][18]_i_1__0_n_0 ),
        .GED(\CLKS[1].test_clk_cntr_reg[1][19]_i_1__0_n_0 ),
        .GEE(\CLKS[1].test_clk_cntr_reg[1][20]_i_1__0_n_0 ),
        .GEF(\CLKS[1].test_clk_cntr_reg[1][21]_i_1__0_n_0 ),
        .GEG(\CLKS[1].test_clk_cntr_reg[1][22]_i_1__0_n_0 ),
        .GEH(\CLKS[1].test_clk_cntr_reg[1][18]_i_3__0_n_0 ),
        .PROPA(\CLKS[1].test_clk_cntr_reg[1][16]_i_1__0_n_3 ),
        .PROPB(\CLKS[1].test_clk_cntr_reg[1][17]_i_1__0_n_3 ),
        .PROPC(\CLKS[1].test_clk_cntr_reg[1][18]_i_1__0_n_3 ),
        .PROPD(\CLKS[1].test_clk_cntr_reg[1][19]_i_1__0_n_3 ),
        .PROPE(\CLKS[1].test_clk_cntr_reg[1][20]_i_1__0_n_3 ),
        .PROPF(\CLKS[1].test_clk_cntr_reg[1][21]_i_1__0_n_3 ),
        .PROPG(\CLKS[1].test_clk_cntr_reg[1][22]_i_1__0_n_3 ),
        .PROPH(\CLKS[1].test_clk_cntr_reg[1][18]_i_3__0_n_3 ));
  LUT6CY #(
    .INIT(64'h00000000FF000000)) 
    \CLKS[1].test_clk_cntr_reg[1][18]_i_3__0 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][18]_i_3__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(1'b0),
        .I4(1'b0),
        .O51(\CLKS[1].test_clk_cntr_reg[1][18]_i_3__0_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][18]_i_3__0_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][18]_i_3__0_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][19] 
       (.C(aclk_kernel_01),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][19]_i_1__0_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [19]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][19]_i_1__0 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][19]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [19]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][18]_i_1__0_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][19]_i_1__0_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][19]_i_1__0_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][19]_i_1__0_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][1] 
       (.C(aclk_kernel_01),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][1]_i_1__0_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [1]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][1]_i_1__0 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][1]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [1]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][0]_i_2__0_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][1]_i_1__0_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][1]_i_1__0_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][1]_i_1__0_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][20] 
       (.C(aclk_kernel_01),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][20]_i_1__0_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [20]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][20]_i_1__0 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][20]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [20]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][18]_i_2__0_n_1 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][20]_i_1__0_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][20]_i_1__0_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][20]_i_1__0_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][21] 
       (.C(aclk_kernel_01),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][21]_i_1__0_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [21]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][21]_i_1__0 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][21]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [21]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][20]_i_1__0_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][21]_i_1__0_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][21]_i_1__0_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][21]_i_1__0_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][22] 
       (.C(aclk_kernel_01),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][22]_i_1__0_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [22]));
  LUT6CY #(
    .INIT(64'hFF00FF0000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][22]_i_1__0 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][22]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [22]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][18]_i_2__0_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][22]_i_1__0_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][22]_i_1__0_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][22]_i_1__0_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][2] 
       (.C(aclk_kernel_01),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][2]_i_1__0_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [2]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][2]_i_1__0 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][2]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [2]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][2]_i_2__0_n_0 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][2]_i_1__0_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][2]_i_1__0_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][2]_i_1__0_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("FALSE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \CLKS[1].test_clk_cntr_reg[1][2]_i_2__0 
       (.CIN(1'b0),
        .COUTB(\CLKS[1].test_clk_cntr_reg[1][2]_i_2__0_n_0 ),
        .COUTD(\CLKS[1].test_clk_cntr_reg[1][2]_i_2__0_n_1 ),
        .COUTF(\CLKS[1].test_clk_cntr_reg[1][2]_i_2__0_n_2 ),
        .COUTH(\CLKS[1].test_clk_cntr_reg[1][2]_i_2__0_n_3 ),
        .CYA(\CLKS[1].test_clk_cntr_reg[1][0]_i_2__0_n_2 ),
        .CYB(\CLKS[1].test_clk_cntr_reg[1][1]_i_1__0_n_2 ),
        .CYC(\CLKS[1].test_clk_cntr_reg[1][2]_i_1__0_n_2 ),
        .CYD(\CLKS[1].test_clk_cntr_reg[1][3]_i_1__0_n_2 ),
        .CYE(\CLKS[1].test_clk_cntr_reg[1][4]_i_1__0_n_2 ),
        .CYF(\CLKS[1].test_clk_cntr_reg[1][5]_i_1__0_n_2 ),
        .CYG(\CLKS[1].test_clk_cntr_reg[1][6]_i_1__0_n_2 ),
        .CYH(\CLKS[1].test_clk_cntr_reg[1][7]_i_1__0_n_2 ),
        .GEA(\CLKS[1].test_clk_cntr_reg[1][0]_i_2__0_n_0 ),
        .GEB(\CLKS[1].test_clk_cntr_reg[1][1]_i_1__0_n_0 ),
        .GEC(\CLKS[1].test_clk_cntr_reg[1][2]_i_1__0_n_0 ),
        .GED(\CLKS[1].test_clk_cntr_reg[1][3]_i_1__0_n_0 ),
        .GEE(\CLKS[1].test_clk_cntr_reg[1][4]_i_1__0_n_0 ),
        .GEF(\CLKS[1].test_clk_cntr_reg[1][5]_i_1__0_n_0 ),
        .GEG(\CLKS[1].test_clk_cntr_reg[1][6]_i_1__0_n_0 ),
        .GEH(\CLKS[1].test_clk_cntr_reg[1][7]_i_1__0_n_0 ),
        .PROPA(\CLKS[1].test_clk_cntr_reg[1][0]_i_2__0_n_3 ),
        .PROPB(\CLKS[1].test_clk_cntr_reg[1][1]_i_1__0_n_3 ),
        .PROPC(\CLKS[1].test_clk_cntr_reg[1][2]_i_1__0_n_3 ),
        .PROPD(\CLKS[1].test_clk_cntr_reg[1][3]_i_1__0_n_3 ),
        .PROPE(\CLKS[1].test_clk_cntr_reg[1][4]_i_1__0_n_3 ),
        .PROPF(\CLKS[1].test_clk_cntr_reg[1][5]_i_1__0_n_3 ),
        .PROPG(\CLKS[1].test_clk_cntr_reg[1][6]_i_1__0_n_3 ),
        .PROPH(\CLKS[1].test_clk_cntr_reg[1][7]_i_1__0_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][3] 
       (.C(aclk_kernel_01),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][3]_i_1__0_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [3]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][3]_i_1__0 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][3]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [3]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][2]_i_1__0_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][3]_i_1__0_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][3]_i_1__0_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][3]_i_1__0_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][4] 
       (.C(aclk_kernel_01),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][4]_i_1__0_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [4]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][4]_i_1__0 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][4]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [4]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][2]_i_2__0_n_1 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][4]_i_1__0_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][4]_i_1__0_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][4]_i_1__0_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][5] 
       (.C(aclk_kernel_01),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][5]_i_1__0_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [5]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][5]_i_1__0 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][5]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [5]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][4]_i_1__0_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][5]_i_1__0_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][5]_i_1__0_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][5]_i_1__0_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][6] 
       (.C(aclk_kernel_01),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][6]_i_1__0_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [6]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][6]_i_1__0 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][6]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [6]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][2]_i_2__0_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][6]_i_1__0_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][6]_i_1__0_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][6]_i_1__0_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][7] 
       (.C(aclk_kernel_01),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][7]_i_1__0_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [7]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][7]_i_1__0 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][7]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [7]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][6]_i_1__0_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][7]_i_1__0_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][7]_i_1__0_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][7]_i_1__0_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][8] 
       (.C(aclk_kernel_01),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][8]_i_1__0_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [8]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][8]_i_1__0 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][8]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [8]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][2]_i_2__0_n_3 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][8]_i_1__0_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][8]_i_1__0_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][8]_i_1__0_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][9] 
       (.C(aclk_kernel_01),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][9]_i_1__0_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [9]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][9]_i_1__0 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][9]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [9]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][8]_i_1__0_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][9]_i_1__0_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][9]_i_1__0_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][9]_i_1__0_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    done_ref_i_i_1__0
       (.I0(src_in[64]),
        .O(done_ref_i_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    done_ref_i_i_2__0
       (.I0(done_ref_i_i_3__0_n_0),
        .I1(src_in[49]),
        .I2(src_in[48]),
        .I3(src_in[51]),
        .I4(src_in[50]),
        .I5(done_ref_i_i_4__0_n_0),
        .O(done_ref_i_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    done_ref_i_i_3__0
       (.I0(src_in[60]),
        .I1(src_in[61]),
        .I2(src_in[58]),
        .I3(src_in[59]),
        .I4(src_in[62]),
        .I5(src_in[63]),
        .O(done_ref_i_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    done_ref_i_i_4__0
       (.I0(src_in[54]),
        .I1(src_in[55]),
        .I2(src_in[52]),
        .I3(src_in[53]),
        .I4(src_in[56]),
        .I5(src_in[57]),
        .O(done_ref_i_i_4__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    done_ref_i_reg
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__0_n_0),
        .D(done_ref_i_i_2__0_n_0),
        .Q(src_in[64]),
        .R(rst_cnt_ref));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \done_reg[0] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__0_n_0),
        .D(done_ref_i_i_2__0_n_0),
        .Q(done[0]),
        .R(rst_cnt_ref));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \done_reg[1] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__0_n_0),
        .D(done_ref_i_i_2__0_n_0),
        .Q(done[1]),
        .R(rst_cnt_ref));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \done_reg[2] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__0_n_0),
        .D(done_ref_i_i_2__0_n_0),
        .Q(done[2]),
        .R(rst_cnt_ref));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \done_reg[3] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__0_n_0),
        .D(done_ref_i_i_2__0_n_0),
        .Q(done[3]),
        .R(rst_cnt_ref));
  LUT4 #(
    .INIT(16'h8000)) 
    \genblk1[1].cdc_freq_cntr_kernel_i_1 
       (.I0(\genblk1[1].cdc_freq_cntr_kernel_i_3_n_0 ),
        .I1(\genblk1[1].cdc_freq_cntr_kernel_i_4_n_0 ),
        .I2(\genblk1[1].cdc_freq_cntr_kernel_i_5_n_0 ),
        .I3(\genblk1[1].cdc_freq_cntr_kernel_i_6_n_0 ),
        .O(src_in[47]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \genblk1[1].cdc_freq_cntr_kernel_i_10 
       (.I0(src_in[0]),
        .I1(src_in[1]),
        .I2(src_in[2]),
        .I3(src_in[4]),
        .I4(src_in[3]),
        .O(\genblk1[1].cdc_freq_cntr_kernel_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \genblk1[1].cdc_freq_cntr_kernel_i_2 
       (.I0(\genblk1[1].cdc_freq_cntr_kernel_i_7_n_0 ),
        .I1(\genblk1[1].cdc_freq_cntr_kernel_i_8_n_0 ),
        .I2(\genblk1[1].cdc_freq_cntr_kernel_i_9_n_0 ),
        .I3(\genblk1[1].cdc_freq_cntr_kernel_i_10_n_0 ),
        .O(src_in[23]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \genblk1[1].cdc_freq_cntr_kernel_i_3 
       (.I0(src_in[37]),
        .I1(src_in[38]),
        .I2(src_in[35]),
        .I3(src_in[36]),
        .I4(src_in[40]),
        .I5(src_in[39]),
        .O(\genblk1[1].cdc_freq_cntr_kernel_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \genblk1[1].cdc_freq_cntr_kernel_i_4 
       (.I0(src_in[43]),
        .I1(src_in[44]),
        .I2(src_in[41]),
        .I3(src_in[42]),
        .I4(src_in[46]),
        .I5(src_in[45]),
        .O(\genblk1[1].cdc_freq_cntr_kernel_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \genblk1[1].cdc_freq_cntr_kernel_i_5 
       (.I0(src_in[31]),
        .I1(src_in[32]),
        .I2(src_in[29]),
        .I3(src_in[30]),
        .I4(src_in[34]),
        .I5(src_in[33]),
        .O(\genblk1[1].cdc_freq_cntr_kernel_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \genblk1[1].cdc_freq_cntr_kernel_i_6 
       (.I0(src_in[24]),
        .I1(src_in[25]),
        .I2(src_in[26]),
        .I3(src_in[28]),
        .I4(src_in[27]),
        .O(\genblk1[1].cdc_freq_cntr_kernel_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \genblk1[1].cdc_freq_cntr_kernel_i_7 
       (.I0(src_in[13]),
        .I1(src_in[14]),
        .I2(src_in[11]),
        .I3(src_in[12]),
        .I4(src_in[16]),
        .I5(src_in[15]),
        .O(\genblk1[1].cdc_freq_cntr_kernel_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \genblk1[1].cdc_freq_cntr_kernel_i_8 
       (.I0(src_in[19]),
        .I1(src_in[20]),
        .I2(src_in[17]),
        .I3(src_in[18]),
        .I4(src_in[22]),
        .I5(src_in[21]),
        .O(\genblk1[1].cdc_freq_cntr_kernel_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \genblk1[1].cdc_freq_cntr_kernel_i_9 
       (.I0(src_in[7]),
        .I1(src_in[8]),
        .I2(src_in[5]),
        .I3(src_in[6]),
        .I4(src_in[10]),
        .I5(src_in[9]),
        .O(\genblk1[1].cdc_freq_cntr_kernel_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \ref_clk_cntr_i[0]_i_1__0 
       (.I0(src_in[48]),
        .I1(rst_cnt_ref),
        .I2(src_in[64]),
        .O(\ref_clk_cntr_i[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[0] 
       (.C(aclk_freerun),
        .CE(1'b1),
        .D(\ref_clk_cntr_i[0]_i_1__0_n_0 ),
        .Q(src_in[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[10] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__0_n_0),
        .D(p_0_in[10]),
        .Q(src_in[58]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[10]_i_1__0 
       (.GE(\ref_clk_cntr_i_reg[10]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[58]),
        .I4(\ref_clk_cntr_i_reg[9]_i_1__0_n_2 ),
        .O51(p_0_in[10]),
        .O52(\ref_clk_cntr_i_reg[10]_i_1__0_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[10]_i_1__0_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[11] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__0_n_0),
        .D(p_0_in[11]),
        .Q(src_in[59]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[11]_i_1__0 
       (.GE(\ref_clk_cntr_i_reg[11]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[59]),
        .I4(\ref_clk_cntr_i_reg[15]_i_2__0_n_0 ),
        .O51(p_0_in[11]),
        .O52(\ref_clk_cntr_i_reg[11]_i_1__0_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[11]_i_1__0_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[12] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__0_n_0),
        .D(p_0_in[12]),
        .Q(src_in[60]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[12]_i_1__0 
       (.GE(\ref_clk_cntr_i_reg[12]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[60]),
        .I4(\ref_clk_cntr_i_reg[11]_i_1__0_n_2 ),
        .O51(p_0_in[12]),
        .O52(\ref_clk_cntr_i_reg[12]_i_1__0_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[12]_i_1__0_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[13] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__0_n_0),
        .D(p_0_in[13]),
        .Q(src_in[61]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[13]_i_1__0 
       (.GE(\ref_clk_cntr_i_reg[13]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[61]),
        .I4(\ref_clk_cntr_i_reg[15]_i_2__0_n_1 ),
        .O51(p_0_in[13]),
        .O52(\ref_clk_cntr_i_reg[13]_i_1__0_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[13]_i_1__0_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[14] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__0_n_0),
        .D(p_0_in[14]),
        .Q(src_in[62]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[14]_i_1__0 
       (.GE(\ref_clk_cntr_i_reg[14]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[62]),
        .I4(\ref_clk_cntr_i_reg[13]_i_1__0_n_2 ),
        .O51(p_0_in[14]),
        .O52(\ref_clk_cntr_i_reg[14]_i_1__0_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[14]_i_1__0_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[15] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__0_n_0),
        .D(p_0_in[15]),
        .Q(src_in[63]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00FF0000FFFF00)) 
    \ref_clk_cntr_i_reg[15]_i_1__0 
       (.GE(\ref_clk_cntr_i_reg[15]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[63]),
        .I4(\ref_clk_cntr_i_reg[15]_i_2__0_n_2 ),
        .O51(p_0_in[15]),
        .O52(\ref_clk_cntr_i_reg[15]_i_1__0_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[15]_i_1__0_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("TRUE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \ref_clk_cntr_i_reg[15]_i_2__0 
       (.CIN(\ref_clk_cntr_i_reg[9]_i_2__0_n_3 ),
        .COUTB(\ref_clk_cntr_i_reg[15]_i_2__0_n_0 ),
        .COUTD(\ref_clk_cntr_i_reg[15]_i_2__0_n_1 ),
        .COUTF(\ref_clk_cntr_i_reg[15]_i_2__0_n_2 ),
        .COUTH(\ref_clk_cntr_i_reg[15]_i_2__0_n_3 ),
        .CYA(\ref_clk_cntr_i_reg[9]_i_1__0_n_2 ),
        .CYB(\ref_clk_cntr_i_reg[10]_i_1__0_n_2 ),
        .CYC(\ref_clk_cntr_i_reg[11]_i_1__0_n_2 ),
        .CYD(\ref_clk_cntr_i_reg[12]_i_1__0_n_2 ),
        .CYE(\ref_clk_cntr_i_reg[13]_i_1__0_n_2 ),
        .CYF(\ref_clk_cntr_i_reg[14]_i_1__0_n_2 ),
        .CYG(\ref_clk_cntr_i_reg[15]_i_1__0_n_2 ),
        .CYH(\ref_clk_cntr_i_reg[15]_i_3__0_n_2 ),
        .GEA(\ref_clk_cntr_i_reg[9]_i_1__0_n_0 ),
        .GEB(\ref_clk_cntr_i_reg[10]_i_1__0_n_0 ),
        .GEC(\ref_clk_cntr_i_reg[11]_i_1__0_n_0 ),
        .GED(\ref_clk_cntr_i_reg[12]_i_1__0_n_0 ),
        .GEE(\ref_clk_cntr_i_reg[13]_i_1__0_n_0 ),
        .GEF(\ref_clk_cntr_i_reg[14]_i_1__0_n_0 ),
        .GEG(\ref_clk_cntr_i_reg[15]_i_1__0_n_0 ),
        .GEH(\ref_clk_cntr_i_reg[15]_i_3__0_n_0 ),
        .PROPA(\ref_clk_cntr_i_reg[9]_i_1__0_n_3 ),
        .PROPB(\ref_clk_cntr_i_reg[10]_i_1__0_n_3 ),
        .PROPC(\ref_clk_cntr_i_reg[11]_i_1__0_n_3 ),
        .PROPD(\ref_clk_cntr_i_reg[12]_i_1__0_n_3 ),
        .PROPE(\ref_clk_cntr_i_reg[13]_i_1__0_n_3 ),
        .PROPF(\ref_clk_cntr_i_reg[14]_i_1__0_n_3 ),
        .PROPG(\ref_clk_cntr_i_reg[15]_i_1__0_n_3 ),
        .PROPH(\ref_clk_cntr_i_reg[15]_i_3__0_n_3 ));
  LUT6CY #(
    .INIT(64'h00000000FF000000)) 
    \ref_clk_cntr_i_reg[15]_i_3__0 
       (.GE(\ref_clk_cntr_i_reg[15]_i_3__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(1'b0),
        .I4(1'b0),
        .O51(\ref_clk_cntr_i_reg[15]_i_3__0_n_1 ),
        .O52(\ref_clk_cntr_i_reg[15]_i_3__0_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[15]_i_3__0_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[1] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__0_n_0),
        .D(p_0_in[1]),
        .Q(src_in[49]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[1]_i_1__0 
       (.GE(\ref_clk_cntr_i_reg[1]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[49]),
        .I4(src_in[48]),
        .O51(p_0_in[1]),
        .O52(\ref_clk_cntr_i_reg[1]_i_1__0_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[1]_i_1__0_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[2] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__0_n_0),
        .D(p_0_in[2]),
        .Q(src_in[50]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[2]_i_1__0 
       (.GE(\ref_clk_cntr_i_reg[2]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[50]),
        .I4(\ref_clk_cntr_i_reg[1]_i_1__0_n_2 ),
        .O51(p_0_in[2]),
        .O52(\ref_clk_cntr_i_reg[2]_i_1__0_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[2]_i_1__0_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[3] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__0_n_0),
        .D(p_0_in[3]),
        .Q(src_in[51]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[3]_i_1__0 
       (.GE(\ref_clk_cntr_i_reg[3]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[51]),
        .I4(\ref_clk_cntr_i_reg[9]_i_2__0_n_0 ),
        .O51(p_0_in[3]),
        .O52(\ref_clk_cntr_i_reg[3]_i_1__0_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[3]_i_1__0_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[4] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__0_n_0),
        .D(p_0_in[4]),
        .Q(src_in[52]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[4]_i_1__0 
       (.GE(\ref_clk_cntr_i_reg[4]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[52]),
        .I4(\ref_clk_cntr_i_reg[3]_i_1__0_n_2 ),
        .O51(p_0_in[4]),
        .O52(\ref_clk_cntr_i_reg[4]_i_1__0_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[4]_i_1__0_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[5] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__0_n_0),
        .D(p_0_in[5]),
        .Q(src_in[53]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[5]_i_1__0 
       (.GE(\ref_clk_cntr_i_reg[5]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[53]),
        .I4(\ref_clk_cntr_i_reg[9]_i_2__0_n_1 ),
        .O51(p_0_in[5]),
        .O52(\ref_clk_cntr_i_reg[5]_i_1__0_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[5]_i_1__0_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[6] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__0_n_0),
        .D(p_0_in[6]),
        .Q(src_in[54]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[6]_i_1__0 
       (.GE(\ref_clk_cntr_i_reg[6]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[54]),
        .I4(\ref_clk_cntr_i_reg[5]_i_1__0_n_2 ),
        .O51(p_0_in[6]),
        .O52(\ref_clk_cntr_i_reg[6]_i_1__0_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[6]_i_1__0_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[7] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__0_n_0),
        .D(p_0_in[7]),
        .Q(src_in[55]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[7]_i_1__0 
       (.GE(\ref_clk_cntr_i_reg[7]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[55]),
        .I4(\ref_clk_cntr_i_reg[9]_i_2__0_n_2 ),
        .O51(p_0_in[7]),
        .O52(\ref_clk_cntr_i_reg[7]_i_1__0_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[7]_i_1__0_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[8] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__0_n_0),
        .D(p_0_in[8]),
        .Q(src_in[56]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[8]_i_1__0 
       (.GE(\ref_clk_cntr_i_reg[8]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[56]),
        .I4(\ref_clk_cntr_i_reg[7]_i_1__0_n_2 ),
        .O51(p_0_in[8]),
        .O52(\ref_clk_cntr_i_reg[8]_i_1__0_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[8]_i_1__0_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[9] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__0_n_0),
        .D(p_0_in[9]),
        .Q(src_in[57]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[9]_i_1__0 
       (.GE(\ref_clk_cntr_i_reg[9]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[57]),
        .I4(\ref_clk_cntr_i_reg[9]_i_2__0_n_3 ),
        .O51(p_0_in[9]),
        .O52(\ref_clk_cntr_i_reg[9]_i_1__0_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[9]_i_1__0_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("FALSE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \ref_clk_cntr_i_reg[9]_i_2__0 
       (.CIN(src_in[48]),
        .COUTB(\ref_clk_cntr_i_reg[9]_i_2__0_n_0 ),
        .COUTD(\ref_clk_cntr_i_reg[9]_i_2__0_n_1 ),
        .COUTF(\ref_clk_cntr_i_reg[9]_i_2__0_n_2 ),
        .COUTH(\ref_clk_cntr_i_reg[9]_i_2__0_n_3 ),
        .CYA(\ref_clk_cntr_i_reg[1]_i_1__0_n_2 ),
        .CYB(\ref_clk_cntr_i_reg[2]_i_1__0_n_2 ),
        .CYC(\ref_clk_cntr_i_reg[3]_i_1__0_n_2 ),
        .CYD(\ref_clk_cntr_i_reg[4]_i_1__0_n_2 ),
        .CYE(\ref_clk_cntr_i_reg[5]_i_1__0_n_2 ),
        .CYF(\ref_clk_cntr_i_reg[6]_i_1__0_n_2 ),
        .CYG(\ref_clk_cntr_i_reg[7]_i_1__0_n_2 ),
        .CYH(\ref_clk_cntr_i_reg[8]_i_1__0_n_2 ),
        .GEA(\ref_clk_cntr_i_reg[1]_i_1__0_n_0 ),
        .GEB(\ref_clk_cntr_i_reg[2]_i_1__0_n_0 ),
        .GEC(\ref_clk_cntr_i_reg[3]_i_1__0_n_0 ),
        .GED(\ref_clk_cntr_i_reg[4]_i_1__0_n_0 ),
        .GEE(\ref_clk_cntr_i_reg[5]_i_1__0_n_0 ),
        .GEF(\ref_clk_cntr_i_reg[6]_i_1__0_n_0 ),
        .GEG(\ref_clk_cntr_i_reg[7]_i_1__0_n_0 ),
        .GEH(\ref_clk_cntr_i_reg[8]_i_1__0_n_0 ),
        .PROPA(\ref_clk_cntr_i_reg[1]_i_1__0_n_3 ),
        .PROPB(\ref_clk_cntr_i_reg[2]_i_1__0_n_3 ),
        .PROPC(\ref_clk_cntr_i_reg[3]_i_1__0_n_3 ),
        .PROPD(\ref_clk_cntr_i_reg[4]_i_1__0_n_3 ),
        .PROPE(\ref_clk_cntr_i_reg[5]_i_1__0_n_3 ),
        .PROPF(\ref_clk_cntr_i_reg[6]_i_1__0_n_3 ),
        .PROPG(\ref_clk_cntr_i_reg[7]_i_1__0_n_3 ),
        .PROPH(\ref_clk_cntr_i_reg[8]_i_1__0_n_3 ));
  LUT2 #(
    .INIT(4'hB)) 
    rst_cnt_ref_i_1__0
       (.I0(dest_arst),
        .I1(\rst_cnt_reg[0]_0 ),
        .O(rst_cnt_c));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    rst_cnt_ref_reg
       (.C(aclk_freerun),
        .CE(1'b1),
        .D(rst_cnt_c),
        .Q(rst_cnt_ref),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rst_cnt_reg[0] 
       (.C(aclk_freerun),
        .CE(1'b1),
        .D(rst_cnt_c),
        .Q(rst_cnt[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rst_cnt_reg[1] 
       (.C(aclk_freerun),
        .CE(1'b1),
        .D(rst_cnt_c),
        .Q(rst_cnt[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rst_cnt_reg[2] 
       (.C(aclk_freerun),
        .CE(1'b1),
        .D(rst_cnt_c),
        .Q(rst_cnt[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rst_cnt_reg[3] 
       (.C(aclk_freerun),
        .CE(1'b1),
        .D(rst_cnt_c),
        .Q(rst_cnt[3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "shell_utils_ucc_v1_0_0_frequency_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_ucc_v1_0_0_frequency_counter__parameterized0
   (src_in,
    aclk_ctrl,
    aclk_freerun,
    aclk_pcie,
    dest_arst,
    \rst_cnt_reg[0]_0 );
  output [64:0]src_in;
  input aclk_ctrl;
  input aclk_freerun;
  input aclk_pcie;
  input dest_arst;
  input \rst_cnt_reg[0]_0 ;

  wire \CLKS[0].test_clk_cntr[0][0]_i_1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][10]_i_1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][10]_i_1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][10]_i_1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][10]_i_1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][10]_i_2_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][10]_i_2_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][10]_i_2_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][10]_i_2_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][11]_i_1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][11]_i_1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][11]_i_1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][11]_i_1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][12]_i_1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][12]_i_1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][12]_i_1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][12]_i_1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][13]_i_1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][13]_i_1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][13]_i_1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][13]_i_1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][14]_i_1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][14]_i_1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][14]_i_1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][14]_i_1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][15]_i_1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][15]_i_1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][15]_i_1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][15]_i_1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][17]_i_1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][17]_i_1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][17]_i_1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][17]_i_1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_2_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_2_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_2_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_2_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_3_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_3_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_3_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_3_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][19]_i_1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][19]_i_1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][19]_i_1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][19]_i_1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][1]_i_1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][1]_i_1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][1]_i_1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][1]_i_1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][20]_i_1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][20]_i_1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][20]_i_1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][20]_i_1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][21]_i_1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][21]_i_1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][21]_i_1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][21]_i_1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][22]_i_1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][22]_i_1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][22]_i_1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][22]_i_1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][2]_i_1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][2]_i_1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][2]_i_1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][2]_i_1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][2]_i_2_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][2]_i_2_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][2]_i_2_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][2]_i_2_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][3]_i_1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][3]_i_1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][3]_i_1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][3]_i_1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][4]_i_1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][4]_i_1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][4]_i_1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][4]_i_1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][5]_i_1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][5]_i_1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][5]_i_1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][5]_i_1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][6]_i_1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][6]_i_1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][6]_i_1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][6]_i_1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][7]_i_1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][7]_i_1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][7]_i_1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][7]_i_1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][9]_i_1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][9]_i_1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][9]_i_1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][9]_i_1_n_3 ;
  wire [22:0]\CLKS[0].test_clk_cntr_reg[0]_0 ;
  wire \CLKS[1].test_clk_cntr[1][0]_i_1__1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][0]_i_2__1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][0]_i_2__1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][0]_i_2__1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][0]_i_2__1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][10]_i_1__1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][10]_i_1__1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][10]_i_1__1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][10]_i_1__1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][10]_i_2__1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][10]_i_2__1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][10]_i_2__1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][10]_i_2__1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][11]_i_1__1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][11]_i_1__1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][11]_i_1__1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][11]_i_1__1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][12]_i_1__1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][12]_i_1__1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][12]_i_1__1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][12]_i_1__1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][13]_i_1__1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][13]_i_1__1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][13]_i_1__1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][13]_i_1__1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][14]_i_1__1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][14]_i_1__1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][14]_i_1__1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][14]_i_1__1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][15]_i_1__1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][15]_i_1__1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][15]_i_1__1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][15]_i_1__1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][16]_i_1__1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][16]_i_1__1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][16]_i_1__1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][16]_i_1__1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][17]_i_1__1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][17]_i_1__1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][17]_i_1__1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][17]_i_1__1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_1__1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_1__1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_1__1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_1__1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_2__1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_2__1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_2__1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_2__1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_3__1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_3__1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_3__1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_3__1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][19]_i_1__1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][19]_i_1__1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][19]_i_1__1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][19]_i_1__1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][1]_i_1__1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][1]_i_1__1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][1]_i_1__1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][1]_i_1__1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][20]_i_1__1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][20]_i_1__1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][20]_i_1__1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][20]_i_1__1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][21]_i_1__1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][21]_i_1__1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][21]_i_1__1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][21]_i_1__1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][22]_i_1__1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][22]_i_1__1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][22]_i_1__1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][22]_i_1__1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][2]_i_1__1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][2]_i_1__1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][2]_i_1__1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][2]_i_1__1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][2]_i_2__1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][2]_i_2__1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][2]_i_2__1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][2]_i_2__1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][3]_i_1__1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][3]_i_1__1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][3]_i_1__1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][3]_i_1__1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][4]_i_1__1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][4]_i_1__1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][4]_i_1__1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][4]_i_1__1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][5]_i_1__1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][5]_i_1__1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][5]_i_1__1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][5]_i_1__1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][6]_i_1__1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][6]_i_1__1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][6]_i_1__1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][6]_i_1__1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][7]_i_1__1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][7]_i_1__1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][7]_i_1__1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][7]_i_1__1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][8]_i_1__1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][8]_i_1__1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][8]_i_1__1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][8]_i_1__1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][9]_i_1__1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][9]_i_1__1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][9]_i_1__1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][9]_i_1__1_n_3 ;
  wire [22:0]\CLKS[1].test_clk_cntr_reg[1]_1 ;
  wire aclk_ctrl;
  wire aclk_freerun;
  wire aclk_pcie;
  wire cdc_freq_cntr_aclk_i_10_n_0;
  wire cdc_freq_cntr_aclk_i_3_n_0;
  wire cdc_freq_cntr_aclk_i_4_n_0;
  wire cdc_freq_cntr_aclk_i_5_n_0;
  wire cdc_freq_cntr_aclk_i_6_n_0;
  wire cdc_freq_cntr_aclk_i_7_n_0;
  wire cdc_freq_cntr_aclk_i_8_n_0;
  wire cdc_freq_cntr_aclk_i_9_n_0;
  wire dest_arst;
  (* RTL_KEEP = "true" *) wire [3:0]done;
  wire done_ref_i_i_1__1_n_0;
  wire done_ref_i_i_2__1_n_0;
  wire done_ref_i_i_3__1_n_0;
  wire done_ref_i_i_4__1_n_0;
  wire done_synced_0;
  wire done_synced_1;
  wire [15:1]p_0_in;
  wire \ref_clk_cntr_i[0]_i_1__1_n_0 ;
  wire \ref_clk_cntr_i_reg[10]_i_1__1_n_0 ;
  wire \ref_clk_cntr_i_reg[10]_i_1__1_n_2 ;
  wire \ref_clk_cntr_i_reg[10]_i_1__1_n_3 ;
  wire \ref_clk_cntr_i_reg[11]_i_1__1_n_0 ;
  wire \ref_clk_cntr_i_reg[11]_i_1__1_n_2 ;
  wire \ref_clk_cntr_i_reg[11]_i_1__1_n_3 ;
  wire \ref_clk_cntr_i_reg[12]_i_1__1_n_0 ;
  wire \ref_clk_cntr_i_reg[12]_i_1__1_n_2 ;
  wire \ref_clk_cntr_i_reg[12]_i_1__1_n_3 ;
  wire \ref_clk_cntr_i_reg[13]_i_1__1_n_0 ;
  wire \ref_clk_cntr_i_reg[13]_i_1__1_n_2 ;
  wire \ref_clk_cntr_i_reg[13]_i_1__1_n_3 ;
  wire \ref_clk_cntr_i_reg[14]_i_1__1_n_0 ;
  wire \ref_clk_cntr_i_reg[14]_i_1__1_n_2 ;
  wire \ref_clk_cntr_i_reg[14]_i_1__1_n_3 ;
  wire \ref_clk_cntr_i_reg[15]_i_1__1_n_0 ;
  wire \ref_clk_cntr_i_reg[15]_i_1__1_n_2 ;
  wire \ref_clk_cntr_i_reg[15]_i_1__1_n_3 ;
  wire \ref_clk_cntr_i_reg[15]_i_2__1_n_0 ;
  wire \ref_clk_cntr_i_reg[15]_i_2__1_n_1 ;
  wire \ref_clk_cntr_i_reg[15]_i_2__1_n_2 ;
  wire \ref_clk_cntr_i_reg[15]_i_2__1_n_3 ;
  wire \ref_clk_cntr_i_reg[15]_i_3__1_n_0 ;
  wire \ref_clk_cntr_i_reg[15]_i_3__1_n_1 ;
  wire \ref_clk_cntr_i_reg[15]_i_3__1_n_2 ;
  wire \ref_clk_cntr_i_reg[15]_i_3__1_n_3 ;
  wire \ref_clk_cntr_i_reg[1]_i_1__1_n_0 ;
  wire \ref_clk_cntr_i_reg[1]_i_1__1_n_2 ;
  wire \ref_clk_cntr_i_reg[1]_i_1__1_n_3 ;
  wire \ref_clk_cntr_i_reg[2]_i_1__1_n_0 ;
  wire \ref_clk_cntr_i_reg[2]_i_1__1_n_2 ;
  wire \ref_clk_cntr_i_reg[2]_i_1__1_n_3 ;
  wire \ref_clk_cntr_i_reg[3]_i_1__1_n_0 ;
  wire \ref_clk_cntr_i_reg[3]_i_1__1_n_2 ;
  wire \ref_clk_cntr_i_reg[3]_i_1__1_n_3 ;
  wire \ref_clk_cntr_i_reg[4]_i_1__1_n_0 ;
  wire \ref_clk_cntr_i_reg[4]_i_1__1_n_2 ;
  wire \ref_clk_cntr_i_reg[4]_i_1__1_n_3 ;
  wire \ref_clk_cntr_i_reg[5]_i_1__1_n_0 ;
  wire \ref_clk_cntr_i_reg[5]_i_1__1_n_2 ;
  wire \ref_clk_cntr_i_reg[5]_i_1__1_n_3 ;
  wire \ref_clk_cntr_i_reg[6]_i_1__1_n_0 ;
  wire \ref_clk_cntr_i_reg[6]_i_1__1_n_2 ;
  wire \ref_clk_cntr_i_reg[6]_i_1__1_n_3 ;
  wire \ref_clk_cntr_i_reg[7]_i_1__1_n_0 ;
  wire \ref_clk_cntr_i_reg[7]_i_1__1_n_2 ;
  wire \ref_clk_cntr_i_reg[7]_i_1__1_n_3 ;
  wire \ref_clk_cntr_i_reg[8]_i_1__1_n_0 ;
  wire \ref_clk_cntr_i_reg[8]_i_1__1_n_2 ;
  wire \ref_clk_cntr_i_reg[8]_i_1__1_n_3 ;
  wire \ref_clk_cntr_i_reg[9]_i_1__1_n_0 ;
  wire \ref_clk_cntr_i_reg[9]_i_1__1_n_2 ;
  wire \ref_clk_cntr_i_reg[9]_i_1__1_n_3 ;
  wire \ref_clk_cntr_i_reg[9]_i_2__1_n_0 ;
  wire \ref_clk_cntr_i_reg[9]_i_2__1_n_1 ;
  wire \ref_clk_cntr_i_reg[9]_i_2__1_n_2 ;
  wire \ref_clk_cntr_i_reg[9]_i_2__1_n_3 ;
  (* RTL_KEEP = "true" *) wire [3:0]rst_cnt;
  wire rst_cnt_c;
  (* RTL_KEEP = "true" *) wire rst_cnt_ref;
  wire \rst_cnt_reg[0]_0 ;
  wire rst_cnt_synced_0;
  wire rst_cnt_synced_1;
  wire [64:0]src_in;

  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "1" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0__10 \CLKS[0].cdc_done 
       (.dest_clk(aclk_ctrl),
        .dest_out(done_synced_0),
        .src_clk(1'b0),
        .src_in(done[0]));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__parameterized1__8 \CLKS[0].cdc_rst_cn0 
       (.dest_arst(rst_cnt_synced_0),
        .dest_clk(aclk_ctrl),
        .src_arst(rst_cnt[0]));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "23" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized1__10 \CLKS[0].cdc_test_clk0_cntr 
       (.dest_clk(aclk_freerun),
        .dest_out(src_in[46:24]),
        .src_clk(1'b0),
        .src_in(\CLKS[0].test_clk_cntr_reg[0]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CLKS[0].test_clk_cntr[0][0]_i_1 
       (.I0(done_synced_0),
        .O(\CLKS[0].test_clk_cntr[0][0]_i_1_n_0 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][0] 
       (.C(aclk_ctrl),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [0]));
  LUT6CY #(
    .INIT(64'hFFFFFF00FF0000FF)) 
    \CLKS[0].test_clk_cntr_reg[0][0]_i_2 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [0]),
        .I4(1'b0),
        .O51(\CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][10] 
       (.C(aclk_ctrl),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][10]_i_1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [10]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][10]_i_1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][10]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [10]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][10]_i_2_n_0 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][10]_i_1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][10]_i_1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][10]_i_1_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("TRUE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \CLKS[0].test_clk_cntr_reg[0][10]_i_2 
       (.CIN(\CLKS[0].test_clk_cntr_reg[0][2]_i_2_n_3 ),
        .COUTB(\CLKS[0].test_clk_cntr_reg[0][10]_i_2_n_0 ),
        .COUTD(\CLKS[0].test_clk_cntr_reg[0][10]_i_2_n_1 ),
        .COUTF(\CLKS[0].test_clk_cntr_reg[0][10]_i_2_n_2 ),
        .COUTH(\CLKS[0].test_clk_cntr_reg[0][10]_i_2_n_3 ),
        .CYA(\CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_2 ),
        .CYB(\CLKS[0].test_clk_cntr_reg[0][9]_i_1_n_2 ),
        .CYC(\CLKS[0].test_clk_cntr_reg[0][10]_i_1_n_2 ),
        .CYD(\CLKS[0].test_clk_cntr_reg[0][11]_i_1_n_2 ),
        .CYE(\CLKS[0].test_clk_cntr_reg[0][12]_i_1_n_2 ),
        .CYF(\CLKS[0].test_clk_cntr_reg[0][13]_i_1_n_2 ),
        .CYG(\CLKS[0].test_clk_cntr_reg[0][14]_i_1_n_2 ),
        .CYH(\CLKS[0].test_clk_cntr_reg[0][15]_i_1_n_2 ),
        .GEA(\CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_0 ),
        .GEB(\CLKS[0].test_clk_cntr_reg[0][9]_i_1_n_0 ),
        .GEC(\CLKS[0].test_clk_cntr_reg[0][10]_i_1_n_0 ),
        .GED(\CLKS[0].test_clk_cntr_reg[0][11]_i_1_n_0 ),
        .GEE(\CLKS[0].test_clk_cntr_reg[0][12]_i_1_n_0 ),
        .GEF(\CLKS[0].test_clk_cntr_reg[0][13]_i_1_n_0 ),
        .GEG(\CLKS[0].test_clk_cntr_reg[0][14]_i_1_n_0 ),
        .GEH(\CLKS[0].test_clk_cntr_reg[0][15]_i_1_n_0 ),
        .PROPA(\CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_3 ),
        .PROPB(\CLKS[0].test_clk_cntr_reg[0][9]_i_1_n_3 ),
        .PROPC(\CLKS[0].test_clk_cntr_reg[0][10]_i_1_n_3 ),
        .PROPD(\CLKS[0].test_clk_cntr_reg[0][11]_i_1_n_3 ),
        .PROPE(\CLKS[0].test_clk_cntr_reg[0][12]_i_1_n_3 ),
        .PROPF(\CLKS[0].test_clk_cntr_reg[0][13]_i_1_n_3 ),
        .PROPG(\CLKS[0].test_clk_cntr_reg[0][14]_i_1_n_3 ),
        .PROPH(\CLKS[0].test_clk_cntr_reg[0][15]_i_1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][11] 
       (.C(aclk_ctrl),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][11]_i_1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [11]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][11]_i_1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][11]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [11]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][10]_i_1_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][11]_i_1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][11]_i_1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][11]_i_1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][12] 
       (.C(aclk_ctrl),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][12]_i_1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [12]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][12]_i_1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][12]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [12]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][10]_i_2_n_1 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][12]_i_1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][12]_i_1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][12]_i_1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][13] 
       (.C(aclk_ctrl),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][13]_i_1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [13]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][13]_i_1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][13]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [13]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][12]_i_1_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][13]_i_1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][13]_i_1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][13]_i_1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][14] 
       (.C(aclk_ctrl),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][14]_i_1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [14]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][14]_i_1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][14]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [14]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][10]_i_2_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][14]_i_1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][14]_i_1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][14]_i_1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][15] 
       (.C(aclk_ctrl),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][15]_i_1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [15]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][15]_i_1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][15]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [15]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][14]_i_1_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][15]_i_1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][15]_i_1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][15]_i_1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][16] 
       (.C(aclk_ctrl),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [16]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][16]_i_1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [16]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][10]_i_2_n_3 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][17] 
       (.C(aclk_ctrl),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][17]_i_1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [17]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][17]_i_1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][17]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [17]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][17]_i_1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][17]_i_1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][17]_i_1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][18] 
       (.C(aclk_ctrl),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][18]_i_1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [18]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][18]_i_1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][18]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [18]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][18]_i_2_n_0 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][18]_i_1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][18]_i_1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][18]_i_1_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("TRUE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \CLKS[0].test_clk_cntr_reg[0][18]_i_2 
       (.CIN(\CLKS[0].test_clk_cntr_reg[0][10]_i_2_n_3 ),
        .COUTB(\CLKS[0].test_clk_cntr_reg[0][18]_i_2_n_0 ),
        .COUTD(\CLKS[0].test_clk_cntr_reg[0][18]_i_2_n_1 ),
        .COUTF(\CLKS[0].test_clk_cntr_reg[0][18]_i_2_n_2 ),
        .COUTH(\CLKS[0].test_clk_cntr_reg[0][18]_i_2_n_3 ),
        .CYA(\CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_2 ),
        .CYB(\CLKS[0].test_clk_cntr_reg[0][17]_i_1_n_2 ),
        .CYC(\CLKS[0].test_clk_cntr_reg[0][18]_i_1_n_2 ),
        .CYD(\CLKS[0].test_clk_cntr_reg[0][19]_i_1_n_2 ),
        .CYE(\CLKS[0].test_clk_cntr_reg[0][20]_i_1_n_2 ),
        .CYF(\CLKS[0].test_clk_cntr_reg[0][21]_i_1_n_2 ),
        .CYG(\CLKS[0].test_clk_cntr_reg[0][22]_i_1_n_2 ),
        .CYH(\CLKS[0].test_clk_cntr_reg[0][18]_i_3_n_2 ),
        .GEA(\CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_0 ),
        .GEB(\CLKS[0].test_clk_cntr_reg[0][17]_i_1_n_0 ),
        .GEC(\CLKS[0].test_clk_cntr_reg[0][18]_i_1_n_0 ),
        .GED(\CLKS[0].test_clk_cntr_reg[0][19]_i_1_n_0 ),
        .GEE(\CLKS[0].test_clk_cntr_reg[0][20]_i_1_n_0 ),
        .GEF(\CLKS[0].test_clk_cntr_reg[0][21]_i_1_n_0 ),
        .GEG(\CLKS[0].test_clk_cntr_reg[0][22]_i_1_n_0 ),
        .GEH(\CLKS[0].test_clk_cntr_reg[0][18]_i_3_n_0 ),
        .PROPA(\CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_3 ),
        .PROPB(\CLKS[0].test_clk_cntr_reg[0][17]_i_1_n_3 ),
        .PROPC(\CLKS[0].test_clk_cntr_reg[0][18]_i_1_n_3 ),
        .PROPD(\CLKS[0].test_clk_cntr_reg[0][19]_i_1_n_3 ),
        .PROPE(\CLKS[0].test_clk_cntr_reg[0][20]_i_1_n_3 ),
        .PROPF(\CLKS[0].test_clk_cntr_reg[0][21]_i_1_n_3 ),
        .PROPG(\CLKS[0].test_clk_cntr_reg[0][22]_i_1_n_3 ),
        .PROPH(\CLKS[0].test_clk_cntr_reg[0][18]_i_3_n_3 ));
  LUT6CY #(
    .INIT(64'h00000000FF000000)) 
    \CLKS[0].test_clk_cntr_reg[0][18]_i_3 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][18]_i_3_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(1'b0),
        .I4(1'b0),
        .O51(\CLKS[0].test_clk_cntr_reg[0][18]_i_3_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][18]_i_3_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][18]_i_3_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][19] 
       (.C(aclk_ctrl),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][19]_i_1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [19]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][19]_i_1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][19]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [19]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][18]_i_1_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][19]_i_1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][19]_i_1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][19]_i_1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][1] 
       (.C(aclk_ctrl),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][1]_i_1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [1]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][1]_i_1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][1]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [1]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][1]_i_1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][1]_i_1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][1]_i_1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][20] 
       (.C(aclk_ctrl),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][20]_i_1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [20]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][20]_i_1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][20]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [20]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][18]_i_2_n_1 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][20]_i_1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][20]_i_1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][20]_i_1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][21] 
       (.C(aclk_ctrl),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][21]_i_1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [21]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][21]_i_1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][21]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [21]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][20]_i_1_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][21]_i_1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][21]_i_1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][21]_i_1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][22] 
       (.C(aclk_ctrl),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][22]_i_1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [22]));
  LUT6CY #(
    .INIT(64'hFF00FF0000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][22]_i_1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][22]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [22]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][18]_i_2_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][22]_i_1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][22]_i_1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][22]_i_1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][2] 
       (.C(aclk_ctrl),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][2]_i_1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [2]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][2]_i_1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][2]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [2]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][2]_i_2_n_0 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][2]_i_1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][2]_i_1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][2]_i_1_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("FALSE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \CLKS[0].test_clk_cntr_reg[0][2]_i_2 
       (.CIN(1'b0),
        .COUTB(\CLKS[0].test_clk_cntr_reg[0][2]_i_2_n_0 ),
        .COUTD(\CLKS[0].test_clk_cntr_reg[0][2]_i_2_n_1 ),
        .COUTF(\CLKS[0].test_clk_cntr_reg[0][2]_i_2_n_2 ),
        .COUTH(\CLKS[0].test_clk_cntr_reg[0][2]_i_2_n_3 ),
        .CYA(\CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_2 ),
        .CYB(\CLKS[0].test_clk_cntr_reg[0][1]_i_1_n_2 ),
        .CYC(\CLKS[0].test_clk_cntr_reg[0][2]_i_1_n_2 ),
        .CYD(\CLKS[0].test_clk_cntr_reg[0][3]_i_1_n_2 ),
        .CYE(\CLKS[0].test_clk_cntr_reg[0][4]_i_1_n_2 ),
        .CYF(\CLKS[0].test_clk_cntr_reg[0][5]_i_1_n_2 ),
        .CYG(\CLKS[0].test_clk_cntr_reg[0][6]_i_1_n_2 ),
        .CYH(\CLKS[0].test_clk_cntr_reg[0][7]_i_1_n_2 ),
        .GEA(\CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_0 ),
        .GEB(\CLKS[0].test_clk_cntr_reg[0][1]_i_1_n_0 ),
        .GEC(\CLKS[0].test_clk_cntr_reg[0][2]_i_1_n_0 ),
        .GED(\CLKS[0].test_clk_cntr_reg[0][3]_i_1_n_0 ),
        .GEE(\CLKS[0].test_clk_cntr_reg[0][4]_i_1_n_0 ),
        .GEF(\CLKS[0].test_clk_cntr_reg[0][5]_i_1_n_0 ),
        .GEG(\CLKS[0].test_clk_cntr_reg[0][6]_i_1_n_0 ),
        .GEH(\CLKS[0].test_clk_cntr_reg[0][7]_i_1_n_0 ),
        .PROPA(\CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_3 ),
        .PROPB(\CLKS[0].test_clk_cntr_reg[0][1]_i_1_n_3 ),
        .PROPC(\CLKS[0].test_clk_cntr_reg[0][2]_i_1_n_3 ),
        .PROPD(\CLKS[0].test_clk_cntr_reg[0][3]_i_1_n_3 ),
        .PROPE(\CLKS[0].test_clk_cntr_reg[0][4]_i_1_n_3 ),
        .PROPF(\CLKS[0].test_clk_cntr_reg[0][5]_i_1_n_3 ),
        .PROPG(\CLKS[0].test_clk_cntr_reg[0][6]_i_1_n_3 ),
        .PROPH(\CLKS[0].test_clk_cntr_reg[0][7]_i_1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][3] 
       (.C(aclk_ctrl),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][3]_i_1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [3]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][3]_i_1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][3]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [3]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][2]_i_1_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][3]_i_1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][3]_i_1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][3]_i_1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][4] 
       (.C(aclk_ctrl),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][4]_i_1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [4]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][4]_i_1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][4]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [4]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][2]_i_2_n_1 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][4]_i_1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][4]_i_1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][4]_i_1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][5] 
       (.C(aclk_ctrl),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][5]_i_1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [5]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][5]_i_1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][5]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [5]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][4]_i_1_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][5]_i_1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][5]_i_1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][5]_i_1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][6] 
       (.C(aclk_ctrl),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][6]_i_1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [6]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][6]_i_1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][6]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [6]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][2]_i_2_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][6]_i_1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][6]_i_1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][6]_i_1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][7] 
       (.C(aclk_ctrl),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][7]_i_1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [7]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][7]_i_1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][7]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [7]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][6]_i_1_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][7]_i_1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][7]_i_1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][7]_i_1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][8] 
       (.C(aclk_ctrl),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [8]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][8]_i_1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [8]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][2]_i_2_n_3 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][9] 
       (.C(aclk_ctrl),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][9]_i_1_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [9]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][9]_i_1 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][9]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [9]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][9]_i_1_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][9]_i_1_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][9]_i_1_n_3 ));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "1" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0 \CLKS[1].cdc_done 
       (.dest_clk(aclk_pcie),
        .dest_out(done_synced_1),
        .src_clk(1'b0),
        .src_in(done[1]));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__parameterized1__9 \CLKS[1].cdc_rst_cn0 
       (.dest_arst(rst_cnt_synced_1),
        .dest_clk(aclk_pcie),
        .src_arst(rst_cnt[1]));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "23" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized1 \CLKS[1].cdc_test_clk0_cntr 
       (.dest_clk(aclk_freerun),
        .dest_out(src_in[22:0]),
        .src_clk(1'b0),
        .src_in(\CLKS[1].test_clk_cntr_reg[1]_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CLKS[1].test_clk_cntr[1][0]_i_1__1 
       (.I0(done_synced_1),
        .O(\CLKS[1].test_clk_cntr[1][0]_i_1__1_n_0 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][0] 
       (.C(aclk_pcie),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][0]_i_2__1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [0]));
  LUT6CY #(
    .INIT(64'hFFFFFF00FF0000FF)) 
    \CLKS[1].test_clk_cntr_reg[1][0]_i_2__1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][0]_i_2__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [0]),
        .I4(1'b0),
        .O51(\CLKS[1].test_clk_cntr_reg[1][0]_i_2__1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][0]_i_2__1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][0]_i_2__1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][10] 
       (.C(aclk_pcie),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][10]_i_1__1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [10]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][10]_i_1__1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][10]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [10]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][10]_i_2__1_n_0 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][10]_i_1__1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][10]_i_1__1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][10]_i_1__1_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("TRUE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \CLKS[1].test_clk_cntr_reg[1][10]_i_2__1 
       (.CIN(\CLKS[1].test_clk_cntr_reg[1][2]_i_2__1_n_3 ),
        .COUTB(\CLKS[1].test_clk_cntr_reg[1][10]_i_2__1_n_0 ),
        .COUTD(\CLKS[1].test_clk_cntr_reg[1][10]_i_2__1_n_1 ),
        .COUTF(\CLKS[1].test_clk_cntr_reg[1][10]_i_2__1_n_2 ),
        .COUTH(\CLKS[1].test_clk_cntr_reg[1][10]_i_2__1_n_3 ),
        .CYA(\CLKS[1].test_clk_cntr_reg[1][8]_i_1__1_n_2 ),
        .CYB(\CLKS[1].test_clk_cntr_reg[1][9]_i_1__1_n_2 ),
        .CYC(\CLKS[1].test_clk_cntr_reg[1][10]_i_1__1_n_2 ),
        .CYD(\CLKS[1].test_clk_cntr_reg[1][11]_i_1__1_n_2 ),
        .CYE(\CLKS[1].test_clk_cntr_reg[1][12]_i_1__1_n_2 ),
        .CYF(\CLKS[1].test_clk_cntr_reg[1][13]_i_1__1_n_2 ),
        .CYG(\CLKS[1].test_clk_cntr_reg[1][14]_i_1__1_n_2 ),
        .CYH(\CLKS[1].test_clk_cntr_reg[1][15]_i_1__1_n_2 ),
        .GEA(\CLKS[1].test_clk_cntr_reg[1][8]_i_1__1_n_0 ),
        .GEB(\CLKS[1].test_clk_cntr_reg[1][9]_i_1__1_n_0 ),
        .GEC(\CLKS[1].test_clk_cntr_reg[1][10]_i_1__1_n_0 ),
        .GED(\CLKS[1].test_clk_cntr_reg[1][11]_i_1__1_n_0 ),
        .GEE(\CLKS[1].test_clk_cntr_reg[1][12]_i_1__1_n_0 ),
        .GEF(\CLKS[1].test_clk_cntr_reg[1][13]_i_1__1_n_0 ),
        .GEG(\CLKS[1].test_clk_cntr_reg[1][14]_i_1__1_n_0 ),
        .GEH(\CLKS[1].test_clk_cntr_reg[1][15]_i_1__1_n_0 ),
        .PROPA(\CLKS[1].test_clk_cntr_reg[1][8]_i_1__1_n_3 ),
        .PROPB(\CLKS[1].test_clk_cntr_reg[1][9]_i_1__1_n_3 ),
        .PROPC(\CLKS[1].test_clk_cntr_reg[1][10]_i_1__1_n_3 ),
        .PROPD(\CLKS[1].test_clk_cntr_reg[1][11]_i_1__1_n_3 ),
        .PROPE(\CLKS[1].test_clk_cntr_reg[1][12]_i_1__1_n_3 ),
        .PROPF(\CLKS[1].test_clk_cntr_reg[1][13]_i_1__1_n_3 ),
        .PROPG(\CLKS[1].test_clk_cntr_reg[1][14]_i_1__1_n_3 ),
        .PROPH(\CLKS[1].test_clk_cntr_reg[1][15]_i_1__1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][11] 
       (.C(aclk_pcie),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][11]_i_1__1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [11]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][11]_i_1__1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][11]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [11]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][10]_i_1__1_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][11]_i_1__1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][11]_i_1__1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][11]_i_1__1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][12] 
       (.C(aclk_pcie),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][12]_i_1__1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [12]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][12]_i_1__1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][12]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [12]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][10]_i_2__1_n_1 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][12]_i_1__1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][12]_i_1__1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][12]_i_1__1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][13] 
       (.C(aclk_pcie),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][13]_i_1__1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [13]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][13]_i_1__1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][13]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [13]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][12]_i_1__1_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][13]_i_1__1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][13]_i_1__1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][13]_i_1__1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][14] 
       (.C(aclk_pcie),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][14]_i_1__1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [14]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][14]_i_1__1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][14]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [14]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][10]_i_2__1_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][14]_i_1__1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][14]_i_1__1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][14]_i_1__1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][15] 
       (.C(aclk_pcie),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][15]_i_1__1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [15]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][15]_i_1__1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][15]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [15]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][14]_i_1__1_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][15]_i_1__1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][15]_i_1__1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][15]_i_1__1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][16] 
       (.C(aclk_pcie),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][16]_i_1__1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [16]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][16]_i_1__1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][16]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [16]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][10]_i_2__1_n_3 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][16]_i_1__1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][16]_i_1__1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][16]_i_1__1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][17] 
       (.C(aclk_pcie),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][17]_i_1__1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [17]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][17]_i_1__1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][17]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [17]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][16]_i_1__1_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][17]_i_1__1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][17]_i_1__1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][17]_i_1__1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][18] 
       (.C(aclk_pcie),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][18]_i_1__1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [18]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][18]_i_1__1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][18]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [18]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][18]_i_2__1_n_0 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][18]_i_1__1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][18]_i_1__1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][18]_i_1__1_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("TRUE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \CLKS[1].test_clk_cntr_reg[1][18]_i_2__1 
       (.CIN(\CLKS[1].test_clk_cntr_reg[1][10]_i_2__1_n_3 ),
        .COUTB(\CLKS[1].test_clk_cntr_reg[1][18]_i_2__1_n_0 ),
        .COUTD(\CLKS[1].test_clk_cntr_reg[1][18]_i_2__1_n_1 ),
        .COUTF(\CLKS[1].test_clk_cntr_reg[1][18]_i_2__1_n_2 ),
        .COUTH(\CLKS[1].test_clk_cntr_reg[1][18]_i_2__1_n_3 ),
        .CYA(\CLKS[1].test_clk_cntr_reg[1][16]_i_1__1_n_2 ),
        .CYB(\CLKS[1].test_clk_cntr_reg[1][17]_i_1__1_n_2 ),
        .CYC(\CLKS[1].test_clk_cntr_reg[1][18]_i_1__1_n_2 ),
        .CYD(\CLKS[1].test_clk_cntr_reg[1][19]_i_1__1_n_2 ),
        .CYE(\CLKS[1].test_clk_cntr_reg[1][20]_i_1__1_n_2 ),
        .CYF(\CLKS[1].test_clk_cntr_reg[1][21]_i_1__1_n_2 ),
        .CYG(\CLKS[1].test_clk_cntr_reg[1][22]_i_1__1_n_2 ),
        .CYH(\CLKS[1].test_clk_cntr_reg[1][18]_i_3__1_n_2 ),
        .GEA(\CLKS[1].test_clk_cntr_reg[1][16]_i_1__1_n_0 ),
        .GEB(\CLKS[1].test_clk_cntr_reg[1][17]_i_1__1_n_0 ),
        .GEC(\CLKS[1].test_clk_cntr_reg[1][18]_i_1__1_n_0 ),
        .GED(\CLKS[1].test_clk_cntr_reg[1][19]_i_1__1_n_0 ),
        .GEE(\CLKS[1].test_clk_cntr_reg[1][20]_i_1__1_n_0 ),
        .GEF(\CLKS[1].test_clk_cntr_reg[1][21]_i_1__1_n_0 ),
        .GEG(\CLKS[1].test_clk_cntr_reg[1][22]_i_1__1_n_0 ),
        .GEH(\CLKS[1].test_clk_cntr_reg[1][18]_i_3__1_n_0 ),
        .PROPA(\CLKS[1].test_clk_cntr_reg[1][16]_i_1__1_n_3 ),
        .PROPB(\CLKS[1].test_clk_cntr_reg[1][17]_i_1__1_n_3 ),
        .PROPC(\CLKS[1].test_clk_cntr_reg[1][18]_i_1__1_n_3 ),
        .PROPD(\CLKS[1].test_clk_cntr_reg[1][19]_i_1__1_n_3 ),
        .PROPE(\CLKS[1].test_clk_cntr_reg[1][20]_i_1__1_n_3 ),
        .PROPF(\CLKS[1].test_clk_cntr_reg[1][21]_i_1__1_n_3 ),
        .PROPG(\CLKS[1].test_clk_cntr_reg[1][22]_i_1__1_n_3 ),
        .PROPH(\CLKS[1].test_clk_cntr_reg[1][18]_i_3__1_n_3 ));
  LUT6CY #(
    .INIT(64'h00000000FF000000)) 
    \CLKS[1].test_clk_cntr_reg[1][18]_i_3__1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][18]_i_3__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(1'b0),
        .I4(1'b0),
        .O51(\CLKS[1].test_clk_cntr_reg[1][18]_i_3__1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][18]_i_3__1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][18]_i_3__1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][19] 
       (.C(aclk_pcie),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][19]_i_1__1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [19]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][19]_i_1__1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][19]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [19]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][18]_i_1__1_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][19]_i_1__1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][19]_i_1__1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][19]_i_1__1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][1] 
       (.C(aclk_pcie),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][1]_i_1__1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [1]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][1]_i_1__1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][1]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [1]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][0]_i_2__1_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][1]_i_1__1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][1]_i_1__1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][1]_i_1__1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][20] 
       (.C(aclk_pcie),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][20]_i_1__1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [20]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][20]_i_1__1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][20]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [20]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][18]_i_2__1_n_1 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][20]_i_1__1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][20]_i_1__1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][20]_i_1__1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][21] 
       (.C(aclk_pcie),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][21]_i_1__1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [21]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][21]_i_1__1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][21]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [21]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][20]_i_1__1_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][21]_i_1__1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][21]_i_1__1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][21]_i_1__1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][22] 
       (.C(aclk_pcie),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][22]_i_1__1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [22]));
  LUT6CY #(
    .INIT(64'hFF00FF0000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][22]_i_1__1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][22]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [22]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][18]_i_2__1_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][22]_i_1__1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][22]_i_1__1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][22]_i_1__1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][2] 
       (.C(aclk_pcie),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][2]_i_1__1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [2]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][2]_i_1__1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][2]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [2]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][2]_i_2__1_n_0 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][2]_i_1__1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][2]_i_1__1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][2]_i_1__1_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("FALSE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \CLKS[1].test_clk_cntr_reg[1][2]_i_2__1 
       (.CIN(1'b0),
        .COUTB(\CLKS[1].test_clk_cntr_reg[1][2]_i_2__1_n_0 ),
        .COUTD(\CLKS[1].test_clk_cntr_reg[1][2]_i_2__1_n_1 ),
        .COUTF(\CLKS[1].test_clk_cntr_reg[1][2]_i_2__1_n_2 ),
        .COUTH(\CLKS[1].test_clk_cntr_reg[1][2]_i_2__1_n_3 ),
        .CYA(\CLKS[1].test_clk_cntr_reg[1][0]_i_2__1_n_2 ),
        .CYB(\CLKS[1].test_clk_cntr_reg[1][1]_i_1__1_n_2 ),
        .CYC(\CLKS[1].test_clk_cntr_reg[1][2]_i_1__1_n_2 ),
        .CYD(\CLKS[1].test_clk_cntr_reg[1][3]_i_1__1_n_2 ),
        .CYE(\CLKS[1].test_clk_cntr_reg[1][4]_i_1__1_n_2 ),
        .CYF(\CLKS[1].test_clk_cntr_reg[1][5]_i_1__1_n_2 ),
        .CYG(\CLKS[1].test_clk_cntr_reg[1][6]_i_1__1_n_2 ),
        .CYH(\CLKS[1].test_clk_cntr_reg[1][7]_i_1__1_n_2 ),
        .GEA(\CLKS[1].test_clk_cntr_reg[1][0]_i_2__1_n_0 ),
        .GEB(\CLKS[1].test_clk_cntr_reg[1][1]_i_1__1_n_0 ),
        .GEC(\CLKS[1].test_clk_cntr_reg[1][2]_i_1__1_n_0 ),
        .GED(\CLKS[1].test_clk_cntr_reg[1][3]_i_1__1_n_0 ),
        .GEE(\CLKS[1].test_clk_cntr_reg[1][4]_i_1__1_n_0 ),
        .GEF(\CLKS[1].test_clk_cntr_reg[1][5]_i_1__1_n_0 ),
        .GEG(\CLKS[1].test_clk_cntr_reg[1][6]_i_1__1_n_0 ),
        .GEH(\CLKS[1].test_clk_cntr_reg[1][7]_i_1__1_n_0 ),
        .PROPA(\CLKS[1].test_clk_cntr_reg[1][0]_i_2__1_n_3 ),
        .PROPB(\CLKS[1].test_clk_cntr_reg[1][1]_i_1__1_n_3 ),
        .PROPC(\CLKS[1].test_clk_cntr_reg[1][2]_i_1__1_n_3 ),
        .PROPD(\CLKS[1].test_clk_cntr_reg[1][3]_i_1__1_n_3 ),
        .PROPE(\CLKS[1].test_clk_cntr_reg[1][4]_i_1__1_n_3 ),
        .PROPF(\CLKS[1].test_clk_cntr_reg[1][5]_i_1__1_n_3 ),
        .PROPG(\CLKS[1].test_clk_cntr_reg[1][6]_i_1__1_n_3 ),
        .PROPH(\CLKS[1].test_clk_cntr_reg[1][7]_i_1__1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][3] 
       (.C(aclk_pcie),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][3]_i_1__1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [3]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][3]_i_1__1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][3]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [3]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][2]_i_1__1_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][3]_i_1__1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][3]_i_1__1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][3]_i_1__1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][4] 
       (.C(aclk_pcie),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][4]_i_1__1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [4]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][4]_i_1__1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][4]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [4]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][2]_i_2__1_n_1 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][4]_i_1__1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][4]_i_1__1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][4]_i_1__1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][5] 
       (.C(aclk_pcie),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][5]_i_1__1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [5]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][5]_i_1__1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][5]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [5]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][4]_i_1__1_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][5]_i_1__1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][5]_i_1__1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][5]_i_1__1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][6] 
       (.C(aclk_pcie),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][6]_i_1__1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [6]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][6]_i_1__1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][6]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [6]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][2]_i_2__1_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][6]_i_1__1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][6]_i_1__1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][6]_i_1__1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][7] 
       (.C(aclk_pcie),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][7]_i_1__1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [7]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][7]_i_1__1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][7]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [7]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][6]_i_1__1_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][7]_i_1__1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][7]_i_1__1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][7]_i_1__1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][8] 
       (.C(aclk_pcie),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][8]_i_1__1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [8]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][8]_i_1__1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][8]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [8]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][2]_i_2__1_n_3 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][8]_i_1__1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][8]_i_1__1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][8]_i_1__1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][9] 
       (.C(aclk_pcie),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1__1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][9]_i_1__1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [9]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][9]_i_1__1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][9]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [9]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][8]_i_1__1_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][9]_i_1__1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][9]_i_1__1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][9]_i_1__1_n_3 ));
  LUT4 #(
    .INIT(16'h8000)) 
    cdc_freq_cntr_aclk_i_1
       (.I0(cdc_freq_cntr_aclk_i_3_n_0),
        .I1(cdc_freq_cntr_aclk_i_4_n_0),
        .I2(cdc_freq_cntr_aclk_i_5_n_0),
        .I3(cdc_freq_cntr_aclk_i_6_n_0),
        .O(src_in[47]));
  LUT5 #(
    .INIT(32'h80000000)) 
    cdc_freq_cntr_aclk_i_10
       (.I0(src_in[0]),
        .I1(src_in[1]),
        .I2(src_in[2]),
        .I3(src_in[4]),
        .I4(src_in[3]),
        .O(cdc_freq_cntr_aclk_i_10_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    cdc_freq_cntr_aclk_i_2
       (.I0(cdc_freq_cntr_aclk_i_7_n_0),
        .I1(cdc_freq_cntr_aclk_i_8_n_0),
        .I2(cdc_freq_cntr_aclk_i_9_n_0),
        .I3(cdc_freq_cntr_aclk_i_10_n_0),
        .O(src_in[23]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    cdc_freq_cntr_aclk_i_3
       (.I0(src_in[37]),
        .I1(src_in[38]),
        .I2(src_in[35]),
        .I3(src_in[36]),
        .I4(src_in[40]),
        .I5(src_in[39]),
        .O(cdc_freq_cntr_aclk_i_3_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    cdc_freq_cntr_aclk_i_4
       (.I0(src_in[43]),
        .I1(src_in[44]),
        .I2(src_in[41]),
        .I3(src_in[42]),
        .I4(src_in[46]),
        .I5(src_in[45]),
        .O(cdc_freq_cntr_aclk_i_4_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    cdc_freq_cntr_aclk_i_5
       (.I0(src_in[31]),
        .I1(src_in[32]),
        .I2(src_in[29]),
        .I3(src_in[30]),
        .I4(src_in[34]),
        .I5(src_in[33]),
        .O(cdc_freq_cntr_aclk_i_5_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    cdc_freq_cntr_aclk_i_6
       (.I0(src_in[24]),
        .I1(src_in[25]),
        .I2(src_in[26]),
        .I3(src_in[28]),
        .I4(src_in[27]),
        .O(cdc_freq_cntr_aclk_i_6_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    cdc_freq_cntr_aclk_i_7
       (.I0(src_in[13]),
        .I1(src_in[14]),
        .I2(src_in[11]),
        .I3(src_in[12]),
        .I4(src_in[16]),
        .I5(src_in[15]),
        .O(cdc_freq_cntr_aclk_i_7_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    cdc_freq_cntr_aclk_i_8
       (.I0(src_in[19]),
        .I1(src_in[20]),
        .I2(src_in[17]),
        .I3(src_in[18]),
        .I4(src_in[22]),
        .I5(src_in[21]),
        .O(cdc_freq_cntr_aclk_i_8_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    cdc_freq_cntr_aclk_i_9
       (.I0(src_in[7]),
        .I1(src_in[8]),
        .I2(src_in[5]),
        .I3(src_in[6]),
        .I4(src_in[10]),
        .I5(src_in[9]),
        .O(cdc_freq_cntr_aclk_i_9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    done_ref_i_i_1__1
       (.I0(src_in[64]),
        .O(done_ref_i_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    done_ref_i_i_2__1
       (.I0(done_ref_i_i_3__1_n_0),
        .I1(src_in[49]),
        .I2(src_in[48]),
        .I3(src_in[51]),
        .I4(src_in[50]),
        .I5(done_ref_i_i_4__1_n_0),
        .O(done_ref_i_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    done_ref_i_i_3__1
       (.I0(src_in[60]),
        .I1(src_in[61]),
        .I2(src_in[58]),
        .I3(src_in[59]),
        .I4(src_in[62]),
        .I5(src_in[63]),
        .O(done_ref_i_i_3__1_n_0));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    done_ref_i_i_4__1
       (.I0(src_in[54]),
        .I1(src_in[55]),
        .I2(src_in[52]),
        .I3(src_in[53]),
        .I4(src_in[56]),
        .I5(src_in[57]),
        .O(done_ref_i_i_4__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    done_ref_i_reg
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__1_n_0),
        .D(done_ref_i_i_2__1_n_0),
        .Q(src_in[64]),
        .R(rst_cnt_ref));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \done_reg[0] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__1_n_0),
        .D(done_ref_i_i_2__1_n_0),
        .Q(done[0]),
        .R(rst_cnt_ref));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \done_reg[1] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__1_n_0),
        .D(done_ref_i_i_2__1_n_0),
        .Q(done[1]),
        .R(rst_cnt_ref));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \done_reg[2] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__1_n_0),
        .D(done_ref_i_i_2__1_n_0),
        .Q(done[2]),
        .R(rst_cnt_ref));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \done_reg[3] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__1_n_0),
        .D(done_ref_i_i_2__1_n_0),
        .Q(done[3]),
        .R(rst_cnt_ref));
  LUT3 #(
    .INIT(8'h21)) 
    \ref_clk_cntr_i[0]_i_1__1 
       (.I0(src_in[48]),
        .I1(rst_cnt_ref),
        .I2(src_in[64]),
        .O(\ref_clk_cntr_i[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[0] 
       (.C(aclk_freerun),
        .CE(1'b1),
        .D(\ref_clk_cntr_i[0]_i_1__1_n_0 ),
        .Q(src_in[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[10] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__1_n_0),
        .D(p_0_in[10]),
        .Q(src_in[58]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[10]_i_1__1 
       (.GE(\ref_clk_cntr_i_reg[10]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[58]),
        .I4(\ref_clk_cntr_i_reg[9]_i_1__1_n_2 ),
        .O51(p_0_in[10]),
        .O52(\ref_clk_cntr_i_reg[10]_i_1__1_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[10]_i_1__1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[11] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__1_n_0),
        .D(p_0_in[11]),
        .Q(src_in[59]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[11]_i_1__1 
       (.GE(\ref_clk_cntr_i_reg[11]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[59]),
        .I4(\ref_clk_cntr_i_reg[15]_i_2__1_n_0 ),
        .O51(p_0_in[11]),
        .O52(\ref_clk_cntr_i_reg[11]_i_1__1_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[11]_i_1__1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[12] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__1_n_0),
        .D(p_0_in[12]),
        .Q(src_in[60]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[12]_i_1__1 
       (.GE(\ref_clk_cntr_i_reg[12]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[60]),
        .I4(\ref_clk_cntr_i_reg[11]_i_1__1_n_2 ),
        .O51(p_0_in[12]),
        .O52(\ref_clk_cntr_i_reg[12]_i_1__1_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[12]_i_1__1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[13] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__1_n_0),
        .D(p_0_in[13]),
        .Q(src_in[61]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[13]_i_1__1 
       (.GE(\ref_clk_cntr_i_reg[13]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[61]),
        .I4(\ref_clk_cntr_i_reg[15]_i_2__1_n_1 ),
        .O51(p_0_in[13]),
        .O52(\ref_clk_cntr_i_reg[13]_i_1__1_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[13]_i_1__1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[14] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__1_n_0),
        .D(p_0_in[14]),
        .Q(src_in[62]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[14]_i_1__1 
       (.GE(\ref_clk_cntr_i_reg[14]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[62]),
        .I4(\ref_clk_cntr_i_reg[13]_i_1__1_n_2 ),
        .O51(p_0_in[14]),
        .O52(\ref_clk_cntr_i_reg[14]_i_1__1_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[14]_i_1__1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[15] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__1_n_0),
        .D(p_0_in[15]),
        .Q(src_in[63]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00FF0000FFFF00)) 
    \ref_clk_cntr_i_reg[15]_i_1__1 
       (.GE(\ref_clk_cntr_i_reg[15]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[63]),
        .I4(\ref_clk_cntr_i_reg[15]_i_2__1_n_2 ),
        .O51(p_0_in[15]),
        .O52(\ref_clk_cntr_i_reg[15]_i_1__1_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[15]_i_1__1_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("TRUE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \ref_clk_cntr_i_reg[15]_i_2__1 
       (.CIN(\ref_clk_cntr_i_reg[9]_i_2__1_n_3 ),
        .COUTB(\ref_clk_cntr_i_reg[15]_i_2__1_n_0 ),
        .COUTD(\ref_clk_cntr_i_reg[15]_i_2__1_n_1 ),
        .COUTF(\ref_clk_cntr_i_reg[15]_i_2__1_n_2 ),
        .COUTH(\ref_clk_cntr_i_reg[15]_i_2__1_n_3 ),
        .CYA(\ref_clk_cntr_i_reg[9]_i_1__1_n_2 ),
        .CYB(\ref_clk_cntr_i_reg[10]_i_1__1_n_2 ),
        .CYC(\ref_clk_cntr_i_reg[11]_i_1__1_n_2 ),
        .CYD(\ref_clk_cntr_i_reg[12]_i_1__1_n_2 ),
        .CYE(\ref_clk_cntr_i_reg[13]_i_1__1_n_2 ),
        .CYF(\ref_clk_cntr_i_reg[14]_i_1__1_n_2 ),
        .CYG(\ref_clk_cntr_i_reg[15]_i_1__1_n_2 ),
        .CYH(\ref_clk_cntr_i_reg[15]_i_3__1_n_2 ),
        .GEA(\ref_clk_cntr_i_reg[9]_i_1__1_n_0 ),
        .GEB(\ref_clk_cntr_i_reg[10]_i_1__1_n_0 ),
        .GEC(\ref_clk_cntr_i_reg[11]_i_1__1_n_0 ),
        .GED(\ref_clk_cntr_i_reg[12]_i_1__1_n_0 ),
        .GEE(\ref_clk_cntr_i_reg[13]_i_1__1_n_0 ),
        .GEF(\ref_clk_cntr_i_reg[14]_i_1__1_n_0 ),
        .GEG(\ref_clk_cntr_i_reg[15]_i_1__1_n_0 ),
        .GEH(\ref_clk_cntr_i_reg[15]_i_3__1_n_0 ),
        .PROPA(\ref_clk_cntr_i_reg[9]_i_1__1_n_3 ),
        .PROPB(\ref_clk_cntr_i_reg[10]_i_1__1_n_3 ),
        .PROPC(\ref_clk_cntr_i_reg[11]_i_1__1_n_3 ),
        .PROPD(\ref_clk_cntr_i_reg[12]_i_1__1_n_3 ),
        .PROPE(\ref_clk_cntr_i_reg[13]_i_1__1_n_3 ),
        .PROPF(\ref_clk_cntr_i_reg[14]_i_1__1_n_3 ),
        .PROPG(\ref_clk_cntr_i_reg[15]_i_1__1_n_3 ),
        .PROPH(\ref_clk_cntr_i_reg[15]_i_3__1_n_3 ));
  LUT6CY #(
    .INIT(64'h00000000FF000000)) 
    \ref_clk_cntr_i_reg[15]_i_3__1 
       (.GE(\ref_clk_cntr_i_reg[15]_i_3__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(1'b0),
        .I4(1'b0),
        .O51(\ref_clk_cntr_i_reg[15]_i_3__1_n_1 ),
        .O52(\ref_clk_cntr_i_reg[15]_i_3__1_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[15]_i_3__1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[1] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__1_n_0),
        .D(p_0_in[1]),
        .Q(src_in[49]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[1]_i_1__1 
       (.GE(\ref_clk_cntr_i_reg[1]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[49]),
        .I4(src_in[48]),
        .O51(p_0_in[1]),
        .O52(\ref_clk_cntr_i_reg[1]_i_1__1_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[1]_i_1__1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[2] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__1_n_0),
        .D(p_0_in[2]),
        .Q(src_in[50]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[2]_i_1__1 
       (.GE(\ref_clk_cntr_i_reg[2]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[50]),
        .I4(\ref_clk_cntr_i_reg[1]_i_1__1_n_2 ),
        .O51(p_0_in[2]),
        .O52(\ref_clk_cntr_i_reg[2]_i_1__1_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[2]_i_1__1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[3] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__1_n_0),
        .D(p_0_in[3]),
        .Q(src_in[51]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[3]_i_1__1 
       (.GE(\ref_clk_cntr_i_reg[3]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[51]),
        .I4(\ref_clk_cntr_i_reg[9]_i_2__1_n_0 ),
        .O51(p_0_in[3]),
        .O52(\ref_clk_cntr_i_reg[3]_i_1__1_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[3]_i_1__1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[4] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__1_n_0),
        .D(p_0_in[4]),
        .Q(src_in[52]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[4]_i_1__1 
       (.GE(\ref_clk_cntr_i_reg[4]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[52]),
        .I4(\ref_clk_cntr_i_reg[3]_i_1__1_n_2 ),
        .O51(p_0_in[4]),
        .O52(\ref_clk_cntr_i_reg[4]_i_1__1_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[4]_i_1__1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[5] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__1_n_0),
        .D(p_0_in[5]),
        .Q(src_in[53]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[5]_i_1__1 
       (.GE(\ref_clk_cntr_i_reg[5]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[53]),
        .I4(\ref_clk_cntr_i_reg[9]_i_2__1_n_1 ),
        .O51(p_0_in[5]),
        .O52(\ref_clk_cntr_i_reg[5]_i_1__1_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[5]_i_1__1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[6] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__1_n_0),
        .D(p_0_in[6]),
        .Q(src_in[54]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[6]_i_1__1 
       (.GE(\ref_clk_cntr_i_reg[6]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[54]),
        .I4(\ref_clk_cntr_i_reg[5]_i_1__1_n_2 ),
        .O51(p_0_in[6]),
        .O52(\ref_clk_cntr_i_reg[6]_i_1__1_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[6]_i_1__1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[7] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__1_n_0),
        .D(p_0_in[7]),
        .Q(src_in[55]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[7]_i_1__1 
       (.GE(\ref_clk_cntr_i_reg[7]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[55]),
        .I4(\ref_clk_cntr_i_reg[9]_i_2__1_n_2 ),
        .O51(p_0_in[7]),
        .O52(\ref_clk_cntr_i_reg[7]_i_1__1_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[7]_i_1__1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[8] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__1_n_0),
        .D(p_0_in[8]),
        .Q(src_in[56]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[8]_i_1__1 
       (.GE(\ref_clk_cntr_i_reg[8]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[56]),
        .I4(\ref_clk_cntr_i_reg[7]_i_1__1_n_2 ),
        .O51(p_0_in[8]),
        .O52(\ref_clk_cntr_i_reg[8]_i_1__1_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[8]_i_1__1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[9] 
       (.C(aclk_freerun),
        .CE(done_ref_i_i_1__1_n_0),
        .D(p_0_in[9]),
        .Q(src_in[57]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[9]_i_1__1 
       (.GE(\ref_clk_cntr_i_reg[9]_i_1__1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[57]),
        .I4(\ref_clk_cntr_i_reg[9]_i_2__1_n_3 ),
        .O51(p_0_in[9]),
        .O52(\ref_clk_cntr_i_reg[9]_i_1__1_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[9]_i_1__1_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("FALSE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \ref_clk_cntr_i_reg[9]_i_2__1 
       (.CIN(src_in[48]),
        .COUTB(\ref_clk_cntr_i_reg[9]_i_2__1_n_0 ),
        .COUTD(\ref_clk_cntr_i_reg[9]_i_2__1_n_1 ),
        .COUTF(\ref_clk_cntr_i_reg[9]_i_2__1_n_2 ),
        .COUTH(\ref_clk_cntr_i_reg[9]_i_2__1_n_3 ),
        .CYA(\ref_clk_cntr_i_reg[1]_i_1__1_n_2 ),
        .CYB(\ref_clk_cntr_i_reg[2]_i_1__1_n_2 ),
        .CYC(\ref_clk_cntr_i_reg[3]_i_1__1_n_2 ),
        .CYD(\ref_clk_cntr_i_reg[4]_i_1__1_n_2 ),
        .CYE(\ref_clk_cntr_i_reg[5]_i_1__1_n_2 ),
        .CYF(\ref_clk_cntr_i_reg[6]_i_1__1_n_2 ),
        .CYG(\ref_clk_cntr_i_reg[7]_i_1__1_n_2 ),
        .CYH(\ref_clk_cntr_i_reg[8]_i_1__1_n_2 ),
        .GEA(\ref_clk_cntr_i_reg[1]_i_1__1_n_0 ),
        .GEB(\ref_clk_cntr_i_reg[2]_i_1__1_n_0 ),
        .GEC(\ref_clk_cntr_i_reg[3]_i_1__1_n_0 ),
        .GED(\ref_clk_cntr_i_reg[4]_i_1__1_n_0 ),
        .GEE(\ref_clk_cntr_i_reg[5]_i_1__1_n_0 ),
        .GEF(\ref_clk_cntr_i_reg[6]_i_1__1_n_0 ),
        .GEG(\ref_clk_cntr_i_reg[7]_i_1__1_n_0 ),
        .GEH(\ref_clk_cntr_i_reg[8]_i_1__1_n_0 ),
        .PROPA(\ref_clk_cntr_i_reg[1]_i_1__1_n_3 ),
        .PROPB(\ref_clk_cntr_i_reg[2]_i_1__1_n_3 ),
        .PROPC(\ref_clk_cntr_i_reg[3]_i_1__1_n_3 ),
        .PROPD(\ref_clk_cntr_i_reg[4]_i_1__1_n_3 ),
        .PROPE(\ref_clk_cntr_i_reg[5]_i_1__1_n_3 ),
        .PROPF(\ref_clk_cntr_i_reg[6]_i_1__1_n_3 ),
        .PROPG(\ref_clk_cntr_i_reg[7]_i_1__1_n_3 ),
        .PROPH(\ref_clk_cntr_i_reg[8]_i_1__1_n_3 ));
  LUT2 #(
    .INIT(4'hB)) 
    rst_cnt_ref_i_1__1
       (.I0(dest_arst),
        .I1(\rst_cnt_reg[0]_0 ),
        .O(rst_cnt_c));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    rst_cnt_ref_reg
       (.C(aclk_freerun),
        .CE(1'b1),
        .D(rst_cnt_c),
        .Q(rst_cnt_ref),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rst_cnt_reg[0] 
       (.C(aclk_freerun),
        .CE(1'b1),
        .D(rst_cnt_c),
        .Q(rst_cnt[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rst_cnt_reg[1] 
       (.C(aclk_freerun),
        .CE(1'b1),
        .D(rst_cnt_c),
        .Q(rst_cnt[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rst_cnt_reg[2] 
       (.C(aclk_freerun),
        .CE(1'b1),
        .D(rst_cnt_c),
        .Q(rst_cnt[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rst_cnt_reg[3] 
       (.C(aclk_freerun),
        .CE(1'b1),
        .D(rst_cnt_c),
        .Q(rst_cnt[3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "shell_utils_ucc_v1_0_0_frequency_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_ucc_v1_0_0_frequency_counter__xdcDup__1
   (src_in,
    aclk_kernel_cont_00,
    aclk_freerun,
    aclk_kernel_00,
    dest_arst,
    \rst_cnt_reg[0]_0 );
  output [64:0]src_in;
  input aclk_kernel_cont_00;
  input aclk_freerun;
  input aclk_kernel_00;
  input dest_arst;
  input \rst_cnt_reg[0]_0 ;

  wire \CLKS[0].test_clk_cntr[0][0]_i_1__0_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][0]_i_2__0_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][0]_i_2__0_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][0]_i_2__0_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][0]_i_2__0_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][10]_i_1__0_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][10]_i_1__0_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][10]_i_1__0_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][10]_i_1__0_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][10]_i_2__0_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][10]_i_2__0_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][10]_i_2__0_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][10]_i_2__0_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][11]_i_1__0_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][11]_i_1__0_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][11]_i_1__0_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][11]_i_1__0_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][12]_i_1__0_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][12]_i_1__0_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][12]_i_1__0_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][12]_i_1__0_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][13]_i_1__0_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][13]_i_1__0_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][13]_i_1__0_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][13]_i_1__0_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][14]_i_1__0_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][14]_i_1__0_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][14]_i_1__0_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][14]_i_1__0_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][15]_i_1__0_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][15]_i_1__0_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][15]_i_1__0_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][15]_i_1__0_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][16]_i_1__0_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][16]_i_1__0_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][16]_i_1__0_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][16]_i_1__0_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][17]_i_1__0_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][17]_i_1__0_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][17]_i_1__0_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][17]_i_1__0_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_1__0_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_1__0_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_1__0_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_1__0_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_2__0_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_2__0_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_2__0_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_2__0_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_3__0_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_3__0_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_3__0_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][18]_i_3__0_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][19]_i_1__0_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][19]_i_1__0_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][19]_i_1__0_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][19]_i_1__0_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][1]_i_1__0_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][1]_i_1__0_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][1]_i_1__0_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][1]_i_1__0_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][20]_i_1__0_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][20]_i_1__0_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][20]_i_1__0_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][20]_i_1__0_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][21]_i_1__0_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][21]_i_1__0_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][21]_i_1__0_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][21]_i_1__0_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][22]_i_1__0_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][22]_i_1__0_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][22]_i_1__0_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][22]_i_1__0_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][2]_i_1__0_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][2]_i_1__0_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][2]_i_1__0_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][2]_i_1__0_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][2]_i_2__0_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][2]_i_2__0_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][2]_i_2__0_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][2]_i_2__0_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][3]_i_1__0_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][3]_i_1__0_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][3]_i_1__0_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][3]_i_1__0_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][4]_i_1__0_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][4]_i_1__0_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][4]_i_1__0_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][4]_i_1__0_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][5]_i_1__0_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][5]_i_1__0_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][5]_i_1__0_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][5]_i_1__0_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][6]_i_1__0_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][6]_i_1__0_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][6]_i_1__0_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][6]_i_1__0_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][7]_i_1__0_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][7]_i_1__0_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][7]_i_1__0_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][7]_i_1__0_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][8]_i_1__0_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][8]_i_1__0_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][8]_i_1__0_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][8]_i_1__0_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][9]_i_1__0_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][9]_i_1__0_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][9]_i_1__0_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][9]_i_1__0_n_3 ;
  wire [22:0]\CLKS[0].test_clk_cntr_reg[0]_0 ;
  wire \CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][10]_i_1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][10]_i_1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][10]_i_1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][10]_i_1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][10]_i_2_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][10]_i_2_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][10]_i_2_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][10]_i_2_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][11]_i_1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][11]_i_1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][11]_i_1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][11]_i_1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][12]_i_1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][12]_i_1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][12]_i_1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][12]_i_1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][13]_i_1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][13]_i_1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][13]_i_1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][13]_i_1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][14]_i_1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][14]_i_1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][14]_i_1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][14]_i_1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][15]_i_1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][15]_i_1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][15]_i_1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][15]_i_1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][17]_i_1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][17]_i_1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][17]_i_1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][17]_i_1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_2_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_2_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_2_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_2_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_3_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_3_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_3_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][18]_i_3_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][19]_i_1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][19]_i_1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][19]_i_1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][19]_i_1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][1]_i_1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][1]_i_1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][1]_i_1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][1]_i_1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][20]_i_1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][20]_i_1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][20]_i_1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][20]_i_1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][21]_i_1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][21]_i_1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][21]_i_1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][21]_i_1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][22]_i_1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][22]_i_1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][22]_i_1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][22]_i_1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][2]_i_1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][2]_i_1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][2]_i_1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][2]_i_1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][2]_i_2_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][2]_i_2_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][2]_i_2_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][2]_i_2_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][3]_i_1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][3]_i_1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][3]_i_1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][3]_i_1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][4]_i_1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][4]_i_1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][4]_i_1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][4]_i_1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][5]_i_1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][5]_i_1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][5]_i_1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][5]_i_1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][6]_i_1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][6]_i_1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][6]_i_1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][6]_i_1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][7]_i_1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][7]_i_1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][7]_i_1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][7]_i_1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][9]_i_1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][9]_i_1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][9]_i_1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][9]_i_1_n_3 ;
  wire [22:0]\CLKS[1].test_clk_cntr_reg[1]_1 ;
  wire aclk_freerun;
  wire aclk_kernel_00;
  wire aclk_kernel_cont_00;
  wire dest_arst;
  (* RTL_KEEP = "true" *) wire [3:0]done;
  wire done_c;
  wire done_ref_i_i_3_n_0;
  wire done_ref_i_i_4_n_0;
  wire done_synced_0;
  wire done_synced_1;
  wire \genblk1[0].cdc_freq_cntr_kernel_i_10_n_0 ;
  wire \genblk1[0].cdc_freq_cntr_kernel_i_3_n_0 ;
  wire \genblk1[0].cdc_freq_cntr_kernel_i_4_n_0 ;
  wire \genblk1[0].cdc_freq_cntr_kernel_i_5_n_0 ;
  wire \genblk1[0].cdc_freq_cntr_kernel_i_6_n_0 ;
  wire \genblk1[0].cdc_freq_cntr_kernel_i_7_n_0 ;
  wire \genblk1[0].cdc_freq_cntr_kernel_i_8_n_0 ;
  wire \genblk1[0].cdc_freq_cntr_kernel_i_9_n_0 ;
  wire [15:1]p_0_in;
  wire \ref_clk_cntr_i[0]_i_1_n_0 ;
  wire \ref_clk_cntr_i_reg[10]_i_1_n_0 ;
  wire \ref_clk_cntr_i_reg[10]_i_1_n_2 ;
  wire \ref_clk_cntr_i_reg[10]_i_1_n_3 ;
  wire \ref_clk_cntr_i_reg[11]_i_1_n_0 ;
  wire \ref_clk_cntr_i_reg[11]_i_1_n_2 ;
  wire \ref_clk_cntr_i_reg[11]_i_1_n_3 ;
  wire \ref_clk_cntr_i_reg[12]_i_1_n_0 ;
  wire \ref_clk_cntr_i_reg[12]_i_1_n_2 ;
  wire \ref_clk_cntr_i_reg[12]_i_1_n_3 ;
  wire \ref_clk_cntr_i_reg[13]_i_1_n_0 ;
  wire \ref_clk_cntr_i_reg[13]_i_1_n_2 ;
  wire \ref_clk_cntr_i_reg[13]_i_1_n_3 ;
  wire \ref_clk_cntr_i_reg[14]_i_1_n_0 ;
  wire \ref_clk_cntr_i_reg[14]_i_1_n_2 ;
  wire \ref_clk_cntr_i_reg[14]_i_1_n_3 ;
  wire \ref_clk_cntr_i_reg[15]_i_1_n_0 ;
  wire \ref_clk_cntr_i_reg[15]_i_1_n_2 ;
  wire \ref_clk_cntr_i_reg[15]_i_1_n_3 ;
  wire \ref_clk_cntr_i_reg[15]_i_2_n_0 ;
  wire \ref_clk_cntr_i_reg[15]_i_2_n_1 ;
  wire \ref_clk_cntr_i_reg[15]_i_2_n_2 ;
  wire \ref_clk_cntr_i_reg[15]_i_2_n_3 ;
  wire \ref_clk_cntr_i_reg[15]_i_3_n_0 ;
  wire \ref_clk_cntr_i_reg[15]_i_3_n_1 ;
  wire \ref_clk_cntr_i_reg[15]_i_3_n_2 ;
  wire \ref_clk_cntr_i_reg[15]_i_3_n_3 ;
  wire \ref_clk_cntr_i_reg[1]_i_1_n_0 ;
  wire \ref_clk_cntr_i_reg[1]_i_1_n_2 ;
  wire \ref_clk_cntr_i_reg[1]_i_1_n_3 ;
  wire \ref_clk_cntr_i_reg[2]_i_1_n_0 ;
  wire \ref_clk_cntr_i_reg[2]_i_1_n_2 ;
  wire \ref_clk_cntr_i_reg[2]_i_1_n_3 ;
  wire \ref_clk_cntr_i_reg[3]_i_1_n_0 ;
  wire \ref_clk_cntr_i_reg[3]_i_1_n_2 ;
  wire \ref_clk_cntr_i_reg[3]_i_1_n_3 ;
  wire \ref_clk_cntr_i_reg[4]_i_1_n_0 ;
  wire \ref_clk_cntr_i_reg[4]_i_1_n_2 ;
  wire \ref_clk_cntr_i_reg[4]_i_1_n_3 ;
  wire \ref_clk_cntr_i_reg[5]_i_1_n_0 ;
  wire \ref_clk_cntr_i_reg[5]_i_1_n_2 ;
  wire \ref_clk_cntr_i_reg[5]_i_1_n_3 ;
  wire \ref_clk_cntr_i_reg[6]_i_1_n_0 ;
  wire \ref_clk_cntr_i_reg[6]_i_1_n_2 ;
  wire \ref_clk_cntr_i_reg[6]_i_1_n_3 ;
  wire \ref_clk_cntr_i_reg[7]_i_1_n_0 ;
  wire \ref_clk_cntr_i_reg[7]_i_1_n_2 ;
  wire \ref_clk_cntr_i_reg[7]_i_1_n_3 ;
  wire \ref_clk_cntr_i_reg[8]_i_1_n_0 ;
  wire \ref_clk_cntr_i_reg[8]_i_1_n_2 ;
  wire \ref_clk_cntr_i_reg[8]_i_1_n_3 ;
  wire \ref_clk_cntr_i_reg[9]_i_1_n_0 ;
  wire \ref_clk_cntr_i_reg[9]_i_1_n_2 ;
  wire \ref_clk_cntr_i_reg[9]_i_1_n_3 ;
  wire \ref_clk_cntr_i_reg[9]_i_2_n_0 ;
  wire \ref_clk_cntr_i_reg[9]_i_2_n_1 ;
  wire \ref_clk_cntr_i_reg[9]_i_2_n_2 ;
  wire \ref_clk_cntr_i_reg[9]_i_2_n_3 ;
  (* RTL_KEEP = "true" *) wire [3:0]rst_cnt;
  wire rst_cnt_c;
  (* RTL_KEEP = "true" *) wire rst_cnt_ref;
  wire \rst_cnt_reg[0]_0 ;
  wire rst_cnt_synced_0;
  wire rst_cnt_synced_1;
  wire sel;
  wire [64:0]src_in;

  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "1" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0__6 \CLKS[0].cdc_done 
       (.dest_clk(aclk_kernel_cont_00),
        .dest_out(done_synced_0),
        .src_clk(1'b0),
        .src_in(done[0]));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__parameterized1__2 \CLKS[0].cdc_rst_cn0 
       (.dest_arst(rst_cnt_synced_0),
        .dest_clk(aclk_kernel_cont_00),
        .src_arst(rst_cnt[0]));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "23" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized1__6 \CLKS[0].cdc_test_clk0_cntr 
       (.dest_clk(aclk_freerun),
        .dest_out(src_in[46:24]),
        .src_clk(1'b0),
        .src_in(\CLKS[0].test_clk_cntr_reg[0]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CLKS[0].test_clk_cntr[0][0]_i_1__0 
       (.I0(done_synced_0),
        .O(\CLKS[0].test_clk_cntr[0][0]_i_1__0_n_0 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][0] 
       (.C(aclk_kernel_cont_00),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][0]_i_2__0_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [0]));
  LUT6CY #(
    .INIT(64'hFFFFFF00FF0000FF)) 
    \CLKS[0].test_clk_cntr_reg[0][0]_i_2__0 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][0]_i_2__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [0]),
        .I4(1'b0),
        .O51(\CLKS[0].test_clk_cntr_reg[0][0]_i_2__0_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][0]_i_2__0_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][0]_i_2__0_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][10] 
       (.C(aclk_kernel_cont_00),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][10]_i_1__0_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [10]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][10]_i_1__0 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][10]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [10]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][10]_i_2__0_n_0 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][10]_i_1__0_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][10]_i_1__0_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][10]_i_1__0_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("TRUE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \CLKS[0].test_clk_cntr_reg[0][10]_i_2__0 
       (.CIN(\CLKS[0].test_clk_cntr_reg[0][2]_i_2__0_n_3 ),
        .COUTB(\CLKS[0].test_clk_cntr_reg[0][10]_i_2__0_n_0 ),
        .COUTD(\CLKS[0].test_clk_cntr_reg[0][10]_i_2__0_n_1 ),
        .COUTF(\CLKS[0].test_clk_cntr_reg[0][10]_i_2__0_n_2 ),
        .COUTH(\CLKS[0].test_clk_cntr_reg[0][10]_i_2__0_n_3 ),
        .CYA(\CLKS[0].test_clk_cntr_reg[0][8]_i_1__0_n_2 ),
        .CYB(\CLKS[0].test_clk_cntr_reg[0][9]_i_1__0_n_2 ),
        .CYC(\CLKS[0].test_clk_cntr_reg[0][10]_i_1__0_n_2 ),
        .CYD(\CLKS[0].test_clk_cntr_reg[0][11]_i_1__0_n_2 ),
        .CYE(\CLKS[0].test_clk_cntr_reg[0][12]_i_1__0_n_2 ),
        .CYF(\CLKS[0].test_clk_cntr_reg[0][13]_i_1__0_n_2 ),
        .CYG(\CLKS[0].test_clk_cntr_reg[0][14]_i_1__0_n_2 ),
        .CYH(\CLKS[0].test_clk_cntr_reg[0][15]_i_1__0_n_2 ),
        .GEA(\CLKS[0].test_clk_cntr_reg[0][8]_i_1__0_n_0 ),
        .GEB(\CLKS[0].test_clk_cntr_reg[0][9]_i_1__0_n_0 ),
        .GEC(\CLKS[0].test_clk_cntr_reg[0][10]_i_1__0_n_0 ),
        .GED(\CLKS[0].test_clk_cntr_reg[0][11]_i_1__0_n_0 ),
        .GEE(\CLKS[0].test_clk_cntr_reg[0][12]_i_1__0_n_0 ),
        .GEF(\CLKS[0].test_clk_cntr_reg[0][13]_i_1__0_n_0 ),
        .GEG(\CLKS[0].test_clk_cntr_reg[0][14]_i_1__0_n_0 ),
        .GEH(\CLKS[0].test_clk_cntr_reg[0][15]_i_1__0_n_0 ),
        .PROPA(\CLKS[0].test_clk_cntr_reg[0][8]_i_1__0_n_3 ),
        .PROPB(\CLKS[0].test_clk_cntr_reg[0][9]_i_1__0_n_3 ),
        .PROPC(\CLKS[0].test_clk_cntr_reg[0][10]_i_1__0_n_3 ),
        .PROPD(\CLKS[0].test_clk_cntr_reg[0][11]_i_1__0_n_3 ),
        .PROPE(\CLKS[0].test_clk_cntr_reg[0][12]_i_1__0_n_3 ),
        .PROPF(\CLKS[0].test_clk_cntr_reg[0][13]_i_1__0_n_3 ),
        .PROPG(\CLKS[0].test_clk_cntr_reg[0][14]_i_1__0_n_3 ),
        .PROPH(\CLKS[0].test_clk_cntr_reg[0][15]_i_1__0_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][11] 
       (.C(aclk_kernel_cont_00),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][11]_i_1__0_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [11]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][11]_i_1__0 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][11]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [11]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][10]_i_1__0_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][11]_i_1__0_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][11]_i_1__0_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][11]_i_1__0_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][12] 
       (.C(aclk_kernel_cont_00),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][12]_i_1__0_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [12]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][12]_i_1__0 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][12]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [12]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][10]_i_2__0_n_1 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][12]_i_1__0_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][12]_i_1__0_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][12]_i_1__0_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][13] 
       (.C(aclk_kernel_cont_00),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][13]_i_1__0_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [13]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][13]_i_1__0 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][13]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [13]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][12]_i_1__0_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][13]_i_1__0_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][13]_i_1__0_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][13]_i_1__0_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][14] 
       (.C(aclk_kernel_cont_00),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][14]_i_1__0_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [14]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][14]_i_1__0 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][14]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [14]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][10]_i_2__0_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][14]_i_1__0_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][14]_i_1__0_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][14]_i_1__0_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][15] 
       (.C(aclk_kernel_cont_00),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][15]_i_1__0_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [15]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][15]_i_1__0 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][15]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [15]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][14]_i_1__0_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][15]_i_1__0_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][15]_i_1__0_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][15]_i_1__0_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][16] 
       (.C(aclk_kernel_cont_00),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][16]_i_1__0_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [16]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][16]_i_1__0 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][16]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [16]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][10]_i_2__0_n_3 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][16]_i_1__0_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][16]_i_1__0_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][16]_i_1__0_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][17] 
       (.C(aclk_kernel_cont_00),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][17]_i_1__0_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [17]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][17]_i_1__0 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][17]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [17]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][16]_i_1__0_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][17]_i_1__0_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][17]_i_1__0_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][17]_i_1__0_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][18] 
       (.C(aclk_kernel_cont_00),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][18]_i_1__0_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [18]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][18]_i_1__0 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][18]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [18]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][18]_i_2__0_n_0 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][18]_i_1__0_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][18]_i_1__0_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][18]_i_1__0_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("TRUE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \CLKS[0].test_clk_cntr_reg[0][18]_i_2__0 
       (.CIN(\CLKS[0].test_clk_cntr_reg[0][10]_i_2__0_n_3 ),
        .COUTB(\CLKS[0].test_clk_cntr_reg[0][18]_i_2__0_n_0 ),
        .COUTD(\CLKS[0].test_clk_cntr_reg[0][18]_i_2__0_n_1 ),
        .COUTF(\CLKS[0].test_clk_cntr_reg[0][18]_i_2__0_n_2 ),
        .COUTH(\CLKS[0].test_clk_cntr_reg[0][18]_i_2__0_n_3 ),
        .CYA(\CLKS[0].test_clk_cntr_reg[0][16]_i_1__0_n_2 ),
        .CYB(\CLKS[0].test_clk_cntr_reg[0][17]_i_1__0_n_2 ),
        .CYC(\CLKS[0].test_clk_cntr_reg[0][18]_i_1__0_n_2 ),
        .CYD(\CLKS[0].test_clk_cntr_reg[0][19]_i_1__0_n_2 ),
        .CYE(\CLKS[0].test_clk_cntr_reg[0][20]_i_1__0_n_2 ),
        .CYF(\CLKS[0].test_clk_cntr_reg[0][21]_i_1__0_n_2 ),
        .CYG(\CLKS[0].test_clk_cntr_reg[0][22]_i_1__0_n_2 ),
        .CYH(\CLKS[0].test_clk_cntr_reg[0][18]_i_3__0_n_2 ),
        .GEA(\CLKS[0].test_clk_cntr_reg[0][16]_i_1__0_n_0 ),
        .GEB(\CLKS[0].test_clk_cntr_reg[0][17]_i_1__0_n_0 ),
        .GEC(\CLKS[0].test_clk_cntr_reg[0][18]_i_1__0_n_0 ),
        .GED(\CLKS[0].test_clk_cntr_reg[0][19]_i_1__0_n_0 ),
        .GEE(\CLKS[0].test_clk_cntr_reg[0][20]_i_1__0_n_0 ),
        .GEF(\CLKS[0].test_clk_cntr_reg[0][21]_i_1__0_n_0 ),
        .GEG(\CLKS[0].test_clk_cntr_reg[0][22]_i_1__0_n_0 ),
        .GEH(\CLKS[0].test_clk_cntr_reg[0][18]_i_3__0_n_0 ),
        .PROPA(\CLKS[0].test_clk_cntr_reg[0][16]_i_1__0_n_3 ),
        .PROPB(\CLKS[0].test_clk_cntr_reg[0][17]_i_1__0_n_3 ),
        .PROPC(\CLKS[0].test_clk_cntr_reg[0][18]_i_1__0_n_3 ),
        .PROPD(\CLKS[0].test_clk_cntr_reg[0][19]_i_1__0_n_3 ),
        .PROPE(\CLKS[0].test_clk_cntr_reg[0][20]_i_1__0_n_3 ),
        .PROPF(\CLKS[0].test_clk_cntr_reg[0][21]_i_1__0_n_3 ),
        .PROPG(\CLKS[0].test_clk_cntr_reg[0][22]_i_1__0_n_3 ),
        .PROPH(\CLKS[0].test_clk_cntr_reg[0][18]_i_3__0_n_3 ));
  LUT6CY #(
    .INIT(64'h00000000FF000000)) 
    \CLKS[0].test_clk_cntr_reg[0][18]_i_3__0 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][18]_i_3__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(1'b0),
        .I4(1'b0),
        .O51(\CLKS[0].test_clk_cntr_reg[0][18]_i_3__0_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][18]_i_3__0_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][18]_i_3__0_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][19] 
       (.C(aclk_kernel_cont_00),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][19]_i_1__0_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [19]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][19]_i_1__0 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][19]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [19]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][18]_i_1__0_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][19]_i_1__0_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][19]_i_1__0_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][19]_i_1__0_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][1] 
       (.C(aclk_kernel_cont_00),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][1]_i_1__0_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [1]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][1]_i_1__0 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][1]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [1]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][0]_i_2__0_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][1]_i_1__0_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][1]_i_1__0_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][1]_i_1__0_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][20] 
       (.C(aclk_kernel_cont_00),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][20]_i_1__0_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [20]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][20]_i_1__0 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][20]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [20]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][18]_i_2__0_n_1 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][20]_i_1__0_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][20]_i_1__0_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][20]_i_1__0_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][21] 
       (.C(aclk_kernel_cont_00),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][21]_i_1__0_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [21]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][21]_i_1__0 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][21]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [21]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][20]_i_1__0_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][21]_i_1__0_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][21]_i_1__0_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][21]_i_1__0_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][22] 
       (.C(aclk_kernel_cont_00),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][22]_i_1__0_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [22]));
  LUT6CY #(
    .INIT(64'hFF00FF0000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][22]_i_1__0 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][22]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [22]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][18]_i_2__0_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][22]_i_1__0_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][22]_i_1__0_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][22]_i_1__0_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][2] 
       (.C(aclk_kernel_cont_00),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][2]_i_1__0_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [2]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][2]_i_1__0 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][2]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [2]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][2]_i_2__0_n_0 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][2]_i_1__0_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][2]_i_1__0_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][2]_i_1__0_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("FALSE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \CLKS[0].test_clk_cntr_reg[0][2]_i_2__0 
       (.CIN(1'b0),
        .COUTB(\CLKS[0].test_clk_cntr_reg[0][2]_i_2__0_n_0 ),
        .COUTD(\CLKS[0].test_clk_cntr_reg[0][2]_i_2__0_n_1 ),
        .COUTF(\CLKS[0].test_clk_cntr_reg[0][2]_i_2__0_n_2 ),
        .COUTH(\CLKS[0].test_clk_cntr_reg[0][2]_i_2__0_n_3 ),
        .CYA(\CLKS[0].test_clk_cntr_reg[0][0]_i_2__0_n_2 ),
        .CYB(\CLKS[0].test_clk_cntr_reg[0][1]_i_1__0_n_2 ),
        .CYC(\CLKS[0].test_clk_cntr_reg[0][2]_i_1__0_n_2 ),
        .CYD(\CLKS[0].test_clk_cntr_reg[0][3]_i_1__0_n_2 ),
        .CYE(\CLKS[0].test_clk_cntr_reg[0][4]_i_1__0_n_2 ),
        .CYF(\CLKS[0].test_clk_cntr_reg[0][5]_i_1__0_n_2 ),
        .CYG(\CLKS[0].test_clk_cntr_reg[0][6]_i_1__0_n_2 ),
        .CYH(\CLKS[0].test_clk_cntr_reg[0][7]_i_1__0_n_2 ),
        .GEA(\CLKS[0].test_clk_cntr_reg[0][0]_i_2__0_n_0 ),
        .GEB(\CLKS[0].test_clk_cntr_reg[0][1]_i_1__0_n_0 ),
        .GEC(\CLKS[0].test_clk_cntr_reg[0][2]_i_1__0_n_0 ),
        .GED(\CLKS[0].test_clk_cntr_reg[0][3]_i_1__0_n_0 ),
        .GEE(\CLKS[0].test_clk_cntr_reg[0][4]_i_1__0_n_0 ),
        .GEF(\CLKS[0].test_clk_cntr_reg[0][5]_i_1__0_n_0 ),
        .GEG(\CLKS[0].test_clk_cntr_reg[0][6]_i_1__0_n_0 ),
        .GEH(\CLKS[0].test_clk_cntr_reg[0][7]_i_1__0_n_0 ),
        .PROPA(\CLKS[0].test_clk_cntr_reg[0][0]_i_2__0_n_3 ),
        .PROPB(\CLKS[0].test_clk_cntr_reg[0][1]_i_1__0_n_3 ),
        .PROPC(\CLKS[0].test_clk_cntr_reg[0][2]_i_1__0_n_3 ),
        .PROPD(\CLKS[0].test_clk_cntr_reg[0][3]_i_1__0_n_3 ),
        .PROPE(\CLKS[0].test_clk_cntr_reg[0][4]_i_1__0_n_3 ),
        .PROPF(\CLKS[0].test_clk_cntr_reg[0][5]_i_1__0_n_3 ),
        .PROPG(\CLKS[0].test_clk_cntr_reg[0][6]_i_1__0_n_3 ),
        .PROPH(\CLKS[0].test_clk_cntr_reg[0][7]_i_1__0_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][3] 
       (.C(aclk_kernel_cont_00),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][3]_i_1__0_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [3]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][3]_i_1__0 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][3]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [3]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][2]_i_1__0_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][3]_i_1__0_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][3]_i_1__0_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][3]_i_1__0_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][4] 
       (.C(aclk_kernel_cont_00),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][4]_i_1__0_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [4]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][4]_i_1__0 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][4]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [4]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][2]_i_2__0_n_1 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][4]_i_1__0_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][4]_i_1__0_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][4]_i_1__0_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][5] 
       (.C(aclk_kernel_cont_00),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][5]_i_1__0_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [5]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][5]_i_1__0 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][5]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [5]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][4]_i_1__0_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][5]_i_1__0_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][5]_i_1__0_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][5]_i_1__0_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][6] 
       (.C(aclk_kernel_cont_00),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][6]_i_1__0_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [6]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][6]_i_1__0 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][6]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [6]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][2]_i_2__0_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][6]_i_1__0_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][6]_i_1__0_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][6]_i_1__0_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][7] 
       (.C(aclk_kernel_cont_00),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][7]_i_1__0_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [7]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][7]_i_1__0 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][7]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [7]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][6]_i_1__0_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][7]_i_1__0_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][7]_i_1__0_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][7]_i_1__0_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][8] 
       (.C(aclk_kernel_cont_00),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][8]_i_1__0_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [8]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][8]_i_1__0 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][8]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [8]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][2]_i_2__0_n_3 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][8]_i_1__0_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][8]_i_1__0_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][8]_i_1__0_n_3 ));
  FDCE \CLKS[0].test_clk_cntr_reg[0][9] 
       (.C(aclk_kernel_cont_00),
        .CE(\CLKS[0].test_clk_cntr[0][0]_i_1__0_n_0 ),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][9]_i_1__0_n_1 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0]_0 [9]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[0].test_clk_cntr_reg[0][9]_i_1__0 
       (.GE(\CLKS[0].test_clk_cntr_reg[0][9]_i_1__0_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[0].test_clk_cntr_reg[0]_0 [9]),
        .I4(\CLKS[0].test_clk_cntr_reg[0][8]_i_1__0_n_2 ),
        .O51(\CLKS[0].test_clk_cntr_reg[0][9]_i_1__0_n_1 ),
        .O52(\CLKS[0].test_clk_cntr_reg[0][9]_i_1__0_n_2 ),
        .PROP(\CLKS[0].test_clk_cntr_reg[0][9]_i_1__0_n_3 ));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "1" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0__7 \CLKS[1].cdc_done 
       (.dest_clk(aclk_kernel_00),
        .dest_out(done_synced_1),
        .src_clk(1'b0),
        .src_in(done[1]));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__parameterized1__3 \CLKS[1].cdc_rst_cn0 
       (.dest_arst(rst_cnt_synced_1),
        .dest_clk(aclk_kernel_00),
        .src_arst(rst_cnt[1]));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "23" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized1__7 \CLKS[1].cdc_test_clk0_cntr 
       (.dest_clk(aclk_freerun),
        .dest_out(src_in[22:0]),
        .src_clk(1'b0),
        .src_in(\CLKS[1].test_clk_cntr_reg[1]_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CLKS[1].test_clk_cntr[1][0]_i_1 
       (.I0(done_synced_1),
        .O(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][0] 
       (.C(aclk_kernel_00),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [0]));
  LUT6CY #(
    .INIT(64'hFFFFFF00FF0000FF)) 
    \CLKS[1].test_clk_cntr_reg[1][0]_i_2 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [0]),
        .I4(1'b0),
        .O51(\CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][10] 
       (.C(aclk_kernel_00),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][10]_i_1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [10]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][10]_i_1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][10]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [10]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][10]_i_2_n_0 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][10]_i_1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][10]_i_1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][10]_i_1_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("TRUE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \CLKS[1].test_clk_cntr_reg[1][10]_i_2 
       (.CIN(\CLKS[1].test_clk_cntr_reg[1][2]_i_2_n_3 ),
        .COUTB(\CLKS[1].test_clk_cntr_reg[1][10]_i_2_n_0 ),
        .COUTD(\CLKS[1].test_clk_cntr_reg[1][10]_i_2_n_1 ),
        .COUTF(\CLKS[1].test_clk_cntr_reg[1][10]_i_2_n_2 ),
        .COUTH(\CLKS[1].test_clk_cntr_reg[1][10]_i_2_n_3 ),
        .CYA(\CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_2 ),
        .CYB(\CLKS[1].test_clk_cntr_reg[1][9]_i_1_n_2 ),
        .CYC(\CLKS[1].test_clk_cntr_reg[1][10]_i_1_n_2 ),
        .CYD(\CLKS[1].test_clk_cntr_reg[1][11]_i_1_n_2 ),
        .CYE(\CLKS[1].test_clk_cntr_reg[1][12]_i_1_n_2 ),
        .CYF(\CLKS[1].test_clk_cntr_reg[1][13]_i_1_n_2 ),
        .CYG(\CLKS[1].test_clk_cntr_reg[1][14]_i_1_n_2 ),
        .CYH(\CLKS[1].test_clk_cntr_reg[1][15]_i_1_n_2 ),
        .GEA(\CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_0 ),
        .GEB(\CLKS[1].test_clk_cntr_reg[1][9]_i_1_n_0 ),
        .GEC(\CLKS[1].test_clk_cntr_reg[1][10]_i_1_n_0 ),
        .GED(\CLKS[1].test_clk_cntr_reg[1][11]_i_1_n_0 ),
        .GEE(\CLKS[1].test_clk_cntr_reg[1][12]_i_1_n_0 ),
        .GEF(\CLKS[1].test_clk_cntr_reg[1][13]_i_1_n_0 ),
        .GEG(\CLKS[1].test_clk_cntr_reg[1][14]_i_1_n_0 ),
        .GEH(\CLKS[1].test_clk_cntr_reg[1][15]_i_1_n_0 ),
        .PROPA(\CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_3 ),
        .PROPB(\CLKS[1].test_clk_cntr_reg[1][9]_i_1_n_3 ),
        .PROPC(\CLKS[1].test_clk_cntr_reg[1][10]_i_1_n_3 ),
        .PROPD(\CLKS[1].test_clk_cntr_reg[1][11]_i_1_n_3 ),
        .PROPE(\CLKS[1].test_clk_cntr_reg[1][12]_i_1_n_3 ),
        .PROPF(\CLKS[1].test_clk_cntr_reg[1][13]_i_1_n_3 ),
        .PROPG(\CLKS[1].test_clk_cntr_reg[1][14]_i_1_n_3 ),
        .PROPH(\CLKS[1].test_clk_cntr_reg[1][15]_i_1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][11] 
       (.C(aclk_kernel_00),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][11]_i_1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [11]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][11]_i_1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][11]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [11]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][10]_i_1_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][11]_i_1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][11]_i_1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][11]_i_1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][12] 
       (.C(aclk_kernel_00),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][12]_i_1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [12]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][12]_i_1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][12]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [12]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][10]_i_2_n_1 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][12]_i_1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][12]_i_1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][12]_i_1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][13] 
       (.C(aclk_kernel_00),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][13]_i_1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [13]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][13]_i_1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][13]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [13]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][12]_i_1_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][13]_i_1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][13]_i_1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][13]_i_1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][14] 
       (.C(aclk_kernel_00),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][14]_i_1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [14]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][14]_i_1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][14]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [14]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][10]_i_2_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][14]_i_1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][14]_i_1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][14]_i_1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][15] 
       (.C(aclk_kernel_00),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][15]_i_1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [15]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][15]_i_1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][15]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [15]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][14]_i_1_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][15]_i_1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][15]_i_1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][15]_i_1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][16] 
       (.C(aclk_kernel_00),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [16]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][16]_i_1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [16]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][10]_i_2_n_3 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][17] 
       (.C(aclk_kernel_00),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][17]_i_1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [17]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][17]_i_1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][17]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [17]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][17]_i_1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][17]_i_1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][17]_i_1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][18] 
       (.C(aclk_kernel_00),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][18]_i_1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [18]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][18]_i_1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][18]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [18]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][18]_i_2_n_0 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][18]_i_1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][18]_i_1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][18]_i_1_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("TRUE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \CLKS[1].test_clk_cntr_reg[1][18]_i_2 
       (.CIN(\CLKS[1].test_clk_cntr_reg[1][10]_i_2_n_3 ),
        .COUTB(\CLKS[1].test_clk_cntr_reg[1][18]_i_2_n_0 ),
        .COUTD(\CLKS[1].test_clk_cntr_reg[1][18]_i_2_n_1 ),
        .COUTF(\CLKS[1].test_clk_cntr_reg[1][18]_i_2_n_2 ),
        .COUTH(\CLKS[1].test_clk_cntr_reg[1][18]_i_2_n_3 ),
        .CYA(\CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_2 ),
        .CYB(\CLKS[1].test_clk_cntr_reg[1][17]_i_1_n_2 ),
        .CYC(\CLKS[1].test_clk_cntr_reg[1][18]_i_1_n_2 ),
        .CYD(\CLKS[1].test_clk_cntr_reg[1][19]_i_1_n_2 ),
        .CYE(\CLKS[1].test_clk_cntr_reg[1][20]_i_1_n_2 ),
        .CYF(\CLKS[1].test_clk_cntr_reg[1][21]_i_1_n_2 ),
        .CYG(\CLKS[1].test_clk_cntr_reg[1][22]_i_1_n_2 ),
        .CYH(\CLKS[1].test_clk_cntr_reg[1][18]_i_3_n_2 ),
        .GEA(\CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_0 ),
        .GEB(\CLKS[1].test_clk_cntr_reg[1][17]_i_1_n_0 ),
        .GEC(\CLKS[1].test_clk_cntr_reg[1][18]_i_1_n_0 ),
        .GED(\CLKS[1].test_clk_cntr_reg[1][19]_i_1_n_0 ),
        .GEE(\CLKS[1].test_clk_cntr_reg[1][20]_i_1_n_0 ),
        .GEF(\CLKS[1].test_clk_cntr_reg[1][21]_i_1_n_0 ),
        .GEG(\CLKS[1].test_clk_cntr_reg[1][22]_i_1_n_0 ),
        .GEH(\CLKS[1].test_clk_cntr_reg[1][18]_i_3_n_0 ),
        .PROPA(\CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_3 ),
        .PROPB(\CLKS[1].test_clk_cntr_reg[1][17]_i_1_n_3 ),
        .PROPC(\CLKS[1].test_clk_cntr_reg[1][18]_i_1_n_3 ),
        .PROPD(\CLKS[1].test_clk_cntr_reg[1][19]_i_1_n_3 ),
        .PROPE(\CLKS[1].test_clk_cntr_reg[1][20]_i_1_n_3 ),
        .PROPF(\CLKS[1].test_clk_cntr_reg[1][21]_i_1_n_3 ),
        .PROPG(\CLKS[1].test_clk_cntr_reg[1][22]_i_1_n_3 ),
        .PROPH(\CLKS[1].test_clk_cntr_reg[1][18]_i_3_n_3 ));
  LUT6CY #(
    .INIT(64'h00000000FF000000)) 
    \CLKS[1].test_clk_cntr_reg[1][18]_i_3 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][18]_i_3_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(1'b0),
        .I4(1'b0),
        .O51(\CLKS[1].test_clk_cntr_reg[1][18]_i_3_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][18]_i_3_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][18]_i_3_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][19] 
       (.C(aclk_kernel_00),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][19]_i_1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [19]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][19]_i_1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][19]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [19]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][18]_i_1_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][19]_i_1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][19]_i_1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][19]_i_1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][1] 
       (.C(aclk_kernel_00),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][1]_i_1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [1]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][1]_i_1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][1]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [1]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][1]_i_1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][1]_i_1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][1]_i_1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][20] 
       (.C(aclk_kernel_00),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][20]_i_1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [20]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][20]_i_1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][20]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [20]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][18]_i_2_n_1 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][20]_i_1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][20]_i_1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][20]_i_1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][21] 
       (.C(aclk_kernel_00),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][21]_i_1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [21]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][21]_i_1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][21]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [21]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][20]_i_1_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][21]_i_1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][21]_i_1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][21]_i_1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][22] 
       (.C(aclk_kernel_00),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][22]_i_1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [22]));
  LUT6CY #(
    .INIT(64'hFF00FF0000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][22]_i_1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][22]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [22]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][18]_i_2_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][22]_i_1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][22]_i_1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][22]_i_1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][2] 
       (.C(aclk_kernel_00),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][2]_i_1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [2]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][2]_i_1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][2]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [2]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][2]_i_2_n_0 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][2]_i_1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][2]_i_1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][2]_i_1_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("FALSE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \CLKS[1].test_clk_cntr_reg[1][2]_i_2 
       (.CIN(1'b0),
        .COUTB(\CLKS[1].test_clk_cntr_reg[1][2]_i_2_n_0 ),
        .COUTD(\CLKS[1].test_clk_cntr_reg[1][2]_i_2_n_1 ),
        .COUTF(\CLKS[1].test_clk_cntr_reg[1][2]_i_2_n_2 ),
        .COUTH(\CLKS[1].test_clk_cntr_reg[1][2]_i_2_n_3 ),
        .CYA(\CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_2 ),
        .CYB(\CLKS[1].test_clk_cntr_reg[1][1]_i_1_n_2 ),
        .CYC(\CLKS[1].test_clk_cntr_reg[1][2]_i_1_n_2 ),
        .CYD(\CLKS[1].test_clk_cntr_reg[1][3]_i_1_n_2 ),
        .CYE(\CLKS[1].test_clk_cntr_reg[1][4]_i_1_n_2 ),
        .CYF(\CLKS[1].test_clk_cntr_reg[1][5]_i_1_n_2 ),
        .CYG(\CLKS[1].test_clk_cntr_reg[1][6]_i_1_n_2 ),
        .CYH(\CLKS[1].test_clk_cntr_reg[1][7]_i_1_n_2 ),
        .GEA(\CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_0 ),
        .GEB(\CLKS[1].test_clk_cntr_reg[1][1]_i_1_n_0 ),
        .GEC(\CLKS[1].test_clk_cntr_reg[1][2]_i_1_n_0 ),
        .GED(\CLKS[1].test_clk_cntr_reg[1][3]_i_1_n_0 ),
        .GEE(\CLKS[1].test_clk_cntr_reg[1][4]_i_1_n_0 ),
        .GEF(\CLKS[1].test_clk_cntr_reg[1][5]_i_1_n_0 ),
        .GEG(\CLKS[1].test_clk_cntr_reg[1][6]_i_1_n_0 ),
        .GEH(\CLKS[1].test_clk_cntr_reg[1][7]_i_1_n_0 ),
        .PROPA(\CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_3 ),
        .PROPB(\CLKS[1].test_clk_cntr_reg[1][1]_i_1_n_3 ),
        .PROPC(\CLKS[1].test_clk_cntr_reg[1][2]_i_1_n_3 ),
        .PROPD(\CLKS[1].test_clk_cntr_reg[1][3]_i_1_n_3 ),
        .PROPE(\CLKS[1].test_clk_cntr_reg[1][4]_i_1_n_3 ),
        .PROPF(\CLKS[1].test_clk_cntr_reg[1][5]_i_1_n_3 ),
        .PROPG(\CLKS[1].test_clk_cntr_reg[1][6]_i_1_n_3 ),
        .PROPH(\CLKS[1].test_clk_cntr_reg[1][7]_i_1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][3] 
       (.C(aclk_kernel_00),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][3]_i_1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [3]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][3]_i_1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][3]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [3]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][2]_i_1_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][3]_i_1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][3]_i_1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][3]_i_1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][4] 
       (.C(aclk_kernel_00),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][4]_i_1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [4]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][4]_i_1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][4]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [4]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][2]_i_2_n_1 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][4]_i_1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][4]_i_1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][4]_i_1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][5] 
       (.C(aclk_kernel_00),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][5]_i_1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [5]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][5]_i_1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][5]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [5]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][4]_i_1_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][5]_i_1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][5]_i_1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][5]_i_1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][6] 
       (.C(aclk_kernel_00),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][6]_i_1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [6]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][6]_i_1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][6]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [6]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][2]_i_2_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][6]_i_1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][6]_i_1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][6]_i_1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][7] 
       (.C(aclk_kernel_00),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][7]_i_1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [7]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][7]_i_1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][7]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [7]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][6]_i_1_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][7]_i_1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][7]_i_1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][7]_i_1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][8] 
       (.C(aclk_kernel_00),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [8]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][8]_i_1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [8]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][2]_i_2_n_3 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_3 ));
  FDCE \CLKS[1].test_clk_cntr_reg[1][9] 
       (.C(aclk_kernel_00),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][9]_i_1_n_1 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1]_1 [9]));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \CLKS[1].test_clk_cntr_reg[1][9]_i_1 
       (.GE(\CLKS[1].test_clk_cntr_reg[1][9]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\CLKS[1].test_clk_cntr_reg[1]_1 [9]),
        .I4(\CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_2 ),
        .O51(\CLKS[1].test_clk_cntr_reg[1][9]_i_1_n_1 ),
        .O52(\CLKS[1].test_clk_cntr_reg[1][9]_i_1_n_2 ),
        .PROP(\CLKS[1].test_clk_cntr_reg[1][9]_i_1_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    done_ref_i_i_1
       (.I0(src_in[64]),
        .O(sel));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    done_ref_i_i_2
       (.I0(done_ref_i_i_3_n_0),
        .I1(src_in[49]),
        .I2(src_in[48]),
        .I3(src_in[51]),
        .I4(src_in[50]),
        .I5(done_ref_i_i_4_n_0),
        .O(done_c));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    done_ref_i_i_3
       (.I0(src_in[60]),
        .I1(src_in[61]),
        .I2(src_in[58]),
        .I3(src_in[59]),
        .I4(src_in[62]),
        .I5(src_in[63]),
        .O(done_ref_i_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    done_ref_i_i_4
       (.I0(src_in[54]),
        .I1(src_in[55]),
        .I2(src_in[52]),
        .I3(src_in[53]),
        .I4(src_in[56]),
        .I5(src_in[57]),
        .O(done_ref_i_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    done_ref_i_reg
       (.C(aclk_freerun),
        .CE(sel),
        .D(done_c),
        .Q(src_in[64]),
        .R(rst_cnt_ref));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \done_reg[0] 
       (.C(aclk_freerun),
        .CE(sel),
        .D(done_c),
        .Q(done[0]),
        .R(rst_cnt_ref));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \done_reg[1] 
       (.C(aclk_freerun),
        .CE(sel),
        .D(done_c),
        .Q(done[1]),
        .R(rst_cnt_ref));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \done_reg[2] 
       (.C(aclk_freerun),
        .CE(sel),
        .D(done_c),
        .Q(done[2]),
        .R(rst_cnt_ref));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \done_reg[3] 
       (.C(aclk_freerun),
        .CE(sel),
        .D(done_c),
        .Q(done[3]),
        .R(rst_cnt_ref));
  LUT4 #(
    .INIT(16'h8000)) 
    \genblk1[0].cdc_freq_cntr_kernel_i_1 
       (.I0(\genblk1[0].cdc_freq_cntr_kernel_i_3_n_0 ),
        .I1(\genblk1[0].cdc_freq_cntr_kernel_i_4_n_0 ),
        .I2(\genblk1[0].cdc_freq_cntr_kernel_i_5_n_0 ),
        .I3(\genblk1[0].cdc_freq_cntr_kernel_i_6_n_0 ),
        .O(src_in[47]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \genblk1[0].cdc_freq_cntr_kernel_i_10 
       (.I0(src_in[0]),
        .I1(src_in[1]),
        .I2(src_in[2]),
        .I3(src_in[4]),
        .I4(src_in[3]),
        .O(\genblk1[0].cdc_freq_cntr_kernel_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \genblk1[0].cdc_freq_cntr_kernel_i_2 
       (.I0(\genblk1[0].cdc_freq_cntr_kernel_i_7_n_0 ),
        .I1(\genblk1[0].cdc_freq_cntr_kernel_i_8_n_0 ),
        .I2(\genblk1[0].cdc_freq_cntr_kernel_i_9_n_0 ),
        .I3(\genblk1[0].cdc_freq_cntr_kernel_i_10_n_0 ),
        .O(src_in[23]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \genblk1[0].cdc_freq_cntr_kernel_i_3 
       (.I0(src_in[37]),
        .I1(src_in[38]),
        .I2(src_in[35]),
        .I3(src_in[36]),
        .I4(src_in[40]),
        .I5(src_in[39]),
        .O(\genblk1[0].cdc_freq_cntr_kernel_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \genblk1[0].cdc_freq_cntr_kernel_i_4 
       (.I0(src_in[43]),
        .I1(src_in[44]),
        .I2(src_in[41]),
        .I3(src_in[42]),
        .I4(src_in[46]),
        .I5(src_in[45]),
        .O(\genblk1[0].cdc_freq_cntr_kernel_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \genblk1[0].cdc_freq_cntr_kernel_i_5 
       (.I0(src_in[31]),
        .I1(src_in[32]),
        .I2(src_in[29]),
        .I3(src_in[30]),
        .I4(src_in[34]),
        .I5(src_in[33]),
        .O(\genblk1[0].cdc_freq_cntr_kernel_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \genblk1[0].cdc_freq_cntr_kernel_i_6 
       (.I0(src_in[24]),
        .I1(src_in[25]),
        .I2(src_in[26]),
        .I3(src_in[28]),
        .I4(src_in[27]),
        .O(\genblk1[0].cdc_freq_cntr_kernel_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \genblk1[0].cdc_freq_cntr_kernel_i_7 
       (.I0(src_in[13]),
        .I1(src_in[14]),
        .I2(src_in[11]),
        .I3(src_in[12]),
        .I4(src_in[16]),
        .I5(src_in[15]),
        .O(\genblk1[0].cdc_freq_cntr_kernel_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \genblk1[0].cdc_freq_cntr_kernel_i_8 
       (.I0(src_in[19]),
        .I1(src_in[20]),
        .I2(src_in[17]),
        .I3(src_in[18]),
        .I4(src_in[22]),
        .I5(src_in[21]),
        .O(\genblk1[0].cdc_freq_cntr_kernel_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \genblk1[0].cdc_freq_cntr_kernel_i_9 
       (.I0(src_in[7]),
        .I1(src_in[8]),
        .I2(src_in[5]),
        .I3(src_in[6]),
        .I4(src_in[10]),
        .I5(src_in[9]),
        .O(\genblk1[0].cdc_freq_cntr_kernel_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \ref_clk_cntr_i[0]_i_1 
       (.I0(src_in[48]),
        .I1(rst_cnt_ref),
        .I2(src_in[64]),
        .O(\ref_clk_cntr_i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[0] 
       (.C(aclk_freerun),
        .CE(1'b1),
        .D(\ref_clk_cntr_i[0]_i_1_n_0 ),
        .Q(src_in[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[10] 
       (.C(aclk_freerun),
        .CE(sel),
        .D(p_0_in[10]),
        .Q(src_in[58]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[10]_i_1 
       (.GE(\ref_clk_cntr_i_reg[10]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[58]),
        .I4(\ref_clk_cntr_i_reg[9]_i_1_n_2 ),
        .O51(p_0_in[10]),
        .O52(\ref_clk_cntr_i_reg[10]_i_1_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[10]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[11] 
       (.C(aclk_freerun),
        .CE(sel),
        .D(p_0_in[11]),
        .Q(src_in[59]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[11]_i_1 
       (.GE(\ref_clk_cntr_i_reg[11]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[59]),
        .I4(\ref_clk_cntr_i_reg[15]_i_2_n_0 ),
        .O51(p_0_in[11]),
        .O52(\ref_clk_cntr_i_reg[11]_i_1_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[11]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[12] 
       (.C(aclk_freerun),
        .CE(sel),
        .D(p_0_in[12]),
        .Q(src_in[60]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[12]_i_1 
       (.GE(\ref_clk_cntr_i_reg[12]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[60]),
        .I4(\ref_clk_cntr_i_reg[11]_i_1_n_2 ),
        .O51(p_0_in[12]),
        .O52(\ref_clk_cntr_i_reg[12]_i_1_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[12]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[13] 
       (.C(aclk_freerun),
        .CE(sel),
        .D(p_0_in[13]),
        .Q(src_in[61]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[13]_i_1 
       (.GE(\ref_clk_cntr_i_reg[13]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[61]),
        .I4(\ref_clk_cntr_i_reg[15]_i_2_n_1 ),
        .O51(p_0_in[13]),
        .O52(\ref_clk_cntr_i_reg[13]_i_1_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[13]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[14] 
       (.C(aclk_freerun),
        .CE(sel),
        .D(p_0_in[14]),
        .Q(src_in[62]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[14]_i_1 
       (.GE(\ref_clk_cntr_i_reg[14]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[62]),
        .I4(\ref_clk_cntr_i_reg[13]_i_1_n_2 ),
        .O51(p_0_in[14]),
        .O52(\ref_clk_cntr_i_reg[14]_i_1_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[14]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[15] 
       (.C(aclk_freerun),
        .CE(sel),
        .D(p_0_in[15]),
        .Q(src_in[63]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00FF0000FFFF00)) 
    \ref_clk_cntr_i_reg[15]_i_1 
       (.GE(\ref_clk_cntr_i_reg[15]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[63]),
        .I4(\ref_clk_cntr_i_reg[15]_i_2_n_2 ),
        .O51(p_0_in[15]),
        .O52(\ref_clk_cntr_i_reg[15]_i_1_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[15]_i_1_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("TRUE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \ref_clk_cntr_i_reg[15]_i_2 
       (.CIN(\ref_clk_cntr_i_reg[9]_i_2_n_3 ),
        .COUTB(\ref_clk_cntr_i_reg[15]_i_2_n_0 ),
        .COUTD(\ref_clk_cntr_i_reg[15]_i_2_n_1 ),
        .COUTF(\ref_clk_cntr_i_reg[15]_i_2_n_2 ),
        .COUTH(\ref_clk_cntr_i_reg[15]_i_2_n_3 ),
        .CYA(\ref_clk_cntr_i_reg[9]_i_1_n_2 ),
        .CYB(\ref_clk_cntr_i_reg[10]_i_1_n_2 ),
        .CYC(\ref_clk_cntr_i_reg[11]_i_1_n_2 ),
        .CYD(\ref_clk_cntr_i_reg[12]_i_1_n_2 ),
        .CYE(\ref_clk_cntr_i_reg[13]_i_1_n_2 ),
        .CYF(\ref_clk_cntr_i_reg[14]_i_1_n_2 ),
        .CYG(\ref_clk_cntr_i_reg[15]_i_1_n_2 ),
        .CYH(\ref_clk_cntr_i_reg[15]_i_3_n_2 ),
        .GEA(\ref_clk_cntr_i_reg[9]_i_1_n_0 ),
        .GEB(\ref_clk_cntr_i_reg[10]_i_1_n_0 ),
        .GEC(\ref_clk_cntr_i_reg[11]_i_1_n_0 ),
        .GED(\ref_clk_cntr_i_reg[12]_i_1_n_0 ),
        .GEE(\ref_clk_cntr_i_reg[13]_i_1_n_0 ),
        .GEF(\ref_clk_cntr_i_reg[14]_i_1_n_0 ),
        .GEG(\ref_clk_cntr_i_reg[15]_i_1_n_0 ),
        .GEH(\ref_clk_cntr_i_reg[15]_i_3_n_0 ),
        .PROPA(\ref_clk_cntr_i_reg[9]_i_1_n_3 ),
        .PROPB(\ref_clk_cntr_i_reg[10]_i_1_n_3 ),
        .PROPC(\ref_clk_cntr_i_reg[11]_i_1_n_3 ),
        .PROPD(\ref_clk_cntr_i_reg[12]_i_1_n_3 ),
        .PROPE(\ref_clk_cntr_i_reg[13]_i_1_n_3 ),
        .PROPF(\ref_clk_cntr_i_reg[14]_i_1_n_3 ),
        .PROPG(\ref_clk_cntr_i_reg[15]_i_1_n_3 ),
        .PROPH(\ref_clk_cntr_i_reg[15]_i_3_n_3 ));
  LUT6CY #(
    .INIT(64'h00000000FF000000)) 
    \ref_clk_cntr_i_reg[15]_i_3 
       (.GE(\ref_clk_cntr_i_reg[15]_i_3_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(1'b0),
        .I4(1'b0),
        .O51(\ref_clk_cntr_i_reg[15]_i_3_n_1 ),
        .O52(\ref_clk_cntr_i_reg[15]_i_3_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[15]_i_3_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[1] 
       (.C(aclk_freerun),
        .CE(sel),
        .D(p_0_in[1]),
        .Q(src_in[49]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[1]_i_1 
       (.GE(\ref_clk_cntr_i_reg[1]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[49]),
        .I4(src_in[48]),
        .O51(p_0_in[1]),
        .O52(\ref_clk_cntr_i_reg[1]_i_1_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[1]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[2] 
       (.C(aclk_freerun),
        .CE(sel),
        .D(p_0_in[2]),
        .Q(src_in[50]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[2]_i_1 
       (.GE(\ref_clk_cntr_i_reg[2]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[50]),
        .I4(\ref_clk_cntr_i_reg[1]_i_1_n_2 ),
        .O51(p_0_in[2]),
        .O52(\ref_clk_cntr_i_reg[2]_i_1_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[2]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[3] 
       (.C(aclk_freerun),
        .CE(sel),
        .D(p_0_in[3]),
        .Q(src_in[51]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[3]_i_1 
       (.GE(\ref_clk_cntr_i_reg[3]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[51]),
        .I4(\ref_clk_cntr_i_reg[9]_i_2_n_0 ),
        .O51(p_0_in[3]),
        .O52(\ref_clk_cntr_i_reg[3]_i_1_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[3]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[4] 
       (.C(aclk_freerun),
        .CE(sel),
        .D(p_0_in[4]),
        .Q(src_in[52]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[4]_i_1 
       (.GE(\ref_clk_cntr_i_reg[4]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[52]),
        .I4(\ref_clk_cntr_i_reg[3]_i_1_n_2 ),
        .O51(p_0_in[4]),
        .O52(\ref_clk_cntr_i_reg[4]_i_1_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[4]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[5] 
       (.C(aclk_freerun),
        .CE(sel),
        .D(p_0_in[5]),
        .Q(src_in[53]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[5]_i_1 
       (.GE(\ref_clk_cntr_i_reg[5]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[53]),
        .I4(\ref_clk_cntr_i_reg[9]_i_2_n_1 ),
        .O51(p_0_in[5]),
        .O52(\ref_clk_cntr_i_reg[5]_i_1_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[5]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[6] 
       (.C(aclk_freerun),
        .CE(sel),
        .D(p_0_in[6]),
        .Q(src_in[54]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[6]_i_1 
       (.GE(\ref_clk_cntr_i_reg[6]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[54]),
        .I4(\ref_clk_cntr_i_reg[5]_i_1_n_2 ),
        .O51(p_0_in[6]),
        .O52(\ref_clk_cntr_i_reg[6]_i_1_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[6]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[7] 
       (.C(aclk_freerun),
        .CE(sel),
        .D(p_0_in[7]),
        .Q(src_in[55]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[7]_i_1 
       (.GE(\ref_clk_cntr_i_reg[7]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[55]),
        .I4(\ref_clk_cntr_i_reg[9]_i_2_n_2 ),
        .O51(p_0_in[7]),
        .O52(\ref_clk_cntr_i_reg[7]_i_1_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[7]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[8] 
       (.C(aclk_freerun),
        .CE(sel),
        .D(p_0_in[8]),
        .Q(src_in[56]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[8]_i_1 
       (.GE(\ref_clk_cntr_i_reg[8]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[56]),
        .I4(\ref_clk_cntr_i_reg[7]_i_1_n_2 ),
        .O51(p_0_in[8]),
        .O52(\ref_clk_cntr_i_reg[8]_i_1_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[8]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_i_reg[9] 
       (.C(aclk_freerun),
        .CE(sel),
        .D(p_0_in[9]),
        .Q(src_in[57]),
        .R(rst_cnt_ref));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \ref_clk_cntr_i_reg[9]_i_1 
       (.GE(\ref_clk_cntr_i_reg[9]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(src_in[57]),
        .I4(\ref_clk_cntr_i_reg[9]_i_2_n_3 ),
        .O51(p_0_in[9]),
        .O52(\ref_clk_cntr_i_reg[9]_i_1_n_2 ),
        .PROP(\ref_clk_cntr_i_reg[9]_i_1_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("FALSE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \ref_clk_cntr_i_reg[9]_i_2 
       (.CIN(src_in[48]),
        .COUTB(\ref_clk_cntr_i_reg[9]_i_2_n_0 ),
        .COUTD(\ref_clk_cntr_i_reg[9]_i_2_n_1 ),
        .COUTF(\ref_clk_cntr_i_reg[9]_i_2_n_2 ),
        .COUTH(\ref_clk_cntr_i_reg[9]_i_2_n_3 ),
        .CYA(\ref_clk_cntr_i_reg[1]_i_1_n_2 ),
        .CYB(\ref_clk_cntr_i_reg[2]_i_1_n_2 ),
        .CYC(\ref_clk_cntr_i_reg[3]_i_1_n_2 ),
        .CYD(\ref_clk_cntr_i_reg[4]_i_1_n_2 ),
        .CYE(\ref_clk_cntr_i_reg[5]_i_1_n_2 ),
        .CYF(\ref_clk_cntr_i_reg[6]_i_1_n_2 ),
        .CYG(\ref_clk_cntr_i_reg[7]_i_1_n_2 ),
        .CYH(\ref_clk_cntr_i_reg[8]_i_1_n_2 ),
        .GEA(\ref_clk_cntr_i_reg[1]_i_1_n_0 ),
        .GEB(\ref_clk_cntr_i_reg[2]_i_1_n_0 ),
        .GEC(\ref_clk_cntr_i_reg[3]_i_1_n_0 ),
        .GED(\ref_clk_cntr_i_reg[4]_i_1_n_0 ),
        .GEE(\ref_clk_cntr_i_reg[5]_i_1_n_0 ),
        .GEF(\ref_clk_cntr_i_reg[6]_i_1_n_0 ),
        .GEG(\ref_clk_cntr_i_reg[7]_i_1_n_0 ),
        .GEH(\ref_clk_cntr_i_reg[8]_i_1_n_0 ),
        .PROPA(\ref_clk_cntr_i_reg[1]_i_1_n_3 ),
        .PROPB(\ref_clk_cntr_i_reg[2]_i_1_n_3 ),
        .PROPC(\ref_clk_cntr_i_reg[3]_i_1_n_3 ),
        .PROPD(\ref_clk_cntr_i_reg[4]_i_1_n_3 ),
        .PROPE(\ref_clk_cntr_i_reg[5]_i_1_n_3 ),
        .PROPF(\ref_clk_cntr_i_reg[6]_i_1_n_3 ),
        .PROPG(\ref_clk_cntr_i_reg[7]_i_1_n_3 ),
        .PROPH(\ref_clk_cntr_i_reg[8]_i_1_n_3 ));
  LUT2 #(
    .INIT(4'hB)) 
    rst_cnt_ref_i_1
       (.I0(dest_arst),
        .I1(\rst_cnt_reg[0]_0 ),
        .O(rst_cnt_c));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    rst_cnt_ref_reg
       (.C(aclk_freerun),
        .CE(1'b1),
        .D(rst_cnt_c),
        .Q(rst_cnt_ref),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rst_cnt_reg[0] 
       (.C(aclk_freerun),
        .CE(1'b1),
        .D(rst_cnt_c),
        .Q(rst_cnt[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rst_cnt_reg[1] 
       (.C(aclk_freerun),
        .CE(1'b1),
        .D(rst_cnt_c),
        .Q(rst_cnt[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rst_cnt_reg[2] 
       (.C(aclk_freerun),
        .CE(1'b1),
        .D(rst_cnt_c),
        .Q(rst_cnt[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rst_cnt_reg[3] 
       (.C(aclk_freerun),
        .CE(1'b1),
        .D(rst_cnt_c),
        .Q(rst_cnt[3]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_ucc_v1_0_0_shutdown_latch
   (src_in,
    shutdown_latch,
    src_arst,
    clk_kernel_01_locked_0,
    \syncstages_ff_reg[2][64] ,
    power_down,
    shutdown_clocks,
    aclk_ctrl,
    SS,
    Request_Ack_d1_reg_0,
    clk_kernel_00_locked,
    clk_kernel_01_locked,
    \s_axi_ctrl_mgmt_rdata_i_reg[0] ,
    dest_out,
    \s_axi_ctrl_mgmt_rdata_i_reg[0]_0 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[0]_1 ,
    s_axi_ctrl_mgmt_araddr,
    \s_axi_ctrl_mgmt_rdata_i_reg[0]_2 ,
    \s_axi_ctrl_mgmt_rdata_i[0]_i_3_0 ,
    \s_axi_ctrl_mgmt_rdata_i[0]_i_3_1 ,
    power_down_out_d1,
    power_down_out_d1_0,
    p_6_in,
    Q);
  output src_in;
  output shutdown_latch;
  output src_arst;
  output clk_kernel_01_locked_0;
  output \syncstages_ff_reg[2][64] ;
  output power_down;
  input shutdown_clocks;
  input aclk_ctrl;
  input [0:0]SS;
  input Request_Ack_d1_reg_0;
  input clk_kernel_00_locked;
  input clk_kernel_01_locked;
  input \s_axi_ctrl_mgmt_rdata_i_reg[0] ;
  input [0:0]dest_out;
  input \s_axi_ctrl_mgmt_rdata_i_reg[0]_0 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[0]_1 ;
  input [4:0]s_axi_ctrl_mgmt_araddr;
  input \s_axi_ctrl_mgmt_rdata_i_reg[0]_2 ;
  input \s_axi_ctrl_mgmt_rdata_i[0]_i_3_0 ;
  input \s_axi_ctrl_mgmt_rdata_i[0]_i_3_1 ;
  input power_down_out_d1;
  input power_down_out_d1_0;
  input [1:0]p_6_in;
  input [15:0]Q;

  wire [15:0]Q;
  wire Request;
  wire Request0;
  wire Request_Ack_d1;
  wire Request_Ack_d1_reg_0;
  wire Request_Latch_int;
  wire Request_Latch_int0;
  wire Request_SW_reduced;
  wire Request_SW_reduced_i_2_n_0;
  wire Request_SW_reduced_i_3_n_0;
  wire Request_SW_reduced_i_4_n_0;
  wire [0:0]SS;
  wire Shutdown_Latch_int;
  wire Shutdown_Latch_int0;
  wire Shutdown_Release;
  wire Shutdown_Release0;
  wire aclk_ctrl;
  wire clk_kernel_00_locked;
  wire clk_kernel_01_locked;
  wire clk_kernel_01_locked_0;
  wire [0:0]dest_out;
  wire dest_out_0;
  wire eqOp;
  wire [1:0]p_6_in;
  wire power_down;
  wire power_down_out_d1;
  wire power_down_out_d1_0;
  wire [4:0]s_axi_ctrl_mgmt_araddr;
  wire \s_axi_ctrl_mgmt_rdata_i[0]_i_10_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[0]_i_3_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[0]_i_3_1 ;
  wire \s_axi_ctrl_mgmt_rdata_i[0]_i_3_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[0]_i_7_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[0] ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[0]_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[0]_1 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[0]_2 ;
  wire shutdown_clocks;
  wire shutdown_latch;
  wire src_arst;
  wire src_in;
  wire \syncstages_ff_reg[2][64] ;

  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single CDC_SCR
       (.dest_clk(aclk_ctrl),
        .dest_out(dest_out_0),
        .src_clk(1'b0),
        .src_in(shutdown_clocks));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    LCK_CDC_i_1
       (.I0(clk_kernel_00_locked),
        .I1(shutdown_latch),
        .O(src_arst));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    LCK_CDC_i_1__0
       (.I0(clk_kernel_01_locked),
        .I1(shutdown_latch),
        .O(clk_kernel_01_locked_0));
  FDRE #(
    .INIT(1'b0)) 
    Request_Ack_d1_reg
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(Request_Ack_d1_reg_0),
        .Q(Request_Ack_d1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    Request_Latch_int_i_1
       (.I0(p_6_in[1]),
        .I1(Request),
        .I2(Request_Ack_d1_reg_0),
        .I3(Request_Latch_int),
        .O(Request_Latch_int0));
  FDRE #(
    .INIT(1'b0)) 
    Request_Latch_int_reg
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(Request_Latch_int0),
        .Q(Request_Latch_int),
        .R(SS));
  FDRE Request_Latch_reg
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(Request_Latch_int),
        .Q(src_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    Request_SW_reduced_i_1
       (.I0(Request_SW_reduced_i_2_n_0),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Request_SW_reduced_i_3_n_0),
        .O(eqOp));
  LUT4 #(
    .INIT(16'h0100)) 
    Request_SW_reduced_i_2
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(Q[4]),
        .O(Request_SW_reduced_i_2_n_0));
  LUT5 #(
    .INIT(32'h20000000)) 
    Request_SW_reduced_i_3
       (.I0(Q[12]),
        .I1(Q[13]),
        .I2(Q[14]),
        .I3(Q[15]),
        .I4(Request_SW_reduced_i_4_n_0),
        .O(Request_SW_reduced_i_3_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    Request_SW_reduced_i_4
       (.I0(Q[10]),
        .I1(Q[11]),
        .I2(Q[9]),
        .I3(Q[8]),
        .O(Request_SW_reduced_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Request_SW_reduced_reg
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(eqOp),
        .Q(Request_SW_reduced),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    Request_i_1
       (.I0(dest_out_0),
        .I1(Request_SW_reduced),
        .O(Request0));
  FDRE #(
    .INIT(1'b0)) 
    Request_reg
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(Request0),
        .Q(Request),
        .R(SS));
  LUT4 #(
    .INIT(16'h4F44)) 
    Shutdown_Latch_int_i_1
       (.I0(p_6_in[1]),
        .I1(Request),
        .I2(Shutdown_Release),
        .I3(Shutdown_Latch_int),
        .O(Shutdown_Latch_int0));
  FDRE #(
    .INIT(1'b0)) 
    Shutdown_Latch_int_reg
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(Shutdown_Latch_int0),
        .Q(Shutdown_Latch_int),
        .R(1'b0));
  FDRE Shutdown_Latch_reg
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(Shutdown_Latch_int),
        .Q(shutdown_latch),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    Shutdown_Release_i_1
       (.I0(Request_Ack_d1),
        .I1(Request_Ack_d1_reg_0),
        .O(Shutdown_Release0));
  FDRE #(
    .INIT(1'b0)) 
    Shutdown_Release_reg
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(Shutdown_Release0),
        .Q(Shutdown_Release),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    power_down_INST_0
       (.I0(shutdown_latch),
        .I1(power_down_out_d1),
        .I2(power_down_out_d1_0),
        .O(power_down));
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \s_axi_ctrl_mgmt_rdata_i[0]_i_1 
       (.I0(\s_axi_ctrl_mgmt_rdata_i_reg[0] ),
        .I1(\s_axi_ctrl_mgmt_rdata_i[0]_i_3_n_0 ),
        .I2(dest_out),
        .I3(\s_axi_ctrl_mgmt_rdata_i_reg[0]_0 ),
        .I4(\s_axi_ctrl_mgmt_rdata_i_reg[0]_1 ),
        .O(\syncstages_ff_reg[2][64] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFE2)) 
    \s_axi_ctrl_mgmt_rdata_i[0]_i_10 
       (.I0(p_6_in[0]),
        .I1(s_axi_ctrl_mgmt_araddr[2]),
        .I2(shutdown_latch),
        .I3(s_axi_ctrl_mgmt_araddr[4]),
        .I4(s_axi_ctrl_mgmt_araddr[3]),
        .O(\s_axi_ctrl_mgmt_rdata_i[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF100010001000)) 
    \s_axi_ctrl_mgmt_rdata_i[0]_i_3 
       (.I0(s_axi_ctrl_mgmt_araddr[0]),
        .I1(s_axi_ctrl_mgmt_araddr[2]),
        .I2(s_axi_ctrl_mgmt_araddr[1]),
        .I3(src_in),
        .I4(\s_axi_ctrl_mgmt_rdata_i_reg[0]_2 ),
        .I5(\s_axi_ctrl_mgmt_rdata_i[0]_i_7_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000FD00000000)) 
    \s_axi_ctrl_mgmt_rdata_i[0]_i_7 
       (.I0(s_axi_ctrl_mgmt_araddr[3]),
        .I1(s_axi_ctrl_mgmt_araddr[4]),
        .I2(\s_axi_ctrl_mgmt_rdata_i[0]_i_3_0 ),
        .I3(\s_axi_ctrl_mgmt_rdata_i[0]_i_3_1 ),
        .I4(s_axi_ctrl_mgmt_araddr[1]),
        .I5(\s_axi_ctrl_mgmt_rdata_i[0]_i_10_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[0]_i_7_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_ucc_v1_0_0_throttling_avg
   (D,
    \syncstages_ff_reg[2][16] ,
    \syncstages_ff_reg[1][81] ,
    \syncstages_ff_reg[2][18] ,
    \syncstages_ff_reg[1][83] ,
    \syncstages_ff_reg[2][20] ,
    \syncstages_ff_reg[2][23] ,
    \syncstages_ff_reg[2][24] ,
    \syncstages_ff_reg[2][25] ,
    \syncstages_ff_reg[2][26] ,
    \syncstages_ff_reg[2][27] ,
    \syncstages_ff_reg[2][28] ,
    \syncstages_ff_reg[2][29] ,
    SS,
    aclk_ctrl,
    Rate_Upd_Tog_d1_reg_0,
    \s_axi_ctrl_mgmt_rdata_i_reg[21] ,
    \s_axi_ctrl_mgmt_rdata_i_reg[21]_0 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[21]_1 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[21]_2 ,
    dest_out,
    \s_axi_ctrl_mgmt_rdata_i_reg[22] ,
    \s_axi_ctrl_mgmt_rdata_i_reg[22]_0 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[22]_1 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[16] ,
    \s_axi_ctrl_mgmt_rdata_i_reg[16]_0 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[17] ,
    \s_axi_ctrl_mgmt_rdata_i_reg[29] ,
    \s_axi_ctrl_mgmt_rdata_i_reg[17]_0 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[17]_1 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[17]_2 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[18] ,
    \s_axi_ctrl_mgmt_rdata_i_reg[18]_0 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[18]_1 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[19] ,
    \s_axi_ctrl_mgmt_rdata_i_reg[19]_0 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[19]_1 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[20] ,
    \s_axi_ctrl_mgmt_rdata_i_reg[20]_0 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[20]_1 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[20]_2 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[22]_2 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[22]_3 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[23] ,
    \s_axi_ctrl_mgmt_rdata_i_reg[23]_0 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[23]_1 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[23]_2 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[24] ,
    \s_axi_ctrl_mgmt_rdata_i_reg[24]_0 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[25] ,
    \s_axi_ctrl_mgmt_rdata_i_reg[25]_0 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[25]_1 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[25]_2 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[26] ,
    \s_axi_ctrl_mgmt_rdata_i_reg[26]_0 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[26]_1 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[26]_2 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[27] ,
    \s_axi_ctrl_mgmt_rdata_i_reg[27]_0 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[27]_1 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[27]_2 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[28] ,
    \s_axi_ctrl_mgmt_rdata_i_reg[28]_0 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[28]_1 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[28]_2 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[29]_0 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[29]_1 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[29]_2 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[29]_3 ,
    s_axi_ctrl_mgmt_araddr,
    \s_axi_ctrl_mgmt_rdata_i_reg[20]_3 ,
    p_6_in,
    \s_axi_ctrl_mgmt_rdata_i[21]_i_5_0 ,
    Q,
    \s_axi_ctrl_mgmt_rdata_i_reg[16]_1 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[18]_2 ,
    \s_axi_ctrl_mgmt_rdata_i[22]_i_5_0 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[17]_3 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[17]_4 ,
    \s_axi_ctrl_mgmt_rdata_i_reg[17]_5 ,
    \s_axi_ctrl_mgmt_rdata_i[16]_i_3_0 ,
    aresetn_ctrl);
  output [1:0]D;
  output \syncstages_ff_reg[2][16] ;
  output \syncstages_ff_reg[1][81] ;
  output \syncstages_ff_reg[2][18] ;
  output \syncstages_ff_reg[1][83] ;
  output \syncstages_ff_reg[2][20] ;
  output \syncstages_ff_reg[2][23] ;
  output \syncstages_ff_reg[2][24] ;
  output \syncstages_ff_reg[2][25] ;
  output \syncstages_ff_reg[2][26] ;
  output \syncstages_ff_reg[2][27] ;
  output \syncstages_ff_reg[2][28] ;
  output \syncstages_ff_reg[2][29] ;
  output [0:0]SS;
  input aclk_ctrl;
  input Rate_Upd_Tog_d1_reg_0;
  input \s_axi_ctrl_mgmt_rdata_i_reg[21] ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[21]_0 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[21]_1 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[21]_2 ;
  input [4:0]dest_out;
  input \s_axi_ctrl_mgmt_rdata_i_reg[22] ;
  input [8:0]\s_axi_ctrl_mgmt_rdata_i_reg[22]_0 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[22]_1 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[16] ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[16]_0 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[17] ;
  input [13:0]\s_axi_ctrl_mgmt_rdata_i_reg[29] ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[17]_0 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[17]_1 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[17]_2 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[18] ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[18]_0 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[18]_1 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[19] ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[19]_0 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[19]_1 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[20] ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[20]_0 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[20]_1 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[20]_2 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[22]_2 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[22]_3 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[23] ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[23]_0 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[23]_1 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[23]_2 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[24] ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[24]_0 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[25] ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[25]_0 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[25]_1 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[25]_2 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[26] ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[26]_0 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[26]_1 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[26]_2 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[27] ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[27]_0 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[27]_1 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[27]_2 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[28] ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[28]_0 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[28]_1 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[28]_2 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[29]_0 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[29]_1 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[29]_2 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[29]_3 ;
  input [5:0]s_axi_ctrl_mgmt_araddr;
  input \s_axi_ctrl_mgmt_rdata_i_reg[20]_3 ;
  input [9:0]p_6_in;
  input \s_axi_ctrl_mgmt_rdata_i[21]_i_5_0 ;
  input [2:0]Q;
  input \s_axi_ctrl_mgmt_rdata_i_reg[16]_1 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[18]_2 ;
  input \s_axi_ctrl_mgmt_rdata_i[22]_i_5_0 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[17]_3 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[17]_4 ;
  input \s_axi_ctrl_mgmt_rdata_i_reg[17]_5 ;
  input \s_axi_ctrl_mgmt_rdata_i[16]_i_3_0 ;
  input aresetn_ctrl;

  wire \Avg_reg[0]_i_1_n_0 ;
  wire \Avg_reg[0]_i_1_n_2 ;
  wire \Avg_reg[0]_i_1_n_3 ;
  wire \Avg_reg[10]_i_1_n_0 ;
  wire \Avg_reg[10]_i_1_n_2 ;
  wire \Avg_reg[10]_i_1_n_3 ;
  wire \Avg_reg[11]_i_1_n_0 ;
  wire \Avg_reg[11]_i_1_n_2 ;
  wire \Avg_reg[11]_i_1_n_3 ;
  wire \Avg_reg[12]_i_1_n_0 ;
  wire \Avg_reg[12]_i_1_n_2 ;
  wire \Avg_reg[12]_i_1_n_3 ;
  wire \Avg_reg[12]_i_2_n_0 ;
  wire \Avg_reg[12]_i_2_n_1 ;
  wire \Avg_reg[12]_i_2_n_2 ;
  wire \Avg_reg[13]_i_1_n_0 ;
  wire \Avg_reg[13]_i_1_n_2 ;
  wire \Avg_reg[13]_i_1_n_3 ;
  wire \Avg_reg[1]_i_1_n_0 ;
  wire \Avg_reg[1]_i_1_n_2 ;
  wire \Avg_reg[1]_i_1_n_3 ;
  wire \Avg_reg[2]_i_1_n_0 ;
  wire \Avg_reg[2]_i_1_n_2 ;
  wire \Avg_reg[2]_i_1_n_3 ;
  wire \Avg_reg[3]_i_1_n_0 ;
  wire \Avg_reg[3]_i_1_n_2 ;
  wire \Avg_reg[3]_i_1_n_3 ;
  wire \Avg_reg[4]_i_1_n_0 ;
  wire \Avg_reg[4]_i_1_n_2 ;
  wire \Avg_reg[4]_i_1_n_3 ;
  wire \Avg_reg[5]_i_1_n_0 ;
  wire \Avg_reg[5]_i_1_n_2 ;
  wire \Avg_reg[5]_i_1_n_3 ;
  wire \Avg_reg[6]_i_1_n_0 ;
  wire \Avg_reg[6]_i_1_n_2 ;
  wire \Avg_reg[6]_i_1_n_3 ;
  wire \Avg_reg[7]_i_1_n_0 ;
  wire \Avg_reg[7]_i_1_n_2 ;
  wire \Avg_reg[7]_i_1_n_3 ;
  wire \Avg_reg[8]_i_1_n_0 ;
  wire \Avg_reg[8]_i_1_n_2 ;
  wire \Avg_reg[8]_i_1_n_3 ;
  wire \Avg_reg[8]_i_2_n_0 ;
  wire \Avg_reg[8]_i_2_n_1 ;
  wire \Avg_reg[8]_i_2_n_2 ;
  wire \Avg_reg[8]_i_2_n_3 ;
  wire \Avg_reg[9]_i_1_n_0 ;
  wire \Avg_reg[9]_i_1_n_2 ;
  wire \Avg_reg[9]_i_1_n_3 ;
  wire [1:0]D;
  wire \Pipe[0][Valid]_i_1_n_0 ;
  wire \Pipe[1][New_Sample][1]_i_1_n_0 ;
  wire \Pipe[1][New_Sample][2]_i_1_n_0 ;
  wire \Pipe[1][New_Sample][3]_i_1_n_0 ;
  wire \Pipe[1][New_Sample][4]_i_1_n_0 ;
  wire \Pipe[1][New_Sample][5]_i_1_n_0 ;
  wire \Pipe[1][New_Sample][6]_i_1_n_0 ;
  wire \Pipe[1][New_Sample][7]_i_1_n_0 ;
  wire \Pipe[1][New_Sample][7]_i_2_n_0 ;
  wire \Pipe_reg[0][Flush]__0 ;
  wire [7:0]\Pipe_reg[0][New_Sample] ;
  wire \Pipe_reg[0][Valid]__0 ;
  wire \Pipe_reg[1][Flush_n_0_] ;
  wire [7:0]\Pipe_reg[1][New_Sample] ;
  wire \Pipe_reg[1][Valid_n_0_] ;
  wire [13:0]\Pipe_reg[2][Avg_Calc] ;
  wire [7:0]\Pipe_reg[2][Exprd_Sample] ;
  wire \Pipe_reg[2][Flush]__0 ;
  wire [7:0]\Pipe_reg[2][New_Sample] ;
  wire \Pipe_reg[2][Valid]__0 ;
  wire [13:0]\Pipe_reg[3][Avg_Calc] ;
  wire \Pipe_reg[3][Avg_Calc][0]_i_1_n_0 ;
  wire \Pipe_reg[3][Avg_Calc][0]_i_1_n_1 ;
  wire \Pipe_reg[3][Avg_Calc][0]_i_1_n_2 ;
  wire \Pipe_reg[3][Avg_Calc][0]_i_1_n_3 ;
  wire \Pipe_reg[3][Avg_Calc][10]_i_1_n_0 ;
  wire \Pipe_reg[3][Avg_Calc][10]_i_1_n_1 ;
  wire \Pipe_reg[3][Avg_Calc][10]_i_1_n_2 ;
  wire \Pipe_reg[3][Avg_Calc][10]_i_1_n_3 ;
  wire \Pipe_reg[3][Avg_Calc][11]_i_1_n_0 ;
  wire \Pipe_reg[3][Avg_Calc][11]_i_1_n_1 ;
  wire \Pipe_reg[3][Avg_Calc][11]_i_1_n_2 ;
  wire \Pipe_reg[3][Avg_Calc][11]_i_1_n_3 ;
  wire \Pipe_reg[3][Avg_Calc][12]_i_1_n_0 ;
  wire \Pipe_reg[3][Avg_Calc][12]_i_1_n_1 ;
  wire \Pipe_reg[3][Avg_Calc][12]_i_1_n_2 ;
  wire \Pipe_reg[3][Avg_Calc][12]_i_1_n_3 ;
  wire \Pipe_reg[3][Avg_Calc][12]_i_2_n_0 ;
  wire \Pipe_reg[3][Avg_Calc][12]_i_2_n_1 ;
  wire \Pipe_reg[3][Avg_Calc][12]_i_2_n_2 ;
  wire \Pipe_reg[3][Avg_Calc][13]_i_1_n_0 ;
  wire \Pipe_reg[3][Avg_Calc][13]_i_1_n_1 ;
  wire \Pipe_reg[3][Avg_Calc][13]_i_1_n_2 ;
  wire \Pipe_reg[3][Avg_Calc][13]_i_1_n_3 ;
  wire \Pipe_reg[3][Avg_Calc][1]_i_1_n_0 ;
  wire \Pipe_reg[3][Avg_Calc][1]_i_1_n_1 ;
  wire \Pipe_reg[3][Avg_Calc][1]_i_1_n_2 ;
  wire \Pipe_reg[3][Avg_Calc][1]_i_1_n_3 ;
  wire \Pipe_reg[3][Avg_Calc][2]_i_1_n_0 ;
  wire \Pipe_reg[3][Avg_Calc][2]_i_1_n_1 ;
  wire \Pipe_reg[3][Avg_Calc][2]_i_1_n_2 ;
  wire \Pipe_reg[3][Avg_Calc][2]_i_1_n_3 ;
  wire \Pipe_reg[3][Avg_Calc][3]_i_1_n_0 ;
  wire \Pipe_reg[3][Avg_Calc][3]_i_1_n_1 ;
  wire \Pipe_reg[3][Avg_Calc][3]_i_1_n_2 ;
  wire \Pipe_reg[3][Avg_Calc][3]_i_1_n_3 ;
  wire \Pipe_reg[3][Avg_Calc][4]_i_1_n_0 ;
  wire \Pipe_reg[3][Avg_Calc][4]_i_1_n_1 ;
  wire \Pipe_reg[3][Avg_Calc][4]_i_1_n_2 ;
  wire \Pipe_reg[3][Avg_Calc][4]_i_1_n_3 ;
  wire \Pipe_reg[3][Avg_Calc][5]_i_1_n_0 ;
  wire \Pipe_reg[3][Avg_Calc][5]_i_1_n_1 ;
  wire \Pipe_reg[3][Avg_Calc][5]_i_1_n_2 ;
  wire \Pipe_reg[3][Avg_Calc][5]_i_1_n_3 ;
  wire \Pipe_reg[3][Avg_Calc][6]_i_1_n_0 ;
  wire \Pipe_reg[3][Avg_Calc][6]_i_1_n_1 ;
  wire \Pipe_reg[3][Avg_Calc][6]_i_1_n_2 ;
  wire \Pipe_reg[3][Avg_Calc][6]_i_1_n_3 ;
  wire \Pipe_reg[3][Avg_Calc][7]_i_1_n_0 ;
  wire \Pipe_reg[3][Avg_Calc][7]_i_1_n_1 ;
  wire \Pipe_reg[3][Avg_Calc][7]_i_1_n_2 ;
  wire \Pipe_reg[3][Avg_Calc][7]_i_1_n_3 ;
  wire \Pipe_reg[3][Avg_Calc][8]_i_1_n_0 ;
  wire \Pipe_reg[3][Avg_Calc][8]_i_1_n_1 ;
  wire \Pipe_reg[3][Avg_Calc][8]_i_1_n_2 ;
  wire \Pipe_reg[3][Avg_Calc][8]_i_1_n_3 ;
  wire \Pipe_reg[3][Avg_Calc][8]_i_2_n_0 ;
  wire \Pipe_reg[3][Avg_Calc][8]_i_2_n_1 ;
  wire \Pipe_reg[3][Avg_Calc][8]_i_2_n_2 ;
  wire \Pipe_reg[3][Avg_Calc][8]_i_2_n_3 ;
  wire \Pipe_reg[3][Avg_Calc][9]_i_1_n_0 ;
  wire \Pipe_reg[3][Avg_Calc][9]_i_1_n_1 ;
  wire \Pipe_reg[3][Avg_Calc][9]_i_1_n_2 ;
  wire \Pipe_reg[3][Avg_Calc][9]_i_1_n_3 ;
  wire \Pipe_reg[3][Flush]__0 ;
  wire [7:0]\Pipe_reg[3][New_Sample] ;
  wire \Pipe_reg[3][Valid]__0 ;
  wire [2:0]Q;
  wire Rate_Upd_Tog_d1;
  wire Rate_Upd_Tog_d1_reg_0;
  wire \Rst_Count_reg_n_0_[0] ;
  wire \Rst_Count_reg_n_0_[1] ;
  wire \Rst_Count_reg_n_0_[2] ;
  wire \Rst_Count_reg_n_0_[3] ;
  wire \Rst_Count_reg_n_0_[4] ;
  wire \Rst_Count_reg_n_0_[5] ;
  wire [0:0]SS;
  wire \Sample_Pipe_reg[31][0]_srl32_n_1 ;
  wire \Sample_Pipe_reg[31][1]_srl32_n_1 ;
  wire \Sample_Pipe_reg[31][2]_srl32_n_1 ;
  wire \Sample_Pipe_reg[31][3]_srl32_n_1 ;
  wire \Sample_Pipe_reg[31][4]_srl32_n_1 ;
  wire \Sample_Pipe_reg[31][5]_srl32_n_1 ;
  wire \Sample_Pipe_reg[31][6]_srl32_n_1 ;
  wire \Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ;
  wire \Sample_Pipe_reg[31][7]_srl32_n_1 ;
  wire [7:0]\Sample_Pipe_reg[49] ;
  wire aclk_ctrl;
  wire aresetn_ctrl;
  wire [29:16]data2;
  wire [4:0]dest_out;
  wire [6:0]minusOp;
  wire p_0_in;
  wire [9:0]p_6_in;
  wire [13:0]plusOp;
  wire [5:0]s_axi_ctrl_mgmt_araddr;
  wire \s_axi_ctrl_mgmt_rdata_i[16]_i_3_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[16]_i_3_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[16]_i_6_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[17]_i_2_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[18]_i_3_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[19]_i_2_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[20]_i_3_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[21]_i_5_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[21]_i_5_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[21]_i_6_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[22]_i_10_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[22]_i_5_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[22]_i_5_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[22]_i_8_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[23]_i_4_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[24]_i_4_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[25]_i_4_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[26]_i_4_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[27]_i_4_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[28]_i_4_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[29]_i_4_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[16] ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[16]_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[16]_1 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[17] ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[17]_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[17]_1 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[17]_2 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[17]_3 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[17]_4 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[17]_5 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[18] ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[18]_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[18]_1 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[18]_2 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[19] ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[19]_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[19]_1 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[20] ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[20]_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[20]_1 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[20]_2 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[20]_3 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[21] ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[21]_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[21]_1 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[21]_2 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[22] ;
  wire [8:0]\s_axi_ctrl_mgmt_rdata_i_reg[22]_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[22]_1 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[22]_2 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[22]_3 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[23] ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[23]_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[23]_1 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[23]_2 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[24] ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[24]_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[25] ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[25]_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[25]_1 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[25]_2 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[26] ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[26]_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[26]_1 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[26]_2 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[27] ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[27]_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[27]_1 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[27]_2 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[28] ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[28]_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[28]_1 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[28]_2 ;
  wire [13:0]\s_axi_ctrl_mgmt_rdata_i_reg[29] ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[29]_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[29]_1 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[29]_2 ;
  wire \s_axi_ctrl_mgmt_rdata_i_reg[29]_3 ;
  wire \syncstages_ff_reg[1][81] ;
  wire \syncstages_ff_reg[1][83] ;
  wire \syncstages_ff_reg[2][16] ;
  wire \syncstages_ff_reg[2][18] ;
  wire \syncstages_ff_reg[2][20] ;
  wire \syncstages_ff_reg[2][23] ;
  wire \syncstages_ff_reg[2][24] ;
  wire \syncstages_ff_reg[2][25] ;
  wire \syncstages_ff_reg[2][26] ;
  wire \syncstages_ff_reg[2][27] ;
  wire \syncstages_ff_reg[2][28] ;
  wire \syncstages_ff_reg[2][29] ;
  wire \NLW_Avg_reg[12]_i_2_COUTH_UNCONNECTED ;
  wire \NLW_Avg_reg[12]_i_2_CYG_UNCONNECTED ;
  wire \NLW_Avg_reg[12]_i_2_CYH_UNCONNECTED ;
  wire \NLW_Avg_reg[12]_i_2_GEG_UNCONNECTED ;
  wire \NLW_Avg_reg[12]_i_2_GEH_UNCONNECTED ;
  wire \NLW_Avg_reg[12]_i_2_PROPG_UNCONNECTED ;
  wire \NLW_Avg_reg[12]_i_2_PROPH_UNCONNECTED ;
  wire \NLW_Pipe_reg[3][Avg_Calc][12]_i_2_COUTH_UNCONNECTED ;
  wire \NLW_Pipe_reg[3][Avg_Calc][12]_i_2_CYG_UNCONNECTED ;
  wire \NLW_Pipe_reg[3][Avg_Calc][12]_i_2_CYH_UNCONNECTED ;
  wire \NLW_Pipe_reg[3][Avg_Calc][12]_i_2_GEG_UNCONNECTED ;
  wire \NLW_Pipe_reg[3][Avg_Calc][12]_i_2_GEH_UNCONNECTED ;
  wire \NLW_Pipe_reg[3][Avg_Calc][12]_i_2_PROPG_UNCONNECTED ;
  wire \NLW_Pipe_reg[3][Avg_Calc][12]_i_2_PROPH_UNCONNECTED ;
  wire \NLW_Sample_Pipe_reg[31][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_Sample_Pipe_reg[31][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_Sample_Pipe_reg[31][2]_srl32_Q_UNCONNECTED ;
  wire \NLW_Sample_Pipe_reg[31][3]_srl32_Q_UNCONNECTED ;
  wire \NLW_Sample_Pipe_reg[31][4]_srl32_Q_UNCONNECTED ;
  wire \NLW_Sample_Pipe_reg[31][5]_srl32_Q_UNCONNECTED ;
  wire \NLW_Sample_Pipe_reg[31][6]_srl32_Q_UNCONNECTED ;
  wire \NLW_Sample_Pipe_reg[31][7]_srl32_Q_UNCONNECTED ;
  wire \NLW_Sample_Pipe_reg[49][0]_srl18_Q31_UNCONNECTED ;
  wire \NLW_Sample_Pipe_reg[49][1]_srl18_Q31_UNCONNECTED ;
  wire \NLW_Sample_Pipe_reg[49][2]_srl18_Q31_UNCONNECTED ;
  wire \NLW_Sample_Pipe_reg[49][3]_srl18_Q31_UNCONNECTED ;
  wire \NLW_Sample_Pipe_reg[49][4]_srl18_Q31_UNCONNECTED ;
  wire \NLW_Sample_Pipe_reg[49][5]_srl18_Q31_UNCONNECTED ;
  wire \NLW_Sample_Pipe_reg[49][6]_srl18_Q31_UNCONNECTED ;
  wire \NLW_Sample_Pipe_reg[49][7]_srl18_Q31_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \Avg_reg[0] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[3][Valid]__0 ),
        .D(plusOp[0]),
        .Q(data2[16]),
        .R(\Pipe_reg[3][Flush]__0 ));
  LUT6CY #(
    .INIT(64'hFFF0F000F00F0FF0)) 
    \Avg_reg[0]_i_1 
       (.GE(\Avg_reg[0]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(\Pipe_reg[3][Avg_Calc] [0]),
        .I3(\Pipe_reg[3][New_Sample] [0]),
        .I4(1'b0),
        .O51(plusOp[0]),
        .O52(\Avg_reg[0]_i_1_n_2 ),
        .PROP(\Avg_reg[0]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \Avg_reg[10] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[3][Valid]__0 ),
        .D(plusOp[10]),
        .Q(data2[26]),
        .R(\Pipe_reg[3][Flush]__0 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \Avg_reg[10]_i_1 
       (.GE(\Avg_reg[10]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\Pipe_reg[3][Avg_Calc] [10]),
        .I4(\Avg_reg[12]_i_2_n_0 ),
        .O51(plusOp[10]),
        .O52(\Avg_reg[10]_i_1_n_2 ),
        .PROP(\Avg_reg[10]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \Avg_reg[11] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[3][Valid]__0 ),
        .D(plusOp[11]),
        .Q(data2[27]),
        .R(\Pipe_reg[3][Flush]__0 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \Avg_reg[11]_i_1 
       (.GE(\Avg_reg[11]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\Pipe_reg[3][Avg_Calc] [11]),
        .I4(\Avg_reg[10]_i_1_n_2 ),
        .O51(plusOp[11]),
        .O52(\Avg_reg[11]_i_1_n_2 ),
        .PROP(\Avg_reg[11]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \Avg_reg[12] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[3][Valid]__0 ),
        .D(plusOp[12]),
        .Q(data2[28]),
        .R(\Pipe_reg[3][Flush]__0 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \Avg_reg[12]_i_1 
       (.GE(\Avg_reg[12]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\Pipe_reg[3][Avg_Calc] [12]),
        .I4(\Avg_reg[12]_i_2_n_1 ),
        .O51(plusOp[12]),
        .O52(\Avg_reg[12]_i_1_n_2 ),
        .PROP(\Avg_reg[12]_i_1_n_3 ));
  (* KEEP = "yes" *) 
  LOOKAHEAD8 #(
    .LOOKB("TRUE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("FALSE")) 
    \Avg_reg[12]_i_2 
       (.CIN(\Avg_reg[8]_i_2_n_3 ),
        .COUTB(\Avg_reg[12]_i_2_n_0 ),
        .COUTD(\Avg_reg[12]_i_2_n_1 ),
        .COUTF(\Avg_reg[12]_i_2_n_2 ),
        .COUTH(\NLW_Avg_reg[12]_i_2_COUTH_UNCONNECTED ),
        .CYA(\Avg_reg[8]_i_1_n_2 ),
        .CYB(\Avg_reg[9]_i_1_n_2 ),
        .CYC(\Avg_reg[10]_i_1_n_2 ),
        .CYD(\Avg_reg[11]_i_1_n_2 ),
        .CYE(\Avg_reg[12]_i_1_n_2 ),
        .CYF(\Avg_reg[13]_i_1_n_2 ),
        .CYG(\NLW_Avg_reg[12]_i_2_CYG_UNCONNECTED ),
        .CYH(\NLW_Avg_reg[12]_i_2_CYH_UNCONNECTED ),
        .GEA(\Avg_reg[8]_i_1_n_0 ),
        .GEB(\Avg_reg[9]_i_1_n_0 ),
        .GEC(\Avg_reg[10]_i_1_n_0 ),
        .GED(\Avg_reg[11]_i_1_n_0 ),
        .GEE(\Avg_reg[12]_i_1_n_0 ),
        .GEF(\Avg_reg[13]_i_1_n_0 ),
        .GEG(\NLW_Avg_reg[12]_i_2_GEG_UNCONNECTED ),
        .GEH(\NLW_Avg_reg[12]_i_2_GEH_UNCONNECTED ),
        .PROPA(\Avg_reg[8]_i_1_n_3 ),
        .PROPB(\Avg_reg[9]_i_1_n_3 ),
        .PROPC(\Avg_reg[10]_i_1_n_3 ),
        .PROPD(\Avg_reg[11]_i_1_n_3 ),
        .PROPE(\Avg_reg[12]_i_1_n_3 ),
        .PROPF(\Avg_reg[13]_i_1_n_3 ),
        .PROPG(\NLW_Avg_reg[12]_i_2_PROPG_UNCONNECTED ),
        .PROPH(\NLW_Avg_reg[12]_i_2_PROPH_UNCONNECTED ));
  FDRE #(
    .INIT(1'b0)) 
    \Avg_reg[13] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[3][Valid]__0 ),
        .D(plusOp[13]),
        .Q(data2[29]),
        .R(\Pipe_reg[3][Flush]__0 ));
  LUT6CY #(
    .INIT(64'hFF00FF0000FFFF00)) 
    \Avg_reg[13]_i_1 
       (.GE(\Avg_reg[13]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\Pipe_reg[3][Avg_Calc] [13]),
        .I4(\Avg_reg[12]_i_1_n_2 ),
        .O51(plusOp[13]),
        .O52(\Avg_reg[13]_i_1_n_2 ),
        .PROP(\Avg_reg[13]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \Avg_reg[1] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[3][Valid]__0 ),
        .D(plusOp[1]),
        .Q(data2[17]),
        .R(\Pipe_reg[3][Flush]__0 ));
  LUT6CY #(
    .INIT(64'hFFF0F000F00F0FF0)) 
    \Avg_reg[1]_i_1 
       (.GE(\Avg_reg[1]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(\Pipe_reg[3][Avg_Calc] [1]),
        .I3(\Pipe_reg[3][New_Sample] [1]),
        .I4(\Avg_reg[0]_i_1_n_2 ),
        .O51(plusOp[1]),
        .O52(\Avg_reg[1]_i_1_n_2 ),
        .PROP(\Avg_reg[1]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \Avg_reg[2] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[3][Valid]__0 ),
        .D(plusOp[2]),
        .Q(data2[18]),
        .R(\Pipe_reg[3][Flush]__0 ));
  LUT6CY #(
    .INIT(64'hFFF0F000F00F0FF0)) 
    \Avg_reg[2]_i_1 
       (.GE(\Avg_reg[2]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(\Pipe_reg[3][Avg_Calc] [2]),
        .I3(\Pipe_reg[3][New_Sample] [2]),
        .I4(\Avg_reg[8]_i_2_n_0 ),
        .O51(plusOp[2]),
        .O52(\Avg_reg[2]_i_1_n_2 ),
        .PROP(\Avg_reg[2]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \Avg_reg[3] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[3][Valid]__0 ),
        .D(plusOp[3]),
        .Q(data2[19]),
        .R(\Pipe_reg[3][Flush]__0 ));
  LUT6CY #(
    .INIT(64'hFFF0F000F00F0FF0)) 
    \Avg_reg[3]_i_1 
       (.GE(\Avg_reg[3]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(\Pipe_reg[3][Avg_Calc] [3]),
        .I3(\Pipe_reg[3][New_Sample] [3]),
        .I4(\Avg_reg[2]_i_1_n_2 ),
        .O51(plusOp[3]),
        .O52(\Avg_reg[3]_i_1_n_2 ),
        .PROP(\Avg_reg[3]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \Avg_reg[4] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[3][Valid]__0 ),
        .D(plusOp[4]),
        .Q(data2[20]),
        .R(\Pipe_reg[3][Flush]__0 ));
  LUT6CY #(
    .INIT(64'hFFF0F000F00F0FF0)) 
    \Avg_reg[4]_i_1 
       (.GE(\Avg_reg[4]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(\Pipe_reg[3][Avg_Calc] [4]),
        .I3(\Pipe_reg[3][New_Sample] [4]),
        .I4(\Avg_reg[8]_i_2_n_1 ),
        .O51(plusOp[4]),
        .O52(\Avg_reg[4]_i_1_n_2 ),
        .PROP(\Avg_reg[4]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \Avg_reg[5] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[3][Valid]__0 ),
        .D(plusOp[5]),
        .Q(data2[21]),
        .R(\Pipe_reg[3][Flush]__0 ));
  LUT6CY #(
    .INIT(64'hFFF0F000F00F0FF0)) 
    \Avg_reg[5]_i_1 
       (.GE(\Avg_reg[5]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(\Pipe_reg[3][Avg_Calc] [5]),
        .I3(\Pipe_reg[3][New_Sample] [5]),
        .I4(\Avg_reg[4]_i_1_n_2 ),
        .O51(plusOp[5]),
        .O52(\Avg_reg[5]_i_1_n_2 ),
        .PROP(\Avg_reg[5]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \Avg_reg[6] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[3][Valid]__0 ),
        .D(plusOp[6]),
        .Q(data2[22]),
        .R(\Pipe_reg[3][Flush]__0 ));
  LUT6CY #(
    .INIT(64'hFFF0F000F00F0FF0)) 
    \Avg_reg[6]_i_1 
       (.GE(\Avg_reg[6]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(\Pipe_reg[3][Avg_Calc] [6]),
        .I3(\Pipe_reg[3][New_Sample] [6]),
        .I4(\Avg_reg[8]_i_2_n_2 ),
        .O51(plusOp[6]),
        .O52(\Avg_reg[6]_i_1_n_2 ),
        .PROP(\Avg_reg[6]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \Avg_reg[7] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[3][Valid]__0 ),
        .D(plusOp[7]),
        .Q(data2[23]),
        .R(\Pipe_reg[3][Flush]__0 ));
  LUT6CY #(
    .INIT(64'hFFF0F000F00F0FF0)) 
    \Avg_reg[7]_i_1 
       (.GE(\Avg_reg[7]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(\Pipe_reg[3][Avg_Calc] [7]),
        .I3(\Pipe_reg[3][New_Sample] [7]),
        .I4(\Avg_reg[6]_i_1_n_2 ),
        .O51(plusOp[7]),
        .O52(\Avg_reg[7]_i_1_n_2 ),
        .PROP(\Avg_reg[7]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \Avg_reg[8] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[3][Valid]__0 ),
        .D(plusOp[8]),
        .Q(data2[24]),
        .R(\Pipe_reg[3][Flush]__0 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \Avg_reg[8]_i_1 
       (.GE(\Avg_reg[8]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\Pipe_reg[3][Avg_Calc] [8]),
        .I4(\Avg_reg[8]_i_2_n_3 ),
        .O51(plusOp[8]),
        .O52(\Avg_reg[8]_i_1_n_2 ),
        .PROP(\Avg_reg[8]_i_1_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("FALSE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \Avg_reg[8]_i_2 
       (.CIN(1'b0),
        .COUTB(\Avg_reg[8]_i_2_n_0 ),
        .COUTD(\Avg_reg[8]_i_2_n_1 ),
        .COUTF(\Avg_reg[8]_i_2_n_2 ),
        .COUTH(\Avg_reg[8]_i_2_n_3 ),
        .CYA(\Avg_reg[0]_i_1_n_2 ),
        .CYB(\Avg_reg[1]_i_1_n_2 ),
        .CYC(\Avg_reg[2]_i_1_n_2 ),
        .CYD(\Avg_reg[3]_i_1_n_2 ),
        .CYE(\Avg_reg[4]_i_1_n_2 ),
        .CYF(\Avg_reg[5]_i_1_n_2 ),
        .CYG(\Avg_reg[6]_i_1_n_2 ),
        .CYH(\Avg_reg[7]_i_1_n_2 ),
        .GEA(\Avg_reg[0]_i_1_n_0 ),
        .GEB(\Avg_reg[1]_i_1_n_0 ),
        .GEC(\Avg_reg[2]_i_1_n_0 ),
        .GED(\Avg_reg[3]_i_1_n_0 ),
        .GEE(\Avg_reg[4]_i_1_n_0 ),
        .GEF(\Avg_reg[5]_i_1_n_0 ),
        .GEG(\Avg_reg[6]_i_1_n_0 ),
        .GEH(\Avg_reg[7]_i_1_n_0 ),
        .PROPA(\Avg_reg[0]_i_1_n_3 ),
        .PROPB(\Avg_reg[1]_i_1_n_3 ),
        .PROPC(\Avg_reg[2]_i_1_n_3 ),
        .PROPD(\Avg_reg[3]_i_1_n_3 ),
        .PROPE(\Avg_reg[4]_i_1_n_3 ),
        .PROPF(\Avg_reg[5]_i_1_n_3 ),
        .PROPG(\Avg_reg[6]_i_1_n_3 ),
        .PROPH(\Avg_reg[7]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \Avg_reg[9] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[3][Valid]__0 ),
        .D(plusOp[9]),
        .Q(data2[25]),
        .R(\Pipe_reg[3][Flush]__0 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \Avg_reg[9]_i_1 
       (.GE(\Avg_reg[9]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\Pipe_reg[3][Avg_Calc] [9]),
        .I4(\Avg_reg[8]_i_1_n_2 ),
        .O51(plusOp[9]),
        .O52(\Avg_reg[9]_i_1_n_2 ),
        .PROP(\Avg_reg[9]_i_1_n_3 ));
  LUT3 #(
    .INIT(8'h06)) 
    \Pipe[0][Valid]_i_1 
       (.I0(Rate_Upd_Tog_d1),
        .I1(Rate_Upd_Tog_d1_reg_0),
        .I2(p_0_in),
        .O(\Pipe[0][Valid]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Pipe[1][New_Sample][1]_i_1 
       (.I0(\Pipe_reg[0][New_Sample] [0]),
        .I1(\Pipe_reg[0][New_Sample] [1]),
        .O(\Pipe[1][New_Sample][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    \Pipe[1][New_Sample][2]_i_1 
       (.I0(\Pipe_reg[0][New_Sample] [0]),
        .I1(\Pipe_reg[0][New_Sample] [1]),
        .I2(\Pipe_reg[0][New_Sample] [2]),
        .O(\Pipe[1][New_Sample][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    \Pipe[1][New_Sample][3]_i_1 
       (.I0(\Pipe_reg[0][New_Sample] [2]),
        .I1(\Pipe_reg[0][New_Sample] [1]),
        .I2(\Pipe_reg[0][New_Sample] [0]),
        .I3(\Pipe_reg[0][New_Sample] [3]),
        .O(\Pipe[1][New_Sample][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    \Pipe[1][New_Sample][4]_i_1 
       (.I0(\Pipe_reg[0][New_Sample] [3]),
        .I1(\Pipe_reg[0][New_Sample] [0]),
        .I2(\Pipe_reg[0][New_Sample] [1]),
        .I3(\Pipe_reg[0][New_Sample] [2]),
        .I4(\Pipe_reg[0][New_Sample] [4]),
        .O(\Pipe[1][New_Sample][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \Pipe[1][New_Sample][5]_i_1 
       (.I0(\Pipe_reg[0][New_Sample] [4]),
        .I1(\Pipe_reg[0][New_Sample] [2]),
        .I2(\Pipe_reg[0][New_Sample] [1]),
        .I3(\Pipe_reg[0][New_Sample] [0]),
        .I4(\Pipe_reg[0][New_Sample] [3]),
        .I5(\Pipe_reg[0][New_Sample] [5]),
        .O(\Pipe[1][New_Sample][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \Pipe[1][New_Sample][6]_i_1 
       (.I0(\Pipe[1][New_Sample][7]_i_2_n_0 ),
        .I1(\Pipe_reg[0][New_Sample] [6]),
        .O(\Pipe[1][New_Sample][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \Pipe[1][New_Sample][7]_i_1 
       (.I0(\Pipe_reg[0][New_Sample] [6]),
        .I1(\Pipe[1][New_Sample][7]_i_2_n_0 ),
        .I2(\Pipe_reg[0][New_Sample] [7]),
        .O(\Pipe[1][New_Sample][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \Pipe[1][New_Sample][7]_i_2 
       (.I0(\Pipe_reg[0][New_Sample] [4]),
        .I1(\Pipe_reg[0][New_Sample] [2]),
        .I2(\Pipe_reg[0][New_Sample] [1]),
        .I3(\Pipe_reg[0][New_Sample] [0]),
        .I4(\Pipe_reg[0][New_Sample] [3]),
        .I5(\Pipe_reg[0][New_Sample] [5]),
        .O(\Pipe[1][New_Sample][7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[0][Flush] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(p_0_in),
        .Q(\Pipe_reg[0][Flush]__0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[0][New_Sample][0] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(p_6_in[0]),
        .Q(\Pipe_reg[0][New_Sample] [0]),
        .R(p_6_in[7]));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[0][New_Sample][1] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(p_6_in[1]),
        .Q(\Pipe_reg[0][New_Sample] [1]),
        .R(p_6_in[7]));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[0][New_Sample][2] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(p_6_in[2]),
        .Q(\Pipe_reg[0][New_Sample] [2]),
        .R(p_6_in[7]));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[0][New_Sample][3] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(p_6_in[3]),
        .Q(\Pipe_reg[0][New_Sample] [3]),
        .R(p_6_in[7]));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[0][New_Sample][4] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(p_6_in[4]),
        .Q(\Pipe_reg[0][New_Sample] [4]),
        .R(p_6_in[7]));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[0][New_Sample][5] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(p_6_in[5]),
        .Q(\Pipe_reg[0][New_Sample] [5]),
        .R(p_6_in[7]));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[0][New_Sample][6] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(p_6_in[6]),
        .Q(\Pipe_reg[0][New_Sample] [6]),
        .R(p_6_in[7]));
  FDSE #(
    .INIT(1'b0)) 
    \Pipe_reg[0][New_Sample][7] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(p_6_in[7]),
        .Q(\Pipe_reg[0][New_Sample] [7]),
        .S(p_6_in[7]));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[0][Valid] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe[0][Valid]_i_1_n_0 ),
        .Q(\Pipe_reg[0][Valid]__0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[1][Flush] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[0][Flush]__0 ),
        .Q(\Pipe_reg[1][Flush_n_0_] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[1][New_Sample][0] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[0][Valid]__0 ),
        .D(\Pipe_reg[0][New_Sample] [0]),
        .Q(\Pipe_reg[1][New_Sample] [0]),
        .R(\Pipe_reg[0][Flush]__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[1][New_Sample][1] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[0][Valid]__0 ),
        .D(\Pipe[1][New_Sample][1]_i_1_n_0 ),
        .Q(\Pipe_reg[1][New_Sample] [1]),
        .R(\Pipe_reg[0][Flush]__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[1][New_Sample][2] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[0][Valid]__0 ),
        .D(\Pipe[1][New_Sample][2]_i_1_n_0 ),
        .Q(\Pipe_reg[1][New_Sample] [2]),
        .R(\Pipe_reg[0][Flush]__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[1][New_Sample][3] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[0][Valid]__0 ),
        .D(\Pipe[1][New_Sample][3]_i_1_n_0 ),
        .Q(\Pipe_reg[1][New_Sample] [3]),
        .R(\Pipe_reg[0][Flush]__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[1][New_Sample][4] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[0][Valid]__0 ),
        .D(\Pipe[1][New_Sample][4]_i_1_n_0 ),
        .Q(\Pipe_reg[1][New_Sample] [4]),
        .R(\Pipe_reg[0][Flush]__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[1][New_Sample][5] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[0][Valid]__0 ),
        .D(\Pipe[1][New_Sample][5]_i_1_n_0 ),
        .Q(\Pipe_reg[1][New_Sample] [5]),
        .R(\Pipe_reg[0][Flush]__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[1][New_Sample][6] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[0][Valid]__0 ),
        .D(\Pipe[1][New_Sample][6]_i_1_n_0 ),
        .Q(\Pipe_reg[1][New_Sample] [6]),
        .R(\Pipe_reg[0][Flush]__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[1][New_Sample][7] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[0][Valid]__0 ),
        .D(\Pipe[1][New_Sample][7]_i_1_n_0 ),
        .Q(\Pipe_reg[1][New_Sample] [7]),
        .R(\Pipe_reg[0][Flush]__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[1][Valid] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[0][Valid]__0 ),
        .Q(\Pipe_reg[1][Valid_n_0_] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Avg_Calc][0] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(data2[16]),
        .Q(\Pipe_reg[2][Avg_Calc] [0]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Avg_Calc][10] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(data2[26]),
        .Q(\Pipe_reg[2][Avg_Calc] [10]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Avg_Calc][11] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(data2[27]),
        .Q(\Pipe_reg[2][Avg_Calc] [11]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Avg_Calc][12] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(data2[28]),
        .Q(\Pipe_reg[2][Avg_Calc] [12]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Avg_Calc][13] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(data2[29]),
        .Q(\Pipe_reg[2][Avg_Calc] [13]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Avg_Calc][1] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(data2[17]),
        .Q(\Pipe_reg[2][Avg_Calc] [1]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Avg_Calc][2] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(data2[18]),
        .Q(\Pipe_reg[2][Avg_Calc] [2]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Avg_Calc][3] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(data2[19]),
        .Q(\Pipe_reg[2][Avg_Calc] [3]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Avg_Calc][4] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(data2[20]),
        .Q(\Pipe_reg[2][Avg_Calc] [4]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Avg_Calc][5] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(data2[21]),
        .Q(\Pipe_reg[2][Avg_Calc] [5]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Avg_Calc][6] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(data2[22]),
        .Q(\Pipe_reg[2][Avg_Calc] [6]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Avg_Calc][7] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(data2[23]),
        .Q(\Pipe_reg[2][Avg_Calc] [7]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Avg_Calc][8] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(data2[24]),
        .Q(\Pipe_reg[2][Avg_Calc] [8]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Avg_Calc][9] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(data2[25]),
        .Q(\Pipe_reg[2][Avg_Calc] [9]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Exprd_Sample][0] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(\Sample_Pipe_reg[49] [0]),
        .Q(\Pipe_reg[2][Exprd_Sample] [0]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Exprd_Sample][1] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(\Sample_Pipe_reg[49] [1]),
        .Q(\Pipe_reg[2][Exprd_Sample] [1]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Exprd_Sample][2] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(\Sample_Pipe_reg[49] [2]),
        .Q(\Pipe_reg[2][Exprd_Sample] [2]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Exprd_Sample][3] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(\Sample_Pipe_reg[49] [3]),
        .Q(\Pipe_reg[2][Exprd_Sample] [3]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Exprd_Sample][4] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(\Sample_Pipe_reg[49] [4]),
        .Q(\Pipe_reg[2][Exprd_Sample] [4]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Exprd_Sample][5] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(\Sample_Pipe_reg[49] [5]),
        .Q(\Pipe_reg[2][Exprd_Sample] [5]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Exprd_Sample][6] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(\Sample_Pipe_reg[49] [6]),
        .Q(\Pipe_reg[2][Exprd_Sample] [6]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Exprd_Sample][7] 
       (.C(aclk_ctrl),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(\Sample_Pipe_reg[49] [7]),
        .Q(\Pipe_reg[2][Exprd_Sample] [7]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Flush] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[1][Flush_n_0_] ),
        .Q(\Pipe_reg[2][Flush]__0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][New_Sample][0] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[1][New_Sample] [0]),
        .Q(\Pipe_reg[2][New_Sample] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][New_Sample][1] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[1][New_Sample] [1]),
        .Q(\Pipe_reg[2][New_Sample] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][New_Sample][2] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[1][New_Sample] [2]),
        .Q(\Pipe_reg[2][New_Sample] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][New_Sample][3] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[1][New_Sample] [3]),
        .Q(\Pipe_reg[2][New_Sample] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][New_Sample][4] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[1][New_Sample] [4]),
        .Q(\Pipe_reg[2][New_Sample] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][New_Sample][5] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[1][New_Sample] [5]),
        .Q(\Pipe_reg[2][New_Sample] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][New_Sample][6] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[1][New_Sample] [6]),
        .Q(\Pipe_reg[2][New_Sample] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][New_Sample][7] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[1][New_Sample] [7]),
        .Q(\Pipe_reg[2][New_Sample] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Valid] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[1][Valid_n_0_] ),
        .Q(\Pipe_reg[2][Valid]__0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][Avg_Calc][0] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[3][Avg_Calc][0]_i_1_n_1 ),
        .Q(\Pipe_reg[3][Avg_Calc] [0]),
        .R(1'b0));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    \Pipe_reg[3][Avg_Calc][0]_i_1 
       (.GE(\Pipe_reg[3][Avg_Calc][0]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(\Pipe_reg[2][Avg_Calc] [0]),
        .I3(\Pipe_reg[2][Exprd_Sample] [0]),
        .I4(1'b1),
        .O51(\Pipe_reg[3][Avg_Calc][0]_i_1_n_1 ),
        .O52(\Pipe_reg[3][Avg_Calc][0]_i_1_n_2 ),
        .PROP(\Pipe_reg[3][Avg_Calc][0]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][Avg_Calc][10] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[3][Avg_Calc][10]_i_1_n_1 ),
        .Q(\Pipe_reg[3][Avg_Calc] [10]),
        .R(1'b0));
  LUT6CY #(
    .INIT(64'hFFFFFF00FF0000FF)) 
    \Pipe_reg[3][Avg_Calc][10]_i_1 
       (.GE(\Pipe_reg[3][Avg_Calc][10]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\Pipe_reg[2][Avg_Calc] [10]),
        .I4(\Pipe_reg[3][Avg_Calc][12]_i_2_n_0 ),
        .O51(\Pipe_reg[3][Avg_Calc][10]_i_1_n_1 ),
        .O52(\Pipe_reg[3][Avg_Calc][10]_i_1_n_2 ),
        .PROP(\Pipe_reg[3][Avg_Calc][10]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][Avg_Calc][11] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[3][Avg_Calc][11]_i_1_n_1 ),
        .Q(\Pipe_reg[3][Avg_Calc] [11]),
        .R(1'b0));
  LUT6CY #(
    .INIT(64'hFFFFFF00FF0000FF)) 
    \Pipe_reg[3][Avg_Calc][11]_i_1 
       (.GE(\Pipe_reg[3][Avg_Calc][11]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\Pipe_reg[2][Avg_Calc] [11]),
        .I4(\Pipe_reg[3][Avg_Calc][10]_i_1_n_2 ),
        .O51(\Pipe_reg[3][Avg_Calc][11]_i_1_n_1 ),
        .O52(\Pipe_reg[3][Avg_Calc][11]_i_1_n_2 ),
        .PROP(\Pipe_reg[3][Avg_Calc][11]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][Avg_Calc][12] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[3][Avg_Calc][12]_i_1_n_1 ),
        .Q(\Pipe_reg[3][Avg_Calc] [12]),
        .R(1'b0));
  LUT6CY #(
    .INIT(64'hFFFFFF00FF0000FF)) 
    \Pipe_reg[3][Avg_Calc][12]_i_1 
       (.GE(\Pipe_reg[3][Avg_Calc][12]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\Pipe_reg[2][Avg_Calc] [12]),
        .I4(\Pipe_reg[3][Avg_Calc][12]_i_2_n_1 ),
        .O51(\Pipe_reg[3][Avg_Calc][12]_i_1_n_1 ),
        .O52(\Pipe_reg[3][Avg_Calc][12]_i_1_n_2 ),
        .PROP(\Pipe_reg[3][Avg_Calc][12]_i_1_n_3 ));
  (* KEEP = "yes" *) 
  LOOKAHEAD8 #(
    .LOOKB("TRUE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("FALSE")) 
    \Pipe_reg[3][Avg_Calc][12]_i_2 
       (.CIN(\Pipe_reg[3][Avg_Calc][8]_i_2_n_3 ),
        .COUTB(\Pipe_reg[3][Avg_Calc][12]_i_2_n_0 ),
        .COUTD(\Pipe_reg[3][Avg_Calc][12]_i_2_n_1 ),
        .COUTF(\Pipe_reg[3][Avg_Calc][12]_i_2_n_2 ),
        .COUTH(\NLW_Pipe_reg[3][Avg_Calc][12]_i_2_COUTH_UNCONNECTED ),
        .CYA(\Pipe_reg[3][Avg_Calc][8]_i_1_n_2 ),
        .CYB(\Pipe_reg[3][Avg_Calc][9]_i_1_n_2 ),
        .CYC(\Pipe_reg[3][Avg_Calc][10]_i_1_n_2 ),
        .CYD(\Pipe_reg[3][Avg_Calc][11]_i_1_n_2 ),
        .CYE(\Pipe_reg[3][Avg_Calc][12]_i_1_n_2 ),
        .CYF(\Pipe_reg[3][Avg_Calc][13]_i_1_n_2 ),
        .CYG(\NLW_Pipe_reg[3][Avg_Calc][12]_i_2_CYG_UNCONNECTED ),
        .CYH(\NLW_Pipe_reg[3][Avg_Calc][12]_i_2_CYH_UNCONNECTED ),
        .GEA(\Pipe_reg[3][Avg_Calc][8]_i_1_n_0 ),
        .GEB(\Pipe_reg[3][Avg_Calc][9]_i_1_n_0 ),
        .GEC(\Pipe_reg[3][Avg_Calc][10]_i_1_n_0 ),
        .GED(\Pipe_reg[3][Avg_Calc][11]_i_1_n_0 ),
        .GEE(\Pipe_reg[3][Avg_Calc][12]_i_1_n_0 ),
        .GEF(\Pipe_reg[3][Avg_Calc][13]_i_1_n_0 ),
        .GEG(\NLW_Pipe_reg[3][Avg_Calc][12]_i_2_GEG_UNCONNECTED ),
        .GEH(\NLW_Pipe_reg[3][Avg_Calc][12]_i_2_GEH_UNCONNECTED ),
        .PROPA(\Pipe_reg[3][Avg_Calc][8]_i_1_n_3 ),
        .PROPB(\Pipe_reg[3][Avg_Calc][9]_i_1_n_3 ),
        .PROPC(\Pipe_reg[3][Avg_Calc][10]_i_1_n_3 ),
        .PROPD(\Pipe_reg[3][Avg_Calc][11]_i_1_n_3 ),
        .PROPE(\Pipe_reg[3][Avg_Calc][12]_i_1_n_3 ),
        .PROPF(\Pipe_reg[3][Avg_Calc][13]_i_1_n_3 ),
        .PROPG(\NLW_Pipe_reg[3][Avg_Calc][12]_i_2_PROPG_UNCONNECTED ),
        .PROPH(\NLW_Pipe_reg[3][Avg_Calc][12]_i_2_PROPH_UNCONNECTED ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][Avg_Calc][13] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[3][Avg_Calc][13]_i_1_n_1 ),
        .Q(\Pipe_reg[3][Avg_Calc] [13]),
        .R(1'b0));
  LUT6CY #(
    .INIT(64'h00FF00FFFF0000FF)) 
    \Pipe_reg[3][Avg_Calc][13]_i_1 
       (.GE(\Pipe_reg[3][Avg_Calc][13]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\Pipe_reg[2][Avg_Calc] [13]),
        .I4(\Pipe_reg[3][Avg_Calc][12]_i_1_n_2 ),
        .O51(\Pipe_reg[3][Avg_Calc][13]_i_1_n_1 ),
        .O52(\Pipe_reg[3][Avg_Calc][13]_i_1_n_2 ),
        .PROP(\Pipe_reg[3][Avg_Calc][13]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][Avg_Calc][1] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[3][Avg_Calc][1]_i_1_n_1 ),
        .Q(\Pipe_reg[3][Avg_Calc] [1]),
        .R(1'b0));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    \Pipe_reg[3][Avg_Calc][1]_i_1 
       (.GE(\Pipe_reg[3][Avg_Calc][1]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(\Pipe_reg[2][Avg_Calc] [1]),
        .I3(\Pipe_reg[2][Exprd_Sample] [1]),
        .I4(\Pipe_reg[3][Avg_Calc][0]_i_1_n_2 ),
        .O51(\Pipe_reg[3][Avg_Calc][1]_i_1_n_1 ),
        .O52(\Pipe_reg[3][Avg_Calc][1]_i_1_n_2 ),
        .PROP(\Pipe_reg[3][Avg_Calc][1]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][Avg_Calc][2] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[3][Avg_Calc][2]_i_1_n_1 ),
        .Q(\Pipe_reg[3][Avg_Calc] [2]),
        .R(1'b0));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    \Pipe_reg[3][Avg_Calc][2]_i_1 
       (.GE(\Pipe_reg[3][Avg_Calc][2]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(\Pipe_reg[2][Avg_Calc] [2]),
        .I3(\Pipe_reg[2][Exprd_Sample] [2]),
        .I4(\Pipe_reg[3][Avg_Calc][8]_i_2_n_0 ),
        .O51(\Pipe_reg[3][Avg_Calc][2]_i_1_n_1 ),
        .O52(\Pipe_reg[3][Avg_Calc][2]_i_1_n_2 ),
        .PROP(\Pipe_reg[3][Avg_Calc][2]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][Avg_Calc][3] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[3][Avg_Calc][3]_i_1_n_1 ),
        .Q(\Pipe_reg[3][Avg_Calc] [3]),
        .R(1'b0));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    \Pipe_reg[3][Avg_Calc][3]_i_1 
       (.GE(\Pipe_reg[3][Avg_Calc][3]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(\Pipe_reg[2][Avg_Calc] [3]),
        .I3(\Pipe_reg[2][Exprd_Sample] [3]),
        .I4(\Pipe_reg[3][Avg_Calc][2]_i_1_n_2 ),
        .O51(\Pipe_reg[3][Avg_Calc][3]_i_1_n_1 ),
        .O52(\Pipe_reg[3][Avg_Calc][3]_i_1_n_2 ),
        .PROP(\Pipe_reg[3][Avg_Calc][3]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][Avg_Calc][4] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[3][Avg_Calc][4]_i_1_n_1 ),
        .Q(\Pipe_reg[3][Avg_Calc] [4]),
        .R(1'b0));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    \Pipe_reg[3][Avg_Calc][4]_i_1 
       (.GE(\Pipe_reg[3][Avg_Calc][4]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(\Pipe_reg[2][Avg_Calc] [4]),
        .I3(\Pipe_reg[2][Exprd_Sample] [4]),
        .I4(\Pipe_reg[3][Avg_Calc][8]_i_2_n_1 ),
        .O51(\Pipe_reg[3][Avg_Calc][4]_i_1_n_1 ),
        .O52(\Pipe_reg[3][Avg_Calc][4]_i_1_n_2 ),
        .PROP(\Pipe_reg[3][Avg_Calc][4]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][Avg_Calc][5] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[3][Avg_Calc][5]_i_1_n_1 ),
        .Q(\Pipe_reg[3][Avg_Calc] [5]),
        .R(1'b0));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    \Pipe_reg[3][Avg_Calc][5]_i_1 
       (.GE(\Pipe_reg[3][Avg_Calc][5]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(\Pipe_reg[2][Avg_Calc] [5]),
        .I3(\Pipe_reg[2][Exprd_Sample] [5]),
        .I4(\Pipe_reg[3][Avg_Calc][4]_i_1_n_2 ),
        .O51(\Pipe_reg[3][Avg_Calc][5]_i_1_n_1 ),
        .O52(\Pipe_reg[3][Avg_Calc][5]_i_1_n_2 ),
        .PROP(\Pipe_reg[3][Avg_Calc][5]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][Avg_Calc][6] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[3][Avg_Calc][6]_i_1_n_1 ),
        .Q(\Pipe_reg[3][Avg_Calc] [6]),
        .R(1'b0));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    \Pipe_reg[3][Avg_Calc][6]_i_1 
       (.GE(\Pipe_reg[3][Avg_Calc][6]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(\Pipe_reg[2][Avg_Calc] [6]),
        .I3(\Pipe_reg[2][Exprd_Sample] [6]),
        .I4(\Pipe_reg[3][Avg_Calc][8]_i_2_n_2 ),
        .O51(\Pipe_reg[3][Avg_Calc][6]_i_1_n_1 ),
        .O52(\Pipe_reg[3][Avg_Calc][6]_i_1_n_2 ),
        .PROP(\Pipe_reg[3][Avg_Calc][6]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][Avg_Calc][7] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[3][Avg_Calc][7]_i_1_n_1 ),
        .Q(\Pipe_reg[3][Avg_Calc] [7]),
        .R(1'b0));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    \Pipe_reg[3][Avg_Calc][7]_i_1 
       (.GE(\Pipe_reg[3][Avg_Calc][7]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(\Pipe_reg[2][Avg_Calc] [7]),
        .I3(\Pipe_reg[2][Exprd_Sample] [7]),
        .I4(\Pipe_reg[3][Avg_Calc][6]_i_1_n_2 ),
        .O51(\Pipe_reg[3][Avg_Calc][7]_i_1_n_1 ),
        .O52(\Pipe_reg[3][Avg_Calc][7]_i_1_n_2 ),
        .PROP(\Pipe_reg[3][Avg_Calc][7]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][Avg_Calc][8] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[3][Avg_Calc][8]_i_1_n_1 ),
        .Q(\Pipe_reg[3][Avg_Calc] [8]),
        .R(1'b0));
  LUT6CY #(
    .INIT(64'hFFFFFF00FF0000FF)) 
    \Pipe_reg[3][Avg_Calc][8]_i_1 
       (.GE(\Pipe_reg[3][Avg_Calc][8]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\Pipe_reg[2][Avg_Calc] [8]),
        .I4(\Pipe_reg[3][Avg_Calc][8]_i_2_n_3 ),
        .O51(\Pipe_reg[3][Avg_Calc][8]_i_1_n_1 ),
        .O52(\Pipe_reg[3][Avg_Calc][8]_i_1_n_2 ),
        .PROP(\Pipe_reg[3][Avg_Calc][8]_i_1_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("FALSE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \Pipe_reg[3][Avg_Calc][8]_i_2 
       (.CIN(1'b1),
        .COUTB(\Pipe_reg[3][Avg_Calc][8]_i_2_n_0 ),
        .COUTD(\Pipe_reg[3][Avg_Calc][8]_i_2_n_1 ),
        .COUTF(\Pipe_reg[3][Avg_Calc][8]_i_2_n_2 ),
        .COUTH(\Pipe_reg[3][Avg_Calc][8]_i_2_n_3 ),
        .CYA(\Pipe_reg[3][Avg_Calc][0]_i_1_n_2 ),
        .CYB(\Pipe_reg[3][Avg_Calc][1]_i_1_n_2 ),
        .CYC(\Pipe_reg[3][Avg_Calc][2]_i_1_n_2 ),
        .CYD(\Pipe_reg[3][Avg_Calc][3]_i_1_n_2 ),
        .CYE(\Pipe_reg[3][Avg_Calc][4]_i_1_n_2 ),
        .CYF(\Pipe_reg[3][Avg_Calc][5]_i_1_n_2 ),
        .CYG(\Pipe_reg[3][Avg_Calc][6]_i_1_n_2 ),
        .CYH(\Pipe_reg[3][Avg_Calc][7]_i_1_n_2 ),
        .GEA(\Pipe_reg[3][Avg_Calc][0]_i_1_n_0 ),
        .GEB(\Pipe_reg[3][Avg_Calc][1]_i_1_n_0 ),
        .GEC(\Pipe_reg[3][Avg_Calc][2]_i_1_n_0 ),
        .GED(\Pipe_reg[3][Avg_Calc][3]_i_1_n_0 ),
        .GEE(\Pipe_reg[3][Avg_Calc][4]_i_1_n_0 ),
        .GEF(\Pipe_reg[3][Avg_Calc][5]_i_1_n_0 ),
        .GEG(\Pipe_reg[3][Avg_Calc][6]_i_1_n_0 ),
        .GEH(\Pipe_reg[3][Avg_Calc][7]_i_1_n_0 ),
        .PROPA(\Pipe_reg[3][Avg_Calc][0]_i_1_n_3 ),
        .PROPB(\Pipe_reg[3][Avg_Calc][1]_i_1_n_3 ),
        .PROPC(\Pipe_reg[3][Avg_Calc][2]_i_1_n_3 ),
        .PROPD(\Pipe_reg[3][Avg_Calc][3]_i_1_n_3 ),
        .PROPE(\Pipe_reg[3][Avg_Calc][4]_i_1_n_3 ),
        .PROPF(\Pipe_reg[3][Avg_Calc][5]_i_1_n_3 ),
        .PROPG(\Pipe_reg[3][Avg_Calc][6]_i_1_n_3 ),
        .PROPH(\Pipe_reg[3][Avg_Calc][7]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][Avg_Calc][9] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[3][Avg_Calc][9]_i_1_n_1 ),
        .Q(\Pipe_reg[3][Avg_Calc] [9]),
        .R(1'b0));
  LUT6CY #(
    .INIT(64'hFFFFFF00FF0000FF)) 
    \Pipe_reg[3][Avg_Calc][9]_i_1 
       (.GE(\Pipe_reg[3][Avg_Calc][9]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(\Pipe_reg[2][Avg_Calc] [9]),
        .I4(\Pipe_reg[3][Avg_Calc][8]_i_1_n_2 ),
        .O51(\Pipe_reg[3][Avg_Calc][9]_i_1_n_1 ),
        .O52(\Pipe_reg[3][Avg_Calc][9]_i_1_n_2 ),
        .PROP(\Pipe_reg[3][Avg_Calc][9]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][Flush] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[2][Flush]__0 ),
        .Q(\Pipe_reg[3][Flush]__0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][New_Sample][0] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[2][New_Sample] [0]),
        .Q(\Pipe_reg[3][New_Sample] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][New_Sample][1] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[2][New_Sample] [1]),
        .Q(\Pipe_reg[3][New_Sample] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][New_Sample][2] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[2][New_Sample] [2]),
        .Q(\Pipe_reg[3][New_Sample] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][New_Sample][3] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[2][New_Sample] [3]),
        .Q(\Pipe_reg[3][New_Sample] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][New_Sample][4] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[2][New_Sample] [4]),
        .Q(\Pipe_reg[3][New_Sample] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][New_Sample][5] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[2][New_Sample] [5]),
        .Q(\Pipe_reg[3][New_Sample] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][New_Sample][6] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[2][New_Sample] [6]),
        .Q(\Pipe_reg[3][New_Sample] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][New_Sample][7] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[2][New_Sample] [7]),
        .Q(\Pipe_reg[3][New_Sample] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][Valid] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\Pipe_reg[2][Valid]__0 ),
        .Q(\Pipe_reg[3][Valid]__0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    Rate_Upd_Tog_d1_reg
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(Rate_Upd_Tog_d1_reg_0),
        .Q(Rate_Upd_Tog_d1),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \Rst_Count[0]_i_1 
       (.I0(\Rst_Count_reg_n_0_[0] ),
        .O(minusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \Rst_Count[1]_i_1 
       (.I0(\Rst_Count_reg_n_0_[1] ),
        .I1(\Rst_Count_reg_n_0_[0] ),
        .O(minusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \Rst_Count[2]_i_1 
       (.I0(\Rst_Count_reg_n_0_[1] ),
        .I1(\Rst_Count_reg_n_0_[0] ),
        .I2(\Rst_Count_reg_n_0_[2] ),
        .O(minusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \Rst_Count[3]_i_1 
       (.I0(\Rst_Count_reg_n_0_[3] ),
        .I1(\Rst_Count_reg_n_0_[1] ),
        .I2(\Rst_Count_reg_n_0_[0] ),
        .I3(\Rst_Count_reg_n_0_[2] ),
        .O(minusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \Rst_Count[4]_i_1 
       (.I0(\Rst_Count_reg_n_0_[4] ),
        .I1(\Rst_Count_reg_n_0_[2] ),
        .I2(\Rst_Count_reg_n_0_[0] ),
        .I3(\Rst_Count_reg_n_0_[1] ),
        .I4(\Rst_Count_reg_n_0_[3] ),
        .O(minusOp[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \Rst_Count[5]_i_1 
       (.I0(\Rst_Count_reg_n_0_[3] ),
        .I1(\Rst_Count_reg_n_0_[1] ),
        .I2(\Rst_Count_reg_n_0_[0] ),
        .I3(\Rst_Count_reg_n_0_[2] ),
        .I4(\Rst_Count_reg_n_0_[4] ),
        .I5(\Rst_Count_reg_n_0_[5] ),
        .O(minusOp[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Rst_Count[6]_i_1 
       (.I0(\Rst_Count_reg_n_0_[3] ),
        .I1(\Rst_Count_reg_n_0_[1] ),
        .I2(\Rst_Count_reg_n_0_[0] ),
        .I3(\Rst_Count_reg_n_0_[2] ),
        .I4(\Rst_Count_reg_n_0_[4] ),
        .I5(\Rst_Count_reg_n_0_[5] ),
        .O(minusOp[6]));
  FDSE #(
    .INIT(1'b0)) 
    \Rst_Count_reg[0] 
       (.C(aclk_ctrl),
        .CE(p_0_in),
        .D(minusOp[0]),
        .Q(\Rst_Count_reg_n_0_[0] ),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \Rst_Count_reg[1] 
       (.C(aclk_ctrl),
        .CE(p_0_in),
        .D(minusOp[1]),
        .Q(\Rst_Count_reg_n_0_[1] ),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \Rst_Count_reg[2] 
       (.C(aclk_ctrl),
        .CE(p_0_in),
        .D(minusOp[2]),
        .Q(\Rst_Count_reg_n_0_[2] ),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \Rst_Count_reg[3] 
       (.C(aclk_ctrl),
        .CE(p_0_in),
        .D(minusOp[3]),
        .Q(\Rst_Count_reg_n_0_[3] ),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \Rst_Count_reg[4] 
       (.C(aclk_ctrl),
        .CE(p_0_in),
        .D(minusOp[4]),
        .Q(\Rst_Count_reg_n_0_[4] ),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \Rst_Count_reg[5] 
       (.C(aclk_ctrl),
        .CE(p_0_in),
        .D(minusOp[5]),
        .Q(\Rst_Count_reg_n_0_[5] ),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \Rst_Count_reg[6] 
       (.C(aclk_ctrl),
        .CE(p_0_in),
        .D(minusOp[6]),
        .Q(p_0_in),
        .S(SS));
  (* srl_bus_name = "inst/\clock_throttling_avg/Sample_Pipe_reg[31] " *) 
  (* srl_name = "inst/\clock_throttling_avg/Sample_Pipe_reg[31][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \Sample_Pipe_reg[31][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(\Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ),
        .CLK(aclk_ctrl),
        .D(\Pipe_reg[1][New_Sample] [0]),
        .Q(\NLW_Sample_Pipe_reg[31][0]_srl32_Q_UNCONNECTED ),
        .Q31(\Sample_Pipe_reg[31][0]_srl32_n_1 ));
  (* srl_bus_name = "inst/\clock_throttling_avg/Sample_Pipe_reg[31] " *) 
  (* srl_name = "inst/\clock_throttling_avg/Sample_Pipe_reg[31][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \Sample_Pipe_reg[31][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(\Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ),
        .CLK(aclk_ctrl),
        .D(\Pipe_reg[1][New_Sample] [1]),
        .Q(\NLW_Sample_Pipe_reg[31][1]_srl32_Q_UNCONNECTED ),
        .Q31(\Sample_Pipe_reg[31][1]_srl32_n_1 ));
  (* srl_bus_name = "inst/\clock_throttling_avg/Sample_Pipe_reg[31] " *) 
  (* srl_name = "inst/\clock_throttling_avg/Sample_Pipe_reg[31][2]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \Sample_Pipe_reg[31][2]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(\Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ),
        .CLK(aclk_ctrl),
        .D(\Pipe_reg[1][New_Sample] [2]),
        .Q(\NLW_Sample_Pipe_reg[31][2]_srl32_Q_UNCONNECTED ),
        .Q31(\Sample_Pipe_reg[31][2]_srl32_n_1 ));
  (* srl_bus_name = "inst/\clock_throttling_avg/Sample_Pipe_reg[31] " *) 
  (* srl_name = "inst/\clock_throttling_avg/Sample_Pipe_reg[31][3]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \Sample_Pipe_reg[31][3]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(\Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ),
        .CLK(aclk_ctrl),
        .D(\Pipe_reg[1][New_Sample] [3]),
        .Q(\NLW_Sample_Pipe_reg[31][3]_srl32_Q_UNCONNECTED ),
        .Q31(\Sample_Pipe_reg[31][3]_srl32_n_1 ));
  (* srl_bus_name = "inst/\clock_throttling_avg/Sample_Pipe_reg[31] " *) 
  (* srl_name = "inst/\clock_throttling_avg/Sample_Pipe_reg[31][4]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \Sample_Pipe_reg[31][4]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(\Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ),
        .CLK(aclk_ctrl),
        .D(\Pipe_reg[1][New_Sample] [4]),
        .Q(\NLW_Sample_Pipe_reg[31][4]_srl32_Q_UNCONNECTED ),
        .Q31(\Sample_Pipe_reg[31][4]_srl32_n_1 ));
  (* srl_bus_name = "inst/\clock_throttling_avg/Sample_Pipe_reg[31] " *) 
  (* srl_name = "inst/\clock_throttling_avg/Sample_Pipe_reg[31][5]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \Sample_Pipe_reg[31][5]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(\Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ),
        .CLK(aclk_ctrl),
        .D(\Pipe_reg[1][New_Sample] [5]),
        .Q(\NLW_Sample_Pipe_reg[31][5]_srl32_Q_UNCONNECTED ),
        .Q31(\Sample_Pipe_reg[31][5]_srl32_n_1 ));
  (* srl_bus_name = "inst/\clock_throttling_avg/Sample_Pipe_reg[31] " *) 
  (* srl_name = "inst/\clock_throttling_avg/Sample_Pipe_reg[31][6]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \Sample_Pipe_reg[31][6]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(\Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ),
        .CLK(aclk_ctrl),
        .D(\Pipe_reg[1][New_Sample] [6]),
        .Q(\NLW_Sample_Pipe_reg[31][6]_srl32_Q_UNCONNECTED ),
        .Q31(\Sample_Pipe_reg[31][6]_srl32_n_1 ));
  (* srl_bus_name = "inst/\clock_throttling_avg/Sample_Pipe_reg[31] " *) 
  (* srl_name = "inst/\clock_throttling_avg/Sample_Pipe_reg[31][7]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \Sample_Pipe_reg[31][7]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(\Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ),
        .CLK(aclk_ctrl),
        .D(\Pipe_reg[1][New_Sample] [7]),
        .Q(\NLW_Sample_Pipe_reg[31][7]_srl32_Q_UNCONNECTED ),
        .Q31(\Sample_Pipe_reg[31][7]_srl32_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \Sample_Pipe_reg[31][7]_srl32_i_1 
       (.I0(\Pipe_reg[1][Valid_n_0_] ),
        .I1(\Pipe_reg[1][Flush_n_0_] ),
        .O(\Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ));
  (* srl_bus_name = "inst/\clock_throttling_avg/Sample_Pipe_reg[49] " *) 
  (* srl_name = "inst/\clock_throttling_avg/Sample_Pipe_reg[49][0]_srl18 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \Sample_Pipe_reg[49][0]_srl18 
       (.A({1'b1,1'b0,1'b0,1'b0,1'b1}),
        .CE(\Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ),
        .CLK(aclk_ctrl),
        .D(\Sample_Pipe_reg[31][0]_srl32_n_1 ),
        .Q(\Sample_Pipe_reg[49] [0]),
        .Q31(\NLW_Sample_Pipe_reg[49][0]_srl18_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\clock_throttling_avg/Sample_Pipe_reg[49] " *) 
  (* srl_name = "inst/\clock_throttling_avg/Sample_Pipe_reg[49][1]_srl18 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \Sample_Pipe_reg[49][1]_srl18 
       (.A({1'b1,1'b0,1'b0,1'b0,1'b1}),
        .CE(\Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ),
        .CLK(aclk_ctrl),
        .D(\Sample_Pipe_reg[31][1]_srl32_n_1 ),
        .Q(\Sample_Pipe_reg[49] [1]),
        .Q31(\NLW_Sample_Pipe_reg[49][1]_srl18_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\clock_throttling_avg/Sample_Pipe_reg[49] " *) 
  (* srl_name = "inst/\clock_throttling_avg/Sample_Pipe_reg[49][2]_srl18 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \Sample_Pipe_reg[49][2]_srl18 
       (.A({1'b1,1'b0,1'b0,1'b0,1'b1}),
        .CE(\Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ),
        .CLK(aclk_ctrl),
        .D(\Sample_Pipe_reg[31][2]_srl32_n_1 ),
        .Q(\Sample_Pipe_reg[49] [2]),
        .Q31(\NLW_Sample_Pipe_reg[49][2]_srl18_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\clock_throttling_avg/Sample_Pipe_reg[49] " *) 
  (* srl_name = "inst/\clock_throttling_avg/Sample_Pipe_reg[49][3]_srl18 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \Sample_Pipe_reg[49][3]_srl18 
       (.A({1'b1,1'b0,1'b0,1'b0,1'b1}),
        .CE(\Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ),
        .CLK(aclk_ctrl),
        .D(\Sample_Pipe_reg[31][3]_srl32_n_1 ),
        .Q(\Sample_Pipe_reg[49] [3]),
        .Q31(\NLW_Sample_Pipe_reg[49][3]_srl18_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\clock_throttling_avg/Sample_Pipe_reg[49] " *) 
  (* srl_name = "inst/\clock_throttling_avg/Sample_Pipe_reg[49][4]_srl18 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \Sample_Pipe_reg[49][4]_srl18 
       (.A({1'b1,1'b0,1'b0,1'b0,1'b1}),
        .CE(\Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ),
        .CLK(aclk_ctrl),
        .D(\Sample_Pipe_reg[31][4]_srl32_n_1 ),
        .Q(\Sample_Pipe_reg[49] [4]),
        .Q31(\NLW_Sample_Pipe_reg[49][4]_srl18_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\clock_throttling_avg/Sample_Pipe_reg[49] " *) 
  (* srl_name = "inst/\clock_throttling_avg/Sample_Pipe_reg[49][5]_srl18 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \Sample_Pipe_reg[49][5]_srl18 
       (.A({1'b1,1'b0,1'b0,1'b0,1'b1}),
        .CE(\Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ),
        .CLK(aclk_ctrl),
        .D(\Sample_Pipe_reg[31][5]_srl32_n_1 ),
        .Q(\Sample_Pipe_reg[49] [5]),
        .Q31(\NLW_Sample_Pipe_reg[49][5]_srl18_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\clock_throttling_avg/Sample_Pipe_reg[49] " *) 
  (* srl_name = "inst/\clock_throttling_avg/Sample_Pipe_reg[49][6]_srl18 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \Sample_Pipe_reg[49][6]_srl18 
       (.A({1'b1,1'b0,1'b0,1'b0,1'b1}),
        .CE(\Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ),
        .CLK(aclk_ctrl),
        .D(\Sample_Pipe_reg[31][6]_srl32_n_1 ),
        .Q(\Sample_Pipe_reg[49] [6]),
        .Q31(\NLW_Sample_Pipe_reg[49][6]_srl18_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\clock_throttling_avg/Sample_Pipe_reg[49] " *) 
  (* srl_name = "inst/\clock_throttling_avg/Sample_Pipe_reg[49][7]_srl18 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \Sample_Pipe_reg[49][7]_srl18 
       (.A({1'b1,1'b0,1'b0,1'b0,1'b1}),
        .CE(\Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ),
        .CLK(aclk_ctrl),
        .D(\Sample_Pipe_reg[31][7]_srl32_n_1 ),
        .Q(\Sample_Pipe_reg[49] [7]),
        .Q31(\NLW_Sample_Pipe_reg[49][7]_srl18_Q31_UNCONNECTED ));
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_ctrl_mgmt_arready_i_i_1
       (.I0(aresetn_ctrl),
        .O(SS));
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \s_axi_ctrl_mgmt_rdata_i[16]_i_1 
       (.I0(\s_axi_ctrl_mgmt_rdata_i_reg[16] ),
        .I1(\s_axi_ctrl_mgmt_rdata_i[16]_i_3_n_0 ),
        .I2(\s_axi_ctrl_mgmt_rdata_i_reg[22]_0 [0]),
        .I3(\s_axi_ctrl_mgmt_rdata_i_reg[22] ),
        .I4(\s_axi_ctrl_mgmt_rdata_i_reg[16]_0 ),
        .O(\syncstages_ff_reg[2][16] ));
  LUT6 #(
    .INIT(64'h080F080F080F0800)) 
    \s_axi_ctrl_mgmt_rdata_i[16]_i_3 
       (.I0(s_axi_ctrl_mgmt_araddr[3]),
        .I1(Q[0]),
        .I2(s_axi_ctrl_mgmt_araddr[5]),
        .I3(s_axi_ctrl_mgmt_araddr[1]),
        .I4(\s_axi_ctrl_mgmt_rdata_i_reg[16]_1 ),
        .I5(\s_axi_ctrl_mgmt_rdata_i[16]_i_6_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8888888)) 
    \s_axi_ctrl_mgmt_rdata_i[16]_i_6 
       (.I0(data2[16]),
        .I1(s_axi_ctrl_mgmt_araddr[3]),
        .I2(s_axi_ctrl_mgmt_araddr[4]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[16]_i_3_0 ),
        .I4(\s_axi_ctrl_mgmt_rdata_i_reg[29] [0]),
        .O(\s_axi_ctrl_mgmt_rdata_i[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \s_axi_ctrl_mgmt_rdata_i[17]_i_1 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[17]_i_2_n_0 ),
        .I1(\s_axi_ctrl_mgmt_rdata_i_reg[17] ),
        .I2(\s_axi_ctrl_mgmt_rdata_i_reg[29] [5]),
        .I3(\s_axi_ctrl_mgmt_rdata_i_reg[17]_0 ),
        .I4(\s_axi_ctrl_mgmt_rdata_i_reg[17]_1 ),
        .I5(\s_axi_ctrl_mgmt_rdata_i_reg[17]_2 ),
        .O(\syncstages_ff_reg[1][81] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_ctrl_mgmt_rdata_i[17]_i_2 
       (.I0(\s_axi_ctrl_mgmt_rdata_i_reg[17]_3 ),
        .I1(data2[17]),
        .I2(\s_axi_ctrl_mgmt_rdata_i_reg[17]_4 ),
        .I3(Q[1]),
        .I4(\s_axi_ctrl_mgmt_rdata_i_reg[29] [1]),
        .I5(\s_axi_ctrl_mgmt_rdata_i_reg[17]_5 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \s_axi_ctrl_mgmt_rdata_i[18]_i_1 
       (.I0(\s_axi_ctrl_mgmt_rdata_i_reg[18] ),
        .I1(\s_axi_ctrl_mgmt_rdata_i[18]_i_3_n_0 ),
        .I2(\s_axi_ctrl_mgmt_rdata_i_reg[22]_0 [1]),
        .I3(\s_axi_ctrl_mgmt_rdata_i_reg[22] ),
        .I4(\s_axi_ctrl_mgmt_rdata_i_reg[18]_0 ),
        .I5(\s_axi_ctrl_mgmt_rdata_i_reg[18]_1 ),
        .O(\syncstages_ff_reg[2][18] ));
  LUT6 #(
    .INIT(64'h000000AC000000A0)) 
    \s_axi_ctrl_mgmt_rdata_i[18]_i_3 
       (.I0(data2[18]),
        .I1(s_axi_ctrl_mgmt_araddr[4]),
        .I2(s_axi_ctrl_mgmt_araddr[3]),
        .I3(s_axi_ctrl_mgmt_araddr[1]),
        .I4(s_axi_ctrl_mgmt_araddr[5]),
        .I5(\s_axi_ctrl_mgmt_rdata_i_reg[18]_2 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \s_axi_ctrl_mgmt_rdata_i[19]_i_1 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[19]_i_2_n_0 ),
        .I1(\s_axi_ctrl_mgmt_rdata_i_reg[19] ),
        .I2(\s_axi_ctrl_mgmt_rdata_i_reg[29] [6]),
        .I3(\s_axi_ctrl_mgmt_rdata_i_reg[17]_0 ),
        .I4(\s_axi_ctrl_mgmt_rdata_i_reg[19]_0 ),
        .I5(\s_axi_ctrl_mgmt_rdata_i_reg[19]_1 ),
        .O(\syncstages_ff_reg[1][83] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_ctrl_mgmt_rdata_i[19]_i_2 
       (.I0(\s_axi_ctrl_mgmt_rdata_i_reg[17]_3 ),
        .I1(data2[19]),
        .I2(\s_axi_ctrl_mgmt_rdata_i_reg[17]_4 ),
        .I3(Q[2]),
        .I4(\s_axi_ctrl_mgmt_rdata_i_reg[29] [2]),
        .I5(\s_axi_ctrl_mgmt_rdata_i_reg[17]_5 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \s_axi_ctrl_mgmt_rdata_i[20]_i_1 
       (.I0(dest_out[0]),
        .I1(\s_axi_ctrl_mgmt_rdata_i_reg[20] ),
        .I2(\s_axi_ctrl_mgmt_rdata_i_reg[20]_0 ),
        .I3(\s_axi_ctrl_mgmt_rdata_i_reg[20]_1 ),
        .I4(\s_axi_ctrl_mgmt_rdata_i[20]_i_3_n_0 ),
        .I5(\s_axi_ctrl_mgmt_rdata_i_reg[20]_2 ),
        .O(\syncstages_ff_reg[2][20] ));
  LUT6 #(
    .INIT(64'hFFFFC840C840C840)) 
    \s_axi_ctrl_mgmt_rdata_i[20]_i_3 
       (.I0(s_axi_ctrl_mgmt_araddr[3]),
        .I1(\s_axi_ctrl_mgmt_rdata_i_reg[20]_3 ),
        .I2(p_6_in[8]),
        .I3(data2[20]),
        .I4(\s_axi_ctrl_mgmt_rdata_i_reg[22]_0 [2]),
        .I5(\s_axi_ctrl_mgmt_rdata_i_reg[22] ),
        .O(\s_axi_ctrl_mgmt_rdata_i[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA8A8A8)) 
    \s_axi_ctrl_mgmt_rdata_i[21]_i_1 
       (.I0(\s_axi_ctrl_mgmt_rdata_i_reg[21] ),
        .I1(\s_axi_ctrl_mgmt_rdata_i_reg[21]_0 ),
        .I2(\s_axi_ctrl_mgmt_rdata_i_reg[21]_1 ),
        .I3(\s_axi_ctrl_mgmt_rdata_i_reg[21]_2 ),
        .I4(dest_out[4]),
        .I5(\s_axi_ctrl_mgmt_rdata_i[21]_i_5_n_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s_axi_ctrl_mgmt_rdata_i[21]_i_5 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[21]_i_6_n_0 ),
        .I1(\s_axi_ctrl_mgmt_rdata_i_reg[20] ),
        .I2(dest_out[1]),
        .I3(\s_axi_ctrl_mgmt_rdata_i_reg[22]_1 ),
        .I4(\s_axi_ctrl_mgmt_rdata_i_reg[22]_0 [6]),
        .O(\s_axi_ctrl_mgmt_rdata_i[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF230123012301)) 
    \s_axi_ctrl_mgmt_rdata_i[21]_i_6 
       (.I0(s_axi_ctrl_mgmt_araddr[3]),
        .I1(s_axi_ctrl_mgmt_araddr[5]),
        .I2(\s_axi_ctrl_mgmt_rdata_i[21]_i_5_0 ),
        .I3(data2[21]),
        .I4(\s_axi_ctrl_mgmt_rdata_i_reg[22]_0 [3]),
        .I5(\s_axi_ctrl_mgmt_rdata_i_reg[22] ),
        .O(\s_axi_ctrl_mgmt_rdata_i[21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \s_axi_ctrl_mgmt_rdata_i[22]_i_1 
       (.I0(\s_axi_ctrl_mgmt_rdata_i_reg[21] ),
        .I1(\s_axi_ctrl_mgmt_rdata_i_reg[22] ),
        .I2(\s_axi_ctrl_mgmt_rdata_i_reg[22]_0 [4]),
        .I3(\s_axi_ctrl_mgmt_rdata_i_reg[22]_0 [7]),
        .I4(\s_axi_ctrl_mgmt_rdata_i_reg[22]_1 ),
        .I5(\s_axi_ctrl_mgmt_rdata_i[22]_i_5_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h22222222F0000000)) 
    \s_axi_ctrl_mgmt_rdata_i[22]_i_10 
       (.I0(data2[22]),
        .I1(s_axi_ctrl_mgmt_araddr[5]),
        .I2(\s_axi_ctrl_mgmt_rdata_i_reg[17]_5 ),
        .I3(\s_axi_ctrl_mgmt_rdata_i_reg[29] [3]),
        .I4(s_axi_ctrl_mgmt_araddr[4]),
        .I5(s_axi_ctrl_mgmt_araddr[3]),
        .O(\s_axi_ctrl_mgmt_rdata_i[22]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_ctrl_mgmt_rdata_i[22]_i_5 
       (.I0(\s_axi_ctrl_mgmt_rdata_i_reg[22]_2 ),
        .I1(\s_axi_ctrl_mgmt_rdata_i_reg[22]_0 [8]),
        .I2(\s_axi_ctrl_mgmt_rdata_i_reg[22]_3 ),
        .I3(dest_out[2]),
        .I4(\s_axi_ctrl_mgmt_rdata_i_reg[20] ),
        .I5(\s_axi_ctrl_mgmt_rdata_i[22]_i_8_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2A220A02)) 
    \s_axi_ctrl_mgmt_rdata_i[22]_i_8 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[22]_i_5_0 ),
        .I1(s_axi_ctrl_mgmt_araddr[2]),
        .I2(s_axi_ctrl_mgmt_araddr[0]),
        .I3(\s_axi_ctrl_mgmt_rdata_i_reg[29] [4]),
        .I4(\s_axi_ctrl_mgmt_rdata_i_reg[29] [7]),
        .I5(\s_axi_ctrl_mgmt_rdata_i[22]_i_10_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[22]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_axi_ctrl_mgmt_rdata_i[23]_i_1 
       (.I0(\s_axi_ctrl_mgmt_rdata_i_reg[23] ),
        .I1(\s_axi_ctrl_mgmt_rdata_i_reg[23]_0 ),
        .I2(\s_axi_ctrl_mgmt_rdata_i[23]_i_4_n_0 ),
        .I3(\s_axi_ctrl_mgmt_rdata_i_reg[23]_1 ),
        .I4(\s_axi_ctrl_mgmt_rdata_i_reg[23]_2 ),
        .O(\syncstages_ff_reg[2][23] ));
  LUT6 #(
    .INIT(64'hFFFF002000200020)) 
    \s_axi_ctrl_mgmt_rdata_i[23]_i_4 
       (.I0(\s_axi_ctrl_mgmt_rdata_i_reg[29] [8]),
        .I1(s_axi_ctrl_mgmt_araddr[5]),
        .I2(s_axi_ctrl_mgmt_araddr[0]),
        .I3(s_axi_ctrl_mgmt_araddr[2]),
        .I4(data2[23]),
        .I5(\s_axi_ctrl_mgmt_rdata_i_reg[17]_3 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \s_axi_ctrl_mgmt_rdata_i[24]_i_1 
       (.I0(dest_out[3]),
        .I1(\s_axi_ctrl_mgmt_rdata_i_reg[20] ),
        .I2(\s_axi_ctrl_mgmt_rdata_i_reg[24] ),
        .I3(\s_axi_ctrl_mgmt_rdata_i_reg[20]_1 ),
        .I4(\s_axi_ctrl_mgmt_rdata_i[24]_i_4_n_0 ),
        .I5(\s_axi_ctrl_mgmt_rdata_i_reg[24]_0 ),
        .O(\syncstages_ff_reg[2][24] ));
  LUT6 #(
    .INIT(64'hFFFFC840C840C840)) 
    \s_axi_ctrl_mgmt_rdata_i[24]_i_4 
       (.I0(s_axi_ctrl_mgmt_araddr[3]),
        .I1(\s_axi_ctrl_mgmt_rdata_i_reg[20]_3 ),
        .I2(p_6_in[9]),
        .I3(data2[24]),
        .I4(\s_axi_ctrl_mgmt_rdata_i_reg[22]_0 [5]),
        .I5(\s_axi_ctrl_mgmt_rdata_i_reg[22] ),
        .O(\s_axi_ctrl_mgmt_rdata_i[24]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_axi_ctrl_mgmt_rdata_i[25]_i_1 
       (.I0(\s_axi_ctrl_mgmt_rdata_i_reg[25] ),
        .I1(\s_axi_ctrl_mgmt_rdata_i_reg[25]_0 ),
        .I2(\s_axi_ctrl_mgmt_rdata_i[25]_i_4_n_0 ),
        .I3(\s_axi_ctrl_mgmt_rdata_i_reg[25]_1 ),
        .I4(\s_axi_ctrl_mgmt_rdata_i_reg[25]_2 ),
        .O(\syncstages_ff_reg[2][25] ));
  LUT6 #(
    .INIT(64'hFFFF002000200020)) 
    \s_axi_ctrl_mgmt_rdata_i[25]_i_4 
       (.I0(\s_axi_ctrl_mgmt_rdata_i_reg[29] [9]),
        .I1(s_axi_ctrl_mgmt_araddr[5]),
        .I2(s_axi_ctrl_mgmt_araddr[0]),
        .I3(s_axi_ctrl_mgmt_araddr[2]),
        .I4(data2[25]),
        .I5(\s_axi_ctrl_mgmt_rdata_i_reg[17]_3 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[25]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_axi_ctrl_mgmt_rdata_i[26]_i_1 
       (.I0(\s_axi_ctrl_mgmt_rdata_i_reg[26] ),
        .I1(\s_axi_ctrl_mgmt_rdata_i_reg[26]_0 ),
        .I2(\s_axi_ctrl_mgmt_rdata_i[26]_i_4_n_0 ),
        .I3(\s_axi_ctrl_mgmt_rdata_i_reg[26]_1 ),
        .I4(\s_axi_ctrl_mgmt_rdata_i_reg[26]_2 ),
        .O(\syncstages_ff_reg[2][26] ));
  LUT6 #(
    .INIT(64'hFFFF002000200020)) 
    \s_axi_ctrl_mgmt_rdata_i[26]_i_4 
       (.I0(\s_axi_ctrl_mgmt_rdata_i_reg[29] [10]),
        .I1(s_axi_ctrl_mgmt_araddr[5]),
        .I2(s_axi_ctrl_mgmt_araddr[0]),
        .I3(s_axi_ctrl_mgmt_araddr[2]),
        .I4(data2[26]),
        .I5(\s_axi_ctrl_mgmt_rdata_i_reg[17]_3 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[26]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_axi_ctrl_mgmt_rdata_i[27]_i_1 
       (.I0(\s_axi_ctrl_mgmt_rdata_i_reg[27] ),
        .I1(\s_axi_ctrl_mgmt_rdata_i_reg[27]_0 ),
        .I2(\s_axi_ctrl_mgmt_rdata_i[27]_i_4_n_0 ),
        .I3(\s_axi_ctrl_mgmt_rdata_i_reg[27]_1 ),
        .I4(\s_axi_ctrl_mgmt_rdata_i_reg[27]_2 ),
        .O(\syncstages_ff_reg[2][27] ));
  LUT6 #(
    .INIT(64'hFFFF002000200020)) 
    \s_axi_ctrl_mgmt_rdata_i[27]_i_4 
       (.I0(\s_axi_ctrl_mgmt_rdata_i_reg[29] [11]),
        .I1(s_axi_ctrl_mgmt_araddr[5]),
        .I2(s_axi_ctrl_mgmt_araddr[0]),
        .I3(s_axi_ctrl_mgmt_araddr[2]),
        .I4(data2[27]),
        .I5(\s_axi_ctrl_mgmt_rdata_i_reg[17]_3 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[27]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_axi_ctrl_mgmt_rdata_i[28]_i_1 
       (.I0(\s_axi_ctrl_mgmt_rdata_i_reg[28] ),
        .I1(\s_axi_ctrl_mgmt_rdata_i_reg[28]_0 ),
        .I2(\s_axi_ctrl_mgmt_rdata_i[28]_i_4_n_0 ),
        .I3(\s_axi_ctrl_mgmt_rdata_i_reg[28]_1 ),
        .I4(\s_axi_ctrl_mgmt_rdata_i_reg[28]_2 ),
        .O(\syncstages_ff_reg[2][28] ));
  LUT6 #(
    .INIT(64'hFFFF002000200020)) 
    \s_axi_ctrl_mgmt_rdata_i[28]_i_4 
       (.I0(\s_axi_ctrl_mgmt_rdata_i_reg[29] [12]),
        .I1(s_axi_ctrl_mgmt_araddr[5]),
        .I2(s_axi_ctrl_mgmt_araddr[0]),
        .I3(s_axi_ctrl_mgmt_araddr[2]),
        .I4(data2[28]),
        .I5(\s_axi_ctrl_mgmt_rdata_i_reg[17]_3 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[28]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_axi_ctrl_mgmt_rdata_i[29]_i_1 
       (.I0(\s_axi_ctrl_mgmt_rdata_i_reg[29]_0 ),
        .I1(\s_axi_ctrl_mgmt_rdata_i_reg[29]_1 ),
        .I2(\s_axi_ctrl_mgmt_rdata_i[29]_i_4_n_0 ),
        .I3(\s_axi_ctrl_mgmt_rdata_i_reg[29]_2 ),
        .I4(\s_axi_ctrl_mgmt_rdata_i_reg[29]_3 ),
        .O(\syncstages_ff_reg[2][29] ));
  LUT6 #(
    .INIT(64'hFFFF002000200020)) 
    \s_axi_ctrl_mgmt_rdata_i[29]_i_4 
       (.I0(\s_axi_ctrl_mgmt_rdata_i_reg[29] [13]),
        .I1(s_axi_ctrl_mgmt_araddr[5]),
        .I2(s_axi_ctrl_mgmt_araddr[0]),
        .I3(s_axi_ctrl_mgmt_araddr[2]),
        .I4(data2[29]),
        .I5(\s_axi_ctrl_mgmt_rdata_i_reg[17]_3 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[29]_i_4_n_0 ));
endmodule

(* C_EXT_TOG_ENABLE = "1" *) (* C_FREQ_CNT_REF_CLK_HZ = "33333" *) (* C_NUM_CLOCKS = "2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_ucc_v1_0_0_top
   (aclk_ctrl,
    aclk_freerun,
    aclk_pcie,
    aresetn_ctrl,
    aclk_kernel_00,
    aclk_kernel_01,
    aclk_kernel_02,
    aclk_kernel_03,
    aclk_kernel_04,
    aclk_kernel_05,
    aclk_kernel_cont_00,
    aclk_kernel_cont_01,
    aclk_kernel_cont_02,
    aclk_kernel_cont_03,
    aclk_kernel_cont_04,
    aclk_kernel_cont_05,
    aclk_ext_tog_kernel_00,
    aclk_ext_tog_kernel_01,
    aclk_ext_tog_kernel_02,
    aclk_ext_tog_kernel_03,
    aclk_ext_tog_kernel_04,
    aclk_ext_tog_kernel_05,
    clk_in_kernel_00,
    clk_in_kernel_01,
    clk_in_kernel_02,
    clk_in_kernel_03,
    clk_in_kernel_04,
    clk_in_kernel_05,
    clk_kernel_00_locked,
    clk_kernel_01_locked,
    clk_kernel_02_locked,
    clk_kernel_03_locked,
    clk_kernel_04_locked,
    clk_kernel_05_locked,
    ext_tog_ctrl_kernel_00_enable,
    ext_tog_ctrl_kernel_01_enable,
    ext_tog_ctrl_kernel_02_enable,
    ext_tog_ctrl_kernel_03_enable,
    ext_tog_ctrl_kernel_04_enable,
    ext_tog_ctrl_kernel_05_enable,
    ext_tog_ctrl_kernel_00_in,
    ext_tog_ctrl_kernel_01_in,
    ext_tog_ctrl_kernel_02_in,
    ext_tog_ctrl_kernel_03_in,
    ext_tog_ctrl_kernel_04_in,
    ext_tog_ctrl_kernel_05_in,
    ext_tog_ctrl_kernel_00_out,
    ext_tog_ctrl_kernel_01_out,
    ext_tog_ctrl_kernel_02_out,
    ext_tog_ctrl_kernel_03_out,
    ext_tog_ctrl_kernel_04_out,
    ext_tog_ctrl_kernel_05_out,
    rst_async_kernel_00,
    rst_async_kernel_01,
    rst_async_kernel_02,
    rst_async_kernel_03,
    rst_async_kernel_04,
    rst_async_kernel_05,
    power_down,
    shutdown_clocks,
    s_axi_ctrl_mgmt_araddr,
    s_axi_ctrl_mgmt_arready,
    s_axi_ctrl_mgmt_arvalid,
    s_axi_ctrl_mgmt_awaddr,
    s_axi_ctrl_mgmt_awready,
    s_axi_ctrl_mgmt_awvalid,
    s_axi_ctrl_mgmt_bready,
    s_axi_ctrl_mgmt_bresp,
    s_axi_ctrl_mgmt_bvalid,
    s_axi_ctrl_mgmt_rdata,
    s_axi_ctrl_mgmt_rready,
    s_axi_ctrl_mgmt_rresp,
    s_axi_ctrl_mgmt_rvalid,
    s_axi_ctrl_mgmt_wdata,
    s_axi_ctrl_mgmt_wready,
    s_axi_ctrl_mgmt_wstrb,
    s_axi_ctrl_mgmt_wvalid);
  input aclk_ctrl;
  input aclk_freerun;
  input aclk_pcie;
  input aresetn_ctrl;
  output aclk_kernel_00;
  output aclk_kernel_01;
  output aclk_kernel_02;
  output aclk_kernel_03;
  output aclk_kernel_04;
  output aclk_kernel_05;
  output aclk_kernel_cont_00;
  output aclk_kernel_cont_01;
  output aclk_kernel_cont_02;
  output aclk_kernel_cont_03;
  output aclk_kernel_cont_04;
  output aclk_kernel_cont_05;
  output aclk_ext_tog_kernel_00;
  output aclk_ext_tog_kernel_01;
  output aclk_ext_tog_kernel_02;
  output aclk_ext_tog_kernel_03;
  output aclk_ext_tog_kernel_04;
  output aclk_ext_tog_kernel_05;
  input clk_in_kernel_00;
  input clk_in_kernel_01;
  input clk_in_kernel_02;
  input clk_in_kernel_03;
  input clk_in_kernel_04;
  input clk_in_kernel_05;
  input clk_kernel_00_locked;
  input clk_kernel_01_locked;
  input clk_kernel_02_locked;
  input clk_kernel_03_locked;
  input clk_kernel_04_locked;
  input clk_kernel_05_locked;
  input ext_tog_ctrl_kernel_00_enable;
  input ext_tog_ctrl_kernel_01_enable;
  input ext_tog_ctrl_kernel_02_enable;
  input ext_tog_ctrl_kernel_03_enable;
  input ext_tog_ctrl_kernel_04_enable;
  input ext_tog_ctrl_kernel_05_enable;
  input ext_tog_ctrl_kernel_00_in;
  input ext_tog_ctrl_kernel_01_in;
  input ext_tog_ctrl_kernel_02_in;
  input ext_tog_ctrl_kernel_03_in;
  input ext_tog_ctrl_kernel_04_in;
  input ext_tog_ctrl_kernel_05_in;
  output ext_tog_ctrl_kernel_00_out;
  output ext_tog_ctrl_kernel_01_out;
  output ext_tog_ctrl_kernel_02_out;
  output ext_tog_ctrl_kernel_03_out;
  output ext_tog_ctrl_kernel_04_out;
  output ext_tog_ctrl_kernel_05_out;
  output rst_async_kernel_00;
  output rst_async_kernel_01;
  output rst_async_kernel_02;
  output rst_async_kernel_03;
  output rst_async_kernel_04;
  output rst_async_kernel_05;
  output power_down;
  input shutdown_clocks;
  input [31:0]s_axi_ctrl_mgmt_araddr;
  output s_axi_ctrl_mgmt_arready;
  input s_axi_ctrl_mgmt_arvalid;
  input [31:0]s_axi_ctrl_mgmt_awaddr;
  output s_axi_ctrl_mgmt_awready;
  input s_axi_ctrl_mgmt_awvalid;
  input s_axi_ctrl_mgmt_bready;
  output [1:0]s_axi_ctrl_mgmt_bresp;
  output s_axi_ctrl_mgmt_bvalid;
  output [31:0]s_axi_ctrl_mgmt_rdata;
  input s_axi_ctrl_mgmt_rready;
  output [1:0]s_axi_ctrl_mgmt_rresp;
  output s_axi_ctrl_mgmt_rvalid;
  input [31:0]s_axi_ctrl_mgmt_wdata;
  output s_axi_ctrl_mgmt_wready;
  input [3:0]s_axi_ctrl_mgmt_wstrb;
  input s_axi_ctrl_mgmt_wvalid;

  wire \<const0> ;
  wire Request_SW;
  wire \Request_SW[15]_i_2_n_0 ;
  wire \Request_SW[15]_i_3_n_0 ;
  wire \Request_SW[15]_i_4_n_0 ;
  wire \Request_SW[15]_i_5_n_0 ;
  wire \Request_SW_reg_n_0_[0] ;
  wire \Request_SW_reg_n_0_[10] ;
  wire \Request_SW_reg_n_0_[11] ;
  wire \Request_SW_reg_n_0_[12] ;
  wire \Request_SW_reg_n_0_[13] ;
  wire \Request_SW_reg_n_0_[14] ;
  wire \Request_SW_reg_n_0_[15] ;
  wire \Request_SW_reg_n_0_[1] ;
  wire \Request_SW_reg_n_0_[2] ;
  wire \Request_SW_reg_n_0_[3] ;
  wire \Request_SW_reg_n_0_[4] ;
  wire \Request_SW_reg_n_0_[5] ;
  wire \Request_SW_reg_n_0_[6] ;
  wire \Request_SW_reg_n_0_[7] ;
  wire \Request_SW_reg_n_0_[8] ;
  wire \Request_SW_reg_n_0_[9] ;
  wire aclk_ctrl;
  wire aclk_ext_tog_kernel_00;
  wire aclk_ext_tog_kernel_01;
  wire aclk_freerun;
  wire aclk_kernel_00;
  wire aclk_kernel_01;
  wire aclk_kernel_cont_00;
  wire aclk_kernel_cont_01;
  wire aclk_pcie;
  wire aresetn_aclk_freerun;
  wire aresetn_ctrl;
  wire cdc_freq_cntr_aclk_n_65;
  wire cdc_freq_cntr_aclk_n_66;
  wire cdc_freq_cntr_aclk_n_67;
  wire cdc_freq_cntr_aclk_n_68;
  wire cdc_freq_cntr_aclk_n_69;
  wire cdc_freq_cntr_aclk_n_70;
  wire cdc_freq_cntr_aclk_n_71;
  wire cdc_freq_cntr_aclk_n_72;
  wire cdc_freq_cntr_aclk_n_73;
  wire cdc_freq_cntr_aclk_n_74;
  wire cdc_freq_cntr_aclk_n_75;
  wire cdc_freq_cntr_aclk_n_76;
  wire cdc_freq_cntr_aclk_n_77;
  wire cdc_freq_cntr_aclk_n_78;
  wire cdc_freq_cntr_aclk_n_79;
  wire cdc_freq_cntr_aclk_n_80;
  wire cdc_freq_cntr_aclk_n_81;
  wire cdc_freq_cntr_aclk_n_82;
  wire cdc_freq_cntr_aclk_n_83;
  wire cdc_freq_cntr_aclk_n_84;
  wire cdc_freq_cntr_aclk_n_85;
  wire cdc_freq_cntr_aclk_n_86;
  wire cdc_freq_cntr_aclk_n_87;
  wire cdc_freq_cntr_aclk_n_88;
  wire cdc_freq_cntr_aclk_n_89;
  wire cdc_freq_cntr_aclk_n_90;
  wire cdc_freq_cntr_aclk_n_91;
  wire cdc_freq_cntr_aclk_n_92;
  wire cdc_freq_cntr_aclk_n_93;
  wire cdc_freq_cntr_aclk_n_94;
  wire cdc_freq_cntr_aclk_n_95;
  wire cdc_freq_cntr_aclk_n_96;
  wire clear;
  wire clk_in_kernel_00;
  wire clk_in_kernel_01;
  wire clk_kernel_00_locked;
  wire clk_kernel_01_locked;
  wire clock_shutdown_latch_n_4;
  wire \clock_throttling_aclk_kernel_00/Locked_gated ;
  wire \clock_throttling_aclk_kernel_00/Locked_gated_0 ;
  wire \clock_throttling_aclk_kernel_00/power_down_out_d1 ;
  wire \clock_throttling_aclk_kernel_00/power_down_out_d1_6 ;
  wire clock_throttling_avg_n_0;
  wire clock_throttling_avg_n_1;
  wire clock_throttling_avg_n_10;
  wire clock_throttling_avg_n_11;
  wire clock_throttling_avg_n_12;
  wire clock_throttling_avg_n_13;
  wire clock_throttling_avg_n_2;
  wire clock_throttling_avg_n_3;
  wire clock_throttling_avg_n_4;
  wire clock_throttling_avg_n_5;
  wire clock_throttling_avg_n_6;
  wire clock_throttling_avg_n_7;
  wire clock_throttling_avg_n_8;
  wire clock_throttling_avg_n_9;
  wire [4:0]cmd_stall;
  wire \cmd_stall[0]_i_1_n_0 ;
  wire \cmd_stall[1]_i_1_n_0 ;
  wire \cmd_stall[2]_i_1_n_0 ;
  wire \cmd_stall[3]_i_1_n_0 ;
  wire \cmd_stall[4]_i_1_n_0 ;
  wire \cmd_stall[4]_i_2_n_0 ;
  wire \cmd_stall[4]_i_3_n_0 ;
  wire done_ref_aclk;
  wire \done_ref_aclk_d[4]_i_1_n_0 ;
  wire \done_ref_aclk_d[4]_i_2_n_0 ;
  wire [4:0]done_ref_aclk_d_reg;
  wire done_ref_aclk_fr;
  wire done_ref_i;
  wire done_ref_kernel_0;
  wire done_ref_kernel_1;
  wire done_ref_kernel_fr_1;
  wire done_test_aclk_i_1_n_0;
  wire done_test_aclk_reg_n_0;
  wire ext_tog_ctrl_kernel_00_enable;
  wire ext_tog_ctrl_kernel_00_in;
  wire ext_tog_ctrl_kernel_00_out;
  wire ext_tog_ctrl_kernel_01_enable;
  wire ext_tog_ctrl_kernel_01_in;
  wire ext_tog_ctrl_kernel_01_out;
  wire frequency_counter_aclk_n_17;
  wire frequency_counter_aclk_n_41;
  wire gapping_demand_pending;
  wire gapping_demand_pending_i_1_n_0;
  wire gapping_demand_toggle_i_1_n_0;
  wire gapping_demand_toggle_reg_n_0;
  wire \genblk1[0].done_ref_kernel_d[4]_i_1_n_0 ;
  wire [4:0]\genblk1[0].done_ref_kernel_d_reg ;
  wire \genblk1[0].done_test_kernel[0]_i_1_n_0 ;
  wire \genblk1[0].done_test_kernel_reg ;
  wire \genblk1[1].done_ref_kernel_d[9]_i_1_n_0 ;
  wire \genblk1[1].done_ref_kernel_d[9]_i_2_n_0 ;
  wire [9:5]\genblk1[1].done_ref_kernel_d_reg ;
  wire \genblk1[1].done_test_kernel[1]_i_1_n_0 ;
  wire \genblk1[1].done_test_kernel_reg ;
  wire \genblk1[1].frequency_counter_kernel_inst_n_17 ;
  wire \genblk1[1].frequency_counter_kernel_inst_n_41 ;
  wire [4:0]p_0_in;
  wire p_0_in0;
  wire [4:0]p_0_in__0;
  wire p_1_in;
  wire [4:0]p_2_in;
  wire [4:0]p_2_in__0;
  wire [0:0]p_3_in;
  wire [0:0]p_4_in;
  wire [24:0]p_6_in;
  wire power_down;
  wire [15:0]ref_clk_cntr_i_reg;
  wire [15:0]ref_clk_cntr_i_reg_5;
  wire [15:0]ref_clk_cntr_i_reg_9;
  wire [31:0]ref_cntr_aclk;
  wire [63:0]ref_cntr_kernel;
  wire request_ack;
  wire request_ack_i_2_n_0;
  wire request_ack_reg_n_0;
  wire request_latch;
  wire rst_async_kernel_00;
  wire rst_async_kernel_01;
  wire [31:0]s_axi_ctrl_mgmt_araddr;
  wire s_axi_ctrl_mgmt_arready;
  wire s_axi_ctrl_mgmt_arready_i_i_2_n_0;
  wire s_axi_ctrl_mgmt_arready_i_i_3_n_0;
  wire s_axi_ctrl_mgmt_arvalid;
  wire [31:0]s_axi_ctrl_mgmt_awaddr;
  wire s_axi_ctrl_mgmt_awready;
  wire s_axi_ctrl_mgmt_awready_i0;
  wire s_axi_ctrl_mgmt_awready_i_i_1_n_0;
  wire s_axi_ctrl_mgmt_awvalid;
  wire s_axi_ctrl_mgmt_bready;
  wire s_axi_ctrl_mgmt_bvalid;
  wire s_axi_ctrl_mgmt_bvalid_i_i_1_n_0;
  wire [31:0]s_axi_ctrl_mgmt_rdata;
  wire \s_axi_ctrl_mgmt_rdata_i[0]_i_2_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[0]_i_4_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[0]_i_5_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[0]_i_6_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[0]_i_8_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[0]_i_9_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[10]_i_1_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[10]_i_2_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[10]_i_3_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[10]_i_4_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[10]_i_5_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[10]_i_6_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[11]_i_1_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[11]_i_2_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[11]_i_3_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[11]_i_4_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[11]_i_5_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[11]_i_6_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[12]_i_1_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[12]_i_2_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[12]_i_3_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[12]_i_4_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[12]_i_5_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[12]_i_6_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[13]_i_1_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[13]_i_2_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[13]_i_3_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[13]_i_4_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[13]_i_5_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[13]_i_6_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[14]_i_1_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[14]_i_2_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[14]_i_3_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[14]_i_4_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[14]_i_5_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[14]_i_6_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[15]_i_1_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[15]_i_2_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[15]_i_3_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[15]_i_4_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[15]_i_5_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[15]_i_6_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[15]_i_7_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[16]_i_2_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[16]_i_4_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[16]_i_5_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[16]_i_7_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[16]_i_8_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[17]_i_3_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[17]_i_4_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[17]_i_5_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[17]_i_6_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[18]_i_2_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[18]_i_4_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[18]_i_5_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[18]_i_6_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[19]_i_3_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[19]_i_4_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[19]_i_5_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[19]_i_6_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[19]_i_7_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[19]_i_8_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[1]_i_1_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[1]_i_2_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[1]_i_3_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[1]_i_4_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[1]_i_5_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[1]_i_6_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[1]_i_7_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[1]_i_8_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[20]_i_2_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[20]_i_4_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[20]_i_5_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[21]_i_2_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[21]_i_3_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[21]_i_4_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[21]_i_7_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[22]_i_2_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[22]_i_3_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[22]_i_4_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[22]_i_6_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[22]_i_7_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[22]_i_9_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[23]_i_2_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[23]_i_3_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[23]_i_5_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[23]_i_6_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[24]_i_2_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[24]_i_3_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[24]_i_5_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[24]_i_6_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[24]_i_7_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[24]_i_9_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[25]_i_2_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[25]_i_3_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[25]_i_5_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[25]_i_6_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[26]_i_2_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[26]_i_3_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[26]_i_5_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[26]_i_6_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[27]_i_2_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[27]_i_3_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[27]_i_5_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[27]_i_6_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[28]_i_2_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[28]_i_3_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[28]_i_5_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[28]_i_6_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[29]_i_2_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[29]_i_3_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[29]_i_5_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[29]_i_6_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[29]_i_7_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[2]_i_1_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[2]_i_2_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[2]_i_3_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[2]_i_4_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[2]_i_5_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[2]_i_6_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[30]_i_1_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[30]_i_2_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[30]_i_3_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[30]_i_4_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[31]_i_10_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[31]_i_11_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[31]_i_12_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[31]_i_1_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[31]_i_2_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[31]_i_3_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[31]_i_4_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[31]_i_5_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[31]_i_6_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[31]_i_7_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[31]_i_8_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[31]_i_9_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[3]_i_1_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[3]_i_2_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[3]_i_3_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[3]_i_4_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[3]_i_5_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[3]_i_6_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[3]_i_7_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[4]_i_1_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[4]_i_2_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[4]_i_3_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[4]_i_4_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[4]_i_5_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[4]_i_6_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[5]_i_1_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[5]_i_2_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[5]_i_3_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[5]_i_4_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[5]_i_5_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[5]_i_6_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[6]_i_1_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[6]_i_2_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[6]_i_3_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[6]_i_4_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[6]_i_5_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[6]_i_6_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[7]_i_1_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[7]_i_2_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[7]_i_3_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[7]_i_4_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[7]_i_5_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[7]_i_6_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[7]_i_6_n_1 ;
  wire \s_axi_ctrl_mgmt_rdata_i[7]_i_7_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[8]_i_1_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[8]_i_2_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[8]_i_3_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[8]_i_4_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[8]_i_5_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[8]_i_6_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[9]_i_1_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[9]_i_2_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[9]_i_3_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[9]_i_4_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[9]_i_5_n_0 ;
  wire \s_axi_ctrl_mgmt_rdata_i[9]_i_6_n_0 ;
  wire s_axi_ctrl_mgmt_rready;
  wire s_axi_ctrl_mgmt_rvalid;
  wire s_axi_ctrl_mgmt_rvalid_i_i_1_n_0;
  wire [31:0]s_axi_ctrl_mgmt_wdata;
  wire s_axi_ctrl_mgmt_wvalid;
  wire shutdown_clocks;
  wire shutdown_latch;
  wire test_clk_cntr_synced_01;
  wire test_clk_cntr_synced_11;
  wire [22:0]\test_clk_cntr_synced_i[0]_2 ;
  wire [22:0]\test_clk_cntr_synced_i[0]_4 ;
  wire [22:0]\test_clk_cntr_synced_i[0]_8 ;
  wire [22:0]\test_clk_cntr_synced_i[1]_1 ;
  wire [22:0]\test_clk_cntr_synced_i[1]_3 ;
  wire [22:0]\test_clk_cntr_synced_i[1]_7 ;
  wire [31:0]test_cntr0_aclk;
  wire [63:0]test_cntr0_kernel;
  wire [63:0]test_cntr1_kernel;
  wire user_rst_aclk_fr;
  wire user_rst_aclk_i_1_n_0;
  wire user_rst_aclk_i_2_n_0;
  wire \user_rst_d[2]_i_2_n_0 ;
  wire \user_rst_d[3]_i_2_n_0 ;
  wire \user_rst_d[4]_i_1_n_0 ;
  wire \user_rst_d[4]_i_3_n_0 ;
  wire \user_rst_d[4]_i_4_n_0 ;
  wire \user_rst_d[4]_i_5_n_0 ;
  wire \user_rst_d_reg_n_0_[0] ;
  wire \user_rst_d_reg_n_0_[1] ;
  wire \user_rst_d_reg_n_0_[2] ;
  wire \user_rst_d_reg_n_0_[4] ;
  wire \user_rst_kernel[0]_i_1_n_0 ;
  wire \user_rst_kernel[0]_i_2_n_0 ;
  wire \user_rst_kernel[1]_i_10_n_0 ;
  wire \user_rst_kernel[1]_i_1_n_0 ;
  wire \user_rst_kernel[1]_i_2_n_0 ;
  wire \user_rst_kernel[1]_i_3_n_0 ;
  wire \user_rst_kernel[1]_i_4_n_0 ;
  wire \user_rst_kernel[1]_i_5_n_0 ;
  wire \user_rst_kernel[1]_i_6_n_0 ;
  wire \user_rst_kernel[1]_i_7_n_0 ;
  wire \user_rst_kernel[1]_i_8_n_0 ;
  wire \user_rst_kernel[1]_i_9_n_0 ;
  wire user_rst_kernel_fr_0;
  wire user_rst_kernel_fr_1;
  wire \user_rst_kernel_reg_n_0_[0] ;
  wire \user_rst_kernel_reg_n_0_[1] ;

  assign aclk_ext_tog_kernel_02 = \<const0> ;
  assign aclk_ext_tog_kernel_03 = \<const0> ;
  assign aclk_ext_tog_kernel_04 = \<const0> ;
  assign aclk_ext_tog_kernel_05 = \<const0> ;
  assign aclk_kernel_02 = \<const0> ;
  assign aclk_kernel_03 = \<const0> ;
  assign aclk_kernel_04 = \<const0> ;
  assign aclk_kernel_05 = \<const0> ;
  assign aclk_kernel_cont_02 = \<const0> ;
  assign aclk_kernel_cont_03 = \<const0> ;
  assign aclk_kernel_cont_04 = \<const0> ;
  assign aclk_kernel_cont_05 = \<const0> ;
  assign ext_tog_ctrl_kernel_02_out = \<const0> ;
  assign ext_tog_ctrl_kernel_03_out = \<const0> ;
  assign ext_tog_ctrl_kernel_04_out = \<const0> ;
  assign ext_tog_ctrl_kernel_05_out = \<const0> ;
  assign rst_async_kernel_02 = \<const0> ;
  assign rst_async_kernel_03 = \<const0> ;
  assign rst_async_kernel_04 = \<const0> ;
  assign rst_async_kernel_05 = \<const0> ;
  assign s_axi_ctrl_mgmt_bresp[1] = \<const0> ;
  assign s_axi_ctrl_mgmt_bresp[0] = \<const0> ;
  assign s_axi_ctrl_mgmt_rresp[1] = \<const0> ;
  assign s_axi_ctrl_mgmt_rresp[0] = \<const0> ;
  assign s_axi_ctrl_mgmt_wready = s_axi_ctrl_mgmt_awready;
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \Request_SW[15]_i_1 
       (.I0(\Request_SW[15]_i_2_n_0 ),
        .I1(\Request_SW[15]_i_3_n_0 ),
        .I2(s_axi_ctrl_mgmt_awaddr[3]),
        .I3(s_axi_ctrl_mgmt_awaddr[12]),
        .I4(\Request_SW[15]_i_4_n_0 ),
        .I5(\Request_SW[15]_i_5_n_0 ),
        .O(Request_SW));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Request_SW[15]_i_2 
       (.I0(s_axi_ctrl_mgmt_awaddr[4]),
        .I1(s_axi_ctrl_mgmt_awaddr[5]),
        .I2(s_axi_ctrl_mgmt_awaddr[6]),
        .I3(s_axi_ctrl_mgmt_awaddr[7]),
        .O(\Request_SW[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \Request_SW[15]_i_3 
       (.I0(s_axi_ctrl_mgmt_awaddr[8]),
        .I1(s_axi_ctrl_mgmt_awaddr[9]),
        .I2(s_axi_ctrl_mgmt_awaddr[2]),
        .O(\Request_SW[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFFDFFF)) 
    \Request_SW[15]_i_4 
       (.I0(s_axi_ctrl_mgmt_awready_i0),
        .I1(s_axi_ctrl_mgmt_awready),
        .I2(s_axi_ctrl_mgmt_wvalid),
        .I3(s_axi_ctrl_mgmt_awvalid),
        .I4(s_axi_ctrl_mgmt_bvalid),
        .O(\Request_SW[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \Request_SW[15]_i_5 
       (.I0(s_axi_ctrl_mgmt_awaddr[15]),
        .I1(s_axi_ctrl_mgmt_awaddr[11]),
        .I2(s_axi_ctrl_mgmt_awaddr[10]),
        .I3(s_axi_ctrl_mgmt_awaddr[14]),
        .I4(s_axi_ctrl_mgmt_awaddr[13]),
        .O(\Request_SW[15]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Request_SW_reg[0] 
       (.C(aclk_ctrl),
        .CE(Request_SW),
        .D(s_axi_ctrl_mgmt_wdata[4]),
        .Q(\Request_SW_reg_n_0_[0] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \Request_SW_reg[10] 
       (.C(aclk_ctrl),
        .CE(Request_SW),
        .D(s_axi_ctrl_mgmt_wdata[14]),
        .Q(\Request_SW_reg_n_0_[10] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \Request_SW_reg[11] 
       (.C(aclk_ctrl),
        .CE(Request_SW),
        .D(s_axi_ctrl_mgmt_wdata[15]),
        .Q(\Request_SW_reg_n_0_[11] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \Request_SW_reg[12] 
       (.C(aclk_ctrl),
        .CE(Request_SW),
        .D(s_axi_ctrl_mgmt_wdata[16]),
        .Q(\Request_SW_reg_n_0_[12] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \Request_SW_reg[13] 
       (.C(aclk_ctrl),
        .CE(Request_SW),
        .D(s_axi_ctrl_mgmt_wdata[17]),
        .Q(\Request_SW_reg_n_0_[13] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \Request_SW_reg[14] 
       (.C(aclk_ctrl),
        .CE(Request_SW),
        .D(s_axi_ctrl_mgmt_wdata[18]),
        .Q(\Request_SW_reg_n_0_[14] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \Request_SW_reg[15] 
       (.C(aclk_ctrl),
        .CE(Request_SW),
        .D(s_axi_ctrl_mgmt_wdata[19]),
        .Q(\Request_SW_reg_n_0_[15] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \Request_SW_reg[1] 
       (.C(aclk_ctrl),
        .CE(Request_SW),
        .D(s_axi_ctrl_mgmt_wdata[5]),
        .Q(\Request_SW_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \Request_SW_reg[2] 
       (.C(aclk_ctrl),
        .CE(Request_SW),
        .D(s_axi_ctrl_mgmt_wdata[6]),
        .Q(\Request_SW_reg_n_0_[2] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \Request_SW_reg[3] 
       (.C(aclk_ctrl),
        .CE(Request_SW),
        .D(s_axi_ctrl_mgmt_wdata[7]),
        .Q(\Request_SW_reg_n_0_[3] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \Request_SW_reg[4] 
       (.C(aclk_ctrl),
        .CE(Request_SW),
        .D(s_axi_ctrl_mgmt_wdata[8]),
        .Q(\Request_SW_reg_n_0_[4] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \Request_SW_reg[5] 
       (.C(aclk_ctrl),
        .CE(Request_SW),
        .D(s_axi_ctrl_mgmt_wdata[9]),
        .Q(\Request_SW_reg_n_0_[5] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \Request_SW_reg[6] 
       (.C(aclk_ctrl),
        .CE(Request_SW),
        .D(s_axi_ctrl_mgmt_wdata[10]),
        .Q(\Request_SW_reg_n_0_[6] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \Request_SW_reg[7] 
       (.C(aclk_ctrl),
        .CE(Request_SW),
        .D(s_axi_ctrl_mgmt_wdata[11]),
        .Q(\Request_SW_reg_n_0_[7] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \Request_SW_reg[8] 
       (.C(aclk_ctrl),
        .CE(Request_SW),
        .D(s_axi_ctrl_mgmt_wdata[12]),
        .Q(\Request_SW_reg_n_0_[8] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \Request_SW_reg[9] 
       (.C(aclk_ctrl),
        .CE(Request_SW),
        .D(s_axi_ctrl_mgmt_wdata[13]),
        .Q(\Request_SW_reg_n_0_[9] ),
        .R(clear));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "97" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized3 cdc_freq_cntr_aclk
       (.dest_clk(aclk_ctrl),
        .dest_out({done_ref_aclk,ref_cntr_aclk,test_cntr0_aclk,cdc_freq_cntr_aclk_n_65,cdc_freq_cntr_aclk_n_66,cdc_freq_cntr_aclk_n_67,cdc_freq_cntr_aclk_n_68,cdc_freq_cntr_aclk_n_69,cdc_freq_cntr_aclk_n_70,cdc_freq_cntr_aclk_n_71,cdc_freq_cntr_aclk_n_72,cdc_freq_cntr_aclk_n_73,cdc_freq_cntr_aclk_n_74,cdc_freq_cntr_aclk_n_75,cdc_freq_cntr_aclk_n_76,cdc_freq_cntr_aclk_n_77,cdc_freq_cntr_aclk_n_78,cdc_freq_cntr_aclk_n_79,cdc_freq_cntr_aclk_n_80,cdc_freq_cntr_aclk_n_81,cdc_freq_cntr_aclk_n_82,cdc_freq_cntr_aclk_n_83,cdc_freq_cntr_aclk_n_84,cdc_freq_cntr_aclk_n_85,cdc_freq_cntr_aclk_n_86,cdc_freq_cntr_aclk_n_87,cdc_freq_cntr_aclk_n_88,cdc_freq_cntr_aclk_n_89,cdc_freq_cntr_aclk_n_90,cdc_freq_cntr_aclk_n_91,cdc_freq_cntr_aclk_n_92,cdc_freq_cntr_aclk_n_93,cdc_freq_cntr_aclk_n_94,cdc_freq_cntr_aclk_n_95,cdc_freq_cntr_aclk_n_96}),
        .src_clk(1'b0),
        .src_in({done_ref_aclk_fr,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ref_clk_cntr_i_reg,frequency_counter_aclk_n_17,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\test_clk_cntr_synced_i[0]_2 ,frequency_counter_aclk_n_41,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\test_clk_cntr_synced_i[1]_1 }));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__parameterized1 cdc_user_rst_aclk
       (.dest_arst(user_rst_aclk_fr),
        .dest_clk(aclk_freerun),
        .src_arst(p_3_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_ucc_v1_0_0_shutdown_latch clock_shutdown_latch
       (.Q({\Request_SW_reg_n_0_[15] ,\Request_SW_reg_n_0_[14] ,\Request_SW_reg_n_0_[13] ,\Request_SW_reg_n_0_[12] ,\Request_SW_reg_n_0_[11] ,\Request_SW_reg_n_0_[10] ,\Request_SW_reg_n_0_[9] ,\Request_SW_reg_n_0_[8] ,\Request_SW_reg_n_0_[7] ,\Request_SW_reg_n_0_[6] ,\Request_SW_reg_n_0_[5] ,\Request_SW_reg_n_0_[4] ,\Request_SW_reg_n_0_[3] ,\Request_SW_reg_n_0_[2] ,\Request_SW_reg_n_0_[1] ,\Request_SW_reg_n_0_[0] }),
        .Request_Ack_d1_reg_0(request_ack_reg_n_0),
        .SS(clear),
        .aclk_ctrl(aclk_ctrl),
        .clk_kernel_00_locked(clk_kernel_00_locked),
        .clk_kernel_01_locked(clk_kernel_01_locked),
        .clk_kernel_01_locked_0(\clock_throttling_aclk_kernel_00/Locked_gated ),
        .dest_out(ref_cntr_kernel[32]),
        .p_6_in({p_6_in[20],p_6_in[0]}),
        .power_down(power_down),
        .power_down_out_d1(\clock_throttling_aclk_kernel_00/power_down_out_d1 ),
        .power_down_out_d1_0(\clock_throttling_aclk_kernel_00/power_down_out_d1_6 ),
        .s_axi_ctrl_mgmt_araddr({s_axi_ctrl_mgmt_araddr[15],s_axi_ctrl_mgmt_araddr[13:12],s_axi_ctrl_mgmt_araddr[3:2]}),
        .\s_axi_ctrl_mgmt_rdata_i[0]_i_3_0 (p_3_in),
        .\s_axi_ctrl_mgmt_rdata_i[0]_i_3_1 (\s_axi_ctrl_mgmt_rdata_i[31]_i_10_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[0] (\s_axi_ctrl_mgmt_rdata_i[0]_i_2_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[0]_0 (\s_axi_ctrl_mgmt_rdata_i[31]_i_7_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[0]_1 (\s_axi_ctrl_mgmt_rdata_i[0]_i_4_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[0]_2 (\s_axi_ctrl_mgmt_rdata_i[0]_i_6_n_0 ),
        .shutdown_clocks(shutdown_clocks),
        .shutdown_latch(shutdown_latch),
        .src_arst(\clock_throttling_aclk_kernel_00/Locked_gated_0 ),
        .src_in(request_latch),
        .\syncstages_ff_reg[2][64] (clock_shutdown_latch_n_4));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_ucc_v1_0_0_throttling_avg clock_throttling_avg
       (.D({clock_throttling_avg_n_0,clock_throttling_avg_n_1}),
        .Q({\Request_SW_reg_n_0_[15] ,\Request_SW_reg_n_0_[13] ,\Request_SW_reg_n_0_[12] }),
        .Rate_Upd_Tog_d1_reg_0(gapping_demand_toggle_reg_n_0),
        .SS(clear),
        .aclk_ctrl(aclk_ctrl),
        .aresetn_ctrl(aresetn_ctrl),
        .dest_out({test_cntr0_kernel[21],test_cntr1_kernel[24],test_cntr1_kernel[22:20]}),
        .p_6_in({p_6_in[24],p_6_in[20],p_6_in[7:0]}),
        .s_axi_ctrl_mgmt_araddr({s_axi_ctrl_mgmt_araddr[15],s_axi_ctrl_mgmt_araddr[13:12],s_axi_ctrl_mgmt_araddr[4:2]}),
        .\s_axi_ctrl_mgmt_rdata_i[16]_i_3_0 (\s_axi_ctrl_mgmt_rdata_i[0]_i_9_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i[21]_i_5_0 (\s_axi_ctrl_mgmt_rdata_i[21]_i_7_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i[22]_i_5_0 (\s_axi_ctrl_mgmt_rdata_i[22]_i_9_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[16] (\s_axi_ctrl_mgmt_rdata_i[16]_i_2_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[16]_0 (\s_axi_ctrl_mgmt_rdata_i[16]_i_4_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[16]_1 (\s_axi_ctrl_mgmt_rdata_i[16]_i_5_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[17] (\s_axi_ctrl_mgmt_rdata_i[17]_i_3_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[17]_0 (\s_axi_ctrl_mgmt_rdata_i[19]_i_4_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[17]_1 (\s_axi_ctrl_mgmt_rdata_i[17]_i_4_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[17]_2 (\s_axi_ctrl_mgmt_rdata_i[17]_i_5_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[17]_3 (\s_axi_ctrl_mgmt_rdata_i[29]_i_7_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[17]_4 (\s_axi_ctrl_mgmt_rdata_i[19]_i_7_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[17]_5 (\s_axi_ctrl_mgmt_rdata_i[3]_i_2_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[18] (\s_axi_ctrl_mgmt_rdata_i[18]_i_2_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[18]_0 (\s_axi_ctrl_mgmt_rdata_i[18]_i_4_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[18]_1 (\s_axi_ctrl_mgmt_rdata_i[18]_i_5_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[18]_2 (\s_axi_ctrl_mgmt_rdata_i[18]_i_6_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[19] (\s_axi_ctrl_mgmt_rdata_i[19]_i_3_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[19]_0 (\s_axi_ctrl_mgmt_rdata_i[19]_i_5_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[19]_1 (\s_axi_ctrl_mgmt_rdata_i[19]_i_6_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[20] (\s_axi_ctrl_mgmt_rdata_i[31]_i_8_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[20]_0 (\s_axi_ctrl_mgmt_rdata_i[20]_i_2_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[20]_1 (\s_axi_ctrl_mgmt_rdata_i[24]_i_3_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[20]_2 (\s_axi_ctrl_mgmt_rdata_i[20]_i_4_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[20]_3 (\s_axi_ctrl_mgmt_rdata_i[7]_i_6_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[21] (\s_axi_ctrl_mgmt_rdata_i[22]_i_2_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[21]_0 (\s_axi_ctrl_mgmt_rdata_i[21]_i_2_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[21]_1 (\s_axi_ctrl_mgmt_rdata_i[21]_i_3_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[21]_2 (\s_axi_ctrl_mgmt_rdata_i[21]_i_4_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[22] (\s_axi_ctrl_mgmt_rdata_i[22]_i_3_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[22]_0 ({ref_cntr_kernel[54],test_cntr0_kernel[54:53],test_cntr1_kernel[56],test_cntr1_kernel[54:52],test_cntr1_kernel[50],test_cntr1_kernel[48]}),
        .\s_axi_ctrl_mgmt_rdata_i_reg[22]_1 (\s_axi_ctrl_mgmt_rdata_i[22]_i_4_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[22]_2 (\s_axi_ctrl_mgmt_rdata_i[22]_i_7_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[22]_3 (\s_axi_ctrl_mgmt_rdata_i[31]_i_7_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[23] (\s_axi_ctrl_mgmt_rdata_i[23]_i_2_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[23]_0 (\s_axi_ctrl_mgmt_rdata_i[23]_i_3_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[23]_1 (\s_axi_ctrl_mgmt_rdata_i[23]_i_5_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[23]_2 (\s_axi_ctrl_mgmt_rdata_i[23]_i_6_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[24] (\s_axi_ctrl_mgmt_rdata_i[24]_i_2_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[24]_0 (\s_axi_ctrl_mgmt_rdata_i[24]_i_5_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[25] (\s_axi_ctrl_mgmt_rdata_i[25]_i_2_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[25]_0 (\s_axi_ctrl_mgmt_rdata_i[25]_i_3_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[25]_1 (\s_axi_ctrl_mgmt_rdata_i[25]_i_5_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[25]_2 (\s_axi_ctrl_mgmt_rdata_i[25]_i_6_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[26] (\s_axi_ctrl_mgmt_rdata_i[26]_i_2_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[26]_0 (\s_axi_ctrl_mgmt_rdata_i[26]_i_3_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[26]_1 (\s_axi_ctrl_mgmt_rdata_i[26]_i_5_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[26]_2 (\s_axi_ctrl_mgmt_rdata_i[26]_i_6_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[27] (\s_axi_ctrl_mgmt_rdata_i[27]_i_2_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[27]_0 (\s_axi_ctrl_mgmt_rdata_i[27]_i_3_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[27]_1 (\s_axi_ctrl_mgmt_rdata_i[27]_i_5_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[27]_2 (\s_axi_ctrl_mgmt_rdata_i[27]_i_6_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[28] (\s_axi_ctrl_mgmt_rdata_i[28]_i_2_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[28]_0 (\s_axi_ctrl_mgmt_rdata_i[28]_i_3_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[28]_1 (\s_axi_ctrl_mgmt_rdata_i[28]_i_5_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[28]_2 (\s_axi_ctrl_mgmt_rdata_i[28]_i_6_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[29] ({ref_cntr_aclk[29:25],ref_cntr_aclk[23:22],ref_cntr_aclk[19],ref_cntr_aclk[17],test_cntr0_aclk[22],cdc_freq_cntr_aclk_n_74,cdc_freq_cntr_aclk_n_77,cdc_freq_cntr_aclk_n_79,cdc_freq_cntr_aclk_n_80}),
        .\s_axi_ctrl_mgmt_rdata_i_reg[29]_0 (\s_axi_ctrl_mgmt_rdata_i[29]_i_2_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[29]_1 (\s_axi_ctrl_mgmt_rdata_i[29]_i_3_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[29]_2 (\s_axi_ctrl_mgmt_rdata_i[29]_i_5_n_0 ),
        .\s_axi_ctrl_mgmt_rdata_i_reg[29]_3 (\s_axi_ctrl_mgmt_rdata_i[29]_i_6_n_0 ),
        .\syncstages_ff_reg[1][81] (clock_throttling_avg_n_3),
        .\syncstages_ff_reg[1][83] (clock_throttling_avg_n_5),
        .\syncstages_ff_reg[2][16] (clock_throttling_avg_n_2),
        .\syncstages_ff_reg[2][18] (clock_throttling_avg_n_4),
        .\syncstages_ff_reg[2][20] (clock_throttling_avg_n_6),
        .\syncstages_ff_reg[2][23] (clock_throttling_avg_n_7),
        .\syncstages_ff_reg[2][24] (clock_throttling_avg_n_8),
        .\syncstages_ff_reg[2][25] (clock_throttling_avg_n_9),
        .\syncstages_ff_reg[2][26] (clock_throttling_avg_n_10),
        .\syncstages_ff_reg[2][27] (clock_throttling_avg_n_11),
        .\syncstages_ff_reg[2][28] (clock_throttling_avg_n_12),
        .\syncstages_ff_reg[2][29] (clock_throttling_avg_n_13));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \cmd_stall[0]_i_1 
       (.I0(cmd_stall[0]),
        .I1(\Request_SW[15]_i_4_n_0 ),
        .I2(aresetn_ctrl),
        .O(\cmd_stall[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hC44C)) 
    \cmd_stall[1]_i_1 
       (.I0(\Request_SW[15]_i_4_n_0 ),
        .I1(aresetn_ctrl),
        .I2(cmd_stall[0]),
        .I3(cmd_stall[1]),
        .O(\cmd_stall[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFD005700)) 
    \cmd_stall[2]_i_1 
       (.I0(\Request_SW[15]_i_4_n_0 ),
        .I1(cmd_stall[0]),
        .I2(cmd_stall[1]),
        .I3(aresetn_ctrl),
        .I4(cmd_stall[2]),
        .O(\cmd_stall[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFD000055570000)) 
    \cmd_stall[3]_i_1 
       (.I0(\Request_SW[15]_i_4_n_0 ),
        .I1(cmd_stall[1]),
        .I2(cmd_stall[0]),
        .I3(cmd_stall[2]),
        .I4(aresetn_ctrl),
        .I5(cmd_stall[3]),
        .O(\cmd_stall[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h777F777777777777)) 
    \cmd_stall[4]_i_1 
       (.I0(s_axi_ctrl_mgmt_awready_i0),
        .I1(aresetn_ctrl),
        .I2(s_axi_ctrl_mgmt_awready),
        .I3(s_axi_ctrl_mgmt_bvalid),
        .I4(s_axi_ctrl_mgmt_awvalid),
        .I5(s_axi_ctrl_mgmt_wvalid),
        .O(\cmd_stall[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hD700)) 
    \cmd_stall[4]_i_2 
       (.I0(\Request_SW[15]_i_4_n_0 ),
        .I1(\cmd_stall[4]_i_3_n_0 ),
        .I2(cmd_stall[4]),
        .I3(aresetn_ctrl),
        .O(\cmd_stall[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cmd_stall[4]_i_3 
       (.I0(cmd_stall[2]),
        .I1(cmd_stall[0]),
        .I2(cmd_stall[1]),
        .I3(cmd_stall[3]),
        .O(\cmd_stall[4]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_stall_reg[0] 
       (.C(aclk_ctrl),
        .CE(\cmd_stall[4]_i_1_n_0 ),
        .D(\cmd_stall[0]_i_1_n_0 ),
        .Q(cmd_stall[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_stall_reg[1] 
       (.C(aclk_ctrl),
        .CE(\cmd_stall[4]_i_1_n_0 ),
        .D(\cmd_stall[1]_i_1_n_0 ),
        .Q(cmd_stall[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_stall_reg[2] 
       (.C(aclk_ctrl),
        .CE(\cmd_stall[4]_i_1_n_0 ),
        .D(\cmd_stall[2]_i_1_n_0 ),
        .Q(cmd_stall[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_stall_reg[3] 
       (.C(aclk_ctrl),
        .CE(\cmd_stall[4]_i_1_n_0 ),
        .D(\cmd_stall[3]_i_1_n_0 ),
        .Q(cmd_stall[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_stall_reg[4] 
       (.C(aclk_ctrl),
        .CE(\cmd_stall[4]_i_1_n_0 ),
        .D(\cmd_stall[4]_i_2_n_0 ),
        .Q(cmd_stall[4]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \done_ref_aclk_d[0]_i_1 
       (.I0(done_ref_aclk_d_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \done_ref_aclk_d[1]_i_1 
       (.I0(done_ref_aclk_d_reg[0]),
        .I1(done_ref_aclk_d_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \done_ref_aclk_d[2]_i_1 
       (.I0(done_ref_aclk_d_reg[1]),
        .I1(done_ref_aclk_d_reg[0]),
        .I2(done_ref_aclk_d_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \done_ref_aclk_d[3]_i_1 
       (.I0(done_ref_aclk_d_reg[2]),
        .I1(done_ref_aclk_d_reg[0]),
        .I2(done_ref_aclk_d_reg[1]),
        .I3(done_ref_aclk_d_reg[3]),
        .O(p_0_in__0[3]));
  LUT2 #(
    .INIT(4'h7)) 
    \done_ref_aclk_d[4]_i_1 
       (.I0(aresetn_ctrl),
        .I1(done_ref_aclk),
        .O(\done_ref_aclk_d[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \done_ref_aclk_d[4]_i_2 
       (.I0(done_ref_aclk_d_reg[3]),
        .I1(done_ref_aclk_d_reg[1]),
        .I2(done_ref_aclk_d_reg[0]),
        .I3(done_ref_aclk_d_reg[2]),
        .I4(done_ref_aclk_d_reg[4]),
        .O(\done_ref_aclk_d[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \done_ref_aclk_d[4]_i_3 
       (.I0(done_ref_aclk_d_reg[3]),
        .I1(done_ref_aclk_d_reg[1]),
        .I2(done_ref_aclk_d_reg[0]),
        .I3(done_ref_aclk_d_reg[2]),
        .I4(done_ref_aclk_d_reg[4]),
        .O(p_0_in__0[4]));
  FDRE \done_ref_aclk_d_reg[0] 
       (.C(aclk_ctrl),
        .CE(\done_ref_aclk_d[4]_i_2_n_0 ),
        .D(p_0_in__0[0]),
        .Q(done_ref_aclk_d_reg[0]),
        .R(\done_ref_aclk_d[4]_i_1_n_0 ));
  FDRE \done_ref_aclk_d_reg[1] 
       (.C(aclk_ctrl),
        .CE(\done_ref_aclk_d[4]_i_2_n_0 ),
        .D(p_0_in__0[1]),
        .Q(done_ref_aclk_d_reg[1]),
        .R(\done_ref_aclk_d[4]_i_1_n_0 ));
  FDRE \done_ref_aclk_d_reg[2] 
       (.C(aclk_ctrl),
        .CE(\done_ref_aclk_d[4]_i_2_n_0 ),
        .D(p_0_in__0[2]),
        .Q(done_ref_aclk_d_reg[2]),
        .R(\done_ref_aclk_d[4]_i_1_n_0 ));
  FDRE \done_ref_aclk_d_reg[3] 
       (.C(aclk_ctrl),
        .CE(\done_ref_aclk_d[4]_i_2_n_0 ),
        .D(p_0_in__0[3]),
        .Q(done_ref_aclk_d_reg[3]),
        .R(\done_ref_aclk_d[4]_i_1_n_0 ));
  FDRE \done_ref_aclk_d_reg[4] 
       (.C(aclk_ctrl),
        .CE(\done_ref_aclk_d[4]_i_2_n_0 ),
        .D(p_0_in__0[4]),
        .Q(done_ref_aclk_d_reg[4]),
        .R(\done_ref_aclk_d[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hC4)) 
    done_test_aclk_i_1
       (.I0(\done_ref_aclk_d[4]_i_2_n_0 ),
        .I1(done_ref_aclk),
        .I2(done_test_aclk_reg_n_0),
        .O(done_test_aclk_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    done_test_aclk_reg
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(done_test_aclk_i_1_n_0),
        .Q(done_test_aclk_reg_n_0),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    ext_tog_ctrl_enable_sw_reg
       (.C(aclk_ctrl),
        .CE(request_ack),
        .D(s_axi_ctrl_mgmt_wdata[24]),
        .Q(p_6_in[24]),
        .R(clear));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_ucc_v1_0_0_frequency_counter__parameterized0 frequency_counter_aclk
       (.aclk_ctrl(aclk_ctrl),
        .aclk_freerun(aclk_freerun),
        .aclk_pcie(aclk_pcie),
        .dest_arst(user_rst_aclk_fr),
        .\rst_cnt_reg[0]_0 (aresetn_aclk_freerun),
        .src_in({done_ref_aclk_fr,ref_clk_cntr_i_reg,frequency_counter_aclk_n_17,\test_clk_cntr_synced_i[0]_2 ,frequency_counter_aclk_n_41,\test_clk_cntr_synced_i[1]_1 }));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00AA0CCC)) 
    gapping_demand_pending_i_1
       (.I0(s_axi_ctrl_mgmt_awready_i0),
        .I1(gapping_demand_pending),
        .I2(s_axi_ctrl_mgmt_bready),
        .I3(s_axi_ctrl_mgmt_bvalid),
        .I4(request_ack),
        .O(gapping_demand_pending_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gapping_demand_pending_reg
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(gapping_demand_pending_i_1_n_0),
        .Q(gapping_demand_pending),
        .R(clear));
  FDSE #(
    .INIT(1'b1)) 
    \gapping_demand_reg[0] 
       (.C(aclk_ctrl),
        .CE(request_ack),
        .D(s_axi_ctrl_mgmt_wdata[0]),
        .Q(p_6_in[0]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \gapping_demand_reg[1] 
       (.C(aclk_ctrl),
        .CE(request_ack),
        .D(s_axi_ctrl_mgmt_wdata[1]),
        .Q(p_6_in[1]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \gapping_demand_reg[2] 
       (.C(aclk_ctrl),
        .CE(request_ack),
        .D(s_axi_ctrl_mgmt_wdata[2]),
        .Q(p_6_in[2]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \gapping_demand_reg[3] 
       (.C(aclk_ctrl),
        .CE(request_ack),
        .D(s_axi_ctrl_mgmt_wdata[3]),
        .Q(p_6_in[3]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \gapping_demand_reg[4] 
       (.C(aclk_ctrl),
        .CE(request_ack),
        .D(s_axi_ctrl_mgmt_wdata[4]),
        .Q(p_6_in[4]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \gapping_demand_reg[5] 
       (.C(aclk_ctrl),
        .CE(request_ack),
        .D(s_axi_ctrl_mgmt_wdata[5]),
        .Q(p_6_in[5]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \gapping_demand_reg[6] 
       (.C(aclk_ctrl),
        .CE(request_ack),
        .D(s_axi_ctrl_mgmt_wdata[6]),
        .Q(p_6_in[6]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \gapping_demand_reg[7] 
       (.C(aclk_ctrl),
        .CE(request_ack),
        .D(s_axi_ctrl_mgmt_wdata[7]),
        .Q(p_6_in[7]),
        .S(clear));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    gapping_demand_toggle_i_1
       (.I0(gapping_demand_pending),
        .I1(s_axi_ctrl_mgmt_bready),
        .I2(s_axi_ctrl_mgmt_bvalid),
        .I3(gapping_demand_toggle_reg_n_0),
        .O(gapping_demand_toggle_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gapping_demand_toggle_reg
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(gapping_demand_toggle_i_1_n_0),
        .Q(gapping_demand_toggle_reg_n_0),
        .R(clear));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_ucc_v1_0_0_aclk_kernel__xdcDup__1 \genblk1[0].aclk_kernel_inst 
       (.CLK(aclk_ext_tog_kernel_00),
        .aclk_kernel_00(aclk_kernel_00),
        .aclk_kernel_cont_00(aclk_kernel_cont_00),
        .aresetn_ctrl(aresetn_ctrl),
        .\arststages_ff_reg[0] (p_4_in),
        .clk_in_kernel_00(clk_in_kernel_00),
        .ext_tog_ctrl_kernel_00_enable(ext_tog_ctrl_kernel_00_enable),
        .ext_tog_ctrl_kernel_00_in(ext_tog_ctrl_kernel_00_in),
        .ext_tog_ctrl_kernel_00_out(ext_tog_ctrl_kernel_00_out),
        .p_6_in({p_6_in[24],p_6_in[7:0]}),
        .power_down_out_d1(\clock_throttling_aclk_kernel_00/power_down_out_d1 ),
        .rst_async_kernel_00(rst_async_kernel_00),
        .shutdown_latch(shutdown_latch),
        .src_arst(\clock_throttling_aclk_kernel_00/Locked_gated_0 ),
        .src_in(request_latch),
        .\syncstages_ff_reg[0] (gapping_demand_toggle_reg_n_0));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "97" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized2__2 \genblk1[0].cdc_freq_cntr_kernel 
       (.dest_clk(aclk_ctrl),
        .dest_out({done_ref_kernel_0,ref_cntr_kernel[31:0],test_cntr0_kernel[31:0],test_cntr1_kernel[31:0]}),
        .src_clk(1'b0),
        .src_in({done_ref_i,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ref_clk_cntr_i_reg_5,test_clk_cntr_synced_01,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\test_clk_cntr_synced_i[0]_4 ,test_clk_cntr_synced_11,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\test_clk_cntr_synced_i[1]_3 }));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__parameterized1__4 \genblk1[0].cdc_user_rst_kernel 
       (.dest_arst(user_rst_kernel_fr_0),
        .dest_clk(aclk_freerun),
        .src_arst(\user_rst_kernel_reg_n_0_[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    \genblk1[0].done_ref_kernel_d[0]_i_1 
       (.I0(\genblk1[0].done_ref_kernel_d_reg [0]),
        .O(p_2_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \genblk1[0].done_ref_kernel_d[1]_i_1 
       (.I0(\genblk1[0].done_ref_kernel_d_reg [0]),
        .I1(\genblk1[0].done_ref_kernel_d_reg [1]),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \genblk1[0].done_ref_kernel_d[2]_i_1 
       (.I0(\genblk1[0].done_ref_kernel_d_reg [1]),
        .I1(\genblk1[0].done_ref_kernel_d_reg [0]),
        .I2(\genblk1[0].done_ref_kernel_d_reg [2]),
        .O(p_2_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \genblk1[0].done_ref_kernel_d[3]_i_1 
       (.I0(\genblk1[0].done_ref_kernel_d_reg [2]),
        .I1(\genblk1[0].done_ref_kernel_d_reg [0]),
        .I2(\genblk1[0].done_ref_kernel_d_reg [1]),
        .I3(\genblk1[0].done_ref_kernel_d_reg [3]),
        .O(p_2_in[3]));
  LUT2 #(
    .INIT(4'h7)) 
    \genblk1[0].done_ref_kernel_d[4]_i_1 
       (.I0(aresetn_ctrl),
        .I1(done_ref_kernel_0),
        .O(\genblk1[0].done_ref_kernel_d[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \genblk1[0].done_ref_kernel_d[4]_i_2 
       (.I0(\genblk1[0].done_ref_kernel_d_reg [3]),
        .I1(\genblk1[0].done_ref_kernel_d_reg [1]),
        .I2(\genblk1[0].done_ref_kernel_d_reg [0]),
        .I3(\genblk1[0].done_ref_kernel_d_reg [2]),
        .I4(\genblk1[0].done_ref_kernel_d_reg [4]),
        .O(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \genblk1[0].done_ref_kernel_d[4]_i_3 
       (.I0(\genblk1[0].done_ref_kernel_d_reg [3]),
        .I1(\genblk1[0].done_ref_kernel_d_reg [1]),
        .I2(\genblk1[0].done_ref_kernel_d_reg [0]),
        .I3(\genblk1[0].done_ref_kernel_d_reg [2]),
        .I4(\genblk1[0].done_ref_kernel_d_reg [4]),
        .O(p_2_in[4]));
  FDRE \genblk1[0].done_ref_kernel_d_reg[0] 
       (.C(aclk_ctrl),
        .CE(p_1_in),
        .D(p_2_in[0]),
        .Q(\genblk1[0].done_ref_kernel_d_reg [0]),
        .R(\genblk1[0].done_ref_kernel_d[4]_i_1_n_0 ));
  FDRE \genblk1[0].done_ref_kernel_d_reg[1] 
       (.C(aclk_ctrl),
        .CE(p_1_in),
        .D(p_2_in[1]),
        .Q(\genblk1[0].done_ref_kernel_d_reg [1]),
        .R(\genblk1[0].done_ref_kernel_d[4]_i_1_n_0 ));
  FDRE \genblk1[0].done_ref_kernel_d_reg[2] 
       (.C(aclk_ctrl),
        .CE(p_1_in),
        .D(p_2_in[2]),
        .Q(\genblk1[0].done_ref_kernel_d_reg [2]),
        .R(\genblk1[0].done_ref_kernel_d[4]_i_1_n_0 ));
  FDRE \genblk1[0].done_ref_kernel_d_reg[3] 
       (.C(aclk_ctrl),
        .CE(p_1_in),
        .D(p_2_in[3]),
        .Q(\genblk1[0].done_ref_kernel_d_reg [3]),
        .R(\genblk1[0].done_ref_kernel_d[4]_i_1_n_0 ));
  FDRE \genblk1[0].done_ref_kernel_d_reg[4] 
       (.C(aclk_ctrl),
        .CE(p_1_in),
        .D(p_2_in[4]),
        .Q(\genblk1[0].done_ref_kernel_d_reg [4]),
        .R(\genblk1[0].done_ref_kernel_d[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hC4)) 
    \genblk1[0].done_test_kernel[0]_i_1 
       (.I0(p_1_in),
        .I1(done_ref_kernel_0),
        .I2(\genblk1[0].done_test_kernel_reg ),
        .O(\genblk1[0].done_test_kernel[0]_i_1_n_0 ));
  FDRE \genblk1[0].done_test_kernel_reg[0] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\genblk1[0].done_test_kernel[0]_i_1_n_0 ),
        .Q(\genblk1[0].done_test_kernel_reg ),
        .R(clear));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_ucc_v1_0_0_frequency_counter__xdcDup__1 \genblk1[0].frequency_counter_kernel_inst 
       (.aclk_freerun(aclk_freerun),
        .aclk_kernel_00(aclk_kernel_00),
        .aclk_kernel_cont_00(aclk_kernel_cont_00),
        .dest_arst(user_rst_kernel_fr_0),
        .\rst_cnt_reg[0]_0 (aresetn_aclk_freerun),
        .src_in({done_ref_i,ref_clk_cntr_i_reg_5,test_clk_cntr_synced_01,\test_clk_cntr_synced_i[0]_4 ,test_clk_cntr_synced_11,\test_clk_cntr_synced_i[1]_3 }));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_ucc_v1_0_0_aclk_kernel \genblk1[1].aclk_kernel_inst 
       (.CLK(aclk_ext_tog_kernel_01),
        .aclk_kernel_01(aclk_kernel_01),
        .aclk_kernel_cont_01(aclk_kernel_cont_01),
        .aresetn_ctrl(aresetn_ctrl),
        .\arststages_ff_reg[0] (\clock_throttling_aclk_kernel_00/Locked_gated ),
        .\arststages_ff_reg[0]_0 (p_4_in),
        .clk_in_kernel_01(clk_in_kernel_01),
        .ext_tog_ctrl_kernel_01_enable(ext_tog_ctrl_kernel_01_enable),
        .ext_tog_ctrl_kernel_01_in(ext_tog_ctrl_kernel_01_in),
        .ext_tog_ctrl_kernel_01_out(ext_tog_ctrl_kernel_01_out),
        .p_6_in({p_6_in[24],p_6_in[7:0]}),
        .power_down_out_d1(\clock_throttling_aclk_kernel_00/power_down_out_d1_6 ),
        .rst_async_kernel_01(rst_async_kernel_01),
        .shutdown_latch(shutdown_latch),
        .src_in(request_latch),
        .\syncstages_ff_reg[0] (gapping_demand_toggle_reg_n_0));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "97" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized2 \genblk1[1].cdc_freq_cntr_kernel 
       (.dest_clk(aclk_ctrl),
        .dest_out({done_ref_kernel_1,ref_cntr_kernel[63:32],test_cntr0_kernel[63:32],test_cntr1_kernel[63:32]}),
        .src_clk(1'b0),
        .src_in({done_ref_kernel_fr_1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ref_clk_cntr_i_reg_9,\genblk1[1].frequency_counter_kernel_inst_n_17 ,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\test_clk_cntr_synced_i[0]_8 ,\genblk1[1].frequency_counter_kernel_inst_n_41 ,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\test_clk_cntr_synced_i[1]_7 }));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__parameterized1__7 \genblk1[1].cdc_user_rst_kernel 
       (.dest_arst(user_rst_kernel_fr_1),
        .dest_clk(aclk_freerun),
        .src_arst(\user_rst_kernel_reg_n_0_[1] ));
  LUT1 #(
    .INIT(2'h1)) 
    \genblk1[1].done_ref_kernel_d[5]_i_1 
       (.I0(\genblk1[1].done_ref_kernel_d_reg [5]),
        .O(p_2_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \genblk1[1].done_ref_kernel_d[6]_i_1 
       (.I0(\genblk1[1].done_ref_kernel_d_reg [5]),
        .I1(\genblk1[1].done_ref_kernel_d_reg [6]),
        .O(p_2_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \genblk1[1].done_ref_kernel_d[7]_i_1 
       (.I0(\genblk1[1].done_ref_kernel_d_reg [6]),
        .I1(\genblk1[1].done_ref_kernel_d_reg [5]),
        .I2(\genblk1[1].done_ref_kernel_d_reg [7]),
        .O(p_2_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \genblk1[1].done_ref_kernel_d[8]_i_1 
       (.I0(\genblk1[1].done_ref_kernel_d_reg [7]),
        .I1(\genblk1[1].done_ref_kernel_d_reg [5]),
        .I2(\genblk1[1].done_ref_kernel_d_reg [6]),
        .I3(\genblk1[1].done_ref_kernel_d_reg [8]),
        .O(p_2_in__0[3]));
  LUT2 #(
    .INIT(4'h7)) 
    \genblk1[1].done_ref_kernel_d[9]_i_1 
       (.I0(aresetn_ctrl),
        .I1(done_ref_kernel_1),
        .O(\genblk1[1].done_ref_kernel_d[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \genblk1[1].done_ref_kernel_d[9]_i_2 
       (.I0(\genblk1[1].done_ref_kernel_d_reg [8]),
        .I1(\genblk1[1].done_ref_kernel_d_reg [6]),
        .I2(\genblk1[1].done_ref_kernel_d_reg [5]),
        .I3(\genblk1[1].done_ref_kernel_d_reg [7]),
        .I4(\genblk1[1].done_ref_kernel_d_reg [9]),
        .O(\genblk1[1].done_ref_kernel_d[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \genblk1[1].done_ref_kernel_d[9]_i_3 
       (.I0(\genblk1[1].done_ref_kernel_d_reg [8]),
        .I1(\genblk1[1].done_ref_kernel_d_reg [6]),
        .I2(\genblk1[1].done_ref_kernel_d_reg [5]),
        .I3(\genblk1[1].done_ref_kernel_d_reg [7]),
        .I4(\genblk1[1].done_ref_kernel_d_reg [9]),
        .O(p_2_in__0[4]));
  FDRE \genblk1[1].done_ref_kernel_d_reg[5] 
       (.C(aclk_ctrl),
        .CE(\genblk1[1].done_ref_kernel_d[9]_i_2_n_0 ),
        .D(p_2_in__0[0]),
        .Q(\genblk1[1].done_ref_kernel_d_reg [5]),
        .R(\genblk1[1].done_ref_kernel_d[9]_i_1_n_0 ));
  FDRE \genblk1[1].done_ref_kernel_d_reg[6] 
       (.C(aclk_ctrl),
        .CE(\genblk1[1].done_ref_kernel_d[9]_i_2_n_0 ),
        .D(p_2_in__0[1]),
        .Q(\genblk1[1].done_ref_kernel_d_reg [6]),
        .R(\genblk1[1].done_ref_kernel_d[9]_i_1_n_0 ));
  FDRE \genblk1[1].done_ref_kernel_d_reg[7] 
       (.C(aclk_ctrl),
        .CE(\genblk1[1].done_ref_kernel_d[9]_i_2_n_0 ),
        .D(p_2_in__0[2]),
        .Q(\genblk1[1].done_ref_kernel_d_reg [7]),
        .R(\genblk1[1].done_ref_kernel_d[9]_i_1_n_0 ));
  FDRE \genblk1[1].done_ref_kernel_d_reg[8] 
       (.C(aclk_ctrl),
        .CE(\genblk1[1].done_ref_kernel_d[9]_i_2_n_0 ),
        .D(p_2_in__0[3]),
        .Q(\genblk1[1].done_ref_kernel_d_reg [8]),
        .R(\genblk1[1].done_ref_kernel_d[9]_i_1_n_0 ));
  FDRE \genblk1[1].done_ref_kernel_d_reg[9] 
       (.C(aclk_ctrl),
        .CE(\genblk1[1].done_ref_kernel_d[9]_i_2_n_0 ),
        .D(p_2_in__0[4]),
        .Q(\genblk1[1].done_ref_kernel_d_reg [9]),
        .R(\genblk1[1].done_ref_kernel_d[9]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hC4)) 
    \genblk1[1].done_test_kernel[1]_i_1 
       (.I0(\genblk1[1].done_ref_kernel_d[9]_i_2_n_0 ),
        .I1(done_ref_kernel_1),
        .I2(\genblk1[1].done_test_kernel_reg ),
        .O(\genblk1[1].done_test_kernel[1]_i_1_n_0 ));
  FDRE \genblk1[1].done_test_kernel_reg[1] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\genblk1[1].done_test_kernel[1]_i_1_n_0 ),
        .Q(\genblk1[1].done_test_kernel_reg ),
        .R(clear));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_ucc_v1_0_0_frequency_counter \genblk1[1].frequency_counter_kernel_inst 
       (.aclk_freerun(aclk_freerun),
        .aclk_kernel_01(aclk_kernel_01),
        .aclk_kernel_cont_01(aclk_kernel_cont_01),
        .dest_arst(user_rst_kernel_fr_1),
        .\rst_cnt_reg[0]_0 (aresetn_aclk_freerun),
        .src_in({done_ref_kernel_fr_1,ref_clk_cntr_i_reg_9,\genblk1[1].frequency_counter_kernel_inst_n_17 ,\test_clk_cntr_synced_i[0]_8 ,\genblk1[1].frequency_counter_kernel_inst_n_41 ,\test_clk_cntr_synced_i[1]_7 }));
  (* DEF_VAL = "1'b1" *) 
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b0" *) 
  (* RST_ACTIVE_HIGH = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__parameterized2 psreset_aclk_freerun
       (.dest_arst(aresetn_aclk_freerun),
        .dest_clk(aclk_freerun),
        .src_arst(aresetn_ctrl));
  LUT4 #(
    .INIT(16'h0100)) 
    request_ack_i_1
       (.I0(s_axi_ctrl_mgmt_awaddr[12]),
        .I1(request_ack_i_2_n_0),
        .I2(\Request_SW[15]_i_4_n_0 ),
        .I3(\Request_SW[15]_i_5_n_0 ),
        .O(request_ack));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    request_ack_i_2
       (.I0(s_axi_ctrl_mgmt_awaddr[8]),
        .I1(s_axi_ctrl_mgmt_awaddr[9]),
        .I2(s_axi_ctrl_mgmt_awaddr[2]),
        .I3(\Request_SW[15]_i_2_n_0 ),
        .I4(s_axi_ctrl_mgmt_awaddr[3]),
        .O(request_ack_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    request_ack_reg
       (.C(aclk_ctrl),
        .CE(request_ack),
        .D(s_axi_ctrl_mgmt_wdata[16]),
        .Q(request_ack_reg_n_0),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hDD02)) 
    s_axi_ctrl_mgmt_arready_i_i_2
       (.I0(s_axi_ctrl_mgmt_arvalid),
        .I1(s_axi_ctrl_mgmt_rvalid),
        .I2(s_axi_ctrl_mgmt_arready_i_i_3_n_0),
        .I3(s_axi_ctrl_mgmt_arready),
        .O(s_axi_ctrl_mgmt_arready_i_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    s_axi_ctrl_mgmt_arready_i_i_3
       (.I0(p_0_in0),
        .I1(\user_rst_d_reg_n_0_[1] ),
        .I2(\user_rst_d_reg_n_0_[0] ),
        .I3(\user_rst_d_reg_n_0_[2] ),
        .I4(\user_rst_d_reg_n_0_[4] ),
        .O(s_axi_ctrl_mgmt_arready_i_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_ctrl_mgmt_arready_i_reg
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(s_axi_ctrl_mgmt_arready_i_i_2_n_0),
        .Q(s_axi_ctrl_mgmt_arready),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h9AAA8AAA)) 
    s_axi_ctrl_mgmt_awready_i_i_1
       (.I0(s_axi_ctrl_mgmt_awready),
        .I1(s_axi_ctrl_mgmt_bvalid),
        .I2(s_axi_ctrl_mgmt_awvalid),
        .I3(s_axi_ctrl_mgmt_wvalid),
        .I4(s_axi_ctrl_mgmt_awready_i0),
        .O(s_axi_ctrl_mgmt_awready_i_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    s_axi_ctrl_mgmt_awready_i_i_2
       (.I0(cmd_stall[3]),
        .I1(cmd_stall[1]),
        .I2(cmd_stall[0]),
        .I3(cmd_stall[2]),
        .I4(cmd_stall[4]),
        .O(s_axi_ctrl_mgmt_awready_i0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_ctrl_mgmt_awready_i_reg
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(s_axi_ctrl_mgmt_awready_i_i_1_n_0),
        .Q(s_axi_ctrl_mgmt_awready),
        .R(clear));
  LUT5 #(
    .INIT(32'h74444444)) 
    s_axi_ctrl_mgmt_bvalid_i_i_1
       (.I0(s_axi_ctrl_mgmt_bready),
        .I1(s_axi_ctrl_mgmt_bvalid),
        .I2(s_axi_ctrl_mgmt_awvalid),
        .I3(s_axi_ctrl_mgmt_wvalid),
        .I4(s_axi_ctrl_mgmt_awready),
        .O(s_axi_ctrl_mgmt_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_ctrl_mgmt_bvalid_i_reg
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(s_axi_ctrl_mgmt_bvalid_i_i_1_n_0),
        .Q(s_axi_ctrl_mgmt_bvalid),
        .R(clear));
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[0]_i_2 
       (.I0(p_4_in),
        .I1(\s_axi_ctrl_mgmt_rdata_i[19]_i_7_n_0 ),
        .I2(\s_axi_ctrl_mgmt_rdata_i[0]_i_5_n_0 ),
        .I3(\s_axi_ctrl_mgmt_rdata_i[24]_i_3_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_ctrl_mgmt_rdata_i[0]_i_4 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[19]_i_4_n_0 ),
        .I1(ref_cntr_aclk[0]),
        .I2(\s_axi_ctrl_mgmt_rdata_i[31]_i_11_n_0 ),
        .I3(ref_cntr_kernel[0]),
        .I4(\s_axi_ctrl_mgmt_rdata_i[0]_i_8_n_0 ),
        .I5(\s_axi_ctrl_mgmt_rdata_i[0]_i_9_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \s_axi_ctrl_mgmt_rdata_i[0]_i_5 
       (.I0(test_cntr0_aclk[0]),
        .I1(s_axi_ctrl_mgmt_araddr[15]),
        .I2(\s_axi_ctrl_mgmt_rdata_i[24]_i_6_n_0 ),
        .I3(test_cntr0_kernel[0]),
        .I4(test_cntr0_kernel[32]),
        .I5(\s_axi_ctrl_mgmt_rdata_i[24]_i_7_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1F1F1F0F0F0F1F0F)) 
    \s_axi_ctrl_mgmt_rdata_i[0]_i_6 
       (.I0(s_axi_ctrl_mgmt_araddr[14]),
        .I1(s_axi_ctrl_mgmt_araddr[13]),
        .I2(s_axi_ctrl_mgmt_araddr[15]),
        .I3(\user_rst_kernel_reg_n_0_[0] ),
        .I4(s_axi_ctrl_mgmt_araddr[12]),
        .I5(\user_rst_kernel_reg_n_0_[1] ),
        .O(\s_axi_ctrl_mgmt_rdata_i[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \s_axi_ctrl_mgmt_rdata_i[0]_i_8 
       (.I0(cdc_freq_cntr_aclk_n_96),
        .I1(s_axi_ctrl_mgmt_araddr[15]),
        .I2(\s_axi_ctrl_mgmt_rdata_i[24]_i_6_n_0 ),
        .I3(test_cntr1_kernel[0]),
        .I4(test_cntr1_kernel[32]),
        .I5(\s_axi_ctrl_mgmt_rdata_i[24]_i_7_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_ctrl_mgmt_rdata_i[0]_i_9 
       (.I0(s_axi_ctrl_mgmt_araddr[2]),
        .I1(s_axi_ctrl_mgmt_araddr[4]),
        .O(\s_axi_ctrl_mgmt_rdata_i[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_axi_ctrl_mgmt_rdata_i[10]_i_1 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[10]_i_2_n_0 ),
        .I1(\s_axi_ctrl_mgmt_rdata_i[10]_i_3_n_0 ),
        .I2(\s_axi_ctrl_mgmt_rdata_i[10]_i_4_n_0 ),
        .I3(\s_axi_ctrl_mgmt_rdata_i[10]_i_5_n_0 ),
        .I4(\s_axi_ctrl_mgmt_rdata_i[10]_i_6_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[10]_i_2 
       (.I0(test_cntr1_kernel[42]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[22]_i_3_n_0 ),
        .I2(test_cntr1_kernel[10]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_8_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0C0000)) 
    \s_axi_ctrl_mgmt_rdata_i[10]_i_3 
       (.I0(cdc_freq_cntr_aclk_n_86),
        .I1(test_cntr0_aclk[10]),
        .I2(s_axi_ctrl_mgmt_araddr[15]),
        .I3(s_axi_ctrl_mgmt_araddr[2]),
        .I4(s_axi_ctrl_mgmt_araddr[4]),
        .O(\s_axi_ctrl_mgmt_rdata_i[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF002000200020)) 
    \s_axi_ctrl_mgmt_rdata_i[10]_i_4 
       (.I0(ref_cntr_aclk[10]),
        .I1(s_axi_ctrl_mgmt_araddr[15]),
        .I2(s_axi_ctrl_mgmt_araddr[2]),
        .I3(s_axi_ctrl_mgmt_araddr[4]),
        .I4(\Request_SW_reg_n_0_[6] ),
        .I5(\s_axi_ctrl_mgmt_rdata_i[15]_i_7_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[10]_i_5 
       (.I0(ref_cntr_kernel[42]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[31]_i_7_n_0 ),
        .I2(ref_cntr_kernel[10]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_11_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF888F888F8880000)) 
    \s_axi_ctrl_mgmt_rdata_i[10]_i_6 
       (.I0(test_cntr0_kernel[42]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[22]_i_4_n_0 ),
        .I2(test_cntr0_kernel[10]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[21]_i_4_n_0 ),
        .I4(s_axi_ctrl_mgmt_araddr[4]),
        .I5(s_axi_ctrl_mgmt_araddr[3]),
        .O(\s_axi_ctrl_mgmt_rdata_i[10]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_axi_ctrl_mgmt_rdata_i[11]_i_1 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[11]_i_2_n_0 ),
        .I1(\s_axi_ctrl_mgmt_rdata_i[11]_i_3_n_0 ),
        .I2(\s_axi_ctrl_mgmt_rdata_i[11]_i_4_n_0 ),
        .I3(\s_axi_ctrl_mgmt_rdata_i[11]_i_5_n_0 ),
        .I4(\s_axi_ctrl_mgmt_rdata_i[11]_i_6_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[11]_i_2 
       (.I0(test_cntr1_kernel[43]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[22]_i_3_n_0 ),
        .I2(test_cntr1_kernel[11]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_8_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0C0000)) 
    \s_axi_ctrl_mgmt_rdata_i[11]_i_3 
       (.I0(cdc_freq_cntr_aclk_n_85),
        .I1(test_cntr0_aclk[11]),
        .I2(s_axi_ctrl_mgmt_araddr[15]),
        .I3(s_axi_ctrl_mgmt_araddr[2]),
        .I4(s_axi_ctrl_mgmt_araddr[4]),
        .O(\s_axi_ctrl_mgmt_rdata_i[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF002000200020)) 
    \s_axi_ctrl_mgmt_rdata_i[11]_i_4 
       (.I0(ref_cntr_aclk[11]),
        .I1(s_axi_ctrl_mgmt_araddr[15]),
        .I2(s_axi_ctrl_mgmt_araddr[2]),
        .I3(s_axi_ctrl_mgmt_araddr[4]),
        .I4(\Request_SW_reg_n_0_[7] ),
        .I5(\s_axi_ctrl_mgmt_rdata_i[15]_i_7_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[11]_i_5 
       (.I0(ref_cntr_kernel[43]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[31]_i_7_n_0 ),
        .I2(ref_cntr_kernel[11]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_11_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF888F888F8880000)) 
    \s_axi_ctrl_mgmt_rdata_i[11]_i_6 
       (.I0(test_cntr0_kernel[43]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[22]_i_4_n_0 ),
        .I2(test_cntr0_kernel[11]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[21]_i_4_n_0 ),
        .I4(s_axi_ctrl_mgmt_araddr[4]),
        .I5(s_axi_ctrl_mgmt_araddr[3]),
        .O(\s_axi_ctrl_mgmt_rdata_i[11]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_axi_ctrl_mgmt_rdata_i[12]_i_1 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[12]_i_2_n_0 ),
        .I1(\s_axi_ctrl_mgmt_rdata_i[12]_i_3_n_0 ),
        .I2(\s_axi_ctrl_mgmt_rdata_i[12]_i_4_n_0 ),
        .I3(\s_axi_ctrl_mgmt_rdata_i[12]_i_5_n_0 ),
        .I4(\s_axi_ctrl_mgmt_rdata_i[12]_i_6_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[12]_i_2 
       (.I0(test_cntr1_kernel[44]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[22]_i_3_n_0 ),
        .I2(test_cntr1_kernel[12]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_8_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0C0000)) 
    \s_axi_ctrl_mgmt_rdata_i[12]_i_3 
       (.I0(cdc_freq_cntr_aclk_n_84),
        .I1(test_cntr0_aclk[12]),
        .I2(s_axi_ctrl_mgmt_araddr[15]),
        .I3(s_axi_ctrl_mgmt_araddr[2]),
        .I4(s_axi_ctrl_mgmt_araddr[4]),
        .O(\s_axi_ctrl_mgmt_rdata_i[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF002000200020)) 
    \s_axi_ctrl_mgmt_rdata_i[12]_i_4 
       (.I0(ref_cntr_aclk[12]),
        .I1(s_axi_ctrl_mgmt_araddr[15]),
        .I2(s_axi_ctrl_mgmt_araddr[2]),
        .I3(s_axi_ctrl_mgmt_araddr[4]),
        .I4(\Request_SW_reg_n_0_[8] ),
        .I5(\s_axi_ctrl_mgmt_rdata_i[15]_i_7_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[12]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[12]_i_5 
       (.I0(ref_cntr_kernel[44]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[31]_i_7_n_0 ),
        .I2(ref_cntr_kernel[12]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_11_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF888F888F8880000)) 
    \s_axi_ctrl_mgmt_rdata_i[12]_i_6 
       (.I0(test_cntr0_kernel[44]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[22]_i_4_n_0 ),
        .I2(test_cntr0_kernel[12]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[21]_i_4_n_0 ),
        .I4(s_axi_ctrl_mgmt_araddr[4]),
        .I5(s_axi_ctrl_mgmt_araddr[3]),
        .O(\s_axi_ctrl_mgmt_rdata_i[12]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_axi_ctrl_mgmt_rdata_i[13]_i_1 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[13]_i_2_n_0 ),
        .I1(\s_axi_ctrl_mgmt_rdata_i[13]_i_3_n_0 ),
        .I2(\s_axi_ctrl_mgmt_rdata_i[13]_i_4_n_0 ),
        .I3(\s_axi_ctrl_mgmt_rdata_i[13]_i_5_n_0 ),
        .I4(\s_axi_ctrl_mgmt_rdata_i[13]_i_6_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[13]_i_2 
       (.I0(test_cntr1_kernel[45]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[22]_i_3_n_0 ),
        .I2(test_cntr1_kernel[13]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_8_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0C0000)) 
    \s_axi_ctrl_mgmt_rdata_i[13]_i_3 
       (.I0(cdc_freq_cntr_aclk_n_83),
        .I1(test_cntr0_aclk[13]),
        .I2(s_axi_ctrl_mgmt_araddr[15]),
        .I3(s_axi_ctrl_mgmt_araddr[2]),
        .I4(s_axi_ctrl_mgmt_araddr[4]),
        .O(\s_axi_ctrl_mgmt_rdata_i[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF002000200020)) 
    \s_axi_ctrl_mgmt_rdata_i[13]_i_4 
       (.I0(ref_cntr_aclk[13]),
        .I1(s_axi_ctrl_mgmt_araddr[15]),
        .I2(s_axi_ctrl_mgmt_araddr[2]),
        .I3(s_axi_ctrl_mgmt_araddr[4]),
        .I4(\Request_SW_reg_n_0_[9] ),
        .I5(\s_axi_ctrl_mgmt_rdata_i[15]_i_7_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[13]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[13]_i_5 
       (.I0(ref_cntr_kernel[45]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[31]_i_7_n_0 ),
        .I2(ref_cntr_kernel[13]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_11_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF888F888F8880000)) 
    \s_axi_ctrl_mgmt_rdata_i[13]_i_6 
       (.I0(test_cntr0_kernel[45]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[22]_i_4_n_0 ),
        .I2(test_cntr0_kernel[13]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[21]_i_4_n_0 ),
        .I4(s_axi_ctrl_mgmt_araddr[4]),
        .I5(s_axi_ctrl_mgmt_araddr[3]),
        .O(\s_axi_ctrl_mgmt_rdata_i[13]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_axi_ctrl_mgmt_rdata_i[14]_i_1 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[14]_i_2_n_0 ),
        .I1(\s_axi_ctrl_mgmt_rdata_i[14]_i_3_n_0 ),
        .I2(\s_axi_ctrl_mgmt_rdata_i[14]_i_4_n_0 ),
        .I3(\s_axi_ctrl_mgmt_rdata_i[14]_i_5_n_0 ),
        .I4(\s_axi_ctrl_mgmt_rdata_i[14]_i_6_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[14]_i_2 
       (.I0(test_cntr1_kernel[46]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[22]_i_3_n_0 ),
        .I2(test_cntr1_kernel[14]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_8_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h0A0C0000)) 
    \s_axi_ctrl_mgmt_rdata_i[14]_i_3 
       (.I0(cdc_freq_cntr_aclk_n_82),
        .I1(test_cntr0_aclk[14]),
        .I2(s_axi_ctrl_mgmt_araddr[15]),
        .I3(s_axi_ctrl_mgmt_araddr[2]),
        .I4(s_axi_ctrl_mgmt_araddr[4]),
        .O(\s_axi_ctrl_mgmt_rdata_i[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF002000200020)) 
    \s_axi_ctrl_mgmt_rdata_i[14]_i_4 
       (.I0(ref_cntr_aclk[14]),
        .I1(s_axi_ctrl_mgmt_araddr[15]),
        .I2(s_axi_ctrl_mgmt_araddr[2]),
        .I3(s_axi_ctrl_mgmt_araddr[4]),
        .I4(\Request_SW_reg_n_0_[10] ),
        .I5(\s_axi_ctrl_mgmt_rdata_i[15]_i_7_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[14]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[14]_i_5 
       (.I0(ref_cntr_kernel[46]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[31]_i_7_n_0 ),
        .I2(ref_cntr_kernel[14]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_11_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF888F888F8880000)) 
    \s_axi_ctrl_mgmt_rdata_i[14]_i_6 
       (.I0(test_cntr0_kernel[46]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[22]_i_4_n_0 ),
        .I2(test_cntr0_kernel[14]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[21]_i_4_n_0 ),
        .I4(s_axi_ctrl_mgmt_araddr[4]),
        .I5(s_axi_ctrl_mgmt_araddr[3]),
        .O(\s_axi_ctrl_mgmt_rdata_i[14]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_axi_ctrl_mgmt_rdata_i[15]_i_1 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[15]_i_2_n_0 ),
        .I1(\s_axi_ctrl_mgmt_rdata_i[15]_i_3_n_0 ),
        .I2(\s_axi_ctrl_mgmt_rdata_i[15]_i_4_n_0 ),
        .I3(\s_axi_ctrl_mgmt_rdata_i[15]_i_5_n_0 ),
        .I4(\s_axi_ctrl_mgmt_rdata_i[15]_i_6_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[15]_i_2 
       (.I0(test_cntr1_kernel[47]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[22]_i_3_n_0 ),
        .I2(test_cntr1_kernel[15]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_8_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h0A0C0000)) 
    \s_axi_ctrl_mgmt_rdata_i[15]_i_3 
       (.I0(cdc_freq_cntr_aclk_n_81),
        .I1(test_cntr0_aclk[15]),
        .I2(s_axi_ctrl_mgmt_araddr[15]),
        .I3(s_axi_ctrl_mgmt_araddr[2]),
        .I4(s_axi_ctrl_mgmt_araddr[4]),
        .O(\s_axi_ctrl_mgmt_rdata_i[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF002000200020)) 
    \s_axi_ctrl_mgmt_rdata_i[15]_i_4 
       (.I0(ref_cntr_aclk[15]),
        .I1(s_axi_ctrl_mgmt_araddr[15]),
        .I2(s_axi_ctrl_mgmt_araddr[2]),
        .I3(s_axi_ctrl_mgmt_araddr[4]),
        .I4(\Request_SW_reg_n_0_[11] ),
        .I5(\s_axi_ctrl_mgmt_rdata_i[15]_i_7_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[15]_i_5 
       (.I0(ref_cntr_kernel[47]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[31]_i_7_n_0 ),
        .I2(ref_cntr_kernel[15]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_11_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF888F888F8880000)) 
    \s_axi_ctrl_mgmt_rdata_i[15]_i_6 
       (.I0(test_cntr0_kernel[47]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[22]_i_4_n_0 ),
        .I2(test_cntr0_kernel[15]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[21]_i_4_n_0 ),
        .I4(s_axi_ctrl_mgmt_araddr[4]),
        .I5(s_axi_ctrl_mgmt_araddr[3]),
        .O(\s_axi_ctrl_mgmt_rdata_i[15]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \s_axi_ctrl_mgmt_rdata_i[15]_i_7 
       (.I0(s_axi_ctrl_mgmt_araddr[12]),
        .I1(s_axi_ctrl_mgmt_araddr[3]),
        .I2(s_axi_ctrl_mgmt_araddr[4]),
        .I3(s_axi_ctrl_mgmt_araddr[2]),
        .O(\s_axi_ctrl_mgmt_rdata_i[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[16]_i_2 
       (.I0(test_cntr0_kernel[48]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[22]_i_4_n_0 ),
        .I2(test_cntr1_kernel[16]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_8_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \s_axi_ctrl_mgmt_rdata_i[16]_i_4 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[16]_i_7_n_0 ),
        .I1(\s_axi_ctrl_mgmt_rdata_i[21]_i_3_n_0 ),
        .I2(\s_axi_ctrl_mgmt_rdata_i[21]_i_4_n_0 ),
        .I3(test_cntr0_kernel[16]),
        .O(\s_axi_ctrl_mgmt_rdata_i[16]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hAABBAABA)) 
    \s_axi_ctrl_mgmt_rdata_i[16]_i_5 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[16]_i_8_n_0 ),
        .I1(s_axi_ctrl_mgmt_araddr[12]),
        .I2(request_ack_reg_n_0),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_10_n_0 ),
        .I4(s_axi_ctrl_mgmt_araddr[13]),
        .O(\s_axi_ctrl_mgmt_rdata_i[16]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[16]_i_7 
       (.I0(ref_cntr_kernel[48]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[31]_i_7_n_0 ),
        .I2(ref_cntr_kernel[16]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_11_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h020002000F000200)) 
    \s_axi_ctrl_mgmt_rdata_i[16]_i_8 
       (.I0(test_cntr0_aclk[16]),
        .I1(s_axi_ctrl_mgmt_araddr[2]),
        .I2(s_axi_ctrl_mgmt_araddr[12]),
        .I3(s_axi_ctrl_mgmt_araddr[13]),
        .I4(ref_cntr_aclk[16]),
        .I5(s_axi_ctrl_mgmt_araddr[4]),
        .O(\s_axi_ctrl_mgmt_rdata_i[16]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[17]_i_3 
       (.I0(test_cntr1_kernel[49]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[22]_i_3_n_0 ),
        .I2(test_cntr1_kernel[17]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_8_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[17]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hAA80)) 
    \s_axi_ctrl_mgmt_rdata_i[17]_i_4 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[24]_i_3_n_0 ),
        .I1(\s_axi_ctrl_mgmt_rdata_i[24]_i_7_n_0 ),
        .I2(test_cntr0_kernel[49]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[17]_i_6_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[17]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[17]_i_5 
       (.I0(ref_cntr_kernel[49]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[31]_i_7_n_0 ),
        .I2(ref_cntr_kernel[17]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_11_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \s_axi_ctrl_mgmt_rdata_i[17]_i_6 
       (.I0(test_cntr0_kernel[17]),
        .I1(s_axi_ctrl_mgmt_araddr[14]),
        .I2(s_axi_ctrl_mgmt_araddr[13]),
        .I3(s_axi_ctrl_mgmt_araddr[12]),
        .I4(s_axi_ctrl_mgmt_araddr[15]),
        .I5(test_cntr0_aclk[17]),
        .O(\s_axi_ctrl_mgmt_rdata_i[17]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[18]_i_2 
       (.I0(test_cntr0_kernel[50]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[22]_i_4_n_0 ),
        .I2(ref_cntr_kernel[50]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_7_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[18]_i_4 
       (.I0(test_cntr0_kernel[18]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[21]_i_4_n_0 ),
        .I2(ref_cntr_kernel[18]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_11_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF008000800080)) 
    \s_axi_ctrl_mgmt_rdata_i[18]_i_5 
       (.I0(s_axi_ctrl_mgmt_araddr[3]),
        .I1(s_axi_ctrl_mgmt_araddr[12]),
        .I2(\Request_SW_reg_n_0_[14] ),
        .I3(s_axi_ctrl_mgmt_araddr[15]),
        .I4(test_cntr1_kernel[18]),
        .I5(\s_axi_ctrl_mgmt_rdata_i[31]_i_8_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[18]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hCAFFCA0F)) 
    \s_axi_ctrl_mgmt_rdata_i[18]_i_6 
       (.I0(test_cntr0_aclk[18]),
        .I1(cdc_freq_cntr_aclk_n_78),
        .I2(s_axi_ctrl_mgmt_araddr[2]),
        .I3(s_axi_ctrl_mgmt_araddr[4]),
        .I4(ref_cntr_aclk[18]),
        .O(\s_axi_ctrl_mgmt_rdata_i[18]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[19]_i_3 
       (.I0(test_cntr1_kernel[51]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[22]_i_3_n_0 ),
        .I2(test_cntr1_kernel[19]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_8_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[19]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \s_axi_ctrl_mgmt_rdata_i[19]_i_4 
       (.I0(s_axi_ctrl_mgmt_araddr[15]),
        .I1(s_axi_ctrl_mgmt_araddr[2]),
        .I2(s_axi_ctrl_mgmt_araddr[4]),
        .O(\s_axi_ctrl_mgmt_rdata_i[19]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hAA80)) 
    \s_axi_ctrl_mgmt_rdata_i[19]_i_5 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[24]_i_3_n_0 ),
        .I1(\s_axi_ctrl_mgmt_rdata_i[24]_i_7_n_0 ),
        .I2(test_cntr0_kernel[51]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[19]_i_8_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[19]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[19]_i_6 
       (.I0(ref_cntr_kernel[51]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[31]_i_7_n_0 ),
        .I2(ref_cntr_kernel[19]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_11_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[19]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s_axi_ctrl_mgmt_rdata_i[19]_i_7 
       (.I0(s_axi_ctrl_mgmt_araddr[12]),
        .I1(s_axi_ctrl_mgmt_araddr[3]),
        .I2(s_axi_ctrl_mgmt_araddr[2]),
        .O(\s_axi_ctrl_mgmt_rdata_i[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \s_axi_ctrl_mgmt_rdata_i[19]_i_8 
       (.I0(test_cntr0_kernel[19]),
        .I1(s_axi_ctrl_mgmt_araddr[14]),
        .I2(s_axi_ctrl_mgmt_araddr[13]),
        .I3(s_axi_ctrl_mgmt_araddr[12]),
        .I4(s_axi_ctrl_mgmt_araddr[15]),
        .I5(test_cntr0_aclk[19]),
        .O(\s_axi_ctrl_mgmt_rdata_i[19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF08)) 
    \s_axi_ctrl_mgmt_rdata_i[1]_i_1 
       (.I0(test_cntr0_kernel[33]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[22]_i_4_n_0 ),
        .I2(s_axi_ctrl_mgmt_araddr[3]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[1]_i_2_n_0 ),
        .I4(\s_axi_ctrl_mgmt_rdata_i[1]_i_3_n_0 ),
        .I5(\s_axi_ctrl_mgmt_rdata_i[1]_i_4_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_ctrl_mgmt_rdata_i[1]_i_2 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[31]_i_11_n_0 ),
        .I1(ref_cntr_kernel[1]),
        .I2(\s_axi_ctrl_mgmt_rdata_i[22]_i_3_n_0 ),
        .I3(test_cntr1_kernel[33]),
        .I4(\s_axi_ctrl_mgmt_rdata_i[1]_i_5_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hAAEA)) 
    \s_axi_ctrl_mgmt_rdata_i[1]_i_3 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[1]_i_6_n_0 ),
        .I1(test_cntr0_kernel[1]),
        .I2(\s_axi_ctrl_mgmt_rdata_i[21]_i_4_n_0 ),
        .I3(s_axi_ctrl_mgmt_araddr[3]),
        .O(\s_axi_ctrl_mgmt_rdata_i[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[1]_i_4 
       (.I0(cdc_freq_cntr_aclk_n_95),
        .I1(\s_axi_ctrl_mgmt_rdata_i[3]_i_2_n_0 ),
        .I2(test_cntr1_kernel[1]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_8_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h888888F8)) 
    \s_axi_ctrl_mgmt_rdata_i[1]_i_5 
       (.I0(ref_cntr_kernel[33]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[31]_i_7_n_0 ),
        .I2(\s_axi_ctrl_mgmt_rdata_i[1]_i_7_n_0 ),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_10_n_0 ),
        .I4(s_axi_ctrl_mgmt_araddr[3]),
        .O(\s_axi_ctrl_mgmt_rdata_i[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000002200F00000)) 
    \s_axi_ctrl_mgmt_rdata_i[1]_i_6 
       (.I0(test_cntr0_aclk[1]),
        .I1(s_axi_ctrl_mgmt_araddr[3]),
        .I2(ref_cntr_aclk[1]),
        .I3(s_axi_ctrl_mgmt_araddr[15]),
        .I4(s_axi_ctrl_mgmt_araddr[2]),
        .I5(s_axi_ctrl_mgmt_araddr[4]),
        .O(\s_axi_ctrl_mgmt_rdata_i[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_ctrl_mgmt_rdata_i[1]_i_7 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[24]_i_6_n_0 ),
        .I1(\genblk1[0].done_test_kernel_reg ),
        .I2(\s_axi_ctrl_mgmt_rdata_i[24]_i_7_n_0 ),
        .I3(\genblk1[1].done_test_kernel_reg ),
        .I4(\s_axi_ctrl_mgmt_rdata_i[1]_i_8_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \s_axi_ctrl_mgmt_rdata_i[1]_i_8 
       (.I0(done_test_aclk_reg_n_0),
        .I1(s_axi_ctrl_mgmt_araddr[13]),
        .I2(s_axi_ctrl_mgmt_araddr[15]),
        .I3(p_6_in[1]),
        .I4(s_axi_ctrl_mgmt_araddr[12]),
        .O(\s_axi_ctrl_mgmt_rdata_i[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \s_axi_ctrl_mgmt_rdata_i[20]_i_2 
       (.I0(test_cntr0_aclk[20]),
        .I1(s_axi_ctrl_mgmt_araddr[15]),
        .I2(\s_axi_ctrl_mgmt_rdata_i[24]_i_6_n_0 ),
        .I3(test_cntr0_kernel[20]),
        .I4(test_cntr0_kernel[52]),
        .I5(\s_axi_ctrl_mgmt_rdata_i[24]_i_7_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_ctrl_mgmt_rdata_i[20]_i_4 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[31]_i_11_n_0 ),
        .I1(ref_cntr_kernel[20]),
        .I2(\s_axi_ctrl_mgmt_rdata_i[31]_i_7_n_0 ),
        .I3(ref_cntr_kernel[52]),
        .I4(\s_axi_ctrl_mgmt_rdata_i[20]_i_5_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[20]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \s_axi_ctrl_mgmt_rdata_i[20]_i_5 
       (.I0(cdc_freq_cntr_aclk_n_76),
        .I1(ref_cntr_aclk[20]),
        .I2(s_axi_ctrl_mgmt_araddr[15]),
        .I3(s_axi_ctrl_mgmt_araddr[2]),
        .I4(s_axi_ctrl_mgmt_araddr[4]),
        .O(\s_axi_ctrl_mgmt_rdata_i[20]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[21]_i_2 
       (.I0(ref_cntr_kernel[53]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[31]_i_7_n_0 ),
        .I2(ref_cntr_kernel[21]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_11_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \s_axi_ctrl_mgmt_rdata_i[21]_i_3 
       (.I0(s_axi_ctrl_mgmt_araddr[14]),
        .I1(s_axi_ctrl_mgmt_araddr[13]),
        .I2(s_axi_ctrl_mgmt_araddr[15]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_10_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \s_axi_ctrl_mgmt_rdata_i[21]_i_4 
       (.I0(s_axi_ctrl_mgmt_araddr[15]),
        .I1(s_axi_ctrl_mgmt_araddr[13]),
        .I2(s_axi_ctrl_mgmt_araddr[14]),
        .I3(s_axi_ctrl_mgmt_araddr[4]),
        .I4(s_axi_ctrl_mgmt_araddr[2]),
        .I5(s_axi_ctrl_mgmt_araddr[12]),
        .O(\s_axi_ctrl_mgmt_rdata_i[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3F3F0FFF5F5F0F0F)) 
    \s_axi_ctrl_mgmt_rdata_i[21]_i_7 
       (.I0(test_cntr0_aclk[21]),
        .I1(cdc_freq_cntr_aclk_n_75),
        .I2(s_axi_ctrl_mgmt_araddr[13]),
        .I3(ref_cntr_aclk[21]),
        .I4(s_axi_ctrl_mgmt_araddr[4]),
        .I5(s_axi_ctrl_mgmt_araddr[2]),
        .O(\s_axi_ctrl_mgmt_rdata_i[21]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h11110000FF1FFF0F)) 
    \s_axi_ctrl_mgmt_rdata_i[22]_i_2 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[31]_i_4_n_0 ),
        .I1(s_axi_ctrl_mgmt_araddr[9]),
        .I2(s_axi_ctrl_mgmt_arvalid),
        .I3(s_axi_ctrl_mgmt_rvalid),
        .I4(\s_axi_ctrl_mgmt_rdata_i[22]_i_6_n_0 ),
        .I5(s_axi_ctrl_mgmt_araddr[3]),
        .O(\s_axi_ctrl_mgmt_rdata_i[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \s_axi_ctrl_mgmt_rdata_i[22]_i_3 
       (.I0(s_axi_ctrl_mgmt_araddr[4]),
        .I1(s_axi_ctrl_mgmt_araddr[14]),
        .I2(s_axi_ctrl_mgmt_araddr[13]),
        .I3(s_axi_ctrl_mgmt_araddr[15]),
        .I4(s_axi_ctrl_mgmt_araddr[2]),
        .I5(s_axi_ctrl_mgmt_araddr[12]),
        .O(\s_axi_ctrl_mgmt_rdata_i[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \s_axi_ctrl_mgmt_rdata_i[22]_i_4 
       (.I0(s_axi_ctrl_mgmt_araddr[15]),
        .I1(s_axi_ctrl_mgmt_araddr[13]),
        .I2(s_axi_ctrl_mgmt_araddr[14]),
        .I3(s_axi_ctrl_mgmt_araddr[4]),
        .I4(s_axi_ctrl_mgmt_araddr[2]),
        .I5(s_axi_ctrl_mgmt_araddr[12]),
        .O(\s_axi_ctrl_mgmt_rdata_i[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000015151015)) 
    \s_axi_ctrl_mgmt_rdata_i[22]_i_6 
       (.I0(s_axi_ctrl_mgmt_araddr[3]),
        .I1(s_axi_ctrl_mgmt_araddr[12]),
        .I2(s_axi_ctrl_mgmt_araddr[13]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_10_n_0 ),
        .I4(s_axi_ctrl_mgmt_araddr[15]),
        .I5(s_axi_ctrl_mgmt_araddr[14]),
        .O(\s_axi_ctrl_mgmt_rdata_i[22]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[22]_i_7 
       (.I0(test_cntr0_kernel[22]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[21]_i_4_n_0 ),
        .I2(ref_cntr_kernel[22]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_11_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[22]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \s_axi_ctrl_mgmt_rdata_i[22]_i_9 
       (.I0(s_axi_ctrl_mgmt_araddr[13]),
        .I1(s_axi_ctrl_mgmt_araddr[12]),
        .I2(s_axi_ctrl_mgmt_araddr[15]),
        .O(\s_axi_ctrl_mgmt_rdata_i[22]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \s_axi_ctrl_mgmt_rdata_i[23]_i_2 
       (.I0(test_cntr1_kernel[55]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[22]_i_3_n_0 ),
        .I2(test_cntr0_kernel[55]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[22]_i_4_n_0 ),
        .I4(s_axi_ctrl_mgmt_araddr[3]),
        .O(\s_axi_ctrl_mgmt_rdata_i[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A000AC00)) 
    \s_axi_ctrl_mgmt_rdata_i[23]_i_3 
       (.I0(cdc_freq_cntr_aclk_n_73),
        .I1(test_cntr0_aclk[23]),
        .I2(s_axi_ctrl_mgmt_araddr[2]),
        .I3(s_axi_ctrl_mgmt_araddr[4]),
        .I4(s_axi_ctrl_mgmt_araddr[3]),
        .I5(s_axi_ctrl_mgmt_araddr[15]),
        .O(\s_axi_ctrl_mgmt_rdata_i[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF080808)) 
    \s_axi_ctrl_mgmt_rdata_i[23]_i_5 
       (.I0(test_cntr0_kernel[23]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[21]_i_4_n_0 ),
        .I2(s_axi_ctrl_mgmt_araddr[3]),
        .I3(ref_cntr_kernel[23]),
        .I4(\s_axi_ctrl_mgmt_rdata_i[31]_i_11_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[23]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[23]_i_6 
       (.I0(ref_cntr_kernel[55]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[31]_i_7_n_0 ),
        .I2(test_cntr1_kernel[23]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_8_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \s_axi_ctrl_mgmt_rdata_i[24]_i_2 
       (.I0(test_cntr0_aclk[24]),
        .I1(s_axi_ctrl_mgmt_araddr[15]),
        .I2(\s_axi_ctrl_mgmt_rdata_i[24]_i_6_n_0 ),
        .I3(test_cntr0_kernel[24]),
        .I4(test_cntr0_kernel[56]),
        .I5(\s_axi_ctrl_mgmt_rdata_i[24]_i_7_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[24]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \s_axi_ctrl_mgmt_rdata_i[24]_i_3 
       (.I0(s_axi_ctrl_mgmt_araddr[2]),
        .I1(s_axi_ctrl_mgmt_araddr[4]),
        .I2(s_axi_ctrl_mgmt_araddr[3]),
        .O(\s_axi_ctrl_mgmt_rdata_i[24]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_ctrl_mgmt_rdata_i[24]_i_5 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[31]_i_11_n_0 ),
        .I1(ref_cntr_kernel[24]),
        .I2(\s_axi_ctrl_mgmt_rdata_i[31]_i_7_n_0 ),
        .I3(ref_cntr_kernel[56]),
        .I4(\s_axi_ctrl_mgmt_rdata_i[24]_i_9_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[24]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \s_axi_ctrl_mgmt_rdata_i[24]_i_6 
       (.I0(s_axi_ctrl_mgmt_araddr[14]),
        .I1(s_axi_ctrl_mgmt_araddr[13]),
        .I2(s_axi_ctrl_mgmt_araddr[15]),
        .I3(s_axi_ctrl_mgmt_araddr[12]),
        .O(\s_axi_ctrl_mgmt_rdata_i[24]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \s_axi_ctrl_mgmt_rdata_i[24]_i_7 
       (.I0(s_axi_ctrl_mgmt_araddr[14]),
        .I1(s_axi_ctrl_mgmt_araddr[13]),
        .I2(s_axi_ctrl_mgmt_araddr[15]),
        .I3(s_axi_ctrl_mgmt_araddr[12]),
        .O(\s_axi_ctrl_mgmt_rdata_i[24]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \s_axi_ctrl_mgmt_rdata_i[24]_i_9 
       (.I0(cdc_freq_cntr_aclk_n_72),
        .I1(ref_cntr_aclk[24]),
        .I2(s_axi_ctrl_mgmt_araddr[15]),
        .I3(s_axi_ctrl_mgmt_araddr[2]),
        .I4(s_axi_ctrl_mgmt_araddr[4]),
        .O(\s_axi_ctrl_mgmt_rdata_i[24]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \s_axi_ctrl_mgmt_rdata_i[25]_i_2 
       (.I0(test_cntr1_kernel[57]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[22]_i_3_n_0 ),
        .I2(test_cntr0_kernel[57]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[22]_i_4_n_0 ),
        .I4(s_axi_ctrl_mgmt_araddr[3]),
        .O(\s_axi_ctrl_mgmt_rdata_i[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A000AC00)) 
    \s_axi_ctrl_mgmt_rdata_i[25]_i_3 
       (.I0(cdc_freq_cntr_aclk_n_71),
        .I1(test_cntr0_aclk[25]),
        .I2(s_axi_ctrl_mgmt_araddr[2]),
        .I3(s_axi_ctrl_mgmt_araddr[4]),
        .I4(s_axi_ctrl_mgmt_araddr[3]),
        .I5(s_axi_ctrl_mgmt_araddr[15]),
        .O(\s_axi_ctrl_mgmt_rdata_i[25]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF080808)) 
    \s_axi_ctrl_mgmt_rdata_i[25]_i_5 
       (.I0(test_cntr0_kernel[25]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[21]_i_4_n_0 ),
        .I2(s_axi_ctrl_mgmt_araddr[3]),
        .I3(ref_cntr_kernel[25]),
        .I4(\s_axi_ctrl_mgmt_rdata_i[31]_i_11_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[25]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[25]_i_6 
       (.I0(ref_cntr_kernel[57]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[31]_i_7_n_0 ),
        .I2(test_cntr1_kernel[25]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_8_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[25]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \s_axi_ctrl_mgmt_rdata_i[26]_i_2 
       (.I0(test_cntr1_kernel[58]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[22]_i_3_n_0 ),
        .I2(test_cntr0_kernel[58]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[22]_i_4_n_0 ),
        .I4(s_axi_ctrl_mgmt_araddr[3]),
        .O(\s_axi_ctrl_mgmt_rdata_i[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A000AC00)) 
    \s_axi_ctrl_mgmt_rdata_i[26]_i_3 
       (.I0(cdc_freq_cntr_aclk_n_70),
        .I1(test_cntr0_aclk[26]),
        .I2(s_axi_ctrl_mgmt_araddr[2]),
        .I3(s_axi_ctrl_mgmt_araddr[4]),
        .I4(s_axi_ctrl_mgmt_araddr[3]),
        .I5(s_axi_ctrl_mgmt_araddr[15]),
        .O(\s_axi_ctrl_mgmt_rdata_i[26]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF080808)) 
    \s_axi_ctrl_mgmt_rdata_i[26]_i_5 
       (.I0(test_cntr0_kernel[26]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[21]_i_4_n_0 ),
        .I2(s_axi_ctrl_mgmt_araddr[3]),
        .I3(ref_cntr_kernel[26]),
        .I4(\s_axi_ctrl_mgmt_rdata_i[31]_i_11_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[26]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[26]_i_6 
       (.I0(ref_cntr_kernel[58]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[31]_i_7_n_0 ),
        .I2(test_cntr1_kernel[26]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_8_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[26]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \s_axi_ctrl_mgmt_rdata_i[27]_i_2 
       (.I0(test_cntr1_kernel[59]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[22]_i_3_n_0 ),
        .I2(test_cntr0_kernel[59]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[22]_i_4_n_0 ),
        .I4(s_axi_ctrl_mgmt_araddr[3]),
        .O(\s_axi_ctrl_mgmt_rdata_i[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A000AC00)) 
    \s_axi_ctrl_mgmt_rdata_i[27]_i_3 
       (.I0(cdc_freq_cntr_aclk_n_69),
        .I1(test_cntr0_aclk[27]),
        .I2(s_axi_ctrl_mgmt_araddr[2]),
        .I3(s_axi_ctrl_mgmt_araddr[4]),
        .I4(s_axi_ctrl_mgmt_araddr[3]),
        .I5(s_axi_ctrl_mgmt_araddr[15]),
        .O(\s_axi_ctrl_mgmt_rdata_i[27]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF080808)) 
    \s_axi_ctrl_mgmt_rdata_i[27]_i_5 
       (.I0(test_cntr0_kernel[27]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[21]_i_4_n_0 ),
        .I2(s_axi_ctrl_mgmt_araddr[3]),
        .I3(ref_cntr_kernel[27]),
        .I4(\s_axi_ctrl_mgmt_rdata_i[31]_i_11_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[27]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[27]_i_6 
       (.I0(ref_cntr_kernel[59]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[31]_i_7_n_0 ),
        .I2(test_cntr1_kernel[27]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_8_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[27]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \s_axi_ctrl_mgmt_rdata_i[28]_i_2 
       (.I0(test_cntr1_kernel[60]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[22]_i_3_n_0 ),
        .I2(test_cntr0_kernel[60]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[22]_i_4_n_0 ),
        .I4(s_axi_ctrl_mgmt_araddr[3]),
        .O(\s_axi_ctrl_mgmt_rdata_i[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A000AC00)) 
    \s_axi_ctrl_mgmt_rdata_i[28]_i_3 
       (.I0(cdc_freq_cntr_aclk_n_68),
        .I1(test_cntr0_aclk[28]),
        .I2(s_axi_ctrl_mgmt_araddr[2]),
        .I3(s_axi_ctrl_mgmt_araddr[4]),
        .I4(s_axi_ctrl_mgmt_araddr[3]),
        .I5(s_axi_ctrl_mgmt_araddr[15]),
        .O(\s_axi_ctrl_mgmt_rdata_i[28]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF080808)) 
    \s_axi_ctrl_mgmt_rdata_i[28]_i_5 
       (.I0(test_cntr0_kernel[28]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[21]_i_4_n_0 ),
        .I2(s_axi_ctrl_mgmt_araddr[3]),
        .I3(ref_cntr_kernel[28]),
        .I4(\s_axi_ctrl_mgmt_rdata_i[31]_i_11_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[28]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[28]_i_6 
       (.I0(ref_cntr_kernel[60]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[31]_i_7_n_0 ),
        .I2(test_cntr1_kernel[28]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_8_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[28]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \s_axi_ctrl_mgmt_rdata_i[29]_i_2 
       (.I0(test_cntr1_kernel[61]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[22]_i_3_n_0 ),
        .I2(test_cntr0_kernel[61]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[22]_i_4_n_0 ),
        .I4(s_axi_ctrl_mgmt_araddr[3]),
        .O(\s_axi_ctrl_mgmt_rdata_i[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A000AC00)) 
    \s_axi_ctrl_mgmt_rdata_i[29]_i_3 
       (.I0(cdc_freq_cntr_aclk_n_67),
        .I1(test_cntr0_aclk[29]),
        .I2(s_axi_ctrl_mgmt_araddr[2]),
        .I3(s_axi_ctrl_mgmt_araddr[4]),
        .I4(s_axi_ctrl_mgmt_araddr[3]),
        .I5(s_axi_ctrl_mgmt_araddr[15]),
        .O(\s_axi_ctrl_mgmt_rdata_i[29]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF080808)) 
    \s_axi_ctrl_mgmt_rdata_i[29]_i_5 
       (.I0(test_cntr0_kernel[29]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[21]_i_4_n_0 ),
        .I2(s_axi_ctrl_mgmt_araddr[3]),
        .I3(ref_cntr_kernel[29]),
        .I4(\s_axi_ctrl_mgmt_rdata_i[31]_i_11_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[29]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[29]_i_6 
       (.I0(ref_cntr_kernel[61]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[31]_i_7_n_0 ),
        .I2(test_cntr1_kernel[29]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_8_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[29]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \s_axi_ctrl_mgmt_rdata_i[29]_i_7 
       (.I0(s_axi_ctrl_mgmt_araddr[2]),
        .I1(s_axi_ctrl_mgmt_araddr[4]),
        .I2(s_axi_ctrl_mgmt_araddr[15]),
        .I3(s_axi_ctrl_mgmt_araddr[3]),
        .I4(s_axi_ctrl_mgmt_araddr[12]),
        .O(\s_axi_ctrl_mgmt_rdata_i[29]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \s_axi_ctrl_mgmt_rdata_i[2]_i_1 
       (.I0(cdc_freq_cntr_aclk_n_94),
        .I1(\s_axi_ctrl_mgmt_rdata_i[3]_i_2_n_0 ),
        .I2(\s_axi_ctrl_mgmt_rdata_i[2]_i_2_n_0 ),
        .I3(\s_axi_ctrl_mgmt_rdata_i[2]_i_3_n_0 ),
        .I4(\s_axi_ctrl_mgmt_rdata_i[2]_i_4_n_0 ),
        .I5(\s_axi_ctrl_mgmt_rdata_i[2]_i_5_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hAA80)) 
    \s_axi_ctrl_mgmt_rdata_i[2]_i_2 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[24]_i_3_n_0 ),
        .I1(\s_axi_ctrl_mgmt_rdata_i[24]_i_7_n_0 ),
        .I2(test_cntr0_kernel[34]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[2]_i_6_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[2]_i_3 
       (.I0(test_cntr1_kernel[34]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[22]_i_3_n_0 ),
        .I2(test_cntr1_kernel[2]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_8_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF002000200020)) 
    \s_axi_ctrl_mgmt_rdata_i[2]_i_4 
       (.I0(ref_cntr_aclk[2]),
        .I1(s_axi_ctrl_mgmt_araddr[15]),
        .I2(s_axi_ctrl_mgmt_araddr[2]),
        .I3(s_axi_ctrl_mgmt_araddr[4]),
        .I4(p_6_in[2]),
        .I5(\s_axi_ctrl_mgmt_rdata_i[7]_i_6_n_1 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[2]_i_5 
       (.I0(ref_cntr_kernel[34]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[31]_i_7_n_0 ),
        .I2(ref_cntr_kernel[2]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_11_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \s_axi_ctrl_mgmt_rdata_i[2]_i_6 
       (.I0(test_cntr0_kernel[2]),
        .I1(s_axi_ctrl_mgmt_araddr[14]),
        .I2(s_axi_ctrl_mgmt_araddr[13]),
        .I3(s_axi_ctrl_mgmt_araddr[12]),
        .I4(s_axi_ctrl_mgmt_araddr[15]),
        .I5(test_cntr0_aclk[2]),
        .O(\s_axi_ctrl_mgmt_rdata_i[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_ctrl_mgmt_rdata_i[30]_i_1 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[30]_i_2_n_0 ),
        .I1(ref_cntr_kernel[62]),
        .I2(\s_axi_ctrl_mgmt_rdata_i[31]_i_7_n_0 ),
        .I3(test_cntr1_kernel[30]),
        .I4(\s_axi_ctrl_mgmt_rdata_i[31]_i_8_n_0 ),
        .I5(\s_axi_ctrl_mgmt_rdata_i[30]_i_3_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[30]_i_2 
       (.I0(test_cntr0_kernel[30]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[21]_i_4_n_0 ),
        .I2(ref_cntr_kernel[30]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_11_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \s_axi_ctrl_mgmt_rdata_i[30]_i_3 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[22]_i_4_n_0 ),
        .I1(test_cntr0_kernel[62]),
        .I2(\s_axi_ctrl_mgmt_rdata_i[30]_i_4_n_0 ),
        .I3(test_cntr1_kernel[62]),
        .I4(\s_axi_ctrl_mgmt_rdata_i[22]_i_3_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CC00AA0000)) 
    \s_axi_ctrl_mgmt_rdata_i[30]_i_4 
       (.I0(ref_cntr_aclk[30]),
        .I1(test_cntr0_aclk[30]),
        .I2(cdc_freq_cntr_aclk_n_66),
        .I3(s_axi_ctrl_mgmt_araddr[15]),
        .I4(s_axi_ctrl_mgmt_araddr[2]),
        .I5(s_axi_ctrl_mgmt_araddr[4]),
        .O(\s_axi_ctrl_mgmt_rdata_i[30]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h22202222)) 
    \s_axi_ctrl_mgmt_rdata_i[31]_i_1 
       (.I0(s_axi_ctrl_mgmt_arvalid),
        .I1(s_axi_ctrl_mgmt_rvalid),
        .I2(\s_axi_ctrl_mgmt_rdata_i[31]_i_4_n_0 ),
        .I3(s_axi_ctrl_mgmt_araddr[9]),
        .I4(\s_axi_ctrl_mgmt_rdata_i[31]_i_5_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_ctrl_mgmt_rdata_i[31]_i_10 
       (.I0(s_axi_ctrl_mgmt_araddr[2]),
        .I1(s_axi_ctrl_mgmt_araddr[4]),
        .O(\s_axi_ctrl_mgmt_rdata_i[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \s_axi_ctrl_mgmt_rdata_i[31]_i_11 
       (.I0(s_axi_ctrl_mgmt_araddr[4]),
        .I1(s_axi_ctrl_mgmt_araddr[14]),
        .I2(s_axi_ctrl_mgmt_araddr[13]),
        .I3(s_axi_ctrl_mgmt_araddr[15]),
        .I4(s_axi_ctrl_mgmt_araddr[2]),
        .I5(s_axi_ctrl_mgmt_araddr[12]),
        .O(\s_axi_ctrl_mgmt_rdata_i[31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CC00AA0000)) 
    \s_axi_ctrl_mgmt_rdata_i[31]_i_12 
       (.I0(ref_cntr_aclk[31]),
        .I1(test_cntr0_aclk[31]),
        .I2(cdc_freq_cntr_aclk_n_65),
        .I3(s_axi_ctrl_mgmt_araddr[15]),
        .I4(s_axi_ctrl_mgmt_araddr[2]),
        .I5(s_axi_ctrl_mgmt_araddr[4]),
        .O(\s_axi_ctrl_mgmt_rdata_i[31]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_ctrl_mgmt_rdata_i[31]_i_2 
       (.I0(s_axi_ctrl_mgmt_arvalid),
        .I1(s_axi_ctrl_mgmt_rvalid),
        .O(\s_axi_ctrl_mgmt_rdata_i[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_ctrl_mgmt_rdata_i[31]_i_3 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[31]_i_6_n_0 ),
        .I1(ref_cntr_kernel[63]),
        .I2(\s_axi_ctrl_mgmt_rdata_i[31]_i_7_n_0 ),
        .I3(test_cntr1_kernel[31]),
        .I4(\s_axi_ctrl_mgmt_rdata_i[31]_i_8_n_0 ),
        .I5(\s_axi_ctrl_mgmt_rdata_i[31]_i_9_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \s_axi_ctrl_mgmt_rdata_i[31]_i_4 
       (.I0(s_axi_ctrl_mgmt_araddr[10]),
        .I1(s_axi_ctrl_mgmt_araddr[11]),
        .I2(s_axi_ctrl_mgmt_araddr[8]),
        .I3(s_axi_ctrl_mgmt_araddr[7]),
        .I4(s_axi_ctrl_mgmt_araddr[5]),
        .I5(s_axi_ctrl_mgmt_araddr[6]),
        .O(\s_axi_ctrl_mgmt_rdata_i[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000001515101F)) 
    \s_axi_ctrl_mgmt_rdata_i[31]_i_5 
       (.I0(s_axi_ctrl_mgmt_araddr[3]),
        .I1(s_axi_ctrl_mgmt_araddr[12]),
        .I2(s_axi_ctrl_mgmt_araddr[13]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_10_n_0 ),
        .I4(s_axi_ctrl_mgmt_araddr[15]),
        .I5(s_axi_ctrl_mgmt_araddr[14]),
        .O(\s_axi_ctrl_mgmt_rdata_i[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[31]_i_6 
       (.I0(test_cntr0_kernel[31]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[21]_i_4_n_0 ),
        .I2(ref_cntr_kernel[31]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_11_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \s_axi_ctrl_mgmt_rdata_i[31]_i_7 
       (.I0(s_axi_ctrl_mgmt_araddr[4]),
        .I1(s_axi_ctrl_mgmt_araddr[14]),
        .I2(s_axi_ctrl_mgmt_araddr[13]),
        .I3(s_axi_ctrl_mgmt_araddr[15]),
        .I4(s_axi_ctrl_mgmt_araddr[2]),
        .I5(s_axi_ctrl_mgmt_araddr[12]),
        .O(\s_axi_ctrl_mgmt_rdata_i[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \s_axi_ctrl_mgmt_rdata_i[31]_i_8 
       (.I0(s_axi_ctrl_mgmt_araddr[4]),
        .I1(s_axi_ctrl_mgmt_araddr[14]),
        .I2(s_axi_ctrl_mgmt_araddr[13]),
        .I3(s_axi_ctrl_mgmt_araddr[15]),
        .I4(s_axi_ctrl_mgmt_araddr[2]),
        .I5(s_axi_ctrl_mgmt_araddr[12]),
        .O(\s_axi_ctrl_mgmt_rdata_i[31]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \s_axi_ctrl_mgmt_rdata_i[31]_i_9 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[22]_i_4_n_0 ),
        .I1(test_cntr0_kernel[63]),
        .I2(\s_axi_ctrl_mgmt_rdata_i[31]_i_12_n_0 ),
        .I3(test_cntr1_kernel[63]),
        .I4(\s_axi_ctrl_mgmt_rdata_i[22]_i_3_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \s_axi_ctrl_mgmt_rdata_i[3]_i_1 
       (.I0(cdc_freq_cntr_aclk_n_93),
        .I1(\s_axi_ctrl_mgmt_rdata_i[3]_i_2_n_0 ),
        .I2(\s_axi_ctrl_mgmt_rdata_i[3]_i_3_n_0 ),
        .I3(\s_axi_ctrl_mgmt_rdata_i[3]_i_4_n_0 ),
        .I4(\s_axi_ctrl_mgmt_rdata_i[3]_i_5_n_0 ),
        .I5(\s_axi_ctrl_mgmt_rdata_i[3]_i_6_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \s_axi_ctrl_mgmt_rdata_i[3]_i_2 
       (.I0(s_axi_ctrl_mgmt_araddr[15]),
        .I1(s_axi_ctrl_mgmt_araddr[2]),
        .I2(s_axi_ctrl_mgmt_araddr[4]),
        .O(\s_axi_ctrl_mgmt_rdata_i[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hAA80)) 
    \s_axi_ctrl_mgmt_rdata_i[3]_i_3 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[24]_i_3_n_0 ),
        .I1(\s_axi_ctrl_mgmt_rdata_i[24]_i_7_n_0 ),
        .I2(test_cntr0_kernel[35]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[3]_i_7_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[3]_i_4 
       (.I0(test_cntr1_kernel[35]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[22]_i_3_n_0 ),
        .I2(test_cntr1_kernel[3]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_8_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF002000200020)) 
    \s_axi_ctrl_mgmt_rdata_i[3]_i_5 
       (.I0(ref_cntr_aclk[3]),
        .I1(s_axi_ctrl_mgmt_araddr[15]),
        .I2(s_axi_ctrl_mgmt_araddr[2]),
        .I3(s_axi_ctrl_mgmt_araddr[4]),
        .I4(p_6_in[3]),
        .I5(\s_axi_ctrl_mgmt_rdata_i[7]_i_6_n_1 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[3]_i_6 
       (.I0(ref_cntr_kernel[35]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[31]_i_7_n_0 ),
        .I2(ref_cntr_kernel[3]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_11_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \s_axi_ctrl_mgmt_rdata_i[3]_i_7 
       (.I0(test_cntr0_kernel[3]),
        .I1(s_axi_ctrl_mgmt_araddr[14]),
        .I2(s_axi_ctrl_mgmt_araddr[13]),
        .I3(s_axi_ctrl_mgmt_araddr[12]),
        .I4(s_axi_ctrl_mgmt_araddr[15]),
        .I5(test_cntr0_aclk[3]),
        .O(\s_axi_ctrl_mgmt_rdata_i[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \s_axi_ctrl_mgmt_rdata_i[4]_i_1 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[4]_i_2_n_0 ),
        .I1(\s_axi_ctrl_mgmt_rdata_i[4]_i_3_n_0 ),
        .I2(ref_cntr_aclk[4]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[19]_i_4_n_0 ),
        .I4(\s_axi_ctrl_mgmt_rdata_i[4]_i_4_n_0 ),
        .I5(\s_axi_ctrl_mgmt_rdata_i[4]_i_5_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_ctrl_mgmt_rdata_i[4]_i_2 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[7]_i_6_n_1 ),
        .I1(p_6_in[4]),
        .I2(\s_axi_ctrl_mgmt_rdata_i[19]_i_7_n_0 ),
        .I3(\Request_SW_reg_n_0_[0] ),
        .I4(cdc_freq_cntr_aclk_n_92),
        .I5(\s_axi_ctrl_mgmt_rdata_i[3]_i_2_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[4]_i_3 
       (.I0(test_cntr1_kernel[36]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[22]_i_3_n_0 ),
        .I2(test_cntr1_kernel[4]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_8_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hAA80)) 
    \s_axi_ctrl_mgmt_rdata_i[4]_i_4 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[24]_i_3_n_0 ),
        .I1(\s_axi_ctrl_mgmt_rdata_i[24]_i_7_n_0 ),
        .I2(test_cntr0_kernel[36]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[4]_i_6_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[4]_i_5 
       (.I0(ref_cntr_kernel[36]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[31]_i_7_n_0 ),
        .I2(ref_cntr_kernel[4]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_11_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \s_axi_ctrl_mgmt_rdata_i[4]_i_6 
       (.I0(test_cntr0_kernel[4]),
        .I1(s_axi_ctrl_mgmt_araddr[14]),
        .I2(s_axi_ctrl_mgmt_araddr[13]),
        .I3(s_axi_ctrl_mgmt_araddr[12]),
        .I4(s_axi_ctrl_mgmt_araddr[15]),
        .I5(test_cntr0_aclk[4]),
        .O(\s_axi_ctrl_mgmt_rdata_i[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \s_axi_ctrl_mgmt_rdata_i[5]_i_1 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[5]_i_2_n_0 ),
        .I1(\s_axi_ctrl_mgmt_rdata_i[5]_i_3_n_0 ),
        .I2(ref_cntr_aclk[5]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[19]_i_4_n_0 ),
        .I4(\s_axi_ctrl_mgmt_rdata_i[5]_i_4_n_0 ),
        .I5(\s_axi_ctrl_mgmt_rdata_i[5]_i_5_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_ctrl_mgmt_rdata_i[5]_i_2 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[7]_i_6_n_1 ),
        .I1(p_6_in[5]),
        .I2(\s_axi_ctrl_mgmt_rdata_i[19]_i_7_n_0 ),
        .I3(\Request_SW_reg_n_0_[1] ),
        .I4(cdc_freq_cntr_aclk_n_91),
        .I5(\s_axi_ctrl_mgmt_rdata_i[3]_i_2_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[5]_i_3 
       (.I0(test_cntr1_kernel[37]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[22]_i_3_n_0 ),
        .I2(test_cntr1_kernel[5]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_8_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hAA80)) 
    \s_axi_ctrl_mgmt_rdata_i[5]_i_4 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[24]_i_3_n_0 ),
        .I1(\s_axi_ctrl_mgmt_rdata_i[24]_i_7_n_0 ),
        .I2(test_cntr0_kernel[37]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[5]_i_6_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[5]_i_5 
       (.I0(ref_cntr_kernel[37]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[31]_i_7_n_0 ),
        .I2(ref_cntr_kernel[5]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_11_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \s_axi_ctrl_mgmt_rdata_i[5]_i_6 
       (.I0(test_cntr0_kernel[5]),
        .I1(s_axi_ctrl_mgmt_araddr[14]),
        .I2(s_axi_ctrl_mgmt_araddr[13]),
        .I3(s_axi_ctrl_mgmt_araddr[12]),
        .I4(s_axi_ctrl_mgmt_araddr[15]),
        .I5(test_cntr0_aclk[5]),
        .O(\s_axi_ctrl_mgmt_rdata_i[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \s_axi_ctrl_mgmt_rdata_i[6]_i_1 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[6]_i_2_n_0 ),
        .I1(\s_axi_ctrl_mgmt_rdata_i[6]_i_3_n_0 ),
        .I2(ref_cntr_aclk[6]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[19]_i_4_n_0 ),
        .I4(\s_axi_ctrl_mgmt_rdata_i[6]_i_4_n_0 ),
        .I5(\s_axi_ctrl_mgmt_rdata_i[6]_i_5_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_ctrl_mgmt_rdata_i[6]_i_2 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[7]_i_6_n_1 ),
        .I1(p_6_in[6]),
        .I2(\s_axi_ctrl_mgmt_rdata_i[19]_i_7_n_0 ),
        .I3(\Request_SW_reg_n_0_[2] ),
        .I4(cdc_freq_cntr_aclk_n_90),
        .I5(\s_axi_ctrl_mgmt_rdata_i[3]_i_2_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[6]_i_3 
       (.I0(test_cntr1_kernel[38]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[22]_i_3_n_0 ),
        .I2(test_cntr1_kernel[6]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_8_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hAA80)) 
    \s_axi_ctrl_mgmt_rdata_i[6]_i_4 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[24]_i_3_n_0 ),
        .I1(\s_axi_ctrl_mgmt_rdata_i[24]_i_7_n_0 ),
        .I2(test_cntr0_kernel[38]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[6]_i_6_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[6]_i_5 
       (.I0(ref_cntr_kernel[38]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[31]_i_7_n_0 ),
        .I2(ref_cntr_kernel[6]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_11_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \s_axi_ctrl_mgmt_rdata_i[6]_i_6 
       (.I0(test_cntr0_kernel[6]),
        .I1(s_axi_ctrl_mgmt_araddr[14]),
        .I2(s_axi_ctrl_mgmt_araddr[13]),
        .I3(s_axi_ctrl_mgmt_araddr[12]),
        .I4(s_axi_ctrl_mgmt_araddr[15]),
        .I5(test_cntr0_aclk[6]),
        .O(\s_axi_ctrl_mgmt_rdata_i[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \s_axi_ctrl_mgmt_rdata_i[7]_i_1 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[7]_i_2_n_0 ),
        .I1(\s_axi_ctrl_mgmt_rdata_i[7]_i_3_n_0 ),
        .I2(ref_cntr_aclk[7]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[19]_i_4_n_0 ),
        .I4(\s_axi_ctrl_mgmt_rdata_i[7]_i_4_n_0 ),
        .I5(\s_axi_ctrl_mgmt_rdata_i[7]_i_5_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_ctrl_mgmt_rdata_i[7]_i_2 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[7]_i_6_n_1 ),
        .I1(p_6_in[7]),
        .I2(\s_axi_ctrl_mgmt_rdata_i[19]_i_7_n_0 ),
        .I3(\Request_SW_reg_n_0_[3] ),
        .I4(cdc_freq_cntr_aclk_n_89),
        .I5(\s_axi_ctrl_mgmt_rdata_i[3]_i_2_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[7]_i_3 
       (.I0(test_cntr1_kernel[39]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[22]_i_3_n_0 ),
        .I2(test_cntr1_kernel[7]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_8_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hAA80)) 
    \s_axi_ctrl_mgmt_rdata_i[7]_i_4 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[24]_i_3_n_0 ),
        .I1(\s_axi_ctrl_mgmt_rdata_i[24]_i_7_n_0 ),
        .I2(test_cntr0_kernel[39]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[7]_i_7_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[7]_i_5 
       (.I0(ref_cntr_kernel[39]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[31]_i_7_n_0 ),
        .I2(ref_cntr_kernel[7]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_11_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[7]_i_5_n_0 ));
  LUT6_2 #(
    .INIT(64'h0000000000000001)) 
    \s_axi_ctrl_mgmt_rdata_i[7]_i_6 
       (.I0(s_axi_ctrl_mgmt_araddr[2]),
        .I1(s_axi_ctrl_mgmt_araddr[4]),
        .I2(s_axi_ctrl_mgmt_araddr[15]),
        .I3(s_axi_ctrl_mgmt_araddr[3]),
        .I4(s_axi_ctrl_mgmt_araddr[13]),
        .I5(s_axi_ctrl_mgmt_araddr[12]),
        .O5(\s_axi_ctrl_mgmt_rdata_i[7]_i_6_n_0 ),
        .O6(\s_axi_ctrl_mgmt_rdata_i[7]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \s_axi_ctrl_mgmt_rdata_i[7]_i_7 
       (.I0(test_cntr0_kernel[7]),
        .I1(s_axi_ctrl_mgmt_araddr[14]),
        .I2(s_axi_ctrl_mgmt_araddr[13]),
        .I3(s_axi_ctrl_mgmt_araddr[12]),
        .I4(s_axi_ctrl_mgmt_araddr[15]),
        .I5(test_cntr0_aclk[7]),
        .O(\s_axi_ctrl_mgmt_rdata_i[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_axi_ctrl_mgmt_rdata_i[8]_i_1 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[8]_i_2_n_0 ),
        .I1(\s_axi_ctrl_mgmt_rdata_i[8]_i_3_n_0 ),
        .I2(\s_axi_ctrl_mgmt_rdata_i[8]_i_4_n_0 ),
        .I3(\s_axi_ctrl_mgmt_rdata_i[8]_i_5_n_0 ),
        .I4(\s_axi_ctrl_mgmt_rdata_i[8]_i_6_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[8]_i_2 
       (.I0(test_cntr1_kernel[40]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[22]_i_3_n_0 ),
        .I2(test_cntr1_kernel[8]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_8_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0C0000)) 
    \s_axi_ctrl_mgmt_rdata_i[8]_i_3 
       (.I0(cdc_freq_cntr_aclk_n_88),
        .I1(test_cntr0_aclk[8]),
        .I2(s_axi_ctrl_mgmt_araddr[15]),
        .I3(s_axi_ctrl_mgmt_araddr[2]),
        .I4(s_axi_ctrl_mgmt_araddr[4]),
        .O(\s_axi_ctrl_mgmt_rdata_i[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF002000200020)) 
    \s_axi_ctrl_mgmt_rdata_i[8]_i_4 
       (.I0(ref_cntr_aclk[8]),
        .I1(s_axi_ctrl_mgmt_araddr[15]),
        .I2(s_axi_ctrl_mgmt_araddr[2]),
        .I3(s_axi_ctrl_mgmt_araddr[4]),
        .I4(\Request_SW_reg_n_0_[4] ),
        .I5(\s_axi_ctrl_mgmt_rdata_i[15]_i_7_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[8]_i_5 
       (.I0(ref_cntr_kernel[40]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[31]_i_7_n_0 ),
        .I2(ref_cntr_kernel[8]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_11_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF888F888F8880000)) 
    \s_axi_ctrl_mgmt_rdata_i[8]_i_6 
       (.I0(test_cntr0_kernel[40]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[22]_i_4_n_0 ),
        .I2(test_cntr0_kernel[8]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[21]_i_4_n_0 ),
        .I4(s_axi_ctrl_mgmt_araddr[4]),
        .I5(s_axi_ctrl_mgmt_araddr[3]),
        .O(\s_axi_ctrl_mgmt_rdata_i[8]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_axi_ctrl_mgmt_rdata_i[9]_i_1 
       (.I0(\s_axi_ctrl_mgmt_rdata_i[9]_i_2_n_0 ),
        .I1(\s_axi_ctrl_mgmt_rdata_i[9]_i_3_n_0 ),
        .I2(\s_axi_ctrl_mgmt_rdata_i[9]_i_4_n_0 ),
        .I3(\s_axi_ctrl_mgmt_rdata_i[9]_i_5_n_0 ),
        .I4(\s_axi_ctrl_mgmt_rdata_i[9]_i_6_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[9]_i_2 
       (.I0(test_cntr1_kernel[41]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[22]_i_3_n_0 ),
        .I2(test_cntr1_kernel[9]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_8_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0C0000)) 
    \s_axi_ctrl_mgmt_rdata_i[9]_i_3 
       (.I0(cdc_freq_cntr_aclk_n_87),
        .I1(test_cntr0_aclk[9]),
        .I2(s_axi_ctrl_mgmt_araddr[15]),
        .I3(s_axi_ctrl_mgmt_araddr[2]),
        .I4(s_axi_ctrl_mgmt_araddr[4]),
        .O(\s_axi_ctrl_mgmt_rdata_i[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF002000200020)) 
    \s_axi_ctrl_mgmt_rdata_i[9]_i_4 
       (.I0(ref_cntr_aclk[9]),
        .I1(s_axi_ctrl_mgmt_araddr[15]),
        .I2(s_axi_ctrl_mgmt_araddr[2]),
        .I3(s_axi_ctrl_mgmt_araddr[4]),
        .I4(\Request_SW_reg_n_0_[5] ),
        .I5(\s_axi_ctrl_mgmt_rdata_i[15]_i_7_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_ctrl_mgmt_rdata_i[9]_i_5 
       (.I0(ref_cntr_kernel[41]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[31]_i_7_n_0 ),
        .I2(ref_cntr_kernel[9]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[31]_i_11_n_0 ),
        .O(\s_axi_ctrl_mgmt_rdata_i[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF888F888F8880000)) 
    \s_axi_ctrl_mgmt_rdata_i[9]_i_6 
       (.I0(test_cntr0_kernel[41]),
        .I1(\s_axi_ctrl_mgmt_rdata_i[22]_i_4_n_0 ),
        .I2(test_cntr0_kernel[9]),
        .I3(\s_axi_ctrl_mgmt_rdata_i[21]_i_4_n_0 ),
        .I4(s_axi_ctrl_mgmt_araddr[4]),
        .I5(s_axi_ctrl_mgmt_araddr[3]),
        .O(\s_axi_ctrl_mgmt_rdata_i[9]_i_6_n_0 ));
  FDRE \s_axi_ctrl_mgmt_rdata_i_reg[0] 
       (.C(aclk_ctrl),
        .CE(\s_axi_ctrl_mgmt_rdata_i[31]_i_2_n_0 ),
        .D(clock_shutdown_latch_n_4),
        .Q(s_axi_ctrl_mgmt_rdata[0]),
        .R(\s_axi_ctrl_mgmt_rdata_i[31]_i_1_n_0 ));
  FDRE \s_axi_ctrl_mgmt_rdata_i_reg[10] 
       (.C(aclk_ctrl),
        .CE(\s_axi_ctrl_mgmt_rdata_i[31]_i_2_n_0 ),
        .D(\s_axi_ctrl_mgmt_rdata_i[10]_i_1_n_0 ),
        .Q(s_axi_ctrl_mgmt_rdata[10]),
        .R(\s_axi_ctrl_mgmt_rdata_i[31]_i_1_n_0 ));
  FDRE \s_axi_ctrl_mgmt_rdata_i_reg[11] 
       (.C(aclk_ctrl),
        .CE(\s_axi_ctrl_mgmt_rdata_i[31]_i_2_n_0 ),
        .D(\s_axi_ctrl_mgmt_rdata_i[11]_i_1_n_0 ),
        .Q(s_axi_ctrl_mgmt_rdata[11]),
        .R(\s_axi_ctrl_mgmt_rdata_i[31]_i_1_n_0 ));
  FDRE \s_axi_ctrl_mgmt_rdata_i_reg[12] 
       (.C(aclk_ctrl),
        .CE(\s_axi_ctrl_mgmt_rdata_i[31]_i_2_n_0 ),
        .D(\s_axi_ctrl_mgmt_rdata_i[12]_i_1_n_0 ),
        .Q(s_axi_ctrl_mgmt_rdata[12]),
        .R(\s_axi_ctrl_mgmt_rdata_i[31]_i_1_n_0 ));
  FDRE \s_axi_ctrl_mgmt_rdata_i_reg[13] 
       (.C(aclk_ctrl),
        .CE(\s_axi_ctrl_mgmt_rdata_i[31]_i_2_n_0 ),
        .D(\s_axi_ctrl_mgmt_rdata_i[13]_i_1_n_0 ),
        .Q(s_axi_ctrl_mgmt_rdata[13]),
        .R(\s_axi_ctrl_mgmt_rdata_i[31]_i_1_n_0 ));
  FDRE \s_axi_ctrl_mgmt_rdata_i_reg[14] 
       (.C(aclk_ctrl),
        .CE(\s_axi_ctrl_mgmt_rdata_i[31]_i_2_n_0 ),
        .D(\s_axi_ctrl_mgmt_rdata_i[14]_i_1_n_0 ),
        .Q(s_axi_ctrl_mgmt_rdata[14]),
        .R(\s_axi_ctrl_mgmt_rdata_i[31]_i_1_n_0 ));
  FDRE \s_axi_ctrl_mgmt_rdata_i_reg[15] 
       (.C(aclk_ctrl),
        .CE(\s_axi_ctrl_mgmt_rdata_i[31]_i_2_n_0 ),
        .D(\s_axi_ctrl_mgmt_rdata_i[15]_i_1_n_0 ),
        .Q(s_axi_ctrl_mgmt_rdata[15]),
        .R(\s_axi_ctrl_mgmt_rdata_i[31]_i_1_n_0 ));
  FDRE \s_axi_ctrl_mgmt_rdata_i_reg[16] 
       (.C(aclk_ctrl),
        .CE(\s_axi_ctrl_mgmt_rdata_i[31]_i_2_n_0 ),
        .D(clock_throttling_avg_n_2),
        .Q(s_axi_ctrl_mgmt_rdata[16]),
        .R(\s_axi_ctrl_mgmt_rdata_i[31]_i_1_n_0 ));
  FDRE \s_axi_ctrl_mgmt_rdata_i_reg[17] 
       (.C(aclk_ctrl),
        .CE(\s_axi_ctrl_mgmt_rdata_i[31]_i_2_n_0 ),
        .D(clock_throttling_avg_n_3),
        .Q(s_axi_ctrl_mgmt_rdata[17]),
        .R(\s_axi_ctrl_mgmt_rdata_i[31]_i_1_n_0 ));
  FDRE \s_axi_ctrl_mgmt_rdata_i_reg[18] 
       (.C(aclk_ctrl),
        .CE(\s_axi_ctrl_mgmt_rdata_i[31]_i_2_n_0 ),
        .D(clock_throttling_avg_n_4),
        .Q(s_axi_ctrl_mgmt_rdata[18]),
        .R(\s_axi_ctrl_mgmt_rdata_i[31]_i_1_n_0 ));
  FDRE \s_axi_ctrl_mgmt_rdata_i_reg[19] 
       (.C(aclk_ctrl),
        .CE(\s_axi_ctrl_mgmt_rdata_i[31]_i_2_n_0 ),
        .D(clock_throttling_avg_n_5),
        .Q(s_axi_ctrl_mgmt_rdata[19]),
        .R(\s_axi_ctrl_mgmt_rdata_i[31]_i_1_n_0 ));
  FDRE \s_axi_ctrl_mgmt_rdata_i_reg[1] 
       (.C(aclk_ctrl),
        .CE(\s_axi_ctrl_mgmt_rdata_i[31]_i_2_n_0 ),
        .D(\s_axi_ctrl_mgmt_rdata_i[1]_i_1_n_0 ),
        .Q(s_axi_ctrl_mgmt_rdata[1]),
        .R(\s_axi_ctrl_mgmt_rdata_i[31]_i_1_n_0 ));
  FDRE \s_axi_ctrl_mgmt_rdata_i_reg[20] 
       (.C(aclk_ctrl),
        .CE(\s_axi_ctrl_mgmt_rdata_i[31]_i_2_n_0 ),
        .D(clock_throttling_avg_n_6),
        .Q(s_axi_ctrl_mgmt_rdata[20]),
        .R(\s_axi_ctrl_mgmt_rdata_i[31]_i_1_n_0 ));
  FDRE \s_axi_ctrl_mgmt_rdata_i_reg[21] 
       (.C(aclk_ctrl),
        .CE(\s_axi_ctrl_mgmt_rdata_i[31]_i_2_n_0 ),
        .D(clock_throttling_avg_n_1),
        .Q(s_axi_ctrl_mgmt_rdata[21]),
        .R(1'b0));
  FDRE \s_axi_ctrl_mgmt_rdata_i_reg[22] 
       (.C(aclk_ctrl),
        .CE(\s_axi_ctrl_mgmt_rdata_i[31]_i_2_n_0 ),
        .D(clock_throttling_avg_n_0),
        .Q(s_axi_ctrl_mgmt_rdata[22]),
        .R(1'b0));
  FDRE \s_axi_ctrl_mgmt_rdata_i_reg[23] 
       (.C(aclk_ctrl),
        .CE(\s_axi_ctrl_mgmt_rdata_i[31]_i_2_n_0 ),
        .D(clock_throttling_avg_n_7),
        .Q(s_axi_ctrl_mgmt_rdata[23]),
        .R(\s_axi_ctrl_mgmt_rdata_i[31]_i_1_n_0 ));
  FDRE \s_axi_ctrl_mgmt_rdata_i_reg[24] 
       (.C(aclk_ctrl),
        .CE(\s_axi_ctrl_mgmt_rdata_i[31]_i_2_n_0 ),
        .D(clock_throttling_avg_n_8),
        .Q(s_axi_ctrl_mgmt_rdata[24]),
        .R(\s_axi_ctrl_mgmt_rdata_i[31]_i_1_n_0 ));
  FDRE \s_axi_ctrl_mgmt_rdata_i_reg[25] 
       (.C(aclk_ctrl),
        .CE(\s_axi_ctrl_mgmt_rdata_i[31]_i_2_n_0 ),
        .D(clock_throttling_avg_n_9),
        .Q(s_axi_ctrl_mgmt_rdata[25]),
        .R(\s_axi_ctrl_mgmt_rdata_i[31]_i_1_n_0 ));
  FDRE \s_axi_ctrl_mgmt_rdata_i_reg[26] 
       (.C(aclk_ctrl),
        .CE(\s_axi_ctrl_mgmt_rdata_i[31]_i_2_n_0 ),
        .D(clock_throttling_avg_n_10),
        .Q(s_axi_ctrl_mgmt_rdata[26]),
        .R(\s_axi_ctrl_mgmt_rdata_i[31]_i_1_n_0 ));
  FDRE \s_axi_ctrl_mgmt_rdata_i_reg[27] 
       (.C(aclk_ctrl),
        .CE(\s_axi_ctrl_mgmt_rdata_i[31]_i_2_n_0 ),
        .D(clock_throttling_avg_n_11),
        .Q(s_axi_ctrl_mgmt_rdata[27]),
        .R(\s_axi_ctrl_mgmt_rdata_i[31]_i_1_n_0 ));
  FDRE \s_axi_ctrl_mgmt_rdata_i_reg[28] 
       (.C(aclk_ctrl),
        .CE(\s_axi_ctrl_mgmt_rdata_i[31]_i_2_n_0 ),
        .D(clock_throttling_avg_n_12),
        .Q(s_axi_ctrl_mgmt_rdata[28]),
        .R(\s_axi_ctrl_mgmt_rdata_i[31]_i_1_n_0 ));
  FDRE \s_axi_ctrl_mgmt_rdata_i_reg[29] 
       (.C(aclk_ctrl),
        .CE(\s_axi_ctrl_mgmt_rdata_i[31]_i_2_n_0 ),
        .D(clock_throttling_avg_n_13),
        .Q(s_axi_ctrl_mgmt_rdata[29]),
        .R(\s_axi_ctrl_mgmt_rdata_i[31]_i_1_n_0 ));
  FDRE \s_axi_ctrl_mgmt_rdata_i_reg[2] 
       (.C(aclk_ctrl),
        .CE(\s_axi_ctrl_mgmt_rdata_i[31]_i_2_n_0 ),
        .D(\s_axi_ctrl_mgmt_rdata_i[2]_i_1_n_0 ),
        .Q(s_axi_ctrl_mgmt_rdata[2]),
        .R(\s_axi_ctrl_mgmt_rdata_i[31]_i_1_n_0 ));
  FDRE \s_axi_ctrl_mgmt_rdata_i_reg[30] 
       (.C(aclk_ctrl),
        .CE(\s_axi_ctrl_mgmt_rdata_i[31]_i_2_n_0 ),
        .D(\s_axi_ctrl_mgmt_rdata_i[30]_i_1_n_0 ),
        .Q(s_axi_ctrl_mgmt_rdata[30]),
        .R(\s_axi_ctrl_mgmt_rdata_i[31]_i_1_n_0 ));
  FDRE \s_axi_ctrl_mgmt_rdata_i_reg[31] 
       (.C(aclk_ctrl),
        .CE(\s_axi_ctrl_mgmt_rdata_i[31]_i_2_n_0 ),
        .D(\s_axi_ctrl_mgmt_rdata_i[31]_i_3_n_0 ),
        .Q(s_axi_ctrl_mgmt_rdata[31]),
        .R(\s_axi_ctrl_mgmt_rdata_i[31]_i_1_n_0 ));
  FDRE \s_axi_ctrl_mgmt_rdata_i_reg[3] 
       (.C(aclk_ctrl),
        .CE(\s_axi_ctrl_mgmt_rdata_i[31]_i_2_n_0 ),
        .D(\s_axi_ctrl_mgmt_rdata_i[3]_i_1_n_0 ),
        .Q(s_axi_ctrl_mgmt_rdata[3]),
        .R(\s_axi_ctrl_mgmt_rdata_i[31]_i_1_n_0 ));
  FDRE \s_axi_ctrl_mgmt_rdata_i_reg[4] 
       (.C(aclk_ctrl),
        .CE(\s_axi_ctrl_mgmt_rdata_i[31]_i_2_n_0 ),
        .D(\s_axi_ctrl_mgmt_rdata_i[4]_i_1_n_0 ),
        .Q(s_axi_ctrl_mgmt_rdata[4]),
        .R(\s_axi_ctrl_mgmt_rdata_i[31]_i_1_n_0 ));
  FDRE \s_axi_ctrl_mgmt_rdata_i_reg[5] 
       (.C(aclk_ctrl),
        .CE(\s_axi_ctrl_mgmt_rdata_i[31]_i_2_n_0 ),
        .D(\s_axi_ctrl_mgmt_rdata_i[5]_i_1_n_0 ),
        .Q(s_axi_ctrl_mgmt_rdata[5]),
        .R(\s_axi_ctrl_mgmt_rdata_i[31]_i_1_n_0 ));
  FDRE \s_axi_ctrl_mgmt_rdata_i_reg[6] 
       (.C(aclk_ctrl),
        .CE(\s_axi_ctrl_mgmt_rdata_i[31]_i_2_n_0 ),
        .D(\s_axi_ctrl_mgmt_rdata_i[6]_i_1_n_0 ),
        .Q(s_axi_ctrl_mgmt_rdata[6]),
        .R(\s_axi_ctrl_mgmt_rdata_i[31]_i_1_n_0 ));
  FDRE \s_axi_ctrl_mgmt_rdata_i_reg[7] 
       (.C(aclk_ctrl),
        .CE(\s_axi_ctrl_mgmt_rdata_i[31]_i_2_n_0 ),
        .D(\s_axi_ctrl_mgmt_rdata_i[7]_i_1_n_0 ),
        .Q(s_axi_ctrl_mgmt_rdata[7]),
        .R(\s_axi_ctrl_mgmt_rdata_i[31]_i_1_n_0 ));
  FDRE \s_axi_ctrl_mgmt_rdata_i_reg[8] 
       (.C(aclk_ctrl),
        .CE(\s_axi_ctrl_mgmt_rdata_i[31]_i_2_n_0 ),
        .D(\s_axi_ctrl_mgmt_rdata_i[8]_i_1_n_0 ),
        .Q(s_axi_ctrl_mgmt_rdata[8]),
        .R(\s_axi_ctrl_mgmt_rdata_i[31]_i_1_n_0 ));
  FDRE \s_axi_ctrl_mgmt_rdata_i_reg[9] 
       (.C(aclk_ctrl),
        .CE(\s_axi_ctrl_mgmt_rdata_i[31]_i_2_n_0 ),
        .D(\s_axi_ctrl_mgmt_rdata_i[9]_i_1_n_0 ),
        .Q(s_axi_ctrl_mgmt_rdata[9]),
        .R(\s_axi_ctrl_mgmt_rdata_i[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h7444)) 
    s_axi_ctrl_mgmt_rvalid_i_i_1
       (.I0(s_axi_ctrl_mgmt_rready),
        .I1(s_axi_ctrl_mgmt_rvalid),
        .I2(s_axi_ctrl_mgmt_arvalid),
        .I3(s_axi_ctrl_mgmt_arready),
        .O(s_axi_ctrl_mgmt_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_ctrl_mgmt_rvalid_i_reg
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(s_axi_ctrl_mgmt_rvalid_i_i_1_n_0),
        .Q(s_axi_ctrl_mgmt_rvalid),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    startup_done_reg
       (.C(aclk_ctrl),
        .CE(Request_SW),
        .D(s_axi_ctrl_mgmt_wdata[0]),
        .Q(p_4_in),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    throttling_enabled_reg
       (.C(aclk_ctrl),
        .CE(request_ack),
        .D(s_axi_ctrl_mgmt_wdata[20]),
        .Q(p_6_in[20]),
        .R(clear));
  LUT6 #(
    .INIT(64'hFEFFF000FE00F000)) 
    user_rst_aclk_i_1
       (.I0(\user_rst_kernel[1]_i_7_n_0 ),
        .I1(\user_rst_kernel[1]_i_3_n_0 ),
        .I2(s_axi_ctrl_mgmt_wdata[0]),
        .I3(user_rst_aclk_i_2_n_0),
        .I4(p_0_in0),
        .I5(p_3_in),
        .O(user_rst_aclk_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    user_rst_aclk_i_2
       (.I0(\user_rst_kernel[1]_i_5_n_0 ),
        .I1(\Request_SW[15]_i_4_n_0 ),
        .O(user_rst_aclk_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    user_rst_aclk_reg
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(user_rst_aclk_i_1_n_0),
        .Q(p_3_in),
        .R(clear));
  LUT6 #(
    .INIT(64'h55550100FFFFFFFF)) 
    \user_rst_d[0]_i_1 
       (.I0(\Request_SW[15]_i_4_n_0 ),
        .I1(request_ack_i_2_n_0),
        .I2(s_axi_ctrl_mgmt_awaddr[12]),
        .I3(\user_rst_d[4]_i_3_n_0 ),
        .I4(\user_rst_kernel[1]_i_3_n_0 ),
        .I5(\user_rst_d_reg_n_0_[0] ),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'h9F9F9F9F9F999999)) 
    \user_rst_d[1]_i_1 
       (.I0(\user_rst_d_reg_n_0_[0] ),
        .I1(\user_rst_d_reg_n_0_[1] ),
        .I2(\Request_SW[15]_i_4_n_0 ),
        .I3(\user_rst_d[4]_i_5_n_0 ),
        .I4(\user_rst_d[4]_i_3_n_0 ),
        .I5(\user_rst_kernel[1]_i_3_n_0 ),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'h9F9F9F9F9F999999)) 
    \user_rst_d[2]_i_1 
       (.I0(\user_rst_d[2]_i_2_n_0 ),
        .I1(\user_rst_d_reg_n_0_[2] ),
        .I2(\Request_SW[15]_i_4_n_0 ),
        .I3(\user_rst_d[4]_i_5_n_0 ),
        .I4(\user_rst_d[4]_i_3_n_0 ),
        .I5(\user_rst_kernel[1]_i_3_n_0 ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \user_rst_d[2]_i_2 
       (.I0(\user_rst_d_reg_n_0_[0] ),
        .I1(\user_rst_d_reg_n_0_[1] ),
        .O(\user_rst_d[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9F9F9F9F9F999999)) 
    \user_rst_d[3]_i_1 
       (.I0(\user_rst_d[3]_i_2_n_0 ),
        .I1(p_0_in0),
        .I2(\Request_SW[15]_i_4_n_0 ),
        .I3(\user_rst_d[4]_i_5_n_0 ),
        .I4(\user_rst_d[4]_i_3_n_0 ),
        .I5(\user_rst_kernel[1]_i_3_n_0 ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \user_rst_d[3]_i_2 
       (.I0(\user_rst_d_reg_n_0_[1] ),
        .I1(\user_rst_d_reg_n_0_[0] ),
        .I2(\user_rst_d_reg_n_0_[2] ),
        .O(\user_rst_d[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBAAABAAAA)) 
    \user_rst_d[4]_i_1 
       (.I0(s_axi_ctrl_mgmt_arready_i_i_3_n_0),
        .I1(\Request_SW[15]_i_4_n_0 ),
        .I2(request_ack_i_2_n_0),
        .I3(s_axi_ctrl_mgmt_awaddr[12]),
        .I4(\user_rst_d[4]_i_3_n_0 ),
        .I5(\user_rst_kernel[1]_i_3_n_0 ),
        .O(\user_rst_d[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9F9F9F9F9F999999)) 
    \user_rst_d[4]_i_2 
       (.I0(\user_rst_d[4]_i_4_n_0 ),
        .I1(\user_rst_d_reg_n_0_[4] ),
        .I2(\Request_SW[15]_i_4_n_0 ),
        .I3(\user_rst_d[4]_i_5_n_0 ),
        .I4(\user_rst_d[4]_i_3_n_0 ),
        .I5(\user_rst_kernel[1]_i_3_n_0 ),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \user_rst_d[4]_i_3 
       (.I0(s_axi_ctrl_mgmt_awaddr[14]),
        .I1(s_axi_ctrl_mgmt_awaddr[13]),
        .I2(s_axi_ctrl_mgmt_awaddr[10]),
        .I3(s_axi_ctrl_mgmt_awaddr[11]),
        .O(\user_rst_d[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \user_rst_d[4]_i_4 
       (.I0(\user_rst_d_reg_n_0_[2] ),
        .I1(\user_rst_d_reg_n_0_[0] ),
        .I2(\user_rst_d_reg_n_0_[1] ),
        .I3(p_0_in0),
        .O(\user_rst_d[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \user_rst_d[4]_i_5 
       (.I0(s_axi_ctrl_mgmt_awaddr[3]),
        .I1(\Request_SW[15]_i_2_n_0 ),
        .I2(s_axi_ctrl_mgmt_awaddr[2]),
        .I3(s_axi_ctrl_mgmt_awaddr[9]),
        .I4(s_axi_ctrl_mgmt_awaddr[8]),
        .I5(s_axi_ctrl_mgmt_awaddr[12]),
        .O(\user_rst_d[4]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \user_rst_d_reg[0] 
       (.C(aclk_ctrl),
        .CE(\user_rst_d[4]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(\user_rst_d_reg_n_0_[0] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \user_rst_d_reg[1] 
       (.C(aclk_ctrl),
        .CE(\user_rst_d[4]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(\user_rst_d_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \user_rst_d_reg[2] 
       (.C(aclk_ctrl),
        .CE(\user_rst_d[4]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(\user_rst_d_reg_n_0_[2] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \user_rst_d_reg[3] 
       (.C(aclk_ctrl),
        .CE(\user_rst_d[4]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(p_0_in0),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \user_rst_d_reg[4] 
       (.C(aclk_ctrl),
        .CE(\user_rst_d[4]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(\user_rst_d_reg_n_0_[4] ),
        .R(clear));
  LUT6 #(
    .INIT(64'hF0F0F4F4F0F0F4E4)) 
    \user_rst_kernel[0]_i_1 
       (.I0(\Request_SW[15]_i_4_n_0 ),
        .I1(\user_rst_kernel[0]_i_2_n_0 ),
        .I2(p_0_in0),
        .I3(\user_rst_kernel[1]_i_5_n_0 ),
        .I4(\user_rst_kernel[1]_i_6_n_0 ),
        .I5(\user_rst_kernel[1]_i_7_n_0 ),
        .O(\user_rst_kernel[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \user_rst_kernel[0]_i_2 
       (.I0(s_axi_ctrl_mgmt_awaddr[12]),
        .I1(s_axi_ctrl_mgmt_wdata[0]),
        .I2(s_axi_ctrl_mgmt_awaddr[14]),
        .I3(s_axi_ctrl_mgmt_awaddr[13]),
        .O(\user_rst_kernel[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h01050000FFFFFFFF)) 
    \user_rst_kernel[1]_i_1 
       (.I0(\Request_SW[15]_i_4_n_0 ),
        .I1(s_axi_ctrl_mgmt_awaddr[13]),
        .I2(s_axi_ctrl_mgmt_awaddr[14]),
        .I3(s_axi_ctrl_mgmt_awaddr[12]),
        .I4(\user_rst_kernel[1]_i_3_n_0 ),
        .I5(p_0_in0),
        .O(\user_rst_kernel[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \user_rst_kernel[1]_i_10 
       (.I0(s_axi_ctrl_mgmt_awaddr[11]),
        .I1(s_axi_ctrl_mgmt_awaddr[10]),
        .O(\user_rst_kernel[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F4F4F0F0F4E4)) 
    \user_rst_kernel[1]_i_2 
       (.I0(\Request_SW[15]_i_4_n_0 ),
        .I1(\user_rst_kernel[1]_i_4_n_0 ),
        .I2(p_0_in0),
        .I3(\user_rst_kernel[1]_i_5_n_0 ),
        .I4(\user_rst_kernel[1]_i_6_n_0 ),
        .I5(\user_rst_kernel[1]_i_7_n_0 ),
        .O(\user_rst_kernel[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \user_rst_kernel[1]_i_3 
       (.I0(s_axi_ctrl_mgmt_awaddr[15]),
        .I1(s_axi_ctrl_mgmt_awaddr[11]),
        .I2(s_axi_ctrl_mgmt_awaddr[10]),
        .I3(s_axi_ctrl_mgmt_awaddr[3]),
        .I4(\Request_SW[15]_i_2_n_0 ),
        .I5(\Request_SW[15]_i_3_n_0 ),
        .O(\user_rst_kernel[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \user_rst_kernel[1]_i_4 
       (.I0(s_axi_ctrl_mgmt_awaddr[12]),
        .I1(s_axi_ctrl_mgmt_wdata[0]),
        .I2(s_axi_ctrl_mgmt_awaddr[14]),
        .I3(s_axi_ctrl_mgmt_awaddr[13]),
        .O(\user_rst_kernel[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \user_rst_kernel[1]_i_5 
       (.I0(\user_rst_kernel[1]_i_8_n_0 ),
        .I1(s_axi_ctrl_mgmt_awaddr[3]),
        .I2(\Request_SW[15]_i_2_n_0 ),
        .I3(s_axi_ctrl_mgmt_awaddr[2]),
        .I4(s_axi_ctrl_mgmt_awaddr[9]),
        .I5(s_axi_ctrl_mgmt_awaddr[8]),
        .O(\user_rst_kernel[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \user_rst_kernel[1]_i_6 
       (.I0(\user_rst_kernel[1]_i_9_n_0 ),
        .I1(\Request_SW[15]_i_3_n_0 ),
        .I2(\Request_SW[15]_i_2_n_0 ),
        .I3(s_axi_ctrl_mgmt_awaddr[3]),
        .I4(\user_rst_kernel[1]_i_10_n_0 ),
        .I5(s_axi_ctrl_mgmt_awaddr[15]),
        .O(\user_rst_kernel[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h10010000)) 
    \user_rst_kernel[1]_i_7 
       (.I0(\Request_SW[15]_i_2_n_0 ),
        .I1(\Request_SW[15]_i_3_n_0 ),
        .I2(s_axi_ctrl_mgmt_awaddr[12]),
        .I3(s_axi_ctrl_mgmt_awaddr[3]),
        .I4(\Request_SW[15]_i_5_n_0 ),
        .O(\user_rst_kernel[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \user_rst_kernel[1]_i_8 
       (.I0(s_axi_ctrl_mgmt_awaddr[12]),
        .I1(s_axi_ctrl_mgmt_awaddr[13]),
        .I2(s_axi_ctrl_mgmt_awaddr[14]),
        .I3(s_axi_ctrl_mgmt_awaddr[15]),
        .I4(s_axi_ctrl_mgmt_awaddr[11]),
        .I5(s_axi_ctrl_mgmt_awaddr[10]),
        .O(\user_rst_kernel[1]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h13)) 
    \user_rst_kernel[1]_i_9 
       (.I0(s_axi_ctrl_mgmt_awaddr[12]),
        .I1(s_axi_ctrl_mgmt_awaddr[14]),
        .I2(s_axi_ctrl_mgmt_awaddr[13]),
        .O(\user_rst_kernel[1]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \user_rst_kernel_reg[0] 
       (.C(aclk_ctrl),
        .CE(\user_rst_kernel[1]_i_1_n_0 ),
        .D(\user_rst_kernel[0]_i_1_n_0 ),
        .Q(\user_rst_kernel_reg_n_0_[0] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \user_rst_kernel_reg[1] 
       (.C(aclk_ctrl),
        .CE(\user_rst_kernel[1]_i_1_n_0 ),
        .D(\user_rst_kernel[1]_i_2_n_0 ),
        .Q(\user_rst_kernel_reg_n_0_[1] ),
        .R(clear));
endmodule

(* CHECK_LICENSE_TYPE = "top_shell_utils_ucc_0,shell_utils_ucc_v1_0_0_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "shell_utils_ucc_v1_0_0_top,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk_ctrl,
    aclk_freerun,
    aclk_pcie,
    aresetn_ctrl,
    aclk_kernel_00,
    aclk_kernel_01,
    aclk_kernel_cont_00,
    aclk_kernel_cont_01,
    aclk_ext_tog_kernel_00,
    aclk_ext_tog_kernel_01,
    clk_in_kernel_00,
    clk_in_kernel_01,
    clk_kernel_00_locked,
    clk_kernel_01_locked,
    ext_tog_ctrl_kernel_00_enable,
    ext_tog_ctrl_kernel_01_enable,
    ext_tog_ctrl_kernel_00_in,
    ext_tog_ctrl_kernel_01_in,
    ext_tog_ctrl_kernel_00_out,
    ext_tog_ctrl_kernel_01_out,
    rst_async_kernel_00,
    rst_async_kernel_01,
    power_down,
    shutdown_clocks,
    s_axi_ctrl_mgmt_araddr,
    s_axi_ctrl_mgmt_arready,
    s_axi_ctrl_mgmt_arvalid,
    s_axi_ctrl_mgmt_awaddr,
    s_axi_ctrl_mgmt_awready,
    s_axi_ctrl_mgmt_awvalid,
    s_axi_ctrl_mgmt_bready,
    s_axi_ctrl_mgmt_bresp,
    s_axi_ctrl_mgmt_bvalid,
    s_axi_ctrl_mgmt_rdata,
    s_axi_ctrl_mgmt_rready,
    s_axi_ctrl_mgmt_rresp,
    s_axi_ctrl_mgmt_rvalid,
    s_axi_ctrl_mgmt_wdata,
    s_axi_ctrl_mgmt_wready,
    s_axi_ctrl_mgmt_wstrb,
    s_axi_ctrl_mgmt_wvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK_CTRL CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK_CTRL, ASSOCIATED_BUSIF S_AXI_CTRL_MGMT, ASSOCIATED_RESET aresetn_ctrl, FREQ_HZ 99999992, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_4885_pspmc_0_0_pl0_ref_clk, INSERT_VIP 0" *) input aclk_ctrl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK_FREE CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK_FREE, FREQ_HZ 33333332, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_4885_pspmc_0_0_pl1_ref_clk, INSERT_VIP 0" *) input aclk_freerun;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK_PCIE CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK_PCIE, FREQ_HZ 249999985, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_4885_pspmc_0_0_pl2_ref_clk, INSERT_VIP 0" *) input aclk_pcie;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST_CTRL RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST_CTRL, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn_ctrl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK_KERNEL_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK_KERNEL_00, CLK_DOMAIN cd_aclk_kernel_00, FREQ_HZ 299996999, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) output aclk_kernel_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK_KERNEL_01 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK_KERNEL_01, CLK_DOMAIN cd_aclk_kernel_01, FREQ_HZ 499994999, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) output aclk_kernel_01;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK_KERNEL_CONT_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK_KERNEL_CONT_00, CLK_DOMAIN cd_aclk_kernel_00, FREQ_HZ 299996999, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) output aclk_kernel_cont_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK_KERNEL_CONT_01 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK_KERNEL_CONT_01, CLK_DOMAIN cd_aclk_kernel_01, FREQ_HZ 499994999, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) output aclk_kernel_cont_01;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK_EXT_TOG_KERNEL_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK_EXT_TOG_KERNEL_00, CLK_DOMAIN cd_aclk_ext_tog_kernel_00, FREQ_HZ 299996999, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) output aclk_ext_tog_kernel_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK_EXT_TOG_KERNEL_01 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK_EXT_TOG_KERNEL_01, CLK_DOMAIN cd_aclk_ext_tog_kernel_01, FREQ_HZ 499994999, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) output aclk_ext_tog_kernel_01;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK_IN_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK_IN_00, FREQ_HZ 299996999, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN top_clkwiz_aclk_kernel_00_0_clk_out1, INSERT_VIP 0" *) input clk_in_kernel_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK_IN_01 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK_IN_01, FREQ_HZ 499994999, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN top_clkwiz_aclk_kernel_01_0_clk_out1, INSERT_VIP 0" *) input clk_in_kernel_01;
  input clk_kernel_00_locked;
  input clk_kernel_01_locked;
  input ext_tog_ctrl_kernel_00_enable;
  input ext_tog_ctrl_kernel_01_enable;
  input ext_tog_ctrl_kernel_00_in;
  input ext_tog_ctrl_kernel_01_in;
  output ext_tog_ctrl_kernel_00_out;
  output ext_tog_ctrl_kernel_01_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST_ASYNC_KERNEL_00 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST_ASYNC_KERNEL_00, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output rst_async_kernel_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST_ASYNC_KERNEL_01 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST_ASYNC_KERNEL_01, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output rst_async_kernel_01;
  output power_down;
  input shutdown_clocks;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL_MGMT ARADDR" *) input [31:0]s_axi_ctrl_mgmt_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL_MGMT ARREADY" *) output s_axi_ctrl_mgmt_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL_MGMT ARVALID" *) input s_axi_ctrl_mgmt_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL_MGMT AWADDR" *) input [31:0]s_axi_ctrl_mgmt_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL_MGMT AWREADY" *) output s_axi_ctrl_mgmt_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL_MGMT AWVALID" *) input s_axi_ctrl_mgmt_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL_MGMT BREADY" *) input s_axi_ctrl_mgmt_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL_MGMT BRESP" *) output [1:0]s_axi_ctrl_mgmt_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL_MGMT BVALID" *) output s_axi_ctrl_mgmt_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL_MGMT RDATA" *) output [31:0]s_axi_ctrl_mgmt_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL_MGMT RREADY" *) input s_axi_ctrl_mgmt_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL_MGMT RRESP" *) output [1:0]s_axi_ctrl_mgmt_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL_MGMT RVALID" *) output s_axi_ctrl_mgmt_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL_MGMT WDATA" *) input [31:0]s_axi_ctrl_mgmt_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL_MGMT WREADY" *) output s_axi_ctrl_mgmt_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL_MGMT WSTRB" *) input [3:0]s_axi_ctrl_mgmt_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL_MGMT WVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CTRL_MGMT, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999992, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_4885_pspmc_0_0_pl0_ref_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_ctrl_mgmt_wvalid;

  wire \<const0> ;
  wire aclk_ctrl;
  wire aclk_ext_tog_kernel_00;
  wire aclk_ext_tog_kernel_01;
  wire aclk_freerun;
  wire aclk_kernel_00;
  wire aclk_kernel_01;
  wire aclk_kernel_cont_00;
  wire aclk_kernel_cont_01;
  wire aclk_pcie;
  wire aresetn_ctrl;
  wire clk_in_kernel_00;
  wire clk_in_kernel_01;
  wire clk_kernel_00_locked;
  wire clk_kernel_01_locked;
  wire ext_tog_ctrl_kernel_00_enable;
  wire ext_tog_ctrl_kernel_00_in;
  wire ext_tog_ctrl_kernel_00_out;
  wire ext_tog_ctrl_kernel_01_enable;
  wire ext_tog_ctrl_kernel_01_in;
  wire ext_tog_ctrl_kernel_01_out;
  wire power_down;
  wire rst_async_kernel_00;
  wire rst_async_kernel_01;
  wire [31:0]s_axi_ctrl_mgmt_araddr;
  wire s_axi_ctrl_mgmt_arready;
  wire s_axi_ctrl_mgmt_arvalid;
  wire [31:0]s_axi_ctrl_mgmt_awaddr;
  wire s_axi_ctrl_mgmt_awready;
  wire s_axi_ctrl_mgmt_awvalid;
  wire s_axi_ctrl_mgmt_bready;
  wire s_axi_ctrl_mgmt_bvalid;
  wire [31:0]s_axi_ctrl_mgmt_rdata;
  wire s_axi_ctrl_mgmt_rready;
  wire s_axi_ctrl_mgmt_rvalid;
  wire [31:0]s_axi_ctrl_mgmt_wdata;
  wire s_axi_ctrl_mgmt_wready;
  wire s_axi_ctrl_mgmt_wvalid;
  wire shutdown_clocks;
  wire NLW_inst_aclk_ext_tog_kernel_02_UNCONNECTED;
  wire NLW_inst_aclk_ext_tog_kernel_03_UNCONNECTED;
  wire NLW_inst_aclk_ext_tog_kernel_04_UNCONNECTED;
  wire NLW_inst_aclk_ext_tog_kernel_05_UNCONNECTED;
  wire NLW_inst_aclk_kernel_02_UNCONNECTED;
  wire NLW_inst_aclk_kernel_03_UNCONNECTED;
  wire NLW_inst_aclk_kernel_04_UNCONNECTED;
  wire NLW_inst_aclk_kernel_05_UNCONNECTED;
  wire NLW_inst_aclk_kernel_cont_02_UNCONNECTED;
  wire NLW_inst_aclk_kernel_cont_03_UNCONNECTED;
  wire NLW_inst_aclk_kernel_cont_04_UNCONNECTED;
  wire NLW_inst_aclk_kernel_cont_05_UNCONNECTED;
  wire NLW_inst_ext_tog_ctrl_kernel_02_out_UNCONNECTED;
  wire NLW_inst_ext_tog_ctrl_kernel_03_out_UNCONNECTED;
  wire NLW_inst_ext_tog_ctrl_kernel_04_out_UNCONNECTED;
  wire NLW_inst_ext_tog_ctrl_kernel_05_out_UNCONNECTED;
  wire NLW_inst_rst_async_kernel_02_UNCONNECTED;
  wire NLW_inst_rst_async_kernel_03_UNCONNECTED;
  wire NLW_inst_rst_async_kernel_04_UNCONNECTED;
  wire NLW_inst_rst_async_kernel_05_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_ctrl_mgmt_bresp_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_ctrl_mgmt_rresp_UNCONNECTED;

  assign s_axi_ctrl_mgmt_bresp[1] = \<const0> ;
  assign s_axi_ctrl_mgmt_bresp[0] = \<const0> ;
  assign s_axi_ctrl_mgmt_rresp[1] = \<const0> ;
  assign s_axi_ctrl_mgmt_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_EXT_TOG_ENABLE = "1" *) 
  (* C_FREQ_CNT_REF_CLK_HZ = "33333" *) 
  (* C_NUM_CLOCKS = "2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_ucc_v1_0_0_top inst
       (.aclk_ctrl(aclk_ctrl),
        .aclk_ext_tog_kernel_00(aclk_ext_tog_kernel_00),
        .aclk_ext_tog_kernel_01(aclk_ext_tog_kernel_01),
        .aclk_ext_tog_kernel_02(NLW_inst_aclk_ext_tog_kernel_02_UNCONNECTED),
        .aclk_ext_tog_kernel_03(NLW_inst_aclk_ext_tog_kernel_03_UNCONNECTED),
        .aclk_ext_tog_kernel_04(NLW_inst_aclk_ext_tog_kernel_04_UNCONNECTED),
        .aclk_ext_tog_kernel_05(NLW_inst_aclk_ext_tog_kernel_05_UNCONNECTED),
        .aclk_freerun(aclk_freerun),
        .aclk_kernel_00(aclk_kernel_00),
        .aclk_kernel_01(aclk_kernel_01),
        .aclk_kernel_02(NLW_inst_aclk_kernel_02_UNCONNECTED),
        .aclk_kernel_03(NLW_inst_aclk_kernel_03_UNCONNECTED),
        .aclk_kernel_04(NLW_inst_aclk_kernel_04_UNCONNECTED),
        .aclk_kernel_05(NLW_inst_aclk_kernel_05_UNCONNECTED),
        .aclk_kernel_cont_00(aclk_kernel_cont_00),
        .aclk_kernel_cont_01(aclk_kernel_cont_01),
        .aclk_kernel_cont_02(NLW_inst_aclk_kernel_cont_02_UNCONNECTED),
        .aclk_kernel_cont_03(NLW_inst_aclk_kernel_cont_03_UNCONNECTED),
        .aclk_kernel_cont_04(NLW_inst_aclk_kernel_cont_04_UNCONNECTED),
        .aclk_kernel_cont_05(NLW_inst_aclk_kernel_cont_05_UNCONNECTED),
        .aclk_pcie(aclk_pcie),
        .aresetn_ctrl(aresetn_ctrl),
        .clk_in_kernel_00(clk_in_kernel_00),
        .clk_in_kernel_01(clk_in_kernel_01),
        .clk_in_kernel_02(1'b0),
        .clk_in_kernel_03(1'b0),
        .clk_in_kernel_04(1'b0),
        .clk_in_kernel_05(1'b0),
        .clk_kernel_00_locked(clk_kernel_00_locked),
        .clk_kernel_01_locked(clk_kernel_01_locked),
        .clk_kernel_02_locked(1'b1),
        .clk_kernel_03_locked(1'b1),
        .clk_kernel_04_locked(1'b1),
        .clk_kernel_05_locked(1'b1),
        .ext_tog_ctrl_kernel_00_enable(ext_tog_ctrl_kernel_00_enable),
        .ext_tog_ctrl_kernel_00_in(ext_tog_ctrl_kernel_00_in),
        .ext_tog_ctrl_kernel_00_out(ext_tog_ctrl_kernel_00_out),
        .ext_tog_ctrl_kernel_01_enable(ext_tog_ctrl_kernel_01_enable),
        .ext_tog_ctrl_kernel_01_in(ext_tog_ctrl_kernel_01_in),
        .ext_tog_ctrl_kernel_01_out(ext_tog_ctrl_kernel_01_out),
        .ext_tog_ctrl_kernel_02_enable(1'b0),
        .ext_tog_ctrl_kernel_02_in(1'b0),
        .ext_tog_ctrl_kernel_02_out(NLW_inst_ext_tog_ctrl_kernel_02_out_UNCONNECTED),
        .ext_tog_ctrl_kernel_03_enable(1'b0),
        .ext_tog_ctrl_kernel_03_in(1'b0),
        .ext_tog_ctrl_kernel_03_out(NLW_inst_ext_tog_ctrl_kernel_03_out_UNCONNECTED),
        .ext_tog_ctrl_kernel_04_enable(1'b0),
        .ext_tog_ctrl_kernel_04_in(1'b0),
        .ext_tog_ctrl_kernel_04_out(NLW_inst_ext_tog_ctrl_kernel_04_out_UNCONNECTED),
        .ext_tog_ctrl_kernel_05_enable(1'b0),
        .ext_tog_ctrl_kernel_05_in(1'b0),
        .ext_tog_ctrl_kernel_05_out(NLW_inst_ext_tog_ctrl_kernel_05_out_UNCONNECTED),
        .power_down(power_down),
        .rst_async_kernel_00(rst_async_kernel_00),
        .rst_async_kernel_01(rst_async_kernel_01),
        .rst_async_kernel_02(NLW_inst_rst_async_kernel_02_UNCONNECTED),
        .rst_async_kernel_03(NLW_inst_rst_async_kernel_03_UNCONNECTED),
        .rst_async_kernel_04(NLW_inst_rst_async_kernel_04_UNCONNECTED),
        .rst_async_kernel_05(NLW_inst_rst_async_kernel_05_UNCONNECTED),
        .s_axi_ctrl_mgmt_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_ctrl_mgmt_araddr[15:2],1'b0,1'b0}),
        .s_axi_ctrl_mgmt_arready(s_axi_ctrl_mgmt_arready),
        .s_axi_ctrl_mgmt_arvalid(s_axi_ctrl_mgmt_arvalid),
        .s_axi_ctrl_mgmt_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_ctrl_mgmt_awaddr[15:2],1'b0,1'b0}),
        .s_axi_ctrl_mgmt_awready(s_axi_ctrl_mgmt_awready),
        .s_axi_ctrl_mgmt_awvalid(s_axi_ctrl_mgmt_awvalid),
        .s_axi_ctrl_mgmt_bready(s_axi_ctrl_mgmt_bready),
        .s_axi_ctrl_mgmt_bresp(NLW_inst_s_axi_ctrl_mgmt_bresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_mgmt_bvalid(s_axi_ctrl_mgmt_bvalid),
        .s_axi_ctrl_mgmt_rdata(s_axi_ctrl_mgmt_rdata),
        .s_axi_ctrl_mgmt_rready(s_axi_ctrl_mgmt_rready),
        .s_axi_ctrl_mgmt_rresp(NLW_inst_s_axi_ctrl_mgmt_rresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_mgmt_rvalid(s_axi_ctrl_mgmt_rvalid),
        .s_axi_ctrl_mgmt_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_ctrl_mgmt_wdata[24],1'b0,1'b0,1'b0,s_axi_ctrl_mgmt_wdata[20:0]}),
        .s_axi_ctrl_mgmt_wready(s_axi_ctrl_mgmt_wready),
        .s_axi_ctrl_mgmt_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_mgmt_wvalid(s_axi_ctrl_mgmt_wvalid),
        .shutdown_clocks(shutdown_clocks));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* WIDTH = "8" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [7:0]src_in;
  input dest_clk;
  output [7:0]dest_out;

  wire [7:0]async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [7:0]\syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [7:0]\syncstages_ff[1] ;

  assign async_path_bit = src_in[7:0];
  assign dest_out[7:0] = \syncstages_ff[1] ;
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
  FDRE \syncstages_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [0]),
        .Q(\syncstages_ff[1] [0]),
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
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_array_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ARRAY_SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [7:0]src_in;
  input dest_clk;
  output [7:0]dest_out;

  wire [7:0]async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [7:0]\syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [7:0]\syncstages_ff[1] ;

  assign async_path_bit = src_in[7:0];
  assign dest_out[7:0] = \syncstages_ff[1] ;
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
  FDRE \syncstages_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [0]),
        .Q(\syncstages_ff[1] [0]),
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
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_array_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* WIDTH = "1" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ARRAY_SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [0:0]src_in;
  input dest_clk;
  output [0:0]dest_out;

  wire async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire \syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire \syncstages_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire \syncstages_ff[2] ;

  assign async_path_bit = src_in[0];
  assign dest_out[0] = \syncstages_ff[2] ;
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit),
        .Q(\syncstages_ff[0] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] ),
        .Q(\syncstages_ff[1] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] ),
        .Q(\syncstages_ff[2] ),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_array_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* WIDTH = "1" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ARRAY_SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0__10
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [0:0]src_in;
  input dest_clk;
  output [0:0]dest_out;

  wire async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire \syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire \syncstages_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire \syncstages_ff[2] ;

  assign async_path_bit = src_in[0];
  assign dest_out[0] = \syncstages_ff[2] ;
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit),
        .Q(\syncstages_ff[0] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] ),
        .Q(\syncstages_ff[1] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] ),
        .Q(\syncstages_ff[2] ),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_array_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* WIDTH = "1" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ARRAY_SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0__6
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [0:0]src_in;
  input dest_clk;
  output [0:0]dest_out;

  wire async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire \syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire \syncstages_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire \syncstages_ff[2] ;

  assign async_path_bit = src_in[0];
  assign dest_out[0] = \syncstages_ff[2] ;
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit),
        .Q(\syncstages_ff[0] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] ),
        .Q(\syncstages_ff[1] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] ),
        .Q(\syncstages_ff[2] ),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_array_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* WIDTH = "1" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ARRAY_SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0__7
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [0:0]src_in;
  input dest_clk;
  output [0:0]dest_out;

  wire async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire \syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire \syncstages_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire \syncstages_ff[2] ;

  assign async_path_bit = src_in[0];
  assign dest_out[0] = \syncstages_ff[2] ;
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit),
        .Q(\syncstages_ff[0] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] ),
        .Q(\syncstages_ff[1] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] ),
        .Q(\syncstages_ff[2] ),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_array_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* WIDTH = "1" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ARRAY_SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0__8
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [0:0]src_in;
  input dest_clk;
  output [0:0]dest_out;

  wire async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire \syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire \syncstages_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire \syncstages_ff[2] ;

  assign async_path_bit = src_in[0];
  assign dest_out[0] = \syncstages_ff[2] ;
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit),
        .Q(\syncstages_ff[0] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] ),
        .Q(\syncstages_ff[1] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] ),
        .Q(\syncstages_ff[2] ),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_array_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* WIDTH = "1" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ARRAY_SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0__9
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [0:0]src_in;
  input dest_clk;
  output [0:0]dest_out;

  wire async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire \syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire \syncstages_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire \syncstages_ff[2] ;

  assign async_path_bit = src_in[0];
  assign dest_out[0] = \syncstages_ff[2] ;
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit),
        .Q(\syncstages_ff[0] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] ),
        .Q(\syncstages_ff[1] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] ),
        .Q(\syncstages_ff[2] ),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_array_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* WIDTH = "23" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ARRAY_SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized1
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [22:0]src_in;
  input dest_clk;
  output [22:0]dest_out;

  wire [22:0]async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [22:0]\syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [22:0]\syncstages_ff[1] ;

  assign async_path_bit = src_in[22:0];
  assign dest_out[22:0] = \syncstages_ff[1] ;
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
  FDRE \syncstages_ff_reg[0][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[16]),
        .Q(\syncstages_ff[0] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[17]),
        .Q(\syncstages_ff[0] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[18]),
        .Q(\syncstages_ff[0] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[19]),
        .Q(\syncstages_ff[0] [19]),
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
  FDRE \syncstages_ff_reg[0][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[20]),
        .Q(\syncstages_ff[0] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[21]),
        .Q(\syncstages_ff[0] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[22]),
        .Q(\syncstages_ff[0] [22]),
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
  FDRE \syncstages_ff_reg[1][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [16]),
        .Q(\syncstages_ff[1] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [17]),
        .Q(\syncstages_ff[1] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [18]),
        .Q(\syncstages_ff[1] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [19]),
        .Q(\syncstages_ff[1] [19]),
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
  FDRE \syncstages_ff_reg[1][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [20]),
        .Q(\syncstages_ff[1] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [21]),
        .Q(\syncstages_ff[1] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [22]),
        .Q(\syncstages_ff[1] [22]),
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
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_array_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* WIDTH = "23" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ARRAY_SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized1__10
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [22:0]src_in;
  input dest_clk;
  output [22:0]dest_out;

  wire [22:0]async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [22:0]\syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [22:0]\syncstages_ff[1] ;

  assign async_path_bit = src_in[22:0];
  assign dest_out[22:0] = \syncstages_ff[1] ;
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
  FDRE \syncstages_ff_reg[0][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[16]),
        .Q(\syncstages_ff[0] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[17]),
        .Q(\syncstages_ff[0] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[18]),
        .Q(\syncstages_ff[0] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[19]),
        .Q(\syncstages_ff[0] [19]),
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
  FDRE \syncstages_ff_reg[0][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[20]),
        .Q(\syncstages_ff[0] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[21]),
        .Q(\syncstages_ff[0] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[22]),
        .Q(\syncstages_ff[0] [22]),
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
  FDRE \syncstages_ff_reg[1][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [16]),
        .Q(\syncstages_ff[1] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [17]),
        .Q(\syncstages_ff[1] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [18]),
        .Q(\syncstages_ff[1] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [19]),
        .Q(\syncstages_ff[1] [19]),
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
  FDRE \syncstages_ff_reg[1][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [20]),
        .Q(\syncstages_ff[1] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [21]),
        .Q(\syncstages_ff[1] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [22]),
        .Q(\syncstages_ff[1] [22]),
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
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_array_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* WIDTH = "23" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ARRAY_SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized1__6
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [22:0]src_in;
  input dest_clk;
  output [22:0]dest_out;

  wire [22:0]async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [22:0]\syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [22:0]\syncstages_ff[1] ;

  assign async_path_bit = src_in[22:0];
  assign dest_out[22:0] = \syncstages_ff[1] ;
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
  FDRE \syncstages_ff_reg[0][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[16]),
        .Q(\syncstages_ff[0] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[17]),
        .Q(\syncstages_ff[0] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[18]),
        .Q(\syncstages_ff[0] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[19]),
        .Q(\syncstages_ff[0] [19]),
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
  FDRE \syncstages_ff_reg[0][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[20]),
        .Q(\syncstages_ff[0] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[21]),
        .Q(\syncstages_ff[0] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[22]),
        .Q(\syncstages_ff[0] [22]),
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
  FDRE \syncstages_ff_reg[1][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [16]),
        .Q(\syncstages_ff[1] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [17]),
        .Q(\syncstages_ff[1] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [18]),
        .Q(\syncstages_ff[1] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [19]),
        .Q(\syncstages_ff[1] [19]),
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
  FDRE \syncstages_ff_reg[1][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [20]),
        .Q(\syncstages_ff[1] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [21]),
        .Q(\syncstages_ff[1] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [22]),
        .Q(\syncstages_ff[1] [22]),
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
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_array_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* WIDTH = "23" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ARRAY_SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized1__7
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [22:0]src_in;
  input dest_clk;
  output [22:0]dest_out;

  wire [22:0]async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [22:0]\syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [22:0]\syncstages_ff[1] ;

  assign async_path_bit = src_in[22:0];
  assign dest_out[22:0] = \syncstages_ff[1] ;
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
  FDRE \syncstages_ff_reg[0][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[16]),
        .Q(\syncstages_ff[0] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[17]),
        .Q(\syncstages_ff[0] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[18]),
        .Q(\syncstages_ff[0] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[19]),
        .Q(\syncstages_ff[0] [19]),
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
  FDRE \syncstages_ff_reg[0][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[20]),
        .Q(\syncstages_ff[0] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[21]),
        .Q(\syncstages_ff[0] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[22]),
        .Q(\syncstages_ff[0] [22]),
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
  FDRE \syncstages_ff_reg[1][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [16]),
        .Q(\syncstages_ff[1] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [17]),
        .Q(\syncstages_ff[1] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [18]),
        .Q(\syncstages_ff[1] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [19]),
        .Q(\syncstages_ff[1] [19]),
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
  FDRE \syncstages_ff_reg[1][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [20]),
        .Q(\syncstages_ff[1] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [21]),
        .Q(\syncstages_ff[1] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [22]),
        .Q(\syncstages_ff[1] [22]),
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
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_array_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* WIDTH = "23" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ARRAY_SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized1__8
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [22:0]src_in;
  input dest_clk;
  output [22:0]dest_out;

  wire [22:0]async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [22:0]\syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [22:0]\syncstages_ff[1] ;

  assign async_path_bit = src_in[22:0];
  assign dest_out[22:0] = \syncstages_ff[1] ;
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
  FDRE \syncstages_ff_reg[0][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[16]),
        .Q(\syncstages_ff[0] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[17]),
        .Q(\syncstages_ff[0] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[18]),
        .Q(\syncstages_ff[0] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[19]),
        .Q(\syncstages_ff[0] [19]),
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
  FDRE \syncstages_ff_reg[0][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[20]),
        .Q(\syncstages_ff[0] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[21]),
        .Q(\syncstages_ff[0] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[22]),
        .Q(\syncstages_ff[0] [22]),
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
  FDRE \syncstages_ff_reg[1][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [16]),
        .Q(\syncstages_ff[1] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [17]),
        .Q(\syncstages_ff[1] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [18]),
        .Q(\syncstages_ff[1] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [19]),
        .Q(\syncstages_ff[1] [19]),
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
  FDRE \syncstages_ff_reg[1][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [20]),
        .Q(\syncstages_ff[1] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [21]),
        .Q(\syncstages_ff[1] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [22]),
        .Q(\syncstages_ff[1] [22]),
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
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_array_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* WIDTH = "23" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ARRAY_SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized1__9
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [22:0]src_in;
  input dest_clk;
  output [22:0]dest_out;

  wire [22:0]async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [22:0]\syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [22:0]\syncstages_ff[1] ;

  assign async_path_bit = src_in[22:0];
  assign dest_out[22:0] = \syncstages_ff[1] ;
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
  FDRE \syncstages_ff_reg[0][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[16]),
        .Q(\syncstages_ff[0] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[17]),
        .Q(\syncstages_ff[0] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[18]),
        .Q(\syncstages_ff[0] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[19]),
        .Q(\syncstages_ff[0] [19]),
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
  FDRE \syncstages_ff_reg[0][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[20]),
        .Q(\syncstages_ff[0] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[21]),
        .Q(\syncstages_ff[0] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[22]),
        .Q(\syncstages_ff[0] [22]),
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
  FDRE \syncstages_ff_reg[1][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [16]),
        .Q(\syncstages_ff[1] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [17]),
        .Q(\syncstages_ff[1] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [18]),
        .Q(\syncstages_ff[1] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [19]),
        .Q(\syncstages_ff[1] [19]),
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
  FDRE \syncstages_ff_reg[1][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [20]),
        .Q(\syncstages_ff[1] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [21]),
        .Q(\syncstages_ff[1] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [22]),
        .Q(\syncstages_ff[1] [22]),
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
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_array_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* WIDTH = "97" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ARRAY_SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [96:0]src_in;
  input dest_clk;
  output [96:0]dest_out;

  wire [96:0]async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [96:0]\syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [96:0]\syncstages_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [96:0]\syncstages_ff[2] ;

  assign async_path_bit[96] = src_in[96];
  assign async_path_bit[79:64] = src_in[79:64];
  assign async_path_bit[55] = src_in[63];
  assign async_path_bit[54:32] = src_in[54:32];
  assign async_path_bit[23] = src_in[31];
  assign async_path_bit[22:0] = src_in[22:0];
  assign dest_out[96:0] = \syncstages_ff[2] ;
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst
       (.I0(async_path_bit[55]),
        .O(async_path_bit[63]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__0
       (.I0(async_path_bit[55]),
        .O(async_path_bit[62]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__1
       (.I0(async_path_bit[55]),
        .O(async_path_bit[61]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__10
       (.I0(async_path_bit[23]),
        .O(async_path_bit[28]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__11
       (.I0(async_path_bit[23]),
        .O(async_path_bit[27]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__12
       (.I0(async_path_bit[23]),
        .O(async_path_bit[26]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__13
       (.I0(async_path_bit[23]),
        .O(async_path_bit[25]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__14
       (.I0(async_path_bit[23]),
        .O(async_path_bit[24]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__2
       (.I0(async_path_bit[55]),
        .O(async_path_bit[60]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__3
       (.I0(async_path_bit[55]),
        .O(async_path_bit[59]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__4
       (.I0(async_path_bit[55]),
        .O(async_path_bit[58]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__5
       (.I0(async_path_bit[55]),
        .O(async_path_bit[57]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__6
       (.I0(async_path_bit[55]),
        .O(async_path_bit[56]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__7
       (.I0(async_path_bit[23]),
        .O(async_path_bit[31]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__8
       (.I0(async_path_bit[23]),
        .O(async_path_bit[30]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__9
       (.I0(async_path_bit[23]),
        .O(async_path_bit[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(async_path_bit[95]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(async_path_bit[94]));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(async_path_bit[85]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(async_path_bit[84]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(async_path_bit[83]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(async_path_bit[82]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(async_path_bit[81]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(async_path_bit[80]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(async_path_bit[93]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(async_path_bit[92]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(async_path_bit[91]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(async_path_bit[90]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(async_path_bit[89]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(async_path_bit[88]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(async_path_bit[87]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(async_path_bit[86]));
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
  FDRE \syncstages_ff_reg[0][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[16]),
        .Q(\syncstages_ff[0] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[17]),
        .Q(\syncstages_ff[0] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[18]),
        .Q(\syncstages_ff[0] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[19]),
        .Q(\syncstages_ff[0] [19]),
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
  FDRE \syncstages_ff_reg[0][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[20]),
        .Q(\syncstages_ff[0] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[21]),
        .Q(\syncstages_ff[0] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[22]),
        .Q(\syncstages_ff[0] [22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][23] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[23]),
        .Q(\syncstages_ff[0] [23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][24] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[24]),
        .Q(\syncstages_ff[0] [24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][25] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[25]),
        .Q(\syncstages_ff[0] [25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][26] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[26]),
        .Q(\syncstages_ff[0] [26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][27] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[27]),
        .Q(\syncstages_ff[0] [27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][28] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[28]),
        .Q(\syncstages_ff[0] [28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][29] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[29]),
        .Q(\syncstages_ff[0] [29]),
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
  FDRE \syncstages_ff_reg[0][30] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[30]),
        .Q(\syncstages_ff[0] [30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][31] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[31]),
        .Q(\syncstages_ff[0] [31]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][32] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[32]),
        .Q(\syncstages_ff[0] [32]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][33] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[33]),
        .Q(\syncstages_ff[0] [33]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][34] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[34]),
        .Q(\syncstages_ff[0] [34]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][35] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[35]),
        .Q(\syncstages_ff[0] [35]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][36] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[36]),
        .Q(\syncstages_ff[0] [36]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][37] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[37]),
        .Q(\syncstages_ff[0] [37]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][38] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[38]),
        .Q(\syncstages_ff[0] [38]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][39] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[39]),
        .Q(\syncstages_ff[0] [39]),
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
  FDRE \syncstages_ff_reg[0][40] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[40]),
        .Q(\syncstages_ff[0] [40]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][41] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[41]),
        .Q(\syncstages_ff[0] [41]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][42] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[42]),
        .Q(\syncstages_ff[0] [42]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][43] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[43]),
        .Q(\syncstages_ff[0] [43]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][44] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[44]),
        .Q(\syncstages_ff[0] [44]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][45] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[45]),
        .Q(\syncstages_ff[0] [45]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][46] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[46]),
        .Q(\syncstages_ff[0] [46]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][47] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[47]),
        .Q(\syncstages_ff[0] [47]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][48] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[48]),
        .Q(\syncstages_ff[0] [48]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][49] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[49]),
        .Q(\syncstages_ff[0] [49]),
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
  FDRE \syncstages_ff_reg[0][50] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[50]),
        .Q(\syncstages_ff[0] [50]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][51] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[51]),
        .Q(\syncstages_ff[0] [51]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][52] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[52]),
        .Q(\syncstages_ff[0] [52]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][53] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[53]),
        .Q(\syncstages_ff[0] [53]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][54] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[54]),
        .Q(\syncstages_ff[0] [54]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][55] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[55]),
        .Q(\syncstages_ff[0] [55]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][56] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[56]),
        .Q(\syncstages_ff[0] [56]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][57] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[57]),
        .Q(\syncstages_ff[0] [57]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][58] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[58]),
        .Q(\syncstages_ff[0] [58]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][59] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[59]),
        .Q(\syncstages_ff[0] [59]),
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
  FDRE \syncstages_ff_reg[0][60] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[60]),
        .Q(\syncstages_ff[0] [60]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][61] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[61]),
        .Q(\syncstages_ff[0] [61]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][62] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[62]),
        .Q(\syncstages_ff[0] [62]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][63] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[63]),
        .Q(\syncstages_ff[0] [63]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][64] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[64]),
        .Q(\syncstages_ff[0] [64]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][65] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[65]),
        .Q(\syncstages_ff[0] [65]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][66] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[66]),
        .Q(\syncstages_ff[0] [66]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][67] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[67]),
        .Q(\syncstages_ff[0] [67]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][68] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[68]),
        .Q(\syncstages_ff[0] [68]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][69] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[69]),
        .Q(\syncstages_ff[0] [69]),
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
  FDRE \syncstages_ff_reg[0][70] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[70]),
        .Q(\syncstages_ff[0] [70]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][71] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[71]),
        .Q(\syncstages_ff[0] [71]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][72] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[72]),
        .Q(\syncstages_ff[0] [72]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][73] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[73]),
        .Q(\syncstages_ff[0] [73]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][74] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[74]),
        .Q(\syncstages_ff[0] [74]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][75] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[75]),
        .Q(\syncstages_ff[0] [75]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][76] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[76]),
        .Q(\syncstages_ff[0] [76]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][77] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[77]),
        .Q(\syncstages_ff[0] [77]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][78] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[78]),
        .Q(\syncstages_ff[0] [78]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][79] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[79]),
        .Q(\syncstages_ff[0] [79]),
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
  FDRE \syncstages_ff_reg[0][80] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[80]),
        .Q(\syncstages_ff[0] [80]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][81] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[81]),
        .Q(\syncstages_ff[0] [81]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][82] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[82]),
        .Q(\syncstages_ff[0] [82]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][83] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[83]),
        .Q(\syncstages_ff[0] [83]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][84] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[84]),
        .Q(\syncstages_ff[0] [84]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][85] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[85]),
        .Q(\syncstages_ff[0] [85]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][86] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[86]),
        .Q(\syncstages_ff[0] [86]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][87] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[87]),
        .Q(\syncstages_ff[0] [87]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][88] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[88]),
        .Q(\syncstages_ff[0] [88]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][89] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[89]),
        .Q(\syncstages_ff[0] [89]),
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
  FDRE \syncstages_ff_reg[0][90] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[90]),
        .Q(\syncstages_ff[0] [90]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][91] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[91]),
        .Q(\syncstages_ff[0] [91]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][92] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[92]),
        .Q(\syncstages_ff[0] [92]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][93] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[93]),
        .Q(\syncstages_ff[0] [93]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][94] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[94]),
        .Q(\syncstages_ff[0] [94]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][95] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[95]),
        .Q(\syncstages_ff[0] [95]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][96] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[96]),
        .Q(\syncstages_ff[0] [96]),
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
  FDRE \syncstages_ff_reg[1][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [16]),
        .Q(\syncstages_ff[1] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [17]),
        .Q(\syncstages_ff[1] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [18]),
        .Q(\syncstages_ff[1] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [19]),
        .Q(\syncstages_ff[1] [19]),
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
  FDRE \syncstages_ff_reg[1][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [20]),
        .Q(\syncstages_ff[1] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [21]),
        .Q(\syncstages_ff[1] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [22]),
        .Q(\syncstages_ff[1] [22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][23] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [23]),
        .Q(\syncstages_ff[1] [23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][24] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [24]),
        .Q(\syncstages_ff[1] [24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][25] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [25]),
        .Q(\syncstages_ff[1] [25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][26] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [26]),
        .Q(\syncstages_ff[1] [26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][27] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [27]),
        .Q(\syncstages_ff[1] [27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][28] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [28]),
        .Q(\syncstages_ff[1] [28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][29] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [29]),
        .Q(\syncstages_ff[1] [29]),
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
  FDRE \syncstages_ff_reg[1][30] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [30]),
        .Q(\syncstages_ff[1] [30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][31] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [31]),
        .Q(\syncstages_ff[1] [31]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][32] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [32]),
        .Q(\syncstages_ff[1] [32]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][33] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [33]),
        .Q(\syncstages_ff[1] [33]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][34] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [34]),
        .Q(\syncstages_ff[1] [34]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][35] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [35]),
        .Q(\syncstages_ff[1] [35]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][36] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [36]),
        .Q(\syncstages_ff[1] [36]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][37] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [37]),
        .Q(\syncstages_ff[1] [37]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][38] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [38]),
        .Q(\syncstages_ff[1] [38]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][39] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [39]),
        .Q(\syncstages_ff[1] [39]),
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
  FDRE \syncstages_ff_reg[1][40] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [40]),
        .Q(\syncstages_ff[1] [40]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][41] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [41]),
        .Q(\syncstages_ff[1] [41]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][42] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [42]),
        .Q(\syncstages_ff[1] [42]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][43] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [43]),
        .Q(\syncstages_ff[1] [43]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][44] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [44]),
        .Q(\syncstages_ff[1] [44]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][45] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [45]),
        .Q(\syncstages_ff[1] [45]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][46] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [46]),
        .Q(\syncstages_ff[1] [46]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][47] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [47]),
        .Q(\syncstages_ff[1] [47]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][48] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [48]),
        .Q(\syncstages_ff[1] [48]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][49] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [49]),
        .Q(\syncstages_ff[1] [49]),
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
  FDRE \syncstages_ff_reg[1][50] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [50]),
        .Q(\syncstages_ff[1] [50]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][51] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [51]),
        .Q(\syncstages_ff[1] [51]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][52] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [52]),
        .Q(\syncstages_ff[1] [52]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][53] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [53]),
        .Q(\syncstages_ff[1] [53]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][54] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [54]),
        .Q(\syncstages_ff[1] [54]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][55] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [55]),
        .Q(\syncstages_ff[1] [55]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][56] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [56]),
        .Q(\syncstages_ff[1] [56]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][57] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [57]),
        .Q(\syncstages_ff[1] [57]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][58] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [58]),
        .Q(\syncstages_ff[1] [58]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][59] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [59]),
        .Q(\syncstages_ff[1] [59]),
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
  FDRE \syncstages_ff_reg[1][60] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [60]),
        .Q(\syncstages_ff[1] [60]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][61] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [61]),
        .Q(\syncstages_ff[1] [61]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][62] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [62]),
        .Q(\syncstages_ff[1] [62]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][63] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [63]),
        .Q(\syncstages_ff[1] [63]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][64] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [64]),
        .Q(\syncstages_ff[1] [64]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][65] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [65]),
        .Q(\syncstages_ff[1] [65]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][66] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [66]),
        .Q(\syncstages_ff[1] [66]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][67] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [67]),
        .Q(\syncstages_ff[1] [67]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][68] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [68]),
        .Q(\syncstages_ff[1] [68]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][69] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [69]),
        .Q(\syncstages_ff[1] [69]),
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
  FDRE \syncstages_ff_reg[1][70] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [70]),
        .Q(\syncstages_ff[1] [70]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][71] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [71]),
        .Q(\syncstages_ff[1] [71]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][72] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [72]),
        .Q(\syncstages_ff[1] [72]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][73] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [73]),
        .Q(\syncstages_ff[1] [73]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][74] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [74]),
        .Q(\syncstages_ff[1] [74]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][75] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [75]),
        .Q(\syncstages_ff[1] [75]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][76] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [76]),
        .Q(\syncstages_ff[1] [76]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][77] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [77]),
        .Q(\syncstages_ff[1] [77]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][78] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [78]),
        .Q(\syncstages_ff[1] [78]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][79] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [79]),
        .Q(\syncstages_ff[1] [79]),
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
  FDRE \syncstages_ff_reg[1][80] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [80]),
        .Q(\syncstages_ff[1] [80]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][81] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [81]),
        .Q(\syncstages_ff[1] [81]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][82] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [82]),
        .Q(\syncstages_ff[1] [82]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][83] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [83]),
        .Q(\syncstages_ff[1] [83]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][84] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [84]),
        .Q(\syncstages_ff[1] [84]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][85] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [85]),
        .Q(\syncstages_ff[1] [85]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][86] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [86]),
        .Q(\syncstages_ff[1] [86]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][87] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [87]),
        .Q(\syncstages_ff[1] [87]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][88] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [88]),
        .Q(\syncstages_ff[1] [88]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][89] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [89]),
        .Q(\syncstages_ff[1] [89]),
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
  FDRE \syncstages_ff_reg[1][90] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [90]),
        .Q(\syncstages_ff[1] [90]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][91] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [91]),
        .Q(\syncstages_ff[1] [91]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][92] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [92]),
        .Q(\syncstages_ff[1] [92]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][93] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [93]),
        .Q(\syncstages_ff[1] [93]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][94] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [94]),
        .Q(\syncstages_ff[1] [94]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][95] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [95]),
        .Q(\syncstages_ff[1] [95]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][96] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [96]),
        .Q(\syncstages_ff[1] [96]),
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
  FDRE \syncstages_ff_reg[2][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [16]),
        .Q(\syncstages_ff[2] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [17]),
        .Q(\syncstages_ff[2] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [18]),
        .Q(\syncstages_ff[2] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [19]),
        .Q(\syncstages_ff[2] [19]),
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
  FDRE \syncstages_ff_reg[2][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [20]),
        .Q(\syncstages_ff[2] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [21]),
        .Q(\syncstages_ff[2] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [22]),
        .Q(\syncstages_ff[2] [22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][23] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [23]),
        .Q(\syncstages_ff[2] [23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][24] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [24]),
        .Q(\syncstages_ff[2] [24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][25] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [25]),
        .Q(\syncstages_ff[2] [25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][26] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [26]),
        .Q(\syncstages_ff[2] [26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][27] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [27]),
        .Q(\syncstages_ff[2] [27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][28] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [28]),
        .Q(\syncstages_ff[2] [28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][29] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [29]),
        .Q(\syncstages_ff[2] [29]),
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
  FDRE \syncstages_ff_reg[2][30] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [30]),
        .Q(\syncstages_ff[2] [30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][31] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [31]),
        .Q(\syncstages_ff[2] [31]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][32] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [32]),
        .Q(\syncstages_ff[2] [32]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][33] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [33]),
        .Q(\syncstages_ff[2] [33]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][34] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [34]),
        .Q(\syncstages_ff[2] [34]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][35] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [35]),
        .Q(\syncstages_ff[2] [35]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][36] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [36]),
        .Q(\syncstages_ff[2] [36]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][37] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [37]),
        .Q(\syncstages_ff[2] [37]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][38] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [38]),
        .Q(\syncstages_ff[2] [38]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][39] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [39]),
        .Q(\syncstages_ff[2] [39]),
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
  FDRE \syncstages_ff_reg[2][40] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [40]),
        .Q(\syncstages_ff[2] [40]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][41] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [41]),
        .Q(\syncstages_ff[2] [41]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][42] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [42]),
        .Q(\syncstages_ff[2] [42]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][43] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [43]),
        .Q(\syncstages_ff[2] [43]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][44] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [44]),
        .Q(\syncstages_ff[2] [44]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][45] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [45]),
        .Q(\syncstages_ff[2] [45]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][46] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [46]),
        .Q(\syncstages_ff[2] [46]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][47] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [47]),
        .Q(\syncstages_ff[2] [47]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][48] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [48]),
        .Q(\syncstages_ff[2] [48]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][49] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [49]),
        .Q(\syncstages_ff[2] [49]),
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
  FDRE \syncstages_ff_reg[2][50] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [50]),
        .Q(\syncstages_ff[2] [50]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][51] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [51]),
        .Q(\syncstages_ff[2] [51]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][52] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [52]),
        .Q(\syncstages_ff[2] [52]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][53] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [53]),
        .Q(\syncstages_ff[2] [53]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][54] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [54]),
        .Q(\syncstages_ff[2] [54]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][55] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [55]),
        .Q(\syncstages_ff[2] [55]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][56] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [56]),
        .Q(\syncstages_ff[2] [56]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][57] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [57]),
        .Q(\syncstages_ff[2] [57]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][58] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [58]),
        .Q(\syncstages_ff[2] [58]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][59] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [59]),
        .Q(\syncstages_ff[2] [59]),
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
  FDRE \syncstages_ff_reg[2][60] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [60]),
        .Q(\syncstages_ff[2] [60]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][61] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [61]),
        .Q(\syncstages_ff[2] [61]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][62] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [62]),
        .Q(\syncstages_ff[2] [62]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][63] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [63]),
        .Q(\syncstages_ff[2] [63]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][64] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [64]),
        .Q(\syncstages_ff[2] [64]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][65] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [65]),
        .Q(\syncstages_ff[2] [65]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][66] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [66]),
        .Q(\syncstages_ff[2] [66]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][67] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [67]),
        .Q(\syncstages_ff[2] [67]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][68] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [68]),
        .Q(\syncstages_ff[2] [68]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][69] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [69]),
        .Q(\syncstages_ff[2] [69]),
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
  FDRE \syncstages_ff_reg[2][70] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [70]),
        .Q(\syncstages_ff[2] [70]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][71] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [71]),
        .Q(\syncstages_ff[2] [71]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][72] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [72]),
        .Q(\syncstages_ff[2] [72]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][73] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [73]),
        .Q(\syncstages_ff[2] [73]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][74] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [74]),
        .Q(\syncstages_ff[2] [74]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][75] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [75]),
        .Q(\syncstages_ff[2] [75]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][76] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [76]),
        .Q(\syncstages_ff[2] [76]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][77] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [77]),
        .Q(\syncstages_ff[2] [77]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][78] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [78]),
        .Q(\syncstages_ff[2] [78]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][79] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [79]),
        .Q(\syncstages_ff[2] [79]),
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
  FDRE \syncstages_ff_reg[2][80] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [80]),
        .Q(\syncstages_ff[2] [80]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][81] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [81]),
        .Q(\syncstages_ff[2] [81]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][82] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [82]),
        .Q(\syncstages_ff[2] [82]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][83] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [83]),
        .Q(\syncstages_ff[2] [83]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][84] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [84]),
        .Q(\syncstages_ff[2] [84]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][85] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [85]),
        .Q(\syncstages_ff[2] [85]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][86] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [86]),
        .Q(\syncstages_ff[2] [86]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][87] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [87]),
        .Q(\syncstages_ff[2] [87]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][88] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [88]),
        .Q(\syncstages_ff[2] [88]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][89] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [89]),
        .Q(\syncstages_ff[2] [89]),
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
  FDRE \syncstages_ff_reg[2][90] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [90]),
        .Q(\syncstages_ff[2] [90]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][91] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [91]),
        .Q(\syncstages_ff[2] [91]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][92] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [92]),
        .Q(\syncstages_ff[2] [92]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][93] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [93]),
        .Q(\syncstages_ff[2] [93]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][94] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [94]),
        .Q(\syncstages_ff[2] [94]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][95] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [95]),
        .Q(\syncstages_ff[2] [95]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][96] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [96]),
        .Q(\syncstages_ff[2] [96]),
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

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_array_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* WIDTH = "97" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ARRAY_SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized2__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [96:0]src_in;
  input dest_clk;
  output [96:0]dest_out;

  wire [96:0]async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [96:0]\syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [96:0]\syncstages_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [96:0]\syncstages_ff[2] ;

  assign async_path_bit[96] = src_in[96];
  assign async_path_bit[79:64] = src_in[79:64];
  assign async_path_bit[55] = src_in[63];
  assign async_path_bit[54:32] = src_in[54:32];
  assign async_path_bit[23] = src_in[31];
  assign async_path_bit[22:0] = src_in[22:0];
  assign dest_out[96:0] = \syncstages_ff[2] ;
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst
       (.I0(async_path_bit[55]),
        .O(async_path_bit[63]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__0
       (.I0(async_path_bit[55]),
        .O(async_path_bit[62]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__1
       (.I0(async_path_bit[55]),
        .O(async_path_bit[61]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__10
       (.I0(async_path_bit[23]),
        .O(async_path_bit[28]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__11
       (.I0(async_path_bit[23]),
        .O(async_path_bit[27]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__12
       (.I0(async_path_bit[23]),
        .O(async_path_bit[26]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__13
       (.I0(async_path_bit[23]),
        .O(async_path_bit[25]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__14
       (.I0(async_path_bit[23]),
        .O(async_path_bit[24]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__2
       (.I0(async_path_bit[55]),
        .O(async_path_bit[60]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__3
       (.I0(async_path_bit[55]),
        .O(async_path_bit[59]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__4
       (.I0(async_path_bit[55]),
        .O(async_path_bit[58]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__5
       (.I0(async_path_bit[55]),
        .O(async_path_bit[57]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__6
       (.I0(async_path_bit[55]),
        .O(async_path_bit[56]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__7
       (.I0(async_path_bit[23]),
        .O(async_path_bit[31]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__8
       (.I0(async_path_bit[23]),
        .O(async_path_bit[30]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__9
       (.I0(async_path_bit[23]),
        .O(async_path_bit[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(async_path_bit[95]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(async_path_bit[94]));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(async_path_bit[85]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(async_path_bit[84]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(async_path_bit[83]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(async_path_bit[82]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(async_path_bit[81]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(async_path_bit[80]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(async_path_bit[93]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(async_path_bit[92]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(async_path_bit[91]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(async_path_bit[90]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(async_path_bit[89]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(async_path_bit[88]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(async_path_bit[87]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(async_path_bit[86]));
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
  FDRE \syncstages_ff_reg[0][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[16]),
        .Q(\syncstages_ff[0] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[17]),
        .Q(\syncstages_ff[0] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[18]),
        .Q(\syncstages_ff[0] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[19]),
        .Q(\syncstages_ff[0] [19]),
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
  FDRE \syncstages_ff_reg[0][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[20]),
        .Q(\syncstages_ff[0] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[21]),
        .Q(\syncstages_ff[0] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[22]),
        .Q(\syncstages_ff[0] [22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][23] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[23]),
        .Q(\syncstages_ff[0] [23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][24] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[24]),
        .Q(\syncstages_ff[0] [24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][25] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[25]),
        .Q(\syncstages_ff[0] [25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][26] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[26]),
        .Q(\syncstages_ff[0] [26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][27] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[27]),
        .Q(\syncstages_ff[0] [27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][28] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[28]),
        .Q(\syncstages_ff[0] [28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][29] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[29]),
        .Q(\syncstages_ff[0] [29]),
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
  FDRE \syncstages_ff_reg[0][30] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[30]),
        .Q(\syncstages_ff[0] [30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][31] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[31]),
        .Q(\syncstages_ff[0] [31]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][32] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[32]),
        .Q(\syncstages_ff[0] [32]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][33] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[33]),
        .Q(\syncstages_ff[0] [33]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][34] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[34]),
        .Q(\syncstages_ff[0] [34]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][35] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[35]),
        .Q(\syncstages_ff[0] [35]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][36] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[36]),
        .Q(\syncstages_ff[0] [36]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][37] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[37]),
        .Q(\syncstages_ff[0] [37]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][38] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[38]),
        .Q(\syncstages_ff[0] [38]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][39] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[39]),
        .Q(\syncstages_ff[0] [39]),
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
  FDRE \syncstages_ff_reg[0][40] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[40]),
        .Q(\syncstages_ff[0] [40]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][41] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[41]),
        .Q(\syncstages_ff[0] [41]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][42] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[42]),
        .Q(\syncstages_ff[0] [42]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][43] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[43]),
        .Q(\syncstages_ff[0] [43]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][44] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[44]),
        .Q(\syncstages_ff[0] [44]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][45] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[45]),
        .Q(\syncstages_ff[0] [45]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][46] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[46]),
        .Q(\syncstages_ff[0] [46]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][47] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[47]),
        .Q(\syncstages_ff[0] [47]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][48] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[48]),
        .Q(\syncstages_ff[0] [48]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][49] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[49]),
        .Q(\syncstages_ff[0] [49]),
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
  FDRE \syncstages_ff_reg[0][50] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[50]),
        .Q(\syncstages_ff[0] [50]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][51] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[51]),
        .Q(\syncstages_ff[0] [51]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][52] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[52]),
        .Q(\syncstages_ff[0] [52]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][53] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[53]),
        .Q(\syncstages_ff[0] [53]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][54] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[54]),
        .Q(\syncstages_ff[0] [54]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][55] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[55]),
        .Q(\syncstages_ff[0] [55]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][56] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[56]),
        .Q(\syncstages_ff[0] [56]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][57] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[57]),
        .Q(\syncstages_ff[0] [57]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][58] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[58]),
        .Q(\syncstages_ff[0] [58]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][59] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[59]),
        .Q(\syncstages_ff[0] [59]),
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
  FDRE \syncstages_ff_reg[0][60] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[60]),
        .Q(\syncstages_ff[0] [60]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][61] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[61]),
        .Q(\syncstages_ff[0] [61]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][62] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[62]),
        .Q(\syncstages_ff[0] [62]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][63] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[63]),
        .Q(\syncstages_ff[0] [63]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][64] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[64]),
        .Q(\syncstages_ff[0] [64]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][65] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[65]),
        .Q(\syncstages_ff[0] [65]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][66] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[66]),
        .Q(\syncstages_ff[0] [66]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][67] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[67]),
        .Q(\syncstages_ff[0] [67]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][68] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[68]),
        .Q(\syncstages_ff[0] [68]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][69] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[69]),
        .Q(\syncstages_ff[0] [69]),
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
  FDRE \syncstages_ff_reg[0][70] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[70]),
        .Q(\syncstages_ff[0] [70]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][71] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[71]),
        .Q(\syncstages_ff[0] [71]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][72] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[72]),
        .Q(\syncstages_ff[0] [72]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][73] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[73]),
        .Q(\syncstages_ff[0] [73]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][74] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[74]),
        .Q(\syncstages_ff[0] [74]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][75] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[75]),
        .Q(\syncstages_ff[0] [75]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][76] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[76]),
        .Q(\syncstages_ff[0] [76]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][77] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[77]),
        .Q(\syncstages_ff[0] [77]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][78] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[78]),
        .Q(\syncstages_ff[0] [78]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][79] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[79]),
        .Q(\syncstages_ff[0] [79]),
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
  FDRE \syncstages_ff_reg[0][80] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[80]),
        .Q(\syncstages_ff[0] [80]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][81] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[81]),
        .Q(\syncstages_ff[0] [81]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][82] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[82]),
        .Q(\syncstages_ff[0] [82]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][83] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[83]),
        .Q(\syncstages_ff[0] [83]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][84] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[84]),
        .Q(\syncstages_ff[0] [84]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][85] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[85]),
        .Q(\syncstages_ff[0] [85]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][86] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[86]),
        .Q(\syncstages_ff[0] [86]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][87] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[87]),
        .Q(\syncstages_ff[0] [87]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][88] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[88]),
        .Q(\syncstages_ff[0] [88]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][89] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[89]),
        .Q(\syncstages_ff[0] [89]),
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
  FDRE \syncstages_ff_reg[0][90] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[90]),
        .Q(\syncstages_ff[0] [90]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][91] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[91]),
        .Q(\syncstages_ff[0] [91]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][92] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[92]),
        .Q(\syncstages_ff[0] [92]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][93] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[93]),
        .Q(\syncstages_ff[0] [93]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][94] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[94]),
        .Q(\syncstages_ff[0] [94]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][95] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[95]),
        .Q(\syncstages_ff[0] [95]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][96] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[96]),
        .Q(\syncstages_ff[0] [96]),
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
  FDRE \syncstages_ff_reg[1][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [16]),
        .Q(\syncstages_ff[1] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [17]),
        .Q(\syncstages_ff[1] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [18]),
        .Q(\syncstages_ff[1] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [19]),
        .Q(\syncstages_ff[1] [19]),
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
  FDRE \syncstages_ff_reg[1][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [20]),
        .Q(\syncstages_ff[1] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [21]),
        .Q(\syncstages_ff[1] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [22]),
        .Q(\syncstages_ff[1] [22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][23] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [23]),
        .Q(\syncstages_ff[1] [23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][24] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [24]),
        .Q(\syncstages_ff[1] [24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][25] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [25]),
        .Q(\syncstages_ff[1] [25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][26] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [26]),
        .Q(\syncstages_ff[1] [26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][27] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [27]),
        .Q(\syncstages_ff[1] [27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][28] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [28]),
        .Q(\syncstages_ff[1] [28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][29] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [29]),
        .Q(\syncstages_ff[1] [29]),
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
  FDRE \syncstages_ff_reg[1][30] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [30]),
        .Q(\syncstages_ff[1] [30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][31] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [31]),
        .Q(\syncstages_ff[1] [31]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][32] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [32]),
        .Q(\syncstages_ff[1] [32]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][33] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [33]),
        .Q(\syncstages_ff[1] [33]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][34] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [34]),
        .Q(\syncstages_ff[1] [34]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][35] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [35]),
        .Q(\syncstages_ff[1] [35]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][36] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [36]),
        .Q(\syncstages_ff[1] [36]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][37] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [37]),
        .Q(\syncstages_ff[1] [37]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][38] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [38]),
        .Q(\syncstages_ff[1] [38]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][39] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [39]),
        .Q(\syncstages_ff[1] [39]),
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
  FDRE \syncstages_ff_reg[1][40] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [40]),
        .Q(\syncstages_ff[1] [40]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][41] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [41]),
        .Q(\syncstages_ff[1] [41]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][42] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [42]),
        .Q(\syncstages_ff[1] [42]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][43] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [43]),
        .Q(\syncstages_ff[1] [43]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][44] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [44]),
        .Q(\syncstages_ff[1] [44]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][45] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [45]),
        .Q(\syncstages_ff[1] [45]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][46] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [46]),
        .Q(\syncstages_ff[1] [46]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][47] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [47]),
        .Q(\syncstages_ff[1] [47]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][48] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [48]),
        .Q(\syncstages_ff[1] [48]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][49] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [49]),
        .Q(\syncstages_ff[1] [49]),
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
  FDRE \syncstages_ff_reg[1][50] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [50]),
        .Q(\syncstages_ff[1] [50]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][51] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [51]),
        .Q(\syncstages_ff[1] [51]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][52] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [52]),
        .Q(\syncstages_ff[1] [52]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][53] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [53]),
        .Q(\syncstages_ff[1] [53]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][54] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [54]),
        .Q(\syncstages_ff[1] [54]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][55] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [55]),
        .Q(\syncstages_ff[1] [55]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][56] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [56]),
        .Q(\syncstages_ff[1] [56]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][57] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [57]),
        .Q(\syncstages_ff[1] [57]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][58] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [58]),
        .Q(\syncstages_ff[1] [58]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][59] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [59]),
        .Q(\syncstages_ff[1] [59]),
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
  FDRE \syncstages_ff_reg[1][60] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [60]),
        .Q(\syncstages_ff[1] [60]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][61] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [61]),
        .Q(\syncstages_ff[1] [61]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][62] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [62]),
        .Q(\syncstages_ff[1] [62]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][63] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [63]),
        .Q(\syncstages_ff[1] [63]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][64] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [64]),
        .Q(\syncstages_ff[1] [64]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][65] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [65]),
        .Q(\syncstages_ff[1] [65]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][66] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [66]),
        .Q(\syncstages_ff[1] [66]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][67] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [67]),
        .Q(\syncstages_ff[1] [67]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][68] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [68]),
        .Q(\syncstages_ff[1] [68]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][69] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [69]),
        .Q(\syncstages_ff[1] [69]),
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
  FDRE \syncstages_ff_reg[1][70] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [70]),
        .Q(\syncstages_ff[1] [70]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][71] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [71]),
        .Q(\syncstages_ff[1] [71]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][72] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [72]),
        .Q(\syncstages_ff[1] [72]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][73] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [73]),
        .Q(\syncstages_ff[1] [73]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][74] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [74]),
        .Q(\syncstages_ff[1] [74]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][75] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [75]),
        .Q(\syncstages_ff[1] [75]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][76] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [76]),
        .Q(\syncstages_ff[1] [76]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][77] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [77]),
        .Q(\syncstages_ff[1] [77]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][78] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [78]),
        .Q(\syncstages_ff[1] [78]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][79] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [79]),
        .Q(\syncstages_ff[1] [79]),
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
  FDRE \syncstages_ff_reg[1][80] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [80]),
        .Q(\syncstages_ff[1] [80]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][81] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [81]),
        .Q(\syncstages_ff[1] [81]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][82] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [82]),
        .Q(\syncstages_ff[1] [82]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][83] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [83]),
        .Q(\syncstages_ff[1] [83]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][84] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [84]),
        .Q(\syncstages_ff[1] [84]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][85] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [85]),
        .Q(\syncstages_ff[1] [85]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][86] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [86]),
        .Q(\syncstages_ff[1] [86]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][87] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [87]),
        .Q(\syncstages_ff[1] [87]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][88] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [88]),
        .Q(\syncstages_ff[1] [88]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][89] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [89]),
        .Q(\syncstages_ff[1] [89]),
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
  FDRE \syncstages_ff_reg[1][90] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [90]),
        .Q(\syncstages_ff[1] [90]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][91] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [91]),
        .Q(\syncstages_ff[1] [91]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][92] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [92]),
        .Q(\syncstages_ff[1] [92]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][93] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [93]),
        .Q(\syncstages_ff[1] [93]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][94] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [94]),
        .Q(\syncstages_ff[1] [94]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][95] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [95]),
        .Q(\syncstages_ff[1] [95]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][96] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [96]),
        .Q(\syncstages_ff[1] [96]),
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
  FDRE \syncstages_ff_reg[2][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [16]),
        .Q(\syncstages_ff[2] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [17]),
        .Q(\syncstages_ff[2] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [18]),
        .Q(\syncstages_ff[2] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [19]),
        .Q(\syncstages_ff[2] [19]),
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
  FDRE \syncstages_ff_reg[2][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [20]),
        .Q(\syncstages_ff[2] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [21]),
        .Q(\syncstages_ff[2] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [22]),
        .Q(\syncstages_ff[2] [22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][23] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [23]),
        .Q(\syncstages_ff[2] [23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][24] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [24]),
        .Q(\syncstages_ff[2] [24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][25] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [25]),
        .Q(\syncstages_ff[2] [25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][26] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [26]),
        .Q(\syncstages_ff[2] [26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][27] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [27]),
        .Q(\syncstages_ff[2] [27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][28] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [28]),
        .Q(\syncstages_ff[2] [28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][29] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [29]),
        .Q(\syncstages_ff[2] [29]),
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
  FDRE \syncstages_ff_reg[2][30] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [30]),
        .Q(\syncstages_ff[2] [30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][31] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [31]),
        .Q(\syncstages_ff[2] [31]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][32] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [32]),
        .Q(\syncstages_ff[2] [32]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][33] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [33]),
        .Q(\syncstages_ff[2] [33]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][34] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [34]),
        .Q(\syncstages_ff[2] [34]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][35] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [35]),
        .Q(\syncstages_ff[2] [35]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][36] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [36]),
        .Q(\syncstages_ff[2] [36]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][37] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [37]),
        .Q(\syncstages_ff[2] [37]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][38] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [38]),
        .Q(\syncstages_ff[2] [38]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][39] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [39]),
        .Q(\syncstages_ff[2] [39]),
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
  FDRE \syncstages_ff_reg[2][40] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [40]),
        .Q(\syncstages_ff[2] [40]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][41] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [41]),
        .Q(\syncstages_ff[2] [41]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][42] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [42]),
        .Q(\syncstages_ff[2] [42]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][43] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [43]),
        .Q(\syncstages_ff[2] [43]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][44] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [44]),
        .Q(\syncstages_ff[2] [44]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][45] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [45]),
        .Q(\syncstages_ff[2] [45]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][46] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [46]),
        .Q(\syncstages_ff[2] [46]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][47] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [47]),
        .Q(\syncstages_ff[2] [47]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][48] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [48]),
        .Q(\syncstages_ff[2] [48]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][49] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [49]),
        .Q(\syncstages_ff[2] [49]),
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
  FDRE \syncstages_ff_reg[2][50] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [50]),
        .Q(\syncstages_ff[2] [50]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][51] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [51]),
        .Q(\syncstages_ff[2] [51]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][52] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [52]),
        .Q(\syncstages_ff[2] [52]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][53] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [53]),
        .Q(\syncstages_ff[2] [53]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][54] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [54]),
        .Q(\syncstages_ff[2] [54]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][55] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [55]),
        .Q(\syncstages_ff[2] [55]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][56] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [56]),
        .Q(\syncstages_ff[2] [56]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][57] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [57]),
        .Q(\syncstages_ff[2] [57]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][58] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [58]),
        .Q(\syncstages_ff[2] [58]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][59] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [59]),
        .Q(\syncstages_ff[2] [59]),
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
  FDRE \syncstages_ff_reg[2][60] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [60]),
        .Q(\syncstages_ff[2] [60]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][61] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [61]),
        .Q(\syncstages_ff[2] [61]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][62] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [62]),
        .Q(\syncstages_ff[2] [62]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][63] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [63]),
        .Q(\syncstages_ff[2] [63]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][64] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [64]),
        .Q(\syncstages_ff[2] [64]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][65] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [65]),
        .Q(\syncstages_ff[2] [65]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][66] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [66]),
        .Q(\syncstages_ff[2] [66]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][67] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [67]),
        .Q(\syncstages_ff[2] [67]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][68] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [68]),
        .Q(\syncstages_ff[2] [68]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][69] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [69]),
        .Q(\syncstages_ff[2] [69]),
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
  FDRE \syncstages_ff_reg[2][70] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [70]),
        .Q(\syncstages_ff[2] [70]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][71] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [71]),
        .Q(\syncstages_ff[2] [71]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][72] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [72]),
        .Q(\syncstages_ff[2] [72]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][73] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [73]),
        .Q(\syncstages_ff[2] [73]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][74] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [74]),
        .Q(\syncstages_ff[2] [74]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][75] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [75]),
        .Q(\syncstages_ff[2] [75]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][76] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [76]),
        .Q(\syncstages_ff[2] [76]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][77] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [77]),
        .Q(\syncstages_ff[2] [77]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][78] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [78]),
        .Q(\syncstages_ff[2] [78]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][79] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [79]),
        .Q(\syncstages_ff[2] [79]),
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
  FDRE \syncstages_ff_reg[2][80] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [80]),
        .Q(\syncstages_ff[2] [80]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][81] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [81]),
        .Q(\syncstages_ff[2] [81]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][82] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [82]),
        .Q(\syncstages_ff[2] [82]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][83] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [83]),
        .Q(\syncstages_ff[2] [83]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][84] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [84]),
        .Q(\syncstages_ff[2] [84]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][85] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [85]),
        .Q(\syncstages_ff[2] [85]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][86] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [86]),
        .Q(\syncstages_ff[2] [86]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][87] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [87]),
        .Q(\syncstages_ff[2] [87]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][88] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [88]),
        .Q(\syncstages_ff[2] [88]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][89] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [89]),
        .Q(\syncstages_ff[2] [89]),
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
  FDRE \syncstages_ff_reg[2][90] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [90]),
        .Q(\syncstages_ff[2] [90]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][91] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [91]),
        .Q(\syncstages_ff[2] [91]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][92] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [92]),
        .Q(\syncstages_ff[2] [92]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][93] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [93]),
        .Q(\syncstages_ff[2] [93]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][94] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [94]),
        .Q(\syncstages_ff[2] [94]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][95] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [95]),
        .Q(\syncstages_ff[2] [95]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][96] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [96]),
        .Q(\syncstages_ff[2] [96]),
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_array_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* WIDTH = "97" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ARRAY_SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized3
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [96:0]src_in;
  input dest_clk;
  output [96:0]dest_out;

  wire [96:0]async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [96:0]\syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [96:0]\syncstages_ff[1] ;

  assign async_path_bit[96] = src_in[96];
  assign async_path_bit[79:64] = src_in[79:64];
  assign async_path_bit[55] = src_in[63];
  assign async_path_bit[54:32] = src_in[54:32];
  assign async_path_bit[23] = src_in[31];
  assign async_path_bit[22:0] = src_in[22:0];
  assign dest_out[96:0] = \syncstages_ff[1] ;
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst
       (.I0(async_path_bit[55]),
        .O(async_path_bit[63]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__0
       (.I0(async_path_bit[55]),
        .O(async_path_bit[62]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__1
       (.I0(async_path_bit[55]),
        .O(async_path_bit[61]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__10
       (.I0(async_path_bit[23]),
        .O(async_path_bit[28]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__11
       (.I0(async_path_bit[23]),
        .O(async_path_bit[27]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__12
       (.I0(async_path_bit[23]),
        .O(async_path_bit[26]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__13
       (.I0(async_path_bit[23]),
        .O(async_path_bit[25]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__14
       (.I0(async_path_bit[23]),
        .O(async_path_bit[24]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__2
       (.I0(async_path_bit[55]),
        .O(async_path_bit[60]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__3
       (.I0(async_path_bit[55]),
        .O(async_path_bit[59]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__4
       (.I0(async_path_bit[55]),
        .O(async_path_bit[58]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__5
       (.I0(async_path_bit[55]),
        .O(async_path_bit[57]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__6
       (.I0(async_path_bit[55]),
        .O(async_path_bit[56]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__7
       (.I0(async_path_bit[23]),
        .O(async_path_bit[31]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__8
       (.I0(async_path_bit[23]),
        .O(async_path_bit[30]));
  LUT1 #(
    .INIT(2'h2)) 
    async_path_bit_inst__9
       (.I0(async_path_bit[23]),
        .O(async_path_bit[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(async_path_bit[95]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(async_path_bit[94]));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(async_path_bit[85]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(async_path_bit[84]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(async_path_bit[83]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(async_path_bit[82]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(async_path_bit[81]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(async_path_bit[80]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(async_path_bit[93]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(async_path_bit[92]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(async_path_bit[91]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(async_path_bit[90]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(async_path_bit[89]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(async_path_bit[88]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(async_path_bit[87]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(async_path_bit[86]));
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
  FDRE \syncstages_ff_reg[0][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[16]),
        .Q(\syncstages_ff[0] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[17]),
        .Q(\syncstages_ff[0] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[18]),
        .Q(\syncstages_ff[0] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[19]),
        .Q(\syncstages_ff[0] [19]),
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
  FDRE \syncstages_ff_reg[0][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[20]),
        .Q(\syncstages_ff[0] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[21]),
        .Q(\syncstages_ff[0] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[22]),
        .Q(\syncstages_ff[0] [22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][23] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[23]),
        .Q(\syncstages_ff[0] [23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][24] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[24]),
        .Q(\syncstages_ff[0] [24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][25] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[25]),
        .Q(\syncstages_ff[0] [25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][26] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[26]),
        .Q(\syncstages_ff[0] [26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][27] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[27]),
        .Q(\syncstages_ff[0] [27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][28] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[28]),
        .Q(\syncstages_ff[0] [28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][29] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[29]),
        .Q(\syncstages_ff[0] [29]),
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
  FDRE \syncstages_ff_reg[0][30] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[30]),
        .Q(\syncstages_ff[0] [30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][31] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[31]),
        .Q(\syncstages_ff[0] [31]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][32] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[32]),
        .Q(\syncstages_ff[0] [32]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][33] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[33]),
        .Q(\syncstages_ff[0] [33]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][34] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[34]),
        .Q(\syncstages_ff[0] [34]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][35] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[35]),
        .Q(\syncstages_ff[0] [35]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][36] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[36]),
        .Q(\syncstages_ff[0] [36]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][37] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[37]),
        .Q(\syncstages_ff[0] [37]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][38] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[38]),
        .Q(\syncstages_ff[0] [38]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][39] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[39]),
        .Q(\syncstages_ff[0] [39]),
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
  FDRE \syncstages_ff_reg[0][40] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[40]),
        .Q(\syncstages_ff[0] [40]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][41] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[41]),
        .Q(\syncstages_ff[0] [41]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][42] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[42]),
        .Q(\syncstages_ff[0] [42]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][43] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[43]),
        .Q(\syncstages_ff[0] [43]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][44] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[44]),
        .Q(\syncstages_ff[0] [44]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][45] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[45]),
        .Q(\syncstages_ff[0] [45]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][46] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[46]),
        .Q(\syncstages_ff[0] [46]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][47] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[47]),
        .Q(\syncstages_ff[0] [47]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][48] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[48]),
        .Q(\syncstages_ff[0] [48]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][49] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[49]),
        .Q(\syncstages_ff[0] [49]),
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
  FDRE \syncstages_ff_reg[0][50] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[50]),
        .Q(\syncstages_ff[0] [50]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][51] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[51]),
        .Q(\syncstages_ff[0] [51]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][52] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[52]),
        .Q(\syncstages_ff[0] [52]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][53] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[53]),
        .Q(\syncstages_ff[0] [53]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][54] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[54]),
        .Q(\syncstages_ff[0] [54]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][55] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[55]),
        .Q(\syncstages_ff[0] [55]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][56] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[56]),
        .Q(\syncstages_ff[0] [56]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][57] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[57]),
        .Q(\syncstages_ff[0] [57]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][58] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[58]),
        .Q(\syncstages_ff[0] [58]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][59] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[59]),
        .Q(\syncstages_ff[0] [59]),
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
  FDRE \syncstages_ff_reg[0][60] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[60]),
        .Q(\syncstages_ff[0] [60]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][61] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[61]),
        .Q(\syncstages_ff[0] [61]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][62] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[62]),
        .Q(\syncstages_ff[0] [62]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][63] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[63]),
        .Q(\syncstages_ff[0] [63]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][64] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[64]),
        .Q(\syncstages_ff[0] [64]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][65] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[65]),
        .Q(\syncstages_ff[0] [65]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][66] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[66]),
        .Q(\syncstages_ff[0] [66]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][67] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[67]),
        .Q(\syncstages_ff[0] [67]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][68] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[68]),
        .Q(\syncstages_ff[0] [68]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][69] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[69]),
        .Q(\syncstages_ff[0] [69]),
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
  FDRE \syncstages_ff_reg[0][70] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[70]),
        .Q(\syncstages_ff[0] [70]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][71] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[71]),
        .Q(\syncstages_ff[0] [71]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][72] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[72]),
        .Q(\syncstages_ff[0] [72]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][73] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[73]),
        .Q(\syncstages_ff[0] [73]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][74] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[74]),
        .Q(\syncstages_ff[0] [74]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][75] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[75]),
        .Q(\syncstages_ff[0] [75]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][76] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[76]),
        .Q(\syncstages_ff[0] [76]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][77] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[77]),
        .Q(\syncstages_ff[0] [77]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][78] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[78]),
        .Q(\syncstages_ff[0] [78]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][79] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[79]),
        .Q(\syncstages_ff[0] [79]),
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
  FDRE \syncstages_ff_reg[0][80] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[80]),
        .Q(\syncstages_ff[0] [80]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][81] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[81]),
        .Q(\syncstages_ff[0] [81]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][82] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[82]),
        .Q(\syncstages_ff[0] [82]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][83] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[83]),
        .Q(\syncstages_ff[0] [83]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][84] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[84]),
        .Q(\syncstages_ff[0] [84]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][85] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[85]),
        .Q(\syncstages_ff[0] [85]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][86] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[86]),
        .Q(\syncstages_ff[0] [86]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][87] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[87]),
        .Q(\syncstages_ff[0] [87]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][88] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[88]),
        .Q(\syncstages_ff[0] [88]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][89] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[89]),
        .Q(\syncstages_ff[0] [89]),
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
  FDRE \syncstages_ff_reg[0][90] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[90]),
        .Q(\syncstages_ff[0] [90]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][91] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[91]),
        .Q(\syncstages_ff[0] [91]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][92] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[92]),
        .Q(\syncstages_ff[0] [92]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][93] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[93]),
        .Q(\syncstages_ff[0] [93]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][94] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[94]),
        .Q(\syncstages_ff[0] [94]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][95] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[95]),
        .Q(\syncstages_ff[0] [95]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][96] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[96]),
        .Q(\syncstages_ff[0] [96]),
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
  FDRE \syncstages_ff_reg[1][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [16]),
        .Q(\syncstages_ff[1] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [17]),
        .Q(\syncstages_ff[1] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [18]),
        .Q(\syncstages_ff[1] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [19]),
        .Q(\syncstages_ff[1] [19]),
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
  FDRE \syncstages_ff_reg[1][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [20]),
        .Q(\syncstages_ff[1] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [21]),
        .Q(\syncstages_ff[1] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [22]),
        .Q(\syncstages_ff[1] [22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][23] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [23]),
        .Q(\syncstages_ff[1] [23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][24] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [24]),
        .Q(\syncstages_ff[1] [24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][25] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [25]),
        .Q(\syncstages_ff[1] [25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][26] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [26]),
        .Q(\syncstages_ff[1] [26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][27] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [27]),
        .Q(\syncstages_ff[1] [27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][28] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [28]),
        .Q(\syncstages_ff[1] [28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][29] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [29]),
        .Q(\syncstages_ff[1] [29]),
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
  FDRE \syncstages_ff_reg[1][30] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [30]),
        .Q(\syncstages_ff[1] [30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][31] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [31]),
        .Q(\syncstages_ff[1] [31]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][32] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [32]),
        .Q(\syncstages_ff[1] [32]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][33] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [33]),
        .Q(\syncstages_ff[1] [33]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][34] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [34]),
        .Q(\syncstages_ff[1] [34]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][35] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [35]),
        .Q(\syncstages_ff[1] [35]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][36] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [36]),
        .Q(\syncstages_ff[1] [36]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][37] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [37]),
        .Q(\syncstages_ff[1] [37]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][38] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [38]),
        .Q(\syncstages_ff[1] [38]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][39] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [39]),
        .Q(\syncstages_ff[1] [39]),
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
  FDRE \syncstages_ff_reg[1][40] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [40]),
        .Q(\syncstages_ff[1] [40]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][41] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [41]),
        .Q(\syncstages_ff[1] [41]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][42] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [42]),
        .Q(\syncstages_ff[1] [42]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][43] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [43]),
        .Q(\syncstages_ff[1] [43]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][44] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [44]),
        .Q(\syncstages_ff[1] [44]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][45] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [45]),
        .Q(\syncstages_ff[1] [45]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][46] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [46]),
        .Q(\syncstages_ff[1] [46]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][47] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [47]),
        .Q(\syncstages_ff[1] [47]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][48] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [48]),
        .Q(\syncstages_ff[1] [48]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][49] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [49]),
        .Q(\syncstages_ff[1] [49]),
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
  FDRE \syncstages_ff_reg[1][50] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [50]),
        .Q(\syncstages_ff[1] [50]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][51] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [51]),
        .Q(\syncstages_ff[1] [51]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][52] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [52]),
        .Q(\syncstages_ff[1] [52]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][53] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [53]),
        .Q(\syncstages_ff[1] [53]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][54] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [54]),
        .Q(\syncstages_ff[1] [54]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][55] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [55]),
        .Q(\syncstages_ff[1] [55]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][56] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [56]),
        .Q(\syncstages_ff[1] [56]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][57] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [57]),
        .Q(\syncstages_ff[1] [57]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][58] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [58]),
        .Q(\syncstages_ff[1] [58]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][59] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [59]),
        .Q(\syncstages_ff[1] [59]),
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
  FDRE \syncstages_ff_reg[1][60] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [60]),
        .Q(\syncstages_ff[1] [60]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][61] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [61]),
        .Q(\syncstages_ff[1] [61]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][62] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [62]),
        .Q(\syncstages_ff[1] [62]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][63] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [63]),
        .Q(\syncstages_ff[1] [63]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][64] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [64]),
        .Q(\syncstages_ff[1] [64]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][65] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [65]),
        .Q(\syncstages_ff[1] [65]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][66] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [66]),
        .Q(\syncstages_ff[1] [66]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][67] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [67]),
        .Q(\syncstages_ff[1] [67]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][68] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [68]),
        .Q(\syncstages_ff[1] [68]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][69] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [69]),
        .Q(\syncstages_ff[1] [69]),
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
  FDRE \syncstages_ff_reg[1][70] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [70]),
        .Q(\syncstages_ff[1] [70]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][71] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [71]),
        .Q(\syncstages_ff[1] [71]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][72] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [72]),
        .Q(\syncstages_ff[1] [72]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][73] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [73]),
        .Q(\syncstages_ff[1] [73]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][74] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [74]),
        .Q(\syncstages_ff[1] [74]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][75] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [75]),
        .Q(\syncstages_ff[1] [75]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][76] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [76]),
        .Q(\syncstages_ff[1] [76]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][77] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [77]),
        .Q(\syncstages_ff[1] [77]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][78] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [78]),
        .Q(\syncstages_ff[1] [78]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][79] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [79]),
        .Q(\syncstages_ff[1] [79]),
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
  FDRE \syncstages_ff_reg[1][80] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [80]),
        .Q(\syncstages_ff[1] [80]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][81] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [81]),
        .Q(\syncstages_ff[1] [81]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][82] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [82]),
        .Q(\syncstages_ff[1] [82]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][83] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [83]),
        .Q(\syncstages_ff[1] [83]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][84] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [84]),
        .Q(\syncstages_ff[1] [84]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][85] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [85]),
        .Q(\syncstages_ff[1] [85]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][86] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [86]),
        .Q(\syncstages_ff[1] [86]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][87] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [87]),
        .Q(\syncstages_ff[1] [87]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][88] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [88]),
        .Q(\syncstages_ff[1] [88]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][89] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [89]),
        .Q(\syncstages_ff[1] [89]),
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
  FDRE \syncstages_ff_reg[1][90] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [90]),
        .Q(\syncstages_ff[1] [90]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][91] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [91]),
        .Q(\syncstages_ff[1] [91]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][92] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [92]),
        .Q(\syncstages_ff[1] [92]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][93] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [93]),
        .Q(\syncstages_ff[1] [93]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][94] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [94]),
        .Q(\syncstages_ff[1] [94]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][95] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [95]),
        .Q(\syncstages_ff[1] [95]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][96] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [96]),
        .Q(\syncstages_ff[1] [96]),
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
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) 
(* INV_DEF_VAL = "1'b0" *) (* RST_ACTIVE_HIGH = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [3:0]arststages_ff;
  wire dest_clk;
  wire reset_pol;
  wire src_arst;

  assign dest_arst = arststages_ff[3];
  LUT1 #(
    .INIT(2'h1)) 
    \arststages_ff[3]_i_1 
       (.I0(src_arst),
        .O(reset_pol));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(1'b1),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(arststages_ff[0]),
        .Q(arststages_ff[1]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(arststages_ff[1]),
        .Q(arststages_ff[2]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(arststages_ff[2]),
        .Q(arststages_ff[3]));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) 
(* INV_DEF_VAL = "1'b0" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__2
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [3:0]arststages_ff;
  wire dest_clk;
  wire reset_pol;
  wire src_arst;

  assign dest_arst = arststages_ff[3];
  LUT1 #(
    .INIT(2'h1)) 
    \arststages_ff[3]_i_1 
       (.I0(src_arst),
        .O(reset_pol));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(1'b1),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(arststages_ff[0]),
        .Q(arststages_ff[1]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(arststages_ff[1]),
        .Q(arststages_ff[2]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(arststages_ff[2]),
        .Q(arststages_ff[3]));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) 
(* INV_DEF_VAL = "1'b0" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__3
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [3:0]arststages_ff;
  wire dest_clk;
  wire reset_pol;
  wire src_arst;

  assign dest_arst = arststages_ff[3];
  LUT1 #(
    .INIT(2'h1)) 
    \arststages_ff[3]_i_1 
       (.I0(src_arst),
        .O(reset_pol));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(1'b1),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(arststages_ff[0]),
        .Q(arststages_ff[1]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(arststages_ff[1]),
        .Q(arststages_ff[2]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(arststages_ff[2]),
        .Q(arststages_ff[3]));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) 
(* INV_DEF_VAL = "1'b0" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__4
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [3:0]arststages_ff;
  wire dest_clk;
  wire reset_pol;
  wire src_arst;

  assign dest_arst = arststages_ff[3];
  LUT1 #(
    .INIT(2'h1)) 
    \arststages_ff[3]_i_1 
       (.I0(src_arst),
        .O(reset_pol));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(1'b1),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(arststages_ff[0]),
        .Q(arststages_ff[1]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(arststages_ff[1]),
        .Q(arststages_ff[2]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(arststages_ff[2]),
        .Q(arststages_ff[3]));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) 
(* INV_DEF_VAL = "1'b0" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__5
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [3:0]arststages_ff;
  wire dest_clk;
  wire reset_pol;
  wire src_arst;

  assign dest_arst = arststages_ff[3];
  LUT1 #(
    .INIT(2'h1)) 
    \arststages_ff[3]_i_1 
       (.I0(src_arst),
        .O(reset_pol));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(1'b1),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(arststages_ff[0]),
        .Q(arststages_ff[1]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(arststages_ff[1]),
        .Q(arststages_ff[2]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(arststages_ff[2]),
        .Q(arststages_ff[3]));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) 
(* INV_DEF_VAL = "1'b0" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__6
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [3:0]arststages_ff;
  wire dest_clk;
  wire reset_pol;
  wire src_arst;

  assign dest_arst = arststages_ff[3];
  LUT1 #(
    .INIT(2'h1)) 
    \arststages_ff[3]_i_1 
       (.I0(src_arst),
        .O(reset_pol));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(1'b1),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(arststages_ff[0]),
        .Q(arststages_ff[1]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(arststages_ff[1]),
        .Q(arststages_ff[2]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(arststages_ff[2]),
        .Q(arststages_ff[3]));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) 
(* INV_DEF_VAL = "1'b0" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__7
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [3:0]arststages_ff;
  wire dest_clk;
  wire reset_pol;
  wire src_arst;

  assign dest_arst = arststages_ff[3];
  LUT1 #(
    .INIT(2'h1)) 
    \arststages_ff[3]_i_1 
       (.I0(src_arst),
        .O(reset_pol));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(1'b1),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(arststages_ff[0]),
        .Q(arststages_ff[1]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(arststages_ff[1]),
        .Q(arststages_ff[2]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(arststages_ff[2]),
        .Q(arststages_ff[3]));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) 
(* INV_DEF_VAL = "1'b0" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__8
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [3:0]arststages_ff;
  wire dest_clk;
  wire reset_pol;
  wire src_arst;

  assign dest_arst = arststages_ff[3];
  LUT1 #(
    .INIT(2'h1)) 
    \arststages_ff[3]_i_1 
       (.I0(src_arst),
        .O(reset_pol));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(1'b1),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(arststages_ff[0]),
        .Q(arststages_ff[1]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(arststages_ff[1]),
        .Q(arststages_ff[2]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(arststages_ff[2]),
        .Q(arststages_ff[3]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__parameterized1
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [2:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[2];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[1]),
        .PRE(src_arst),
        .Q(arststages_ff[2]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__parameterized1__2
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [2:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[2];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[1]),
        .PRE(src_arst),
        .Q(arststages_ff[2]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__parameterized1__3
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [2:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[2];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[1]),
        .PRE(src_arst),
        .Q(arststages_ff[2]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__parameterized1__4
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [2:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[2];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[1]),
        .PRE(src_arst),
        .Q(arststages_ff[2]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__parameterized1__5
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [2:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[2];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[1]),
        .PRE(src_arst),
        .Q(arststages_ff[2]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__parameterized1__6
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [2:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[2];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[1]),
        .PRE(src_arst),
        .Q(arststages_ff[2]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__parameterized1__7
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [2:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[2];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[1]),
        .PRE(src_arst),
        .Q(arststages_ff[2]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__parameterized1__8
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [2:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[2];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[1]),
        .PRE(src_arst),
        .Q(arststages_ff[2]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__parameterized1__9
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [2:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[2];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[1]),
        .PRE(src_arst),
        .Q(arststages_ff[2]));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b0" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__parameterized2
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [2:0]arststages_ff;
  wire dest_clk;
  wire reset_pol;
  wire src_arst;

  assign dest_arst = arststages_ff[2];
  LUT1 #(
    .INIT(2'h1)) 
    \arststages_ff[2]_i_1 
       (.I0(src_arst),
        .O(reset_pol));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(1'b1),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(arststages_ff[0]),
        .Q(arststages_ff[1]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(arststages_ff[1]),
        .Q(arststages_ff[2]));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__10
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__11
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__12
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__7
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__8
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__9
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
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
