// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Dec  5 00:25:47 2022
// Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_hw_discovery_0_sim_netlist.v
// Design      : top_hw_discovery_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvc1902-vsvd1760-2MP-e-S
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder
   (Bus2IP_CS,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ,
    aclk_ctrl,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ,
    aresetn_ctrl,
    Q,
    s_axi_ctrl_pf1_ARREADY,
    IP2Bus_WrAck,
    s_axi_ctrl_pf1_AWREADY);
  output Bus2IP_CS;
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ;
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  input aclk_ctrl;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ;
  input aresetn_ctrl;
  input [4:0]Q;
  input s_axi_ctrl_pf1_ARREADY;
  input IP2Bus_WrAck;
  input s_axi_ctrl_pf1_AWREADY;

  wire Bus2IP_CS;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ;
  wire IP2Bus_WrAck;
  wire \MEM_DECODE_GEN[0].cs_out_i[0]_i_1__0_n_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ;
  wire [4:0]Q;
  wire aclk_ctrl;
  wire aresetn_ctrl;
  wire s_axi_ctrl_pf1_ARREADY;
  wire s_axi_ctrl_pf1_AWREADY;
  wire s_axi_ctrl_pf1_WREADY_INST_0_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \IP2Bus_Data[28]_i_1__0 
       (.I0(Bus2IP_CS),
        .O(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00005400)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_1__0 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ),
        .I1(Bus2IP_CS),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ),
        .I3(aresetn_ctrl),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ),
        .O(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1__0_n_0 ));
  FDRE \MEM_DECODE_GEN[0].cs_out_i_reg[0] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1__0_n_0 ),
        .Q(Bus2IP_CS),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    s_axi_ctrl_pf1_ARREADY_INST_0
       (.I0(s_axi_ctrl_pf1_WREADY_INST_0_i_1_n_0),
        .I1(Q[0]),
        .I2(s_axi_ctrl_pf1_ARREADY),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(IP2Bus_WrAck),
        .O(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    s_axi_ctrl_pf1_WREADY_INST_0
       (.I0(s_axi_ctrl_pf1_WREADY_INST_0_i_1_n_0),
        .I1(Q[0]),
        .I2(s_axi_ctrl_pf1_AWREADY),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(IP2Bus_WrAck),
        .O(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_ctrl_pf1_WREADY_INST_0_i_1
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(s_axi_ctrl_pf1_WREADY_INST_0_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "address_decoder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder_2
   (Bus2IP_CS,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ,
    aclk_ctrl,
    start2,
    aresetn_ctrl,
    Q,
    s_axi_ctrl_pf0_ARREADY,
    IP2Bus_WrAck,
    s_axi_ctrl_pf0_AWREADY);
  output Bus2IP_CS;
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ;
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  input aclk_ctrl;
  input start2;
  input aresetn_ctrl;
  input [4:0]Q;
  input s_axi_ctrl_pf0_ARREADY;
  input IP2Bus_WrAck;
  input s_axi_ctrl_pf0_AWREADY;

  wire Bus2IP_CS;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ;
  wire IP2Bus_WrAck;
  wire \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  wire [4:0]Q;
  wire aclk_ctrl;
  wire aresetn_ctrl;
  wire s_axi_ctrl_pf0_ARREADY;
  wire s_axi_ctrl_pf0_AWREADY;
  wire s_axi_ctrl_pf0_WREADY_INST_0_i_1_n_0;
  wire start2;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \IP2Bus_Data[29]_i_1 
       (.I0(Bus2IP_CS),
        .O(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00005400)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ),
        .I1(Bus2IP_CS),
        .I2(start2),
        .I3(aresetn_ctrl),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ),
        .O(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ));
  FDRE \MEM_DECODE_GEN[0].cs_out_i_reg[0] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ),
        .Q(Bus2IP_CS),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    s_axi_ctrl_pf0_ARREADY_INST_0
       (.I0(s_axi_ctrl_pf0_WREADY_INST_0_i_1_n_0),
        .I1(Q[0]),
        .I2(s_axi_ctrl_pf0_ARREADY),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(IP2Bus_WrAck),
        .O(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    s_axi_ctrl_pf0_WREADY_INST_0
       (.I0(s_axi_ctrl_pf0_WREADY_INST_0_i_1_n_0),
        .I1(Q[0]),
        .I2(s_axi_ctrl_pf0_AWREADY),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(IP2Bus_WrAck),
        .O(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_ctrl_pf0_WREADY_INST_0_i_1
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(s_axi_ctrl_pf0_WREADY_INST_0_i_1_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif
   (Bus2IP_CS,
    s_axi_ctrl_pf1_RVALID,
    s_axi_ctrl_pf1_BVALID,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    s_axi_ctrl_pf1_RDATA,
    D,
    SR,
    aclk_ctrl,
    s_axi_ctrl_pf1_ARVALID,
    aresetn_ctrl,
    IP2Bus_WrAck,
    s_axi_ctrl_pf1_AWVALID,
    s_axi_ctrl_pf1_WVALID,
    s_axi_ctrl_pf1_RREADY,
    s_axi_ctrl_pf1_BREADY,
    s_axi_ctrl_pf1_ARADDR,
    s_axi_ctrl_pf1_AWADDR,
    Q);
  output Bus2IP_CS;
  output s_axi_ctrl_pf1_RVALID;
  output s_axi_ctrl_pf1_BVALID;
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ;
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  output [8:0]s_axi_ctrl_pf1_RDATA;
  output [8:0]D;
  input [0:0]SR;
  input aclk_ctrl;
  input s_axi_ctrl_pf1_ARVALID;
  input aresetn_ctrl;
  input IP2Bus_WrAck;
  input s_axi_ctrl_pf1_AWVALID;
  input s_axi_ctrl_pf1_WVALID;
  input s_axi_ctrl_pf1_RREADY;
  input s_axi_ctrl_pf1_BREADY;
  input [4:0]s_axi_ctrl_pf1_ARADDR;
  input [4:0]s_axi_ctrl_pf1_AWADDR;
  input [8:0]Q;

  wire Bus2IP_CS;
  wire [8:0]D;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ;
  wire IP2Bus_WrAck;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire [8:0]Q;
  wire [0:0]SR;
  wire aclk_ctrl;
  wire aresetn_ctrl;
  wire [4:0]s_axi_ctrl_pf1_ARADDR;
  wire s_axi_ctrl_pf1_ARVALID;
  wire [4:0]s_axi_ctrl_pf1_AWADDR;
  wire s_axi_ctrl_pf1_AWVALID;
  wire s_axi_ctrl_pf1_BREADY;
  wire s_axi_ctrl_pf1_BVALID;
  wire [8:0]s_axi_ctrl_pf1_RDATA;
  wire s_axi_ctrl_pf1_RREADY;
  wire s_axi_ctrl_pf1_RVALID;
  wire s_axi_ctrl_pf1_WVALID;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment I_SLAVE_ATTACHMENT
       (.Bus2IP_CS(Bus2IP_CS),
        .D(D),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 (\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_1 (\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ),
        .IP2Bus_WrAck(IP2Bus_WrAck),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0] (\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .Q(Q),
        .SR(SR),
        .aclk_ctrl(aclk_ctrl),
        .aresetn_ctrl(aresetn_ctrl),
        .s_axi_ctrl_pf1_ARADDR(s_axi_ctrl_pf1_ARADDR),
        .s_axi_ctrl_pf1_ARVALID(s_axi_ctrl_pf1_ARVALID),
        .s_axi_ctrl_pf1_AWADDR(s_axi_ctrl_pf1_AWADDR),
        .s_axi_ctrl_pf1_AWVALID(s_axi_ctrl_pf1_AWVALID),
        .s_axi_ctrl_pf1_BREADY(s_axi_ctrl_pf1_BREADY),
        .s_axi_ctrl_pf1_BVALID(s_axi_ctrl_pf1_BVALID),
        .s_axi_ctrl_pf1_RDATA(s_axi_ctrl_pf1_RDATA),
        .s_axi_ctrl_pf1_RREADY(s_axi_ctrl_pf1_RREADY),
        .s_axi_ctrl_pf1_RVALID(s_axi_ctrl_pf1_RVALID),
        .s_axi_ctrl_pf1_WVALID(s_axi_ctrl_pf1_WVALID));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_0
   (SR,
    Bus2IP_CS,
    s_axi_ctrl_pf0_RVALID,
    s_axi_ctrl_pf0_BVALID,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    s_axi_ctrl_pf0_RDATA,
    D,
    aclk_ctrl,
    s_axi_ctrl_pf0_ARVALID,
    aresetn_ctrl,
    IP2Bus_WrAck,
    s_axi_ctrl_pf0_AWVALID,
    s_axi_ctrl_pf0_WVALID,
    s_axi_ctrl_pf0_RREADY,
    s_axi_ctrl_pf0_BREADY,
    s_axi_ctrl_pf0_ARADDR,
    s_axi_ctrl_pf0_AWADDR,
    Q);
  output [0:0]SR;
  output Bus2IP_CS;
  output s_axi_ctrl_pf0_RVALID;
  output s_axi_ctrl_pf0_BVALID;
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ;
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  output [12:0]s_axi_ctrl_pf0_RDATA;
  output [12:0]D;
  input aclk_ctrl;
  input s_axi_ctrl_pf0_ARVALID;
  input aresetn_ctrl;
  input IP2Bus_WrAck;
  input s_axi_ctrl_pf0_AWVALID;
  input s_axi_ctrl_pf0_WVALID;
  input s_axi_ctrl_pf0_RREADY;
  input s_axi_ctrl_pf0_BREADY;
  input [4:0]s_axi_ctrl_pf0_ARADDR;
  input [4:0]s_axi_ctrl_pf0_AWADDR;
  input [12:0]Q;

  wire Bus2IP_CS;
  wire [12:0]D;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ;
  wire IP2Bus_WrAck;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire [12:0]Q;
  wire [0:0]SR;
  wire aclk_ctrl;
  wire aresetn_ctrl;
  wire [4:0]s_axi_ctrl_pf0_ARADDR;
  wire s_axi_ctrl_pf0_ARVALID;
  wire [4:0]s_axi_ctrl_pf0_AWADDR;
  wire s_axi_ctrl_pf0_AWVALID;
  wire s_axi_ctrl_pf0_BREADY;
  wire s_axi_ctrl_pf0_BVALID;
  wire [12:0]s_axi_ctrl_pf0_RDATA;
  wire s_axi_ctrl_pf0_RREADY;
  wire s_axi_ctrl_pf0_RVALID;
  wire s_axi_ctrl_pf0_WVALID;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment_1 I_SLAVE_ATTACHMENT
       (.Bus2IP_CS(Bus2IP_CS),
        .D(D),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 (\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_1 (\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ),
        .IP2Bus_WrAck(IP2Bus_WrAck),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0] (\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .Q(Q),
        .SR(SR),
        .aclk_ctrl(aclk_ctrl),
        .aresetn_ctrl(aresetn_ctrl),
        .s_axi_ctrl_pf0_ARADDR(s_axi_ctrl_pf0_ARADDR),
        .s_axi_ctrl_pf0_ARVALID(s_axi_ctrl_pf0_ARVALID),
        .s_axi_ctrl_pf0_AWADDR(s_axi_ctrl_pf0_AWADDR),
        .s_axi_ctrl_pf0_AWVALID(s_axi_ctrl_pf0_AWVALID),
        .s_axi_ctrl_pf0_BREADY(s_axi_ctrl_pf0_BREADY),
        .s_axi_ctrl_pf0_BVALID(s_axi_ctrl_pf0_BVALID),
        .s_axi_ctrl_pf0_RDATA(s_axi_ctrl_pf0_RDATA),
        .s_axi_ctrl_pf0_RREADY(s_axi_ctrl_pf0_RREADY),
        .s_axi_ctrl_pf0_RVALID(s_axi_ctrl_pf0_RVALID),
        .s_axi_ctrl_pf0_WVALID(s_axi_ctrl_pf0_WVALID));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bar_layout_table
   (SR,
    s_axi_ctrl_pf0_RVALID,
    s_axi_ctrl_pf0_BVALID,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ,
    s_axi_ctrl_pf0_RDATA,
    aclk_ctrl,
    s_axi_ctrl_pf0_ARVALID,
    aresetn_ctrl,
    s_axi_ctrl_pf0_AWVALID,
    s_axi_ctrl_pf0_WVALID,
    s_axi_ctrl_pf0_RREADY,
    s_axi_ctrl_pf0_BREADY,
    s_axi_ctrl_pf0_ARADDR,
    s_axi_ctrl_pf0_AWADDR);
  output [0:0]SR;
  output s_axi_ctrl_pf0_RVALID;
  output s_axi_ctrl_pf0_BVALID;
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ;
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ;
  output [12:0]s_axi_ctrl_pf0_RDATA;
  input aclk_ctrl;
  input s_axi_ctrl_pf0_ARVALID;
  input aresetn_ctrl;
  input s_axi_ctrl_pf0_AWVALID;
  input s_axi_ctrl_pf0_WVALID;
  input s_axi_ctrl_pf0_RREADY;
  input s_axi_ctrl_pf0_BREADY;
  input [4:0]s_axi_ctrl_pf0_ARADDR;
  input [4:0]s_axi_ctrl_pf0_AWADDR;

  wire Bus2IP_CS;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ;
  wire \IP2Bus_Ack_reg_n_0_[4] ;
  wire [29:0]IP2Bus_Data;
  wire IP2Bus_WrAck;
  wire IP2Bus_WrAck_i_1_n_0;
  wire [0:0]SR;
  wire aclk_ctrl;
  wire aresetn_ctrl;
  wire axi_lite_ipif_1_n_6;
  wire [29:0]p_0_out;
  wire [2:0]p_2_in;
  wire [4:0]s_axi_ctrl_pf0_ARADDR;
  wire s_axi_ctrl_pf0_ARVALID;
  wire [4:0]s_axi_ctrl_pf0_AWADDR;
  wire s_axi_ctrl_pf0_AWVALID;
  wire s_axi_ctrl_pf0_BREADY;
  wire s_axi_ctrl_pf0_BVALID;
  wire [12:0]s_axi_ctrl_pf0_RDATA;
  wire s_axi_ctrl_pf0_RREADY;
  wire s_axi_ctrl_pf0_RVALID;
  wire s_axi_ctrl_pf0_WVALID;

  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Ack_reg[1] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(Bus2IP_CS),
        .Q(p_2_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Ack_reg[2] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(p_2_in[2]),
        .Q(p_2_in[1]),
        .R(axi_lite_ipif_1_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Ack_reg[3] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(p_2_in[1]),
        .Q(p_2_in[0]),
        .R(axi_lite_ipif_1_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Ack_reg[4] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(p_2_in[0]),
        .Q(\IP2Bus_Ack_reg_n_0_[4] ),
        .R(axi_lite_ipif_1_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[0] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(p_0_out[0]),
        .Q(IP2Bus_Data[0]),
        .R(axi_lite_ipif_1_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[11] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(p_0_out[11]),
        .Q(IP2Bus_Data[11]),
        .R(axi_lite_ipif_1_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[16] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(p_0_out[16]),
        .Q(IP2Bus_Data[16]),
        .R(axi_lite_ipif_1_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[1] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(p_0_out[1]),
        .Q(IP2Bus_Data[1]),
        .R(axi_lite_ipif_1_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[25] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(p_0_out[25]),
        .Q(IP2Bus_Data[25]),
        .R(axi_lite_ipif_1_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[28] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(p_0_out[28]),
        .Q(IP2Bus_Data[28]),
        .R(axi_lite_ipif_1_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[29] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(p_0_out[29]),
        .Q(IP2Bus_Data[29]),
        .R(axi_lite_ipif_1_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[2] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(p_0_out[2]),
        .Q(IP2Bus_Data[2]),
        .R(axi_lite_ipif_1_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[4] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(p_0_out[4]),
        .Q(IP2Bus_Data[4]),
        .R(axi_lite_ipif_1_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[5] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(p_0_out[5]),
        .Q(IP2Bus_Data[5]),
        .R(axi_lite_ipif_1_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[6] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(p_0_out[6]),
        .Q(IP2Bus_Data[6]),
        .R(axi_lite_ipif_1_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[7] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(p_0_out[7]),
        .Q(IP2Bus_Data[7]),
        .R(axi_lite_ipif_1_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[9] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(p_0_out[9]),
        .Q(IP2Bus_Data[9]),
        .R(axi_lite_ipif_1_n_6));
  LUT2 #(
    .INIT(4'h2)) 
    IP2Bus_WrAck_i_1
       (.I0(p_2_in[0]),
        .I1(\IP2Bus_Ack_reg_n_0_[4] ),
        .O(IP2Bus_WrAck_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    IP2Bus_WrAck_reg
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(IP2Bus_WrAck_i_1_n_0),
        .Q(IP2Bus_WrAck),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_0 axi_lite_ipif_1
       (.Bus2IP_CS(Bus2IP_CS),
        .D({p_0_out[29:28],p_0_out[25],p_0_out[16],p_0_out[11],p_0_out[9],p_0_out[7:4],p_0_out[2:0]}),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] (\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 (\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ),
        .IP2Bus_WrAck(IP2Bus_WrAck),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0] (axi_lite_ipif_1_n_6),
        .Q({IP2Bus_Data[29:28],IP2Bus_Data[25],IP2Bus_Data[16],IP2Bus_Data[11],IP2Bus_Data[9],IP2Bus_Data[7:4],IP2Bus_Data[2:0]}),
        .SR(SR),
        .aclk_ctrl(aclk_ctrl),
        .aresetn_ctrl(aresetn_ctrl),
        .s_axi_ctrl_pf0_ARADDR(s_axi_ctrl_pf0_ARADDR),
        .s_axi_ctrl_pf0_ARVALID(s_axi_ctrl_pf0_ARVALID),
        .s_axi_ctrl_pf0_AWADDR(s_axi_ctrl_pf0_AWADDR),
        .s_axi_ctrl_pf0_AWVALID(s_axi_ctrl_pf0_AWVALID),
        .s_axi_ctrl_pf0_BREADY(s_axi_ctrl_pf0_BREADY),
        .s_axi_ctrl_pf0_BVALID(s_axi_ctrl_pf0_BVALID),
        .s_axi_ctrl_pf0_RDATA(s_axi_ctrl_pf0_RDATA),
        .s_axi_ctrl_pf0_RREADY(s_axi_ctrl_pf0_RREADY),
        .s_axi_ctrl_pf0_RVALID(s_axi_ctrl_pf0_RVALID),
        .s_axi_ctrl_pf0_WVALID(s_axi_ctrl_pf0_WVALID));
endmodule

(* ORIG_REF_NAME = "bar_layout_table" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bar_layout_table__parameterized0
   (s_axi_ctrl_pf1_RVALID,
    s_axi_ctrl_pf1_BVALID,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ,
    s_axi_ctrl_pf1_RDATA,
    SR,
    aclk_ctrl,
    s_axi_ctrl_pf1_ARVALID,
    aresetn_ctrl,
    s_axi_ctrl_pf1_AWVALID,
    s_axi_ctrl_pf1_WVALID,
    s_axi_ctrl_pf1_RREADY,
    s_axi_ctrl_pf1_BREADY,
    s_axi_ctrl_pf1_ARADDR,
    s_axi_ctrl_pf1_AWADDR);
  output s_axi_ctrl_pf1_RVALID;
  output s_axi_ctrl_pf1_BVALID;
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ;
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ;
  output [8:0]s_axi_ctrl_pf1_RDATA;
  input [0:0]SR;
  input aclk_ctrl;
  input s_axi_ctrl_pf1_ARVALID;
  input aresetn_ctrl;
  input s_axi_ctrl_pf1_AWVALID;
  input s_axi_ctrl_pf1_WVALID;
  input s_axi_ctrl_pf1_RREADY;
  input s_axi_ctrl_pf1_BREADY;
  input [4:0]s_axi_ctrl_pf1_ARADDR;
  input [4:0]s_axi_ctrl_pf1_AWADDR;

  wire Bus2IP_CS;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ;
  wire \IP2Bus_Ack_reg_n_0_[1] ;
  wire \IP2Bus_Ack_reg_n_0_[2] ;
  wire \IP2Bus_Ack_reg_n_0_[3] ;
  wire \IP2Bus_Ack_reg_n_0_[4] ;
  wire \IP2Bus_Data_reg_n_0_[0] ;
  wire \IP2Bus_Data_reg_n_0_[14] ;
  wire \IP2Bus_Data_reg_n_0_[24] ;
  wire \IP2Bus_Data_reg_n_0_[28] ;
  wire \IP2Bus_Data_reg_n_0_[4] ;
  wire \IP2Bus_Data_reg_n_0_[5] ;
  wire \IP2Bus_Data_reg_n_0_[6] ;
  wire \IP2Bus_Data_reg_n_0_[7] ;
  wire \IP2Bus_Data_reg_n_0_[9] ;
  wire IP2Bus_WrAck;
  wire IP2Bus_WrAck_i_1__0_n_0;
  wire [0:0]SR;
  wire aclk_ctrl;
  wire aresetn_ctrl;
  wire axi_lite_ipif_1_n_15;
  wire axi_lite_ipif_1_n_16;
  wire axi_lite_ipif_1_n_17;
  wire axi_lite_ipif_1_n_18;
  wire axi_lite_ipif_1_n_19;
  wire axi_lite_ipif_1_n_20;
  wire axi_lite_ipif_1_n_21;
  wire axi_lite_ipif_1_n_22;
  wire axi_lite_ipif_1_n_23;
  wire axi_lite_ipif_1_n_5;
  wire [4:0]s_axi_ctrl_pf1_ARADDR;
  wire s_axi_ctrl_pf1_ARVALID;
  wire [4:0]s_axi_ctrl_pf1_AWADDR;
  wire s_axi_ctrl_pf1_AWVALID;
  wire s_axi_ctrl_pf1_BREADY;
  wire s_axi_ctrl_pf1_BVALID;
  wire [8:0]s_axi_ctrl_pf1_RDATA;
  wire s_axi_ctrl_pf1_RREADY;
  wire s_axi_ctrl_pf1_RVALID;
  wire s_axi_ctrl_pf1_WVALID;

  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Ack_reg[1] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(Bus2IP_CS),
        .Q(\IP2Bus_Ack_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Ack_reg[2] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\IP2Bus_Ack_reg_n_0_[1] ),
        .Q(\IP2Bus_Ack_reg_n_0_[2] ),
        .R(axi_lite_ipif_1_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Ack_reg[3] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\IP2Bus_Ack_reg_n_0_[2] ),
        .Q(\IP2Bus_Ack_reg_n_0_[3] ),
        .R(axi_lite_ipif_1_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Ack_reg[4] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\IP2Bus_Ack_reg_n_0_[3] ),
        .Q(\IP2Bus_Ack_reg_n_0_[4] ),
        .R(axi_lite_ipif_1_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[0] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(axi_lite_ipif_1_n_23),
        .Q(\IP2Bus_Data_reg_n_0_[0] ),
        .R(axi_lite_ipif_1_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[14] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(axi_lite_ipif_1_n_17),
        .Q(\IP2Bus_Data_reg_n_0_[14] ),
        .R(axi_lite_ipif_1_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[24] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(axi_lite_ipif_1_n_16),
        .Q(\IP2Bus_Data_reg_n_0_[24] ),
        .R(axi_lite_ipif_1_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[28] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(axi_lite_ipif_1_n_15),
        .Q(\IP2Bus_Data_reg_n_0_[28] ),
        .R(axi_lite_ipif_1_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[4] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(axi_lite_ipif_1_n_22),
        .Q(\IP2Bus_Data_reg_n_0_[4] ),
        .R(axi_lite_ipif_1_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[5] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(axi_lite_ipif_1_n_21),
        .Q(\IP2Bus_Data_reg_n_0_[5] ),
        .R(axi_lite_ipif_1_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[6] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(axi_lite_ipif_1_n_20),
        .Q(\IP2Bus_Data_reg_n_0_[6] ),
        .R(axi_lite_ipif_1_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[7] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(axi_lite_ipif_1_n_19),
        .Q(\IP2Bus_Data_reg_n_0_[7] ),
        .R(axi_lite_ipif_1_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[9] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(axi_lite_ipif_1_n_18),
        .Q(\IP2Bus_Data_reg_n_0_[9] ),
        .R(axi_lite_ipif_1_n_5));
  LUT2 #(
    .INIT(4'h2)) 
    IP2Bus_WrAck_i_1__0
       (.I0(\IP2Bus_Ack_reg_n_0_[3] ),
        .I1(\IP2Bus_Ack_reg_n_0_[4] ),
        .O(IP2Bus_WrAck_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    IP2Bus_WrAck_reg
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(IP2Bus_WrAck_i_1__0_n_0),
        .Q(IP2Bus_WrAck),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif axi_lite_ipif_1
       (.Bus2IP_CS(Bus2IP_CS),
        .D({axi_lite_ipif_1_n_15,axi_lite_ipif_1_n_16,axi_lite_ipif_1_n_17,axi_lite_ipif_1_n_18,axi_lite_ipif_1_n_19,axi_lite_ipif_1_n_20,axi_lite_ipif_1_n_21,axi_lite_ipif_1_n_22,axi_lite_ipif_1_n_23}),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] (\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 (\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ),
        .IP2Bus_WrAck(IP2Bus_WrAck),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0] (axi_lite_ipif_1_n_5),
        .Q({\IP2Bus_Data_reg_n_0_[28] ,\IP2Bus_Data_reg_n_0_[24] ,\IP2Bus_Data_reg_n_0_[14] ,\IP2Bus_Data_reg_n_0_[9] ,\IP2Bus_Data_reg_n_0_[7] ,\IP2Bus_Data_reg_n_0_[6] ,\IP2Bus_Data_reg_n_0_[5] ,\IP2Bus_Data_reg_n_0_[4] ,\IP2Bus_Data_reg_n_0_[0] }),
        .SR(SR),
        .aclk_ctrl(aclk_ctrl),
        .aresetn_ctrl(aresetn_ctrl),
        .s_axi_ctrl_pf1_ARADDR(s_axi_ctrl_pf1_ARADDR),
        .s_axi_ctrl_pf1_ARVALID(s_axi_ctrl_pf1_ARVALID),
        .s_axi_ctrl_pf1_AWADDR(s_axi_ctrl_pf1_AWADDR),
        .s_axi_ctrl_pf1_AWVALID(s_axi_ctrl_pf1_AWVALID),
        .s_axi_ctrl_pf1_BREADY(s_axi_ctrl_pf1_BREADY),
        .s_axi_ctrl_pf1_BVALID(s_axi_ctrl_pf1_BVALID),
        .s_axi_ctrl_pf1_RDATA(s_axi_ctrl_pf1_RDATA),
        .s_axi_ctrl_pf1_RREADY(s_axi_ctrl_pf1_RREADY),
        .s_axi_ctrl_pf1_RVALID(s_axi_ctrl_pf1_RVALID),
        .s_axi_ctrl_pf1_WVALID(s_axi_ctrl_pf1_WVALID));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_disc
   (\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_1 ,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_2 ,
    s_axi_ctrl_pf0_RDATA,
    s_axi_ctrl_pf1_RDATA,
    s_pcie4_cfg_ext_read_data,
    s_pcie4_cfg_ext_read_data_valid,
    s_axi_ctrl_pf0_RVALID,
    s_axi_ctrl_pf0_BVALID,
    s_axi_ctrl_pf1_RVALID,
    s_axi_ctrl_pf1_BVALID,
    s_pcie4_cfg_ext_function_number,
    s_pcie4_cfg_ext_register_number,
    s_axi_ctrl_pf0_ARVALID,
    s_axi_ctrl_pf1_ARVALID,
    aclk_ctrl,
    aclk_pcie,
    s_pcie4_cfg_ext_read_received,
    aresetn_ctrl,
    s_axi_ctrl_pf0_AWVALID,
    s_axi_ctrl_pf0_WVALID,
    s_axi_ctrl_pf1_AWVALID,
    s_axi_ctrl_pf1_WVALID,
    s_axi_ctrl_pf0_RREADY,
    s_axi_ctrl_pf0_BREADY,
    s_axi_ctrl_pf1_RREADY,
    s_axi_ctrl_pf1_BREADY,
    s_axi_ctrl_pf0_ARADDR,
    s_axi_ctrl_pf0_AWADDR,
    s_axi_ctrl_pf1_ARADDR,
    s_axi_ctrl_pf1_AWADDR);
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ;
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ;
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_1 ;
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_2 ;
  output [12:0]s_axi_ctrl_pf0_RDATA;
  output [8:0]s_axi_ctrl_pf1_RDATA;
  output [3:0]s_pcie4_cfg_ext_read_data;
  output s_pcie4_cfg_ext_read_data_valid;
  output s_axi_ctrl_pf0_RVALID;
  output s_axi_ctrl_pf0_BVALID;
  output s_axi_ctrl_pf1_RVALID;
  output s_axi_ctrl_pf1_BVALID;
  input [1:0]s_pcie4_cfg_ext_function_number;
  input [9:0]s_pcie4_cfg_ext_register_number;
  input s_axi_ctrl_pf0_ARVALID;
  input s_axi_ctrl_pf1_ARVALID;
  input aclk_ctrl;
  input aclk_pcie;
  input s_pcie4_cfg_ext_read_received;
  input aresetn_ctrl;
  input s_axi_ctrl_pf0_AWVALID;
  input s_axi_ctrl_pf0_WVALID;
  input s_axi_ctrl_pf1_AWVALID;
  input s_axi_ctrl_pf1_WVALID;
  input s_axi_ctrl_pf0_RREADY;
  input s_axi_ctrl_pf0_BREADY;
  input s_axi_ctrl_pf1_RREADY;
  input s_axi_ctrl_pf1_BREADY;
  input [4:0]s_axi_ctrl_pf0_ARADDR;
  input [4:0]s_axi_ctrl_pf0_AWADDR;
  input [4:0]s_axi_ctrl_pf1_ARADDR;
  input [4:0]s_axi_ctrl_pf1_AWADDR;

  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_1 ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_2 ;
  wire aclk_ctrl;
  wire aclk_pcie;
  wire aresetn_ctrl;
  wire \axi_lite_ipif_1/I_SLAVE_ATTACHMENT/rst ;
  wire [4:0]s_axi_ctrl_pf0_ARADDR;
  wire s_axi_ctrl_pf0_ARVALID;
  wire [4:0]s_axi_ctrl_pf0_AWADDR;
  wire s_axi_ctrl_pf0_AWVALID;
  wire s_axi_ctrl_pf0_BREADY;
  wire s_axi_ctrl_pf0_BVALID;
  wire [12:0]s_axi_ctrl_pf0_RDATA;
  wire s_axi_ctrl_pf0_RREADY;
  wire s_axi_ctrl_pf0_RVALID;
  wire s_axi_ctrl_pf0_WVALID;
  wire [4:0]s_axi_ctrl_pf1_ARADDR;
  wire s_axi_ctrl_pf1_ARVALID;
  wire [4:0]s_axi_ctrl_pf1_AWADDR;
  wire s_axi_ctrl_pf1_AWVALID;
  wire s_axi_ctrl_pf1_BREADY;
  wire s_axi_ctrl_pf1_BVALID;
  wire [8:0]s_axi_ctrl_pf1_RDATA;
  wire s_axi_ctrl_pf1_RREADY;
  wire s_axi_ctrl_pf1_RVALID;
  wire s_axi_ctrl_pf1_WVALID;
  wire [1:0]s_pcie4_cfg_ext_function_number;
  wire [3:0]s_pcie4_cfg_ext_read_data;
  wire s_pcie4_cfg_ext_read_data_valid;
  wire s_pcie4_cfg_ext_read_received;
  wire [9:0]s_pcie4_cfg_ext_register_number;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bar_layout_table \G_GENERATE[0].G_GENERATE_PF0.BAR_LAYOUT_TABLE_inst_0 
       (.\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] (\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 (\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ),
        .SR(\axi_lite_ipif_1/I_SLAVE_ATTACHMENT/rst ),
        .aclk_ctrl(aclk_ctrl),
        .aresetn_ctrl(aresetn_ctrl),
        .s_axi_ctrl_pf0_ARADDR(s_axi_ctrl_pf0_ARADDR),
        .s_axi_ctrl_pf0_ARVALID(s_axi_ctrl_pf0_ARVALID),
        .s_axi_ctrl_pf0_AWADDR(s_axi_ctrl_pf0_AWADDR),
        .s_axi_ctrl_pf0_AWVALID(s_axi_ctrl_pf0_AWVALID),
        .s_axi_ctrl_pf0_BREADY(s_axi_ctrl_pf0_BREADY),
        .s_axi_ctrl_pf0_BVALID(s_axi_ctrl_pf0_BVALID),
        .s_axi_ctrl_pf0_RDATA(s_axi_ctrl_pf0_RDATA),
        .s_axi_ctrl_pf0_RREADY(s_axi_ctrl_pf0_RREADY),
        .s_axi_ctrl_pf0_RVALID(s_axi_ctrl_pf0_RVALID),
        .s_axi_ctrl_pf0_WVALID(s_axi_ctrl_pf0_WVALID));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bar_layout_table__parameterized0 \G_GENERATE[1].G_GENERATE_PF1.BAR_LAYOUT_TABLE_inst_1 
       (.\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] (\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_1 ),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 (\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_2 ),
        .SR(\axi_lite_ipif_1/I_SLAVE_ATTACHMENT/rst ),
        .aclk_ctrl(aclk_ctrl),
        .aresetn_ctrl(aresetn_ctrl),
        .s_axi_ctrl_pf1_ARADDR(s_axi_ctrl_pf1_ARADDR),
        .s_axi_ctrl_pf1_ARVALID(s_axi_ctrl_pf1_ARVALID),
        .s_axi_ctrl_pf1_AWADDR(s_axi_ctrl_pf1_AWADDR),
        .s_axi_ctrl_pf1_AWVALID(s_axi_ctrl_pf1_AWVALID),
        .s_axi_ctrl_pf1_BREADY(s_axi_ctrl_pf1_BREADY),
        .s_axi_ctrl_pf1_BVALID(s_axi_ctrl_pf1_BVALID),
        .s_axi_ctrl_pf1_RDATA(s_axi_ctrl_pf1_RDATA),
        .s_axi_ctrl_pf1_RREADY(s_axi_ctrl_pf1_RREADY),
        .s_axi_ctrl_pf1_RVALID(s_axi_ctrl_pf1_RVALID),
        .s_axi_ctrl_pf1_WVALID(s_axi_ctrl_pf1_WVALID));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pcie_vsec pcie_vsec_inst
       (.aclk_pcie(aclk_pcie),
        .s_pcie4_cfg_ext_function_number(s_pcie4_cfg_ext_function_number),
        .s_pcie4_cfg_ext_read_data(s_pcie4_cfg_ext_read_data),
        .s_pcie4_cfg_ext_read_data_valid(s_pcie4_cfg_ext_read_data_valid),
        .s_pcie4_cfg_ext_read_received(s_pcie4_cfg_ext_read_received),
        .s_pcie4_cfg_ext_register_number(s_pcie4_cfg_ext_register_number));
endmodule

(* C_CAP_BASE_ADDR = "12'b011000000000" *) (* C_NEXT_CAP_ADDR = "12'b000000000000" *) (* C_NUM_PFS = "2" *) 
(* C_PF0_BAR_INDEX = "0" *) (* C_PF0_ENTRY_ADDR_0 = "48'b000000000000000000000010000000010000000000000000" *) (* C_PF0_ENTRY_ADDR_1 = "48'b000000000000000000000010000000000000000000000000" *) 
(* C_PF0_ENTRY_ADDR_10 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF0_ENTRY_ADDR_11 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF0_ENTRY_ADDR_12 = "48'b000000000000000000000000000000000000000000000000" *) 
(* C_PF0_ENTRY_ADDR_13 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF0_ENTRY_ADDR_14 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF0_ENTRY_ADDR_15 = "48'b000000000000000000000000000000000000000000000000" *) 
(* C_PF0_ENTRY_ADDR_2 = "48'b000000000000000000001000000000000000000000000000" *) (* C_PF0_ENTRY_ADDR_3 = "48'b000000000000000000000010000000000010000000000000" *) (* C_PF0_ENTRY_ADDR_4 = "48'b000000000000000000000000000000000000000000000000" *) 
(* C_PF0_ENTRY_ADDR_5 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF0_ENTRY_ADDR_6 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF0_ENTRY_ADDR_7 = "48'b000000000000000000000000000000000000000000000000" *) 
(* C_PF0_ENTRY_ADDR_8 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF0_ENTRY_ADDR_9 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF0_ENTRY_BAR_0 = "0" *) 
(* C_PF0_ENTRY_BAR_1 = "0" *) (* C_PF0_ENTRY_BAR_10 = "0" *) (* C_PF0_ENTRY_BAR_11 = "0" *) 
(* C_PF0_ENTRY_BAR_12 = "0" *) (* C_PF0_ENTRY_BAR_13 = "0" *) (* C_PF0_ENTRY_BAR_14 = "0" *) 
(* C_PF0_ENTRY_BAR_15 = "0" *) (* C_PF0_ENTRY_BAR_2 = "0" *) (* C_PF0_ENTRY_BAR_3 = "0" *) 
(* C_PF0_ENTRY_BAR_4 = "0" *) (* C_PF0_ENTRY_BAR_5 = "0" *) (* C_PF0_ENTRY_BAR_6 = "0" *) 
(* C_PF0_ENTRY_BAR_7 = "0" *) (* C_PF0_ENTRY_BAR_8 = "0" *) (* C_PF0_ENTRY_BAR_9 = "0" *) 
(* C_PF0_ENTRY_MAJOR_VERSION_0 = "1" *) (* C_PF0_ENTRY_MAJOR_VERSION_1 = "1" *) (* C_PF0_ENTRY_MAJOR_VERSION_10 = "0" *) 
(* C_PF0_ENTRY_MAJOR_VERSION_11 = "0" *) (* C_PF0_ENTRY_MAJOR_VERSION_12 = "0" *) (* C_PF0_ENTRY_MAJOR_VERSION_13 = "0" *) 
(* C_PF0_ENTRY_MAJOR_VERSION_14 = "0" *) (* C_PF0_ENTRY_MAJOR_VERSION_15 = "0" *) (* C_PF0_ENTRY_MAJOR_VERSION_2 = "1" *) 
(* C_PF0_ENTRY_MAJOR_VERSION_3 = "1" *) (* C_PF0_ENTRY_MAJOR_VERSION_4 = "0" *) (* C_PF0_ENTRY_MAJOR_VERSION_5 = "0" *) 
(* C_PF0_ENTRY_MAJOR_VERSION_6 = "0" *) (* C_PF0_ENTRY_MAJOR_VERSION_7 = "0" *) (* C_PF0_ENTRY_MAJOR_VERSION_8 = "0" *) 
(* C_PF0_ENTRY_MAJOR_VERSION_9 = "0" *) (* C_PF0_ENTRY_MINOR_VERSION_0 = "2" *) (* C_PF0_ENTRY_MINOR_VERSION_1 = "0" *) 
(* C_PF0_ENTRY_MINOR_VERSION_10 = "0" *) (* C_PF0_ENTRY_MINOR_VERSION_11 = "0" *) (* C_PF0_ENTRY_MINOR_VERSION_12 = "0" *) 
(* C_PF0_ENTRY_MINOR_VERSION_13 = "0" *) (* C_PF0_ENTRY_MINOR_VERSION_14 = "0" *) (* C_PF0_ENTRY_MINOR_VERSION_15 = "0" *) 
(* C_PF0_ENTRY_MINOR_VERSION_2 = "0" *) (* C_PF0_ENTRY_MINOR_VERSION_3 = "0" *) (* C_PF0_ENTRY_MINOR_VERSION_4 = "0" *) 
(* C_PF0_ENTRY_MINOR_VERSION_5 = "0" *) (* C_PF0_ENTRY_MINOR_VERSION_6 = "0" *) (* C_PF0_ENTRY_MINOR_VERSION_7 = "0" *) 
(* C_PF0_ENTRY_MINOR_VERSION_8 = "0" *) (* C_PF0_ENTRY_MINOR_VERSION_9 = "0" *) (* C_PF0_ENTRY_RSVD0_0 = "4'b0000" *) 
(* C_PF0_ENTRY_RSVD0_1 = "4'b0011" *) (* C_PF0_ENTRY_RSVD0_10 = "4'b0000" *) (* C_PF0_ENTRY_RSVD0_11 = "4'b0000" *) 
(* C_PF0_ENTRY_RSVD0_12 = "4'b0000" *) (* C_PF0_ENTRY_RSVD0_13 = "4'b0000" *) (* C_PF0_ENTRY_RSVD0_14 = "4'b0000" *) 
(* C_PF0_ENTRY_RSVD0_15 = "4'b0000" *) (* C_PF0_ENTRY_RSVD0_2 = "4'b0000" *) (* C_PF0_ENTRY_RSVD0_3 = "4'b0000" *) 
(* C_PF0_ENTRY_RSVD0_4 = "4'b0000" *) (* C_PF0_ENTRY_RSVD0_5 = "4'b0000" *) (* C_PF0_ENTRY_RSVD0_6 = "4'b0000" *) 
(* C_PF0_ENTRY_RSVD0_7 = "4'b0000" *) (* C_PF0_ENTRY_RSVD0_8 = "4'b0000" *) (* C_PF0_ENTRY_RSVD0_9 = "4'b0000" *) 
(* C_PF0_ENTRY_TYPE_0 = "8'b01010100" *) (* C_PF0_ENTRY_TYPE_1 = "8'b01010011" *) (* C_PF0_ENTRY_TYPE_10 = "8'b00000000" *) 
(* C_PF0_ENTRY_TYPE_11 = "8'b00000000" *) (* C_PF0_ENTRY_TYPE_12 = "8'b00000000" *) (* C_PF0_ENTRY_TYPE_13 = "8'b00000000" *) 
(* C_PF0_ENTRY_TYPE_14 = "8'b00000000" *) (* C_PF0_ENTRY_TYPE_15 = "8'b00000000" *) (* C_PF0_ENTRY_TYPE_2 = "8'b01010101" *) 
(* C_PF0_ENTRY_TYPE_3 = "8'b01010000" *) (* C_PF0_ENTRY_TYPE_4 = "8'b00000000" *) (* C_PF0_ENTRY_TYPE_5 = "8'b00000000" *) 
(* C_PF0_ENTRY_TYPE_6 = "8'b00000000" *) (* C_PF0_ENTRY_TYPE_7 = "8'b00000000" *) (* C_PF0_ENTRY_TYPE_8 = "8'b00000000" *) 
(* C_PF0_ENTRY_TYPE_9 = "8'b00000000" *) (* C_PF0_ENTRY_VERSION_TYPE_0 = "8'b00000001" *) (* C_PF0_ENTRY_VERSION_TYPE_1 = "8'b00000001" *) 
(* C_PF0_ENTRY_VERSION_TYPE_10 = "8'b00000000" *) (* C_PF0_ENTRY_VERSION_TYPE_11 = "8'b00000000" *) (* C_PF0_ENTRY_VERSION_TYPE_12 = "8'b00000000" *) 
(* C_PF0_ENTRY_VERSION_TYPE_13 = "8'b00000000" *) (* C_PF0_ENTRY_VERSION_TYPE_14 = "8'b00000000" *) (* C_PF0_ENTRY_VERSION_TYPE_15 = "8'b00000000" *) 
(* C_PF0_ENTRY_VERSION_TYPE_2 = "8'b00000001" *) (* C_PF0_ENTRY_VERSION_TYPE_3 = "8'b00000001" *) (* C_PF0_ENTRY_VERSION_TYPE_4 = "8'b00000000" *) 
(* C_PF0_ENTRY_VERSION_TYPE_5 = "8'b00000000" *) (* C_PF0_ENTRY_VERSION_TYPE_6 = "8'b00000000" *) (* C_PF0_ENTRY_VERSION_TYPE_7 = "8'b00000000" *) 
(* C_PF0_ENTRY_VERSION_TYPE_8 = "8'b00000000" *) (* C_PF0_ENTRY_VERSION_TYPE_9 = "8'b00000000" *) (* C_PF0_HAS_UUID_ROM = "0" *) 
(* C_PF0_HIGH_OFFSET = "0" *) (* C_PF0_LOW_OFFSET = "28'b0000001000000000000100000000" *) (* C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE = "4" *) 
(* C_PF0_S_AXI_ADDR_WIDTH = "32" *) (* C_PF0_S_AXI_DATA_WIDTH = "32" *) (* C_PF0_UUID_ROM_INIT = "00000000,00000000,00000000,00000000" *) 
(* C_PF1_BAR_INDEX = "2" *) (* C_PF1_ENTRY_ADDR_0 = "48'b000000000000000000000010000000000000000000000000" *) (* C_PF1_ENTRY_ADDR_1 = "48'b000000000000000000000000000000000000000000000000" *) 
(* C_PF1_ENTRY_ADDR_10 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF1_ENTRY_ADDR_11 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF1_ENTRY_ADDR_12 = "48'b000000000000000000000000000000000000000000000000" *) 
(* C_PF1_ENTRY_ADDR_13 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF1_ENTRY_ADDR_14 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF1_ENTRY_ADDR_15 = "48'b000000000000000000000000000000000000000000000000" *) 
(* C_PF1_ENTRY_ADDR_2 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF1_ENTRY_ADDR_3 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF1_ENTRY_ADDR_4 = "48'b000000000000000000000000000000000000000000000000" *) 
(* C_PF1_ENTRY_ADDR_5 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF1_ENTRY_ADDR_6 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF1_ENTRY_ADDR_7 = "48'b000000000000000000000000000000000000000000000000" *) 
(* C_PF1_ENTRY_ADDR_8 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF1_ENTRY_ADDR_9 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF1_ENTRY_BAR_0 = "2" *) 
(* C_PF1_ENTRY_BAR_1 = "0" *) (* C_PF1_ENTRY_BAR_10 = "0" *) (* C_PF1_ENTRY_BAR_11 = "0" *) 
(* C_PF1_ENTRY_BAR_12 = "0" *) (* C_PF1_ENTRY_BAR_13 = "0" *) (* C_PF1_ENTRY_BAR_14 = "0" *) 
(* C_PF1_ENTRY_BAR_15 = "0" *) (* C_PF1_ENTRY_BAR_2 = "0" *) (* C_PF1_ENTRY_BAR_3 = "0" *) 
(* C_PF1_ENTRY_BAR_4 = "0" *) (* C_PF1_ENTRY_BAR_5 = "0" *) (* C_PF1_ENTRY_BAR_6 = "0" *) 
(* C_PF1_ENTRY_BAR_7 = "0" *) (* C_PF1_ENTRY_BAR_8 = "0" *) (* C_PF1_ENTRY_BAR_9 = "0" *) 
(* C_PF1_ENTRY_MAJOR_VERSION_0 = "1" *) (* C_PF1_ENTRY_MAJOR_VERSION_1 = "0" *) (* C_PF1_ENTRY_MAJOR_VERSION_10 = "0" *) 
(* C_PF1_ENTRY_MAJOR_VERSION_11 = "0" *) (* C_PF1_ENTRY_MAJOR_VERSION_12 = "0" *) (* C_PF1_ENTRY_MAJOR_VERSION_13 = "0" *) 
(* C_PF1_ENTRY_MAJOR_VERSION_14 = "0" *) (* C_PF1_ENTRY_MAJOR_VERSION_15 = "0" *) (* C_PF1_ENTRY_MAJOR_VERSION_2 = "0" *) 
(* C_PF1_ENTRY_MAJOR_VERSION_3 = "0" *) (* C_PF1_ENTRY_MAJOR_VERSION_4 = "0" *) (* C_PF1_ENTRY_MAJOR_VERSION_5 = "0" *) 
(* C_PF1_ENTRY_MAJOR_VERSION_6 = "0" *) (* C_PF1_ENTRY_MAJOR_VERSION_7 = "0" *) (* C_PF1_ENTRY_MAJOR_VERSION_8 = "0" *) 
(* C_PF1_ENTRY_MAJOR_VERSION_9 = "0" *) (* C_PF1_ENTRY_MINOR_VERSION_0 = "0" *) (* C_PF1_ENTRY_MINOR_VERSION_1 = "0" *) 
(* C_PF1_ENTRY_MINOR_VERSION_10 = "0" *) (* C_PF1_ENTRY_MINOR_VERSION_11 = "0" *) (* C_PF1_ENTRY_MINOR_VERSION_12 = "0" *) 
(* C_PF1_ENTRY_MINOR_VERSION_13 = "0" *) (* C_PF1_ENTRY_MINOR_VERSION_14 = "0" *) (* C_PF1_ENTRY_MINOR_VERSION_15 = "0" *) 
(* C_PF1_ENTRY_MINOR_VERSION_2 = "0" *) (* C_PF1_ENTRY_MINOR_VERSION_3 = "0" *) (* C_PF1_ENTRY_MINOR_VERSION_4 = "0" *) 
(* C_PF1_ENTRY_MINOR_VERSION_5 = "0" *) (* C_PF1_ENTRY_MINOR_VERSION_6 = "0" *) (* C_PF1_ENTRY_MINOR_VERSION_7 = "0" *) 
(* C_PF1_ENTRY_MINOR_VERSION_8 = "0" *) (* C_PF1_ENTRY_MINOR_VERSION_9 = "0" *) (* C_PF1_ENTRY_RSVD0_0 = "4'b0001" *) 
(* C_PF1_ENTRY_RSVD0_1 = "4'b0000" *) (* C_PF1_ENTRY_RSVD0_10 = "4'b0000" *) (* C_PF1_ENTRY_RSVD0_11 = "4'b0000" *) 
(* C_PF1_ENTRY_RSVD0_12 = "4'b0000" *) (* C_PF1_ENTRY_RSVD0_13 = "4'b0000" *) (* C_PF1_ENTRY_RSVD0_14 = "4'b0000" *) 
(* C_PF1_ENTRY_RSVD0_15 = "4'b0000" *) (* C_PF1_ENTRY_RSVD0_2 = "4'b0000" *) (* C_PF1_ENTRY_RSVD0_3 = "4'b0000" *) 
(* C_PF1_ENTRY_RSVD0_4 = "4'b0000" *) (* C_PF1_ENTRY_RSVD0_5 = "4'b0000" *) (* C_PF1_ENTRY_RSVD0_6 = "4'b0000" *) 
(* C_PF1_ENTRY_RSVD0_7 = "4'b0000" *) (* C_PF1_ENTRY_RSVD0_8 = "4'b0000" *) (* C_PF1_ENTRY_RSVD0_9 = "4'b0000" *) 
(* C_PF1_ENTRY_TYPE_0 = "8'b01010011" *) (* C_PF1_ENTRY_TYPE_1 = "8'b00000000" *) (* C_PF1_ENTRY_TYPE_10 = "8'b00000000" *) 
(* C_PF1_ENTRY_TYPE_11 = "8'b00000000" *) (* C_PF1_ENTRY_TYPE_12 = "8'b00000000" *) (* C_PF1_ENTRY_TYPE_13 = "8'b00000000" *) 
(* C_PF1_ENTRY_TYPE_14 = "8'b00000000" *) (* C_PF1_ENTRY_TYPE_15 = "8'b00000000" *) (* C_PF1_ENTRY_TYPE_2 = "8'b00000000" *) 
(* C_PF1_ENTRY_TYPE_3 = "8'b00000000" *) (* C_PF1_ENTRY_TYPE_4 = "8'b00000000" *) (* C_PF1_ENTRY_TYPE_5 = "8'b00000000" *) 
(* C_PF1_ENTRY_TYPE_6 = "8'b00000000" *) (* C_PF1_ENTRY_TYPE_7 = "8'b00000000" *) (* C_PF1_ENTRY_TYPE_8 = "8'b00000000" *) 
(* C_PF1_ENTRY_TYPE_9 = "8'b00000000" *) (* C_PF1_ENTRY_VERSION_TYPE_0 = "8'b00000001" *) (* C_PF1_ENTRY_VERSION_TYPE_1 = "8'b00000000" *) 
(* C_PF1_ENTRY_VERSION_TYPE_10 = "8'b00000000" *) (* C_PF1_ENTRY_VERSION_TYPE_11 = "8'b00000000" *) (* C_PF1_ENTRY_VERSION_TYPE_12 = "8'b00000000" *) 
(* C_PF1_ENTRY_VERSION_TYPE_13 = "8'b00000000" *) (* C_PF1_ENTRY_VERSION_TYPE_14 = "8'b00000000" *) (* C_PF1_ENTRY_VERSION_TYPE_15 = "8'b00000000" *) 
(* C_PF1_ENTRY_VERSION_TYPE_2 = "8'b00000000" *) (* C_PF1_ENTRY_VERSION_TYPE_3 = "8'b00000000" *) (* C_PF1_ENTRY_VERSION_TYPE_4 = "8'b00000000" *) 
(* C_PF1_ENTRY_VERSION_TYPE_5 = "8'b00000000" *) (* C_PF1_ENTRY_VERSION_TYPE_6 = "8'b00000000" *) (* C_PF1_ENTRY_VERSION_TYPE_7 = "8'b00000000" *) 
(* C_PF1_ENTRY_VERSION_TYPE_8 = "8'b00000000" *) (* C_PF1_ENTRY_VERSION_TYPE_9 = "8'b00000000" *) (* C_PF1_HAS_UUID_ROM = "0" *) 
(* C_PF1_HIGH_OFFSET = "0" *) (* C_PF1_LOW_OFFSET = "28'b0000001000000000000100000000" *) (* C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE = "1" *) 
(* C_PF1_S_AXI_ADDR_WIDTH = "32" *) (* C_PF1_S_AXI_DATA_WIDTH = "32" *) (* C_PF1_UUID_ROM_INIT = "00000000,00000000,00000000,00000000" *) 
(* C_PF2_BAR_INDEX = "0" *) (* C_PF2_ENTRY_ADDR_0 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF2_ENTRY_ADDR_1 = "48'b000000000000000000000000000000000000000000000000" *) 
(* C_PF2_ENTRY_ADDR_10 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF2_ENTRY_ADDR_11 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF2_ENTRY_ADDR_12 = "48'b000000000000000000000000000000000000000000000000" *) 
(* C_PF2_ENTRY_ADDR_13 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF2_ENTRY_ADDR_14 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF2_ENTRY_ADDR_15 = "48'b000000000000000000000000000000000000000000000000" *) 
(* C_PF2_ENTRY_ADDR_2 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF2_ENTRY_ADDR_3 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF2_ENTRY_ADDR_4 = "48'b000000000000000000000000000000000000000000000000" *) 
(* C_PF2_ENTRY_ADDR_5 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF2_ENTRY_ADDR_6 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF2_ENTRY_ADDR_7 = "48'b000000000000000000000000000000000000000000000000" *) 
(* C_PF2_ENTRY_ADDR_8 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF2_ENTRY_ADDR_9 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF2_ENTRY_BAR_0 = "0" *) 
(* C_PF2_ENTRY_BAR_1 = "0" *) (* C_PF2_ENTRY_BAR_10 = "0" *) (* C_PF2_ENTRY_BAR_11 = "0" *) 
(* C_PF2_ENTRY_BAR_12 = "0" *) (* C_PF2_ENTRY_BAR_13 = "0" *) (* C_PF2_ENTRY_BAR_14 = "0" *) 
(* C_PF2_ENTRY_BAR_15 = "0" *) (* C_PF2_ENTRY_BAR_2 = "0" *) (* C_PF2_ENTRY_BAR_3 = "0" *) 
(* C_PF2_ENTRY_BAR_4 = "0" *) (* C_PF2_ENTRY_BAR_5 = "0" *) (* C_PF2_ENTRY_BAR_6 = "0" *) 
(* C_PF2_ENTRY_BAR_7 = "0" *) (* C_PF2_ENTRY_BAR_8 = "0" *) (* C_PF2_ENTRY_BAR_9 = "0" *) 
(* C_PF2_ENTRY_MAJOR_VERSION_0 = "0" *) (* C_PF2_ENTRY_MAJOR_VERSION_1 = "0" *) (* C_PF2_ENTRY_MAJOR_VERSION_10 = "0" *) 
(* C_PF2_ENTRY_MAJOR_VERSION_11 = "0" *) (* C_PF2_ENTRY_MAJOR_VERSION_12 = "0" *) (* C_PF2_ENTRY_MAJOR_VERSION_13 = "0" *) 
(* C_PF2_ENTRY_MAJOR_VERSION_14 = "0" *) (* C_PF2_ENTRY_MAJOR_VERSION_15 = "0" *) (* C_PF2_ENTRY_MAJOR_VERSION_2 = "0" *) 
(* C_PF2_ENTRY_MAJOR_VERSION_3 = "0" *) (* C_PF2_ENTRY_MAJOR_VERSION_4 = "0" *) (* C_PF2_ENTRY_MAJOR_VERSION_5 = "0" *) 
(* C_PF2_ENTRY_MAJOR_VERSION_6 = "0" *) (* C_PF2_ENTRY_MAJOR_VERSION_7 = "0" *) (* C_PF2_ENTRY_MAJOR_VERSION_8 = "0" *) 
(* C_PF2_ENTRY_MAJOR_VERSION_9 = "0" *) (* C_PF2_ENTRY_MINOR_VERSION_0 = "0" *) (* C_PF2_ENTRY_MINOR_VERSION_1 = "0" *) 
(* C_PF2_ENTRY_MINOR_VERSION_10 = "0" *) (* C_PF2_ENTRY_MINOR_VERSION_11 = "0" *) (* C_PF2_ENTRY_MINOR_VERSION_12 = "0" *) 
(* C_PF2_ENTRY_MINOR_VERSION_13 = "0" *) (* C_PF2_ENTRY_MINOR_VERSION_14 = "0" *) (* C_PF2_ENTRY_MINOR_VERSION_15 = "0" *) 
(* C_PF2_ENTRY_MINOR_VERSION_2 = "0" *) (* C_PF2_ENTRY_MINOR_VERSION_3 = "0" *) (* C_PF2_ENTRY_MINOR_VERSION_4 = "0" *) 
(* C_PF2_ENTRY_MINOR_VERSION_5 = "0" *) (* C_PF2_ENTRY_MINOR_VERSION_6 = "0" *) (* C_PF2_ENTRY_MINOR_VERSION_7 = "0" *) 
(* C_PF2_ENTRY_MINOR_VERSION_8 = "0" *) (* C_PF2_ENTRY_MINOR_VERSION_9 = "0" *) (* C_PF2_ENTRY_RSVD0_0 = "4'b0000" *) 
(* C_PF2_ENTRY_RSVD0_1 = "4'b0000" *) (* C_PF2_ENTRY_RSVD0_10 = "4'b0000" *) (* C_PF2_ENTRY_RSVD0_11 = "4'b0000" *) 
(* C_PF2_ENTRY_RSVD0_12 = "4'b0000" *) (* C_PF2_ENTRY_RSVD0_13 = "4'b0000" *) (* C_PF2_ENTRY_RSVD0_14 = "4'b0000" *) 
(* C_PF2_ENTRY_RSVD0_15 = "4'b0000" *) (* C_PF2_ENTRY_RSVD0_2 = "4'b0000" *) (* C_PF2_ENTRY_RSVD0_3 = "4'b0000" *) 
(* C_PF2_ENTRY_RSVD0_4 = "4'b0000" *) (* C_PF2_ENTRY_RSVD0_5 = "4'b0000" *) (* C_PF2_ENTRY_RSVD0_6 = "4'b0000" *) 
(* C_PF2_ENTRY_RSVD0_7 = "4'b0000" *) (* C_PF2_ENTRY_RSVD0_8 = "4'b0000" *) (* C_PF2_ENTRY_RSVD0_9 = "4'b0000" *) 
(* C_PF2_ENTRY_TYPE_0 = "8'b00000000" *) (* C_PF2_ENTRY_TYPE_1 = "8'b00000000" *) (* C_PF2_ENTRY_TYPE_10 = "8'b00000000" *) 
(* C_PF2_ENTRY_TYPE_11 = "8'b00000000" *) (* C_PF2_ENTRY_TYPE_12 = "8'b00000000" *) (* C_PF2_ENTRY_TYPE_13 = "8'b00000000" *) 
(* C_PF2_ENTRY_TYPE_14 = "8'b00000000" *) (* C_PF2_ENTRY_TYPE_15 = "8'b00000000" *) (* C_PF2_ENTRY_TYPE_2 = "8'b00000000" *) 
(* C_PF2_ENTRY_TYPE_3 = "8'b00000000" *) (* C_PF2_ENTRY_TYPE_4 = "8'b00000000" *) (* C_PF2_ENTRY_TYPE_5 = "8'b00000000" *) 
(* C_PF2_ENTRY_TYPE_6 = "8'b00000000" *) (* C_PF2_ENTRY_TYPE_7 = "8'b00000000" *) (* C_PF2_ENTRY_TYPE_8 = "8'b00000000" *) 
(* C_PF2_ENTRY_TYPE_9 = "8'b00000000" *) (* C_PF2_ENTRY_VERSION_TYPE_0 = "8'b00000000" *) (* C_PF2_ENTRY_VERSION_TYPE_1 = "8'b00000000" *) 
(* C_PF2_ENTRY_VERSION_TYPE_10 = "8'b00000000" *) (* C_PF2_ENTRY_VERSION_TYPE_11 = "8'b00000000" *) (* C_PF2_ENTRY_VERSION_TYPE_12 = "8'b00000000" *) 
(* C_PF2_ENTRY_VERSION_TYPE_13 = "8'b00000000" *) (* C_PF2_ENTRY_VERSION_TYPE_14 = "8'b00000000" *) (* C_PF2_ENTRY_VERSION_TYPE_15 = "8'b00000000" *) 
(* C_PF2_ENTRY_VERSION_TYPE_2 = "8'b00000000" *) (* C_PF2_ENTRY_VERSION_TYPE_3 = "8'b00000000" *) (* C_PF2_ENTRY_VERSION_TYPE_4 = "8'b00000000" *) 
(* C_PF2_ENTRY_VERSION_TYPE_5 = "8'b00000000" *) (* C_PF2_ENTRY_VERSION_TYPE_6 = "8'b00000000" *) (* C_PF2_ENTRY_VERSION_TYPE_7 = "8'b00000000" *) 
(* C_PF2_ENTRY_VERSION_TYPE_8 = "8'b00000000" *) (* C_PF2_ENTRY_VERSION_TYPE_9 = "8'b00000000" *) (* C_PF2_HAS_UUID_ROM = "0" *) 
(* C_PF2_HIGH_OFFSET = "0" *) (* C_PF2_LOW_OFFSET = "28'b0000000000000000000000000000" *) (* C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE = "1" *) 
(* C_PF2_S_AXI_ADDR_WIDTH = "32" *) (* C_PF2_S_AXI_DATA_WIDTH = "32" *) (* C_PF2_UUID_ROM_INIT = "00000000,00000000,00000000,00000000" *) 
(* C_PF3_BAR_INDEX = "0" *) (* C_PF3_ENTRY_ADDR_0 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF3_ENTRY_ADDR_1 = "48'b000000000000000000000000000000000000000000000000" *) 
(* C_PF3_ENTRY_ADDR_10 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF3_ENTRY_ADDR_11 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF3_ENTRY_ADDR_12 = "48'b000000000000000000000000000000000000000000000000" *) 
(* C_PF3_ENTRY_ADDR_13 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF3_ENTRY_ADDR_14 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF3_ENTRY_ADDR_15 = "48'b000000000000000000000000000000000000000000000000" *) 
(* C_PF3_ENTRY_ADDR_2 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF3_ENTRY_ADDR_3 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF3_ENTRY_ADDR_4 = "48'b000000000000000000000000000000000000000000000000" *) 
(* C_PF3_ENTRY_ADDR_5 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF3_ENTRY_ADDR_6 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF3_ENTRY_ADDR_7 = "48'b000000000000000000000000000000000000000000000000" *) 
(* C_PF3_ENTRY_ADDR_8 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF3_ENTRY_ADDR_9 = "48'b000000000000000000000000000000000000000000000000" *) (* C_PF3_ENTRY_BAR_0 = "0" *) 
(* C_PF3_ENTRY_BAR_1 = "0" *) (* C_PF3_ENTRY_BAR_10 = "0" *) (* C_PF3_ENTRY_BAR_11 = "0" *) 
(* C_PF3_ENTRY_BAR_12 = "0" *) (* C_PF3_ENTRY_BAR_13 = "0" *) (* C_PF3_ENTRY_BAR_14 = "0" *) 
(* C_PF3_ENTRY_BAR_15 = "0" *) (* C_PF3_ENTRY_BAR_2 = "0" *) (* C_PF3_ENTRY_BAR_3 = "0" *) 
(* C_PF3_ENTRY_BAR_4 = "0" *) (* C_PF3_ENTRY_BAR_5 = "0" *) (* C_PF3_ENTRY_BAR_6 = "0" *) 
(* C_PF3_ENTRY_BAR_7 = "0" *) (* C_PF3_ENTRY_BAR_8 = "0" *) (* C_PF3_ENTRY_BAR_9 = "0" *) 
(* C_PF3_ENTRY_MAJOR_VERSION_0 = "0" *) (* C_PF3_ENTRY_MAJOR_VERSION_1 = "0" *) (* C_PF3_ENTRY_MAJOR_VERSION_10 = "0" *) 
(* C_PF3_ENTRY_MAJOR_VERSION_11 = "0" *) (* C_PF3_ENTRY_MAJOR_VERSION_12 = "0" *) (* C_PF3_ENTRY_MAJOR_VERSION_13 = "0" *) 
(* C_PF3_ENTRY_MAJOR_VERSION_14 = "0" *) (* C_PF3_ENTRY_MAJOR_VERSION_15 = "0" *) (* C_PF3_ENTRY_MAJOR_VERSION_2 = "0" *) 
(* C_PF3_ENTRY_MAJOR_VERSION_3 = "0" *) (* C_PF3_ENTRY_MAJOR_VERSION_4 = "0" *) (* C_PF3_ENTRY_MAJOR_VERSION_5 = "0" *) 
(* C_PF3_ENTRY_MAJOR_VERSION_6 = "0" *) (* C_PF3_ENTRY_MAJOR_VERSION_7 = "0" *) (* C_PF3_ENTRY_MAJOR_VERSION_8 = "0" *) 
(* C_PF3_ENTRY_MAJOR_VERSION_9 = "0" *) (* C_PF3_ENTRY_MINOR_VERSION_0 = "0" *) (* C_PF3_ENTRY_MINOR_VERSION_1 = "0" *) 
(* C_PF3_ENTRY_MINOR_VERSION_10 = "0" *) (* C_PF3_ENTRY_MINOR_VERSION_11 = "0" *) (* C_PF3_ENTRY_MINOR_VERSION_12 = "0" *) 
(* C_PF3_ENTRY_MINOR_VERSION_13 = "0" *) (* C_PF3_ENTRY_MINOR_VERSION_14 = "0" *) (* C_PF3_ENTRY_MINOR_VERSION_15 = "0" *) 
(* C_PF3_ENTRY_MINOR_VERSION_2 = "0" *) (* C_PF3_ENTRY_MINOR_VERSION_3 = "0" *) (* C_PF3_ENTRY_MINOR_VERSION_4 = "0" *) 
(* C_PF3_ENTRY_MINOR_VERSION_5 = "0" *) (* C_PF3_ENTRY_MINOR_VERSION_6 = "0" *) (* C_PF3_ENTRY_MINOR_VERSION_7 = "0" *) 
(* C_PF3_ENTRY_MINOR_VERSION_8 = "0" *) (* C_PF3_ENTRY_MINOR_VERSION_9 = "0" *) (* C_PF3_ENTRY_RSVD0_0 = "4'b0000" *) 
(* C_PF3_ENTRY_RSVD0_1 = "4'b0000" *) (* C_PF3_ENTRY_RSVD0_10 = "4'b0000" *) (* C_PF3_ENTRY_RSVD0_11 = "4'b0000" *) 
(* C_PF3_ENTRY_RSVD0_12 = "4'b0000" *) (* C_PF3_ENTRY_RSVD0_13 = "4'b0000" *) (* C_PF3_ENTRY_RSVD0_14 = "4'b0000" *) 
(* C_PF3_ENTRY_RSVD0_15 = "4'b0000" *) (* C_PF3_ENTRY_RSVD0_2 = "4'b0000" *) (* C_PF3_ENTRY_RSVD0_3 = "4'b0000" *) 
(* C_PF3_ENTRY_RSVD0_4 = "4'b0000" *) (* C_PF3_ENTRY_RSVD0_5 = "4'b0000" *) (* C_PF3_ENTRY_RSVD0_6 = "4'b0000" *) 
(* C_PF3_ENTRY_RSVD0_7 = "4'b0000" *) (* C_PF3_ENTRY_RSVD0_8 = "4'b0000" *) (* C_PF3_ENTRY_RSVD0_9 = "4'b0000" *) 
(* C_PF3_ENTRY_TYPE_0 = "8'b00000000" *) (* C_PF3_ENTRY_TYPE_1 = "8'b00000000" *) (* C_PF3_ENTRY_TYPE_10 = "8'b00000000" *) 
(* C_PF3_ENTRY_TYPE_11 = "8'b00000000" *) (* C_PF3_ENTRY_TYPE_12 = "8'b00000000" *) (* C_PF3_ENTRY_TYPE_13 = "8'b00000000" *) 
(* C_PF3_ENTRY_TYPE_14 = "8'b00000000" *) (* C_PF3_ENTRY_TYPE_15 = "8'b00000000" *) (* C_PF3_ENTRY_TYPE_2 = "8'b00000000" *) 
(* C_PF3_ENTRY_TYPE_3 = "8'b00000000" *) (* C_PF3_ENTRY_TYPE_4 = "8'b00000000" *) (* C_PF3_ENTRY_TYPE_5 = "8'b00000000" *) 
(* C_PF3_ENTRY_TYPE_6 = "8'b00000000" *) (* C_PF3_ENTRY_TYPE_7 = "8'b00000000" *) (* C_PF3_ENTRY_TYPE_8 = "8'b00000000" *) 
(* C_PF3_ENTRY_TYPE_9 = "8'b00000000" *) (* C_PF3_ENTRY_VERSION_TYPE_0 = "8'b00000000" *) (* C_PF3_ENTRY_VERSION_TYPE_1 = "8'b00000000" *) 
(* C_PF3_ENTRY_VERSION_TYPE_10 = "8'b00000000" *) (* C_PF3_ENTRY_VERSION_TYPE_11 = "8'b00000000" *) (* C_PF3_ENTRY_VERSION_TYPE_12 = "8'b00000000" *) 
(* C_PF3_ENTRY_VERSION_TYPE_13 = "8'b00000000" *) (* C_PF3_ENTRY_VERSION_TYPE_14 = "8'b00000000" *) (* C_PF3_ENTRY_VERSION_TYPE_15 = "8'b00000000" *) 
(* C_PF3_ENTRY_VERSION_TYPE_2 = "8'b00000000" *) (* C_PF3_ENTRY_VERSION_TYPE_3 = "8'b00000000" *) (* C_PF3_ENTRY_VERSION_TYPE_4 = "8'b00000000" *) 
(* C_PF3_ENTRY_VERSION_TYPE_5 = "8'b00000000" *) (* C_PF3_ENTRY_VERSION_TYPE_6 = "8'b00000000" *) (* C_PF3_ENTRY_VERSION_TYPE_7 = "8'b00000000" *) 
(* C_PF3_ENTRY_VERSION_TYPE_8 = "8'b00000000" *) (* C_PF3_ENTRY_VERSION_TYPE_9 = "8'b00000000" *) (* C_PF3_HAS_UUID_ROM = "0" *) 
(* C_PF3_HIGH_OFFSET = "0" *) (* C_PF3_LOW_OFFSET = "28'b0000000000000000000000000000" *) (* C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE = "1" *) 
(* C_PF3_S_AXI_ADDR_WIDTH = "32" *) (* C_PF3_S_AXI_DATA_WIDTH = "32" *) (* C_PF3_UUID_ROM_INIT = "00000000,00000000,00000000,00000000" *) 
(* C_XDEVICEFAMILY = "versal" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery
   (aclk_pcie,
    aresetn_pcie,
    aclk_ctrl,
    aresetn_ctrl,
    s_pcie4_cfg_ext_function_number,
    s_pcie4_cfg_ext_read_data,
    s_pcie4_cfg_ext_read_data_valid,
    s_pcie4_cfg_ext_read_received,
    s_pcie4_cfg_ext_register_number,
    s_pcie4_cfg_ext_write_byte_enable,
    s_pcie4_cfg_ext_write_data,
    s_pcie4_cfg_ext_write_received,
    m_pcie4_cfg_ext_function_number,
    m_pcie4_cfg_ext_read_data,
    m_pcie4_cfg_ext_read_data_valid,
    m_pcie4_cfg_ext_read_received,
    m_pcie4_cfg_ext_register_number,
    m_pcie4_cfg_ext_write_byte_enable,
    m_pcie4_cfg_ext_write_data,
    m_pcie4_cfg_ext_write_received,
    s_axi_ctrl_pf0_AWADDR,
    s_axi_ctrl_pf0_AWVALID,
    s_axi_ctrl_pf0_AWREADY,
    s_axi_ctrl_pf0_WDATA,
    s_axi_ctrl_pf0_WSTRB,
    s_axi_ctrl_pf0_WVALID,
    s_axi_ctrl_pf0_WREADY,
    s_axi_ctrl_pf0_BRESP,
    s_axi_ctrl_pf0_BVALID,
    s_axi_ctrl_pf0_BREADY,
    s_axi_ctrl_pf0_ARADDR,
    s_axi_ctrl_pf0_ARVALID,
    s_axi_ctrl_pf0_ARREADY,
    s_axi_ctrl_pf0_RDATA,
    s_axi_ctrl_pf0_RRESP,
    s_axi_ctrl_pf0_RVALID,
    s_axi_ctrl_pf0_RREADY,
    s_axi_ctrl_pf1_AWADDR,
    s_axi_ctrl_pf1_AWVALID,
    s_axi_ctrl_pf1_AWREADY,
    s_axi_ctrl_pf1_WDATA,
    s_axi_ctrl_pf1_WSTRB,
    s_axi_ctrl_pf1_WVALID,
    s_axi_ctrl_pf1_WREADY,
    s_axi_ctrl_pf1_BRESP,
    s_axi_ctrl_pf1_BVALID,
    s_axi_ctrl_pf1_BREADY,
    s_axi_ctrl_pf1_ARADDR,
    s_axi_ctrl_pf1_ARVALID,
    s_axi_ctrl_pf1_ARREADY,
    s_axi_ctrl_pf1_RDATA,
    s_axi_ctrl_pf1_RRESP,
    s_axi_ctrl_pf1_RVALID,
    s_axi_ctrl_pf1_RREADY,
    s_axi_ctrl_pf2_AWADDR,
    s_axi_ctrl_pf2_AWVALID,
    s_axi_ctrl_pf2_AWREADY,
    s_axi_ctrl_pf2_WDATA,
    s_axi_ctrl_pf2_WSTRB,
    s_axi_ctrl_pf2_WVALID,
    s_axi_ctrl_pf2_WREADY,
    s_axi_ctrl_pf2_BRESP,
    s_axi_ctrl_pf2_BVALID,
    s_axi_ctrl_pf2_BREADY,
    s_axi_ctrl_pf2_ARADDR,
    s_axi_ctrl_pf2_ARVALID,
    s_axi_ctrl_pf2_ARREADY,
    s_axi_ctrl_pf2_RDATA,
    s_axi_ctrl_pf2_RRESP,
    s_axi_ctrl_pf2_RVALID,
    s_axi_ctrl_pf2_RREADY,
    s_axi_ctrl_pf3_AWADDR,
    s_axi_ctrl_pf3_AWVALID,
    s_axi_ctrl_pf3_AWREADY,
    s_axi_ctrl_pf3_WDATA,
    s_axi_ctrl_pf3_WSTRB,
    s_axi_ctrl_pf3_WVALID,
    s_axi_ctrl_pf3_WREADY,
    s_axi_ctrl_pf3_BRESP,
    s_axi_ctrl_pf3_BVALID,
    s_axi_ctrl_pf3_BREADY,
    s_axi_ctrl_pf3_ARADDR,
    s_axi_ctrl_pf3_ARVALID,
    s_axi_ctrl_pf3_ARREADY,
    s_axi_ctrl_pf3_RDATA,
    s_axi_ctrl_pf3_RRESP,
    s_axi_ctrl_pf3_RVALID,
    s_axi_ctrl_pf3_RREADY);
  input aclk_pcie;
  input aresetn_pcie;
  input aclk_ctrl;
  input aresetn_ctrl;
  input [7:0]s_pcie4_cfg_ext_function_number;
  output [31:0]s_pcie4_cfg_ext_read_data;
  output s_pcie4_cfg_ext_read_data_valid;
  input s_pcie4_cfg_ext_read_received;
  input [9:0]s_pcie4_cfg_ext_register_number;
  input [3:0]s_pcie4_cfg_ext_write_byte_enable;
  input [31:0]s_pcie4_cfg_ext_write_data;
  input s_pcie4_cfg_ext_write_received;
  output [7:0]m_pcie4_cfg_ext_function_number;
  input [31:0]m_pcie4_cfg_ext_read_data;
  input m_pcie4_cfg_ext_read_data_valid;
  output m_pcie4_cfg_ext_read_received;
  output [9:0]m_pcie4_cfg_ext_register_number;
  output [3:0]m_pcie4_cfg_ext_write_byte_enable;
  output [31:0]m_pcie4_cfg_ext_write_data;
  output m_pcie4_cfg_ext_write_received;
  input [31:0]s_axi_ctrl_pf0_AWADDR;
  input s_axi_ctrl_pf0_AWVALID;
  output s_axi_ctrl_pf0_AWREADY;
  input [31:0]s_axi_ctrl_pf0_WDATA;
  input [3:0]s_axi_ctrl_pf0_WSTRB;
  input s_axi_ctrl_pf0_WVALID;
  output s_axi_ctrl_pf0_WREADY;
  output [1:0]s_axi_ctrl_pf0_BRESP;
  output s_axi_ctrl_pf0_BVALID;
  input s_axi_ctrl_pf0_BREADY;
  input [31:0]s_axi_ctrl_pf0_ARADDR;
  input s_axi_ctrl_pf0_ARVALID;
  output s_axi_ctrl_pf0_ARREADY;
  output [31:0]s_axi_ctrl_pf0_RDATA;
  output [1:0]s_axi_ctrl_pf0_RRESP;
  output s_axi_ctrl_pf0_RVALID;
  input s_axi_ctrl_pf0_RREADY;
  input [31:0]s_axi_ctrl_pf1_AWADDR;
  input s_axi_ctrl_pf1_AWVALID;
  output s_axi_ctrl_pf1_AWREADY;
  input [31:0]s_axi_ctrl_pf1_WDATA;
  input [3:0]s_axi_ctrl_pf1_WSTRB;
  input s_axi_ctrl_pf1_WVALID;
  output s_axi_ctrl_pf1_WREADY;
  output [1:0]s_axi_ctrl_pf1_BRESP;
  output s_axi_ctrl_pf1_BVALID;
  input s_axi_ctrl_pf1_BREADY;
  input [31:0]s_axi_ctrl_pf1_ARADDR;
  input s_axi_ctrl_pf1_ARVALID;
  output s_axi_ctrl_pf1_ARREADY;
  output [31:0]s_axi_ctrl_pf1_RDATA;
  output [1:0]s_axi_ctrl_pf1_RRESP;
  output s_axi_ctrl_pf1_RVALID;
  input s_axi_ctrl_pf1_RREADY;
  input [31:0]s_axi_ctrl_pf2_AWADDR;
  input s_axi_ctrl_pf2_AWVALID;
  output s_axi_ctrl_pf2_AWREADY;
  input [31:0]s_axi_ctrl_pf2_WDATA;
  input [3:0]s_axi_ctrl_pf2_WSTRB;
  input s_axi_ctrl_pf2_WVALID;
  output s_axi_ctrl_pf2_WREADY;
  output [1:0]s_axi_ctrl_pf2_BRESP;
  output s_axi_ctrl_pf2_BVALID;
  input s_axi_ctrl_pf2_BREADY;
  input [31:0]s_axi_ctrl_pf2_ARADDR;
  input s_axi_ctrl_pf2_ARVALID;
  output s_axi_ctrl_pf2_ARREADY;
  output [31:0]s_axi_ctrl_pf2_RDATA;
  output [1:0]s_axi_ctrl_pf2_RRESP;
  output s_axi_ctrl_pf2_RVALID;
  input s_axi_ctrl_pf2_RREADY;
  input [31:0]s_axi_ctrl_pf3_AWADDR;
  input s_axi_ctrl_pf3_AWVALID;
  output s_axi_ctrl_pf3_AWREADY;
  input [31:0]s_axi_ctrl_pf3_WDATA;
  input [3:0]s_axi_ctrl_pf3_WSTRB;
  input s_axi_ctrl_pf3_WVALID;
  output s_axi_ctrl_pf3_WREADY;
  output [1:0]s_axi_ctrl_pf3_BRESP;
  output s_axi_ctrl_pf3_BVALID;
  input s_axi_ctrl_pf3_BREADY;
  input [31:0]s_axi_ctrl_pf3_ARADDR;
  input s_axi_ctrl_pf3_ARVALID;
  output s_axi_ctrl_pf3_ARREADY;
  output [31:0]s_axi_ctrl_pf3_RDATA;
  output [1:0]s_axi_ctrl_pf3_RRESP;
  output s_axi_ctrl_pf3_RVALID;
  input s_axi_ctrl_pf3_RREADY;

  wire \<const0> ;
  wire aclk_ctrl;
  wire aclk_pcie;
  wire aresetn_ctrl;
  wire [31:0]s_axi_ctrl_pf0_ARADDR;
  wire s_axi_ctrl_pf0_ARREADY;
  wire s_axi_ctrl_pf0_ARVALID;
  wire [31:0]s_axi_ctrl_pf0_AWADDR;
  wire s_axi_ctrl_pf0_AWREADY;
  wire s_axi_ctrl_pf0_AWVALID;
  wire s_axi_ctrl_pf0_BREADY;
  wire s_axi_ctrl_pf0_BVALID;
  wire [29:0]\^s_axi_ctrl_pf0_RDATA ;
  wire s_axi_ctrl_pf0_RREADY;
  wire s_axi_ctrl_pf0_RVALID;
  wire s_axi_ctrl_pf0_WVALID;
  wire [31:0]s_axi_ctrl_pf1_ARADDR;
  wire s_axi_ctrl_pf1_ARREADY;
  wire s_axi_ctrl_pf1_ARVALID;
  wire [31:0]s_axi_ctrl_pf1_AWADDR;
  wire s_axi_ctrl_pf1_AWREADY;
  wire s_axi_ctrl_pf1_AWVALID;
  wire s_axi_ctrl_pf1_BREADY;
  wire s_axi_ctrl_pf1_BVALID;
  wire [28:0]\^s_axi_ctrl_pf1_RDATA ;
  wire s_axi_ctrl_pf1_RREADY;
  wire s_axi_ctrl_pf1_RVALID;
  wire s_axi_ctrl_pf1_WVALID;
  wire [7:0]s_pcie4_cfg_ext_function_number;
  wire [12:1]\^s_pcie4_cfg_ext_read_data ;
  wire s_pcie4_cfg_ext_read_data_valid;
  wire s_pcie4_cfg_ext_read_received;
  wire [9:0]s_pcie4_cfg_ext_register_number;

  assign m_pcie4_cfg_ext_function_number[7] = \<const0> ;
  assign m_pcie4_cfg_ext_function_number[6] = \<const0> ;
  assign m_pcie4_cfg_ext_function_number[5] = \<const0> ;
  assign m_pcie4_cfg_ext_function_number[4] = \<const0> ;
  assign m_pcie4_cfg_ext_function_number[3] = \<const0> ;
  assign m_pcie4_cfg_ext_function_number[2] = \<const0> ;
  assign m_pcie4_cfg_ext_function_number[1] = \<const0> ;
  assign m_pcie4_cfg_ext_function_number[0] = \<const0> ;
  assign m_pcie4_cfg_ext_read_received = \<const0> ;
  assign m_pcie4_cfg_ext_register_number[9] = \<const0> ;
  assign m_pcie4_cfg_ext_register_number[8] = \<const0> ;
  assign m_pcie4_cfg_ext_register_number[7] = \<const0> ;
  assign m_pcie4_cfg_ext_register_number[6] = \<const0> ;
  assign m_pcie4_cfg_ext_register_number[5] = \<const0> ;
  assign m_pcie4_cfg_ext_register_number[4] = \<const0> ;
  assign m_pcie4_cfg_ext_register_number[3] = \<const0> ;
  assign m_pcie4_cfg_ext_register_number[2] = \<const0> ;
  assign m_pcie4_cfg_ext_register_number[1] = \<const0> ;
  assign m_pcie4_cfg_ext_register_number[0] = \<const0> ;
  assign m_pcie4_cfg_ext_write_byte_enable[3] = \<const0> ;
  assign m_pcie4_cfg_ext_write_byte_enable[2] = \<const0> ;
  assign m_pcie4_cfg_ext_write_byte_enable[1] = \<const0> ;
  assign m_pcie4_cfg_ext_write_byte_enable[0] = \<const0> ;
  assign m_pcie4_cfg_ext_write_data[31] = \<const0> ;
  assign m_pcie4_cfg_ext_write_data[30] = \<const0> ;
  assign m_pcie4_cfg_ext_write_data[29] = \<const0> ;
  assign m_pcie4_cfg_ext_write_data[28] = \<const0> ;
  assign m_pcie4_cfg_ext_write_data[27] = \<const0> ;
  assign m_pcie4_cfg_ext_write_data[26] = \<const0> ;
  assign m_pcie4_cfg_ext_write_data[25] = \<const0> ;
  assign m_pcie4_cfg_ext_write_data[24] = \<const0> ;
  assign m_pcie4_cfg_ext_write_data[23] = \<const0> ;
  assign m_pcie4_cfg_ext_write_data[22] = \<const0> ;
  assign m_pcie4_cfg_ext_write_data[21] = \<const0> ;
  assign m_pcie4_cfg_ext_write_data[20] = \<const0> ;
  assign m_pcie4_cfg_ext_write_data[19] = \<const0> ;
  assign m_pcie4_cfg_ext_write_data[18] = \<const0> ;
  assign m_pcie4_cfg_ext_write_data[17] = \<const0> ;
  assign m_pcie4_cfg_ext_write_data[16] = \<const0> ;
  assign m_pcie4_cfg_ext_write_data[15] = \<const0> ;
  assign m_pcie4_cfg_ext_write_data[14] = \<const0> ;
  assign m_pcie4_cfg_ext_write_data[13] = \<const0> ;
  assign m_pcie4_cfg_ext_write_data[12] = \<const0> ;
  assign m_pcie4_cfg_ext_write_data[11] = \<const0> ;
  assign m_pcie4_cfg_ext_write_data[10] = \<const0> ;
  assign m_pcie4_cfg_ext_write_data[9] = \<const0> ;
  assign m_pcie4_cfg_ext_write_data[8] = \<const0> ;
  assign m_pcie4_cfg_ext_write_data[7] = \<const0> ;
  assign m_pcie4_cfg_ext_write_data[6] = \<const0> ;
  assign m_pcie4_cfg_ext_write_data[5] = \<const0> ;
  assign m_pcie4_cfg_ext_write_data[4] = \<const0> ;
  assign m_pcie4_cfg_ext_write_data[3] = \<const0> ;
  assign m_pcie4_cfg_ext_write_data[2] = \<const0> ;
  assign m_pcie4_cfg_ext_write_data[1] = \<const0> ;
  assign m_pcie4_cfg_ext_write_data[0] = \<const0> ;
  assign m_pcie4_cfg_ext_write_received = \<const0> ;
  assign s_axi_ctrl_pf0_BRESP[1] = \<const0> ;
  assign s_axi_ctrl_pf0_BRESP[0] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[31] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[30] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[29:28] = \^s_axi_ctrl_pf0_RDATA [29:28];
  assign s_axi_ctrl_pf0_RDATA[27] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[26] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[25] = \^s_axi_ctrl_pf0_RDATA [24];
  assign s_axi_ctrl_pf0_RDATA[24] = \^s_axi_ctrl_pf0_RDATA [24];
  assign s_axi_ctrl_pf0_RDATA[23] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[22] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[21] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[20] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[19] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[18] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[17] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[16] = \^s_axi_ctrl_pf0_RDATA [16];
  assign s_axi_ctrl_pf0_RDATA[15] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[14] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[13] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[12] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[11] = \^s_axi_ctrl_pf0_RDATA [11];
  assign s_axi_ctrl_pf0_RDATA[10] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[9] = \^s_axi_ctrl_pf0_RDATA [9];
  assign s_axi_ctrl_pf0_RDATA[8] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[7] = \^s_axi_ctrl_pf0_RDATA [3];
  assign s_axi_ctrl_pf0_RDATA[6:0] = \^s_axi_ctrl_pf0_RDATA [6:0];
  assign s_axi_ctrl_pf0_RRESP[1] = \<const0> ;
  assign s_axi_ctrl_pf0_RRESP[0] = \<const0> ;
  assign s_axi_ctrl_pf0_WREADY = s_axi_ctrl_pf0_AWREADY;
  assign s_axi_ctrl_pf1_BRESP[1] = \<const0> ;
  assign s_axi_ctrl_pf1_BRESP[0] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[31] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[30] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[29] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[28] = \^s_axi_ctrl_pf1_RDATA [28];
  assign s_axi_ctrl_pf1_RDATA[27] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[26] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[25] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[24] = \^s_axi_ctrl_pf1_RDATA [16];
  assign s_axi_ctrl_pf1_RDATA[23] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[22] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[21] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[20] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[19] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[18] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[17] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[16] = \^s_axi_ctrl_pf1_RDATA [16];
  assign s_axi_ctrl_pf1_RDATA[15] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[14] = \^s_axi_ctrl_pf1_RDATA [14];
  assign s_axi_ctrl_pf1_RDATA[13] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[12] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[11] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[10] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[9] = \^s_axi_ctrl_pf1_RDATA [9];
  assign s_axi_ctrl_pf1_RDATA[8] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[7] = \^s_axi_ctrl_pf1_RDATA [3];
  assign s_axi_ctrl_pf1_RDATA[6] = \^s_axi_ctrl_pf1_RDATA [1];
  assign s_axi_ctrl_pf1_RDATA[5:3] = \^s_axi_ctrl_pf1_RDATA [5:3];
  assign s_axi_ctrl_pf1_RDATA[2] = \^s_axi_ctrl_pf1_RDATA [3];
  assign s_axi_ctrl_pf1_RDATA[1:0] = \^s_axi_ctrl_pf1_RDATA [1:0];
  assign s_axi_ctrl_pf1_RRESP[1] = \<const0> ;
  assign s_axi_ctrl_pf1_RRESP[0] = \<const0> ;
  assign s_axi_ctrl_pf1_WREADY = s_axi_ctrl_pf1_AWREADY;
  assign s_axi_ctrl_pf2_ARREADY = \<const0> ;
  assign s_axi_ctrl_pf2_AWREADY = \<const0> ;
  assign s_axi_ctrl_pf2_BRESP[1] = \<const0> ;
  assign s_axi_ctrl_pf2_BRESP[0] = \<const0> ;
  assign s_axi_ctrl_pf2_BVALID = \<const0> ;
  assign s_axi_ctrl_pf2_RDATA[31] = \<const0> ;
  assign s_axi_ctrl_pf2_RDATA[30] = \<const0> ;
  assign s_axi_ctrl_pf2_RDATA[29] = \<const0> ;
  assign s_axi_ctrl_pf2_RDATA[28] = \<const0> ;
  assign s_axi_ctrl_pf2_RDATA[27] = \<const0> ;
  assign s_axi_ctrl_pf2_RDATA[26] = \<const0> ;
  assign s_axi_ctrl_pf2_RDATA[25] = \<const0> ;
  assign s_axi_ctrl_pf2_RDATA[24] = \<const0> ;
  assign s_axi_ctrl_pf2_RDATA[23] = \<const0> ;
  assign s_axi_ctrl_pf2_RDATA[22] = \<const0> ;
  assign s_axi_ctrl_pf2_RDATA[21] = \<const0> ;
  assign s_axi_ctrl_pf2_RDATA[20] = \<const0> ;
  assign s_axi_ctrl_pf2_RDATA[19] = \<const0> ;
  assign s_axi_ctrl_pf2_RDATA[18] = \<const0> ;
  assign s_axi_ctrl_pf2_RDATA[17] = \<const0> ;
  assign s_axi_ctrl_pf2_RDATA[16] = \<const0> ;
  assign s_axi_ctrl_pf2_RDATA[15] = \<const0> ;
  assign s_axi_ctrl_pf2_RDATA[14] = \<const0> ;
  assign s_axi_ctrl_pf2_RDATA[13] = \<const0> ;
  assign s_axi_ctrl_pf2_RDATA[12] = \<const0> ;
  assign s_axi_ctrl_pf2_RDATA[11] = \<const0> ;
  assign s_axi_ctrl_pf2_RDATA[10] = \<const0> ;
  assign s_axi_ctrl_pf2_RDATA[9] = \<const0> ;
  assign s_axi_ctrl_pf2_RDATA[8] = \<const0> ;
  assign s_axi_ctrl_pf2_RDATA[7] = \<const0> ;
  assign s_axi_ctrl_pf2_RDATA[6] = \<const0> ;
  assign s_axi_ctrl_pf2_RDATA[5] = \<const0> ;
  assign s_axi_ctrl_pf2_RDATA[4] = \<const0> ;
  assign s_axi_ctrl_pf2_RDATA[3] = \<const0> ;
  assign s_axi_ctrl_pf2_RDATA[2] = \<const0> ;
  assign s_axi_ctrl_pf2_RDATA[1] = \<const0> ;
  assign s_axi_ctrl_pf2_RDATA[0] = \<const0> ;
  assign s_axi_ctrl_pf2_RRESP[1] = \<const0> ;
  assign s_axi_ctrl_pf2_RRESP[0] = \<const0> ;
  assign s_axi_ctrl_pf2_RVALID = \<const0> ;
  assign s_axi_ctrl_pf2_WREADY = \<const0> ;
  assign s_axi_ctrl_pf3_ARREADY = \<const0> ;
  assign s_axi_ctrl_pf3_AWREADY = \<const0> ;
  assign s_axi_ctrl_pf3_BRESP[1] = \<const0> ;
  assign s_axi_ctrl_pf3_BRESP[0] = \<const0> ;
  assign s_axi_ctrl_pf3_BVALID = \<const0> ;
  assign s_axi_ctrl_pf3_RDATA[31] = \<const0> ;
  assign s_axi_ctrl_pf3_RDATA[30] = \<const0> ;
  assign s_axi_ctrl_pf3_RDATA[29] = \<const0> ;
  assign s_axi_ctrl_pf3_RDATA[28] = \<const0> ;
  assign s_axi_ctrl_pf3_RDATA[27] = \<const0> ;
  assign s_axi_ctrl_pf3_RDATA[26] = \<const0> ;
  assign s_axi_ctrl_pf3_RDATA[25] = \<const0> ;
  assign s_axi_ctrl_pf3_RDATA[24] = \<const0> ;
  assign s_axi_ctrl_pf3_RDATA[23] = \<const0> ;
  assign s_axi_ctrl_pf3_RDATA[22] = \<const0> ;
  assign s_axi_ctrl_pf3_RDATA[21] = \<const0> ;
  assign s_axi_ctrl_pf3_RDATA[20] = \<const0> ;
  assign s_axi_ctrl_pf3_RDATA[19] = \<const0> ;
  assign s_axi_ctrl_pf3_RDATA[18] = \<const0> ;
  assign s_axi_ctrl_pf3_RDATA[17] = \<const0> ;
  assign s_axi_ctrl_pf3_RDATA[16] = \<const0> ;
  assign s_axi_ctrl_pf3_RDATA[15] = \<const0> ;
  assign s_axi_ctrl_pf3_RDATA[14] = \<const0> ;
  assign s_axi_ctrl_pf3_RDATA[13] = \<const0> ;
  assign s_axi_ctrl_pf3_RDATA[12] = \<const0> ;
  assign s_axi_ctrl_pf3_RDATA[11] = \<const0> ;
  assign s_axi_ctrl_pf3_RDATA[10] = \<const0> ;
  assign s_axi_ctrl_pf3_RDATA[9] = \<const0> ;
  assign s_axi_ctrl_pf3_RDATA[8] = \<const0> ;
  assign s_axi_ctrl_pf3_RDATA[7] = \<const0> ;
  assign s_axi_ctrl_pf3_RDATA[6] = \<const0> ;
  assign s_axi_ctrl_pf3_RDATA[5] = \<const0> ;
  assign s_axi_ctrl_pf3_RDATA[4] = \<const0> ;
  assign s_axi_ctrl_pf3_RDATA[3] = \<const0> ;
  assign s_axi_ctrl_pf3_RDATA[2] = \<const0> ;
  assign s_axi_ctrl_pf3_RDATA[1] = \<const0> ;
  assign s_axi_ctrl_pf3_RDATA[0] = \<const0> ;
  assign s_axi_ctrl_pf3_RRESP[1] = \<const0> ;
  assign s_axi_ctrl_pf3_RRESP[0] = \<const0> ;
  assign s_axi_ctrl_pf3_RVALID = \<const0> ;
  assign s_axi_ctrl_pf3_WREADY = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[31] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[30] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[29] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[28] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[27] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[26] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[25] = \^s_pcie4_cfg_ext_read_data [12];
  assign s_pcie4_cfg_ext_read_data[24] = \^s_pcie4_cfg_ext_read_data [5];
  assign s_pcie4_cfg_ext_read_data[23] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[22] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[21] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[20] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[19] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[18] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[17] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[16] = \^s_pcie4_cfg_ext_read_data [3];
  assign s_pcie4_cfg_ext_read_data[15] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[14] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[13] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[12] = \^s_pcie4_cfg_ext_read_data [12];
  assign s_pcie4_cfg_ext_read_data[11] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[10] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[9] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[8] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[7] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[6] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[5] = \^s_pcie4_cfg_ext_read_data [5];
  assign s_pcie4_cfg_ext_read_data[4] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[3] = \^s_pcie4_cfg_ext_read_data [3];
  assign s_pcie4_cfg_ext_read_data[2] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[1] = \^s_pcie4_cfg_ext_read_data [1];
  assign s_pcie4_cfg_ext_read_data[0] = \^s_pcie4_cfg_ext_read_data [3];
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_disc hw_disc_inst
       (.\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] (s_axi_ctrl_pf0_ARREADY),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 (s_axi_ctrl_pf0_AWREADY),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_1 (s_axi_ctrl_pf1_ARREADY),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_2 (s_axi_ctrl_pf1_AWREADY),
        .aclk_ctrl(aclk_ctrl),
        .aclk_pcie(aclk_pcie),
        .aresetn_ctrl(aresetn_ctrl),
        .s_axi_ctrl_pf0_ARADDR(s_axi_ctrl_pf0_ARADDR[6:2]),
        .s_axi_ctrl_pf0_ARVALID(s_axi_ctrl_pf0_ARVALID),
        .s_axi_ctrl_pf0_AWADDR(s_axi_ctrl_pf0_AWADDR[6:2]),
        .s_axi_ctrl_pf0_AWVALID(s_axi_ctrl_pf0_AWVALID),
        .s_axi_ctrl_pf0_BREADY(s_axi_ctrl_pf0_BREADY),
        .s_axi_ctrl_pf0_BVALID(s_axi_ctrl_pf0_BVALID),
        .s_axi_ctrl_pf0_RDATA({\^s_axi_ctrl_pf0_RDATA [29:28],\^s_axi_ctrl_pf0_RDATA [24],\^s_axi_ctrl_pf0_RDATA [16],\^s_axi_ctrl_pf0_RDATA [11],\^s_axi_ctrl_pf0_RDATA [9],\^s_axi_ctrl_pf0_RDATA [3],\^s_axi_ctrl_pf0_RDATA [6:4],\^s_axi_ctrl_pf0_RDATA [2:0]}),
        .s_axi_ctrl_pf0_RREADY(s_axi_ctrl_pf0_RREADY),
        .s_axi_ctrl_pf0_RVALID(s_axi_ctrl_pf0_RVALID),
        .s_axi_ctrl_pf0_WVALID(s_axi_ctrl_pf0_WVALID),
        .s_axi_ctrl_pf1_ARADDR(s_axi_ctrl_pf1_ARADDR[6:2]),
        .s_axi_ctrl_pf1_ARVALID(s_axi_ctrl_pf1_ARVALID),
        .s_axi_ctrl_pf1_AWADDR(s_axi_ctrl_pf1_AWADDR[6:2]),
        .s_axi_ctrl_pf1_AWVALID(s_axi_ctrl_pf1_AWVALID),
        .s_axi_ctrl_pf1_BREADY(s_axi_ctrl_pf1_BREADY),
        .s_axi_ctrl_pf1_BVALID(s_axi_ctrl_pf1_BVALID),
        .s_axi_ctrl_pf1_RDATA({\^s_axi_ctrl_pf1_RDATA [28],\^s_axi_ctrl_pf1_RDATA [16],\^s_axi_ctrl_pf1_RDATA [14],\^s_axi_ctrl_pf1_RDATA [9],\^s_axi_ctrl_pf1_RDATA [3],\^s_axi_ctrl_pf1_RDATA [1],\^s_axi_ctrl_pf1_RDATA [5:4],\^s_axi_ctrl_pf1_RDATA [0]}),
        .s_axi_ctrl_pf1_RREADY(s_axi_ctrl_pf1_RREADY),
        .s_axi_ctrl_pf1_RVALID(s_axi_ctrl_pf1_RVALID),
        .s_axi_ctrl_pf1_WVALID(s_axi_ctrl_pf1_WVALID),
        .s_pcie4_cfg_ext_function_number(s_pcie4_cfg_ext_function_number[1:0]),
        .s_pcie4_cfg_ext_read_data({\^s_pcie4_cfg_ext_read_data [12],\^s_pcie4_cfg_ext_read_data [5],\^s_pcie4_cfg_ext_read_data [3],\^s_pcie4_cfg_ext_read_data [1]}),
        .s_pcie4_cfg_ext_read_data_valid(s_pcie4_cfg_ext_read_data_valid),
        .s_pcie4_cfg_ext_read_received(s_pcie4_cfg_ext_read_received),
        .s_pcie4_cfg_ext_register_number(s_pcie4_cfg_ext_register_number));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pcie_vsec
   (s_pcie4_cfg_ext_read_data_valid,
    s_pcie4_cfg_ext_read_data,
    s_pcie4_cfg_ext_read_received,
    aclk_pcie,
    s_pcie4_cfg_ext_function_number,
    s_pcie4_cfg_ext_register_number);
  output s_pcie4_cfg_ext_read_data_valid;
  output [3:0]s_pcie4_cfg_ext_read_data;
  input s_pcie4_cfg_ext_read_received;
  input aclk_pcie;
  input [1:0]s_pcie4_cfg_ext_function_number;
  input [9:0]s_pcie4_cfg_ext_register_number;

  wire aclk_pcie;
  wire [25:1]cfg_ext_read_data;
  wire \cfg_ext_read_data[16]_i_1_n_0 ;
  wire \cfg_ext_read_data[25]_i_3_n_0 ;
  wire cfg_ext_read_data_valid;
  wire [25:25]p_0_in;
  wire [25:1]p_1_out;
  wire [1:0]s_pcie4_cfg_ext_function_number;
  wire [3:0]s_pcie4_cfg_ext_read_data;
  wire s_pcie4_cfg_ext_read_data_valid;
  wire s_pcie4_cfg_ext_read_received;
  wire [9:0]s_pcie4_cfg_ext_register_number;

  FDRE \G_GENERATE_M_PCIE4_CFG_EXT.s_pcie4_cfg_ext_read_data_reg[16] 
       (.C(aclk_pcie),
        .CE(1'b1),
        .D(cfg_ext_read_data[16]),
        .Q(s_pcie4_cfg_ext_read_data[1]),
        .R(1'b0));
  FDRE \G_GENERATE_M_PCIE4_CFG_EXT.s_pcie4_cfg_ext_read_data_reg[1] 
       (.C(aclk_pcie),
        .CE(1'b1),
        .D(cfg_ext_read_data[1]),
        .Q(s_pcie4_cfg_ext_read_data[0]),
        .R(1'b0));
  FDRE \G_GENERATE_M_PCIE4_CFG_EXT.s_pcie4_cfg_ext_read_data_reg[24] 
       (.C(aclk_pcie),
        .CE(1'b1),
        .D(cfg_ext_read_data[24]),
        .Q(s_pcie4_cfg_ext_read_data[2]),
        .R(1'b0));
  FDRE \G_GENERATE_M_PCIE4_CFG_EXT.s_pcie4_cfg_ext_read_data_reg[25] 
       (.C(aclk_pcie),
        .CE(1'b1),
        .D(cfg_ext_read_data[25]),
        .Q(s_pcie4_cfg_ext_read_data[3]),
        .R(1'b0));
  FDRE \G_GENERATE_M_PCIE4_CFG_EXT.s_pcie4_cfg_ext_read_data_valid_reg 
       (.C(aclk_pcie),
        .CE(1'b1),
        .D(cfg_ext_read_data_valid),
        .Q(s_pcie4_cfg_ext_read_data_valid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \cfg_ext_read_data[16]_i_1 
       (.I0(s_pcie4_cfg_ext_function_number[1]),
        .I1(s_pcie4_cfg_ext_register_number[0]),
        .I2(s_pcie4_cfg_ext_register_number[1]),
        .O(\cfg_ext_read_data[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h000D)) 
    \cfg_ext_read_data[1]_i_1 
       (.I0(s_pcie4_cfg_ext_register_number[1]),
        .I1(s_pcie4_cfg_ext_function_number[0]),
        .I2(s_pcie4_cfg_ext_function_number[1]),
        .I3(s_pcie4_cfg_ext_register_number[0]),
        .O(p_1_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \cfg_ext_read_data[24]_i_1 
       (.I0(s_pcie4_cfg_ext_register_number[0]),
        .I1(s_pcie4_cfg_ext_function_number[1]),
        .I2(s_pcie4_cfg_ext_register_number[1]),
        .O(p_1_out[24]));
  LUT6 #(
    .INIT(64'hFFFFFFBFFFFFFFFF)) 
    \cfg_ext_read_data[25]_i_1 
       (.I0(\cfg_ext_read_data[25]_i_3_n_0 ),
        .I1(s_pcie4_cfg_ext_register_number[7]),
        .I2(s_pcie4_cfg_ext_register_number[8]),
        .I3(s_pcie4_cfg_ext_register_number[6]),
        .I4(s_pcie4_cfg_ext_register_number[9]),
        .I5(s_pcie4_cfg_ext_read_received),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \cfg_ext_read_data[25]_i_2 
       (.I0(s_pcie4_cfg_ext_register_number[1]),
        .I1(s_pcie4_cfg_ext_function_number[1]),
        .I2(s_pcie4_cfg_ext_register_number[0]),
        .O(p_1_out[25]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cfg_ext_read_data[25]_i_3 
       (.I0(s_pcie4_cfg_ext_register_number[4]),
        .I1(s_pcie4_cfg_ext_register_number[5]),
        .I2(s_pcie4_cfg_ext_register_number[2]),
        .I3(s_pcie4_cfg_ext_register_number[3]),
        .O(\cfg_ext_read_data[25]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cfg_ext_read_data_reg[16] 
       (.C(aclk_pcie),
        .CE(1'b1),
        .D(\cfg_ext_read_data[16]_i_1_n_0 ),
        .Q(cfg_ext_read_data[16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \cfg_ext_read_data_reg[1] 
       (.C(aclk_pcie),
        .CE(1'b1),
        .D(p_1_out[1]),
        .Q(cfg_ext_read_data[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \cfg_ext_read_data_reg[24] 
       (.C(aclk_pcie),
        .CE(1'b1),
        .D(p_1_out[24]),
        .Q(cfg_ext_read_data[24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \cfg_ext_read_data_reg[25] 
       (.C(aclk_pcie),
        .CE(1'b1),
        .D(p_1_out[25]),
        .Q(cfg_ext_read_data[25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    cfg_ext_read_data_valid_reg
       (.C(aclk_pcie),
        .CE(1'b1),
        .D(s_pcie4_cfg_ext_read_received),
        .Q(cfg_ext_read_data_valid),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment
   (Bus2IP_CS,
    s_axi_ctrl_pf1_RVALID,
    s_axi_ctrl_pf1_BVALID,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_1 ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    s_axi_ctrl_pf1_RDATA,
    D,
    SR,
    aclk_ctrl,
    s_axi_ctrl_pf1_ARVALID,
    aresetn_ctrl,
    IP2Bus_WrAck,
    s_axi_ctrl_pf1_AWVALID,
    s_axi_ctrl_pf1_WVALID,
    s_axi_ctrl_pf1_RREADY,
    s_axi_ctrl_pf1_BREADY,
    s_axi_ctrl_pf1_ARADDR,
    s_axi_ctrl_pf1_AWADDR,
    Q);
  output Bus2IP_CS;
  output s_axi_ctrl_pf1_RVALID;
  output s_axi_ctrl_pf1_BVALID;
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ;
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_1 ;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  output [8:0]s_axi_ctrl_pf1_RDATA;
  output [8:0]D;
  input [0:0]SR;
  input aclk_ctrl;
  input s_axi_ctrl_pf1_ARVALID;
  input aresetn_ctrl;
  input IP2Bus_WrAck;
  input s_axi_ctrl_pf1_AWVALID;
  input s_axi_ctrl_pf1_WVALID;
  input s_axi_ctrl_pf1_RREADY;
  input s_axi_ctrl_pf1_BREADY;
  input [4:0]s_axi_ctrl_pf1_ARADDR;
  input [4:0]s_axi_ctrl_pf1_AWADDR;
  input [8:0]Q;

  wire Bus2IP_CS;
  wire [8:0]D;
  wire \FSM_onehot_state[0]_i_1__0_n_0 ;
  wire \FSM_onehot_state[1]_i_1__0_n_0 ;
  wire \FSM_onehot_state[2]_i_1__0_n_0 ;
  wire \FSM_onehot_state[2]_i_2__0_n_0 ;
  wire \FSM_onehot_state[3]_i_1__0_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0_n_0 ;
  wire [4:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_1 ;
  wire IP2Bus_WrAck;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire [8:0]Q;
  wire [0:0]SR;
  wire aclk_ctrl;
  wire aresetn_ctrl;
  wire \bus2ip_addr_i[2]_i_1__0_n_0 ;
  wire \bus2ip_addr_i[3]_i_1__0_n_0 ;
  wire \bus2ip_addr_i[4]_i_1__0_n_0 ;
  wire \bus2ip_addr_i[5]_i_1__0_n_0 ;
  wire \bus2ip_addr_i[6]_i_1__0_n_0 ;
  wire \bus2ip_addr_i_reg_n_0_[2] ;
  wire \bus2ip_addr_i_reg_n_0_[3] ;
  wire \bus2ip_addr_i_reg_n_0_[4] ;
  wire \bus2ip_addr_i_reg_n_0_[5] ;
  wire \bus2ip_addr_i_reg_n_0_[6] ;
  wire is_read;
  wire is_read_i_1__0_n_0;
  wire is_read_reg_n_0;
  wire is_write;
  wire is_write_reg_n_0;
  wire [4:0]plusOp__0;
  wire s_axi_bresp_i;
  wire s_axi_bvalid_i_i_1__0_n_0;
  wire [4:0]s_axi_ctrl_pf1_ARADDR;
  wire s_axi_ctrl_pf1_ARVALID;
  wire [4:0]s_axi_ctrl_pf1_AWADDR;
  wire s_axi_ctrl_pf1_AWVALID;
  wire s_axi_ctrl_pf1_BREADY;
  wire s_axi_ctrl_pf1_BVALID;
  wire [8:0]s_axi_ctrl_pf1_RDATA;
  wire s_axi_ctrl_pf1_RREADY;
  wire s_axi_ctrl_pf1_RVALID;
  wire s_axi_ctrl_pf1_WVALID;
  wire s_axi_rresp_i;
  wire s_axi_rvalid_i_i_1__0_n_0;
  wire start2_i_1__0_n_0;
  wire start2_reg_n_0;
  wire state1__2;
  wire \state[0]_i_1__0_n_0 ;
  wire \state[1]_i_1__0_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;

  LUT5 #(
    .INIT(32'hFF080808)) 
    \FSM_onehot_state[0]_i_1__0 
       (.I0(\FSM_onehot_state[2]_i_2__0_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(s_axi_ctrl_pf1_ARVALID),
        .I3(state1__2),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[1]_i_1__0 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_pf1_ARVALID),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ),
        .I3(s_axi_rresp_i),
        .O(\FSM_onehot_state[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0404)) 
    \FSM_onehot_state[2]_i_1__0 
       (.I0(s_axi_ctrl_pf1_ARVALID),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state[2]_i_2__0_n_0 ),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_1 ),
        .I4(s_axi_bresp_i),
        .O(\FSM_onehot_state[2]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_state[2]_i_2__0 
       (.I0(s_axi_ctrl_pf1_AWVALID),
        .I1(s_axi_ctrl_pf1_WVALID),
        .O(\FSM_onehot_state[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \FSM_onehot_state[3]_i_1__0 
       (.I0(s_axi_bresp_i),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_1 ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(state1__2),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ),
        .I5(s_axi_rresp_i),
        .O(\FSM_onehot_state[3]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[3]_i_2__0 
       (.I0(s_axi_ctrl_pf1_RREADY),
        .I1(s_axi_ctrl_pf1_RVALID),
        .I2(s_axi_ctrl_pf1_BREADY),
        .I3(s_axi_ctrl_pf1_BVALID),
        .O(state1__2));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1__0_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1__0_n_0 ),
        .Q(s_axi_rresp_i),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1__0_n_0 ),
        .Q(s_axi_bresp_i),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1__0_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1__0 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1__0 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1__0 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1__0 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .O(plusOp__0[3]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_2__0 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .O(plusOp__0[4]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(plusOp__0[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0_n_0 ));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(plusOp__0[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0_n_0 ));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(plusOp__0[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0_n_0 ));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(plusOp__0[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0_n_0 ));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(plusOp__0[4]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00040007)) 
    \IP2Bus_Data[0]_i_1__0 
       (.I0(\bus2ip_addr_i_reg_n_0_[5] ),
        .I1(\bus2ip_addr_i_reg_n_0_[4] ),
        .I2(\bus2ip_addr_i_reg_n_0_[2] ),
        .I3(\bus2ip_addr_i_reg_n_0_[6] ),
        .I4(\bus2ip_addr_i_reg_n_0_[3] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \IP2Bus_Data[14]_i_1 
       (.I0(\bus2ip_addr_i_reg_n_0_[3] ),
        .I1(\bus2ip_addr_i_reg_n_0_[6] ),
        .I2(\bus2ip_addr_i_reg_n_0_[5] ),
        .I3(\bus2ip_addr_i_reg_n_0_[2] ),
        .I4(\bus2ip_addr_i_reg_n_0_[4] ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \IP2Bus_Data[24]_i_1 
       (.I0(\bus2ip_addr_i_reg_n_0_[3] ),
        .I1(\bus2ip_addr_i_reg_n_0_[6] ),
        .I2(\bus2ip_addr_i_reg_n_0_[5] ),
        .I3(\bus2ip_addr_i_reg_n_0_[2] ),
        .I4(\bus2ip_addr_i_reg_n_0_[4] ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \IP2Bus_Data[28]_i_2 
       (.I0(\bus2ip_addr_i_reg_n_0_[3] ),
        .I1(\bus2ip_addr_i_reg_n_0_[6] ),
        .I2(\bus2ip_addr_i_reg_n_0_[5] ),
        .I3(\bus2ip_addr_i_reg_n_0_[2] ),
        .I4(\bus2ip_addr_i_reg_n_0_[4] ),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000116)) 
    \IP2Bus_Data[4]_i_1__0 
       (.I0(\bus2ip_addr_i_reg_n_0_[4] ),
        .I1(\bus2ip_addr_i_reg_n_0_[3] ),
        .I2(\bus2ip_addr_i_reg_n_0_[2] ),
        .I3(\bus2ip_addr_i_reg_n_0_[5] ),
        .I4(\bus2ip_addr_i_reg_n_0_[6] ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00000014)) 
    \IP2Bus_Data[5]_i_1__0 
       (.I0(\bus2ip_addr_i_reg_n_0_[3] ),
        .I1(\bus2ip_addr_i_reg_n_0_[2] ),
        .I2(\bus2ip_addr_i_reg_n_0_[5] ),
        .I3(\bus2ip_addr_i_reg_n_0_[6] ),
        .I4(\bus2ip_addr_i_reg_n_0_[4] ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000012)) 
    \IP2Bus_Data[6]_i_1__0 
       (.I0(\bus2ip_addr_i_reg_n_0_[4] ),
        .I1(\bus2ip_addr_i_reg_n_0_[2] ),
        .I2(\bus2ip_addr_i_reg_n_0_[5] ),
        .I3(\bus2ip_addr_i_reg_n_0_[6] ),
        .I4(\bus2ip_addr_i_reg_n_0_[3] ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \IP2Bus_Data[7]_i_1__0 
       (.I0(\bus2ip_addr_i_reg_n_0_[3] ),
        .I1(\bus2ip_addr_i_reg_n_0_[6] ),
        .I2(\bus2ip_addr_i_reg_n_0_[5] ),
        .I3(\bus2ip_addr_i_reg_n_0_[2] ),
        .I4(\bus2ip_addr_i_reg_n_0_[4] ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \IP2Bus_Data[9]_i_1__0 
       (.I0(\bus2ip_addr_i_reg_n_0_[3] ),
        .I1(\bus2ip_addr_i_reg_n_0_[6] ),
        .I2(\bus2ip_addr_i_reg_n_0_[5] ),
        .I3(\bus2ip_addr_i_reg_n_0_[2] ),
        .I4(\bus2ip_addr_i_reg_n_0_[4] ),
        .O(D[5]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder I_DECODER
       (.Bus2IP_CS(Bus2IP_CS),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] (\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 (\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_1 ),
        .IP2Bus_WrAck(IP2Bus_WrAck),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 (\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 (start2_reg_n_0),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ),
        .aclk_ctrl(aclk_ctrl),
        .aresetn_ctrl(aresetn_ctrl),
        .s_axi_ctrl_pf1_ARREADY(is_read_reg_n_0),
        .s_axi_ctrl_pf1_AWREADY(is_write_reg_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[2]_i_1__0 
       (.I0(s_axi_ctrl_pf1_ARADDR[0]),
        .I1(s_axi_ctrl_pf1_ARVALID),
        .I2(s_axi_ctrl_pf1_AWADDR[0]),
        .O(\bus2ip_addr_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[3]_i_1__0 
       (.I0(s_axi_ctrl_pf1_ARADDR[1]),
        .I1(s_axi_ctrl_pf1_ARVALID),
        .I2(s_axi_ctrl_pf1_AWADDR[1]),
        .O(\bus2ip_addr_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[4]_i_1__0 
       (.I0(s_axi_ctrl_pf1_ARADDR[2]),
        .I1(s_axi_ctrl_pf1_ARVALID),
        .I2(s_axi_ctrl_pf1_AWADDR[2]),
        .O(\bus2ip_addr_i[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[5]_i_1__0 
       (.I0(s_axi_ctrl_pf1_ARADDR[3]),
        .I1(s_axi_ctrl_pf1_ARVALID),
        .I2(s_axi_ctrl_pf1_AWADDR[3]),
        .O(\bus2ip_addr_i[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[6]_i_1__0 
       (.I0(s_axi_ctrl_pf1_ARADDR[4]),
        .I1(s_axi_ctrl_pf1_ARVALID),
        .I2(s_axi_ctrl_pf1_AWADDR[4]),
        .O(\bus2ip_addr_i[6]_i_1__0_n_0 ));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(aclk_ctrl),
        .CE(start2_i_1__0_n_0),
        .D(\bus2ip_addr_i[2]_i_1__0_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[2] ),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(aclk_ctrl),
        .CE(start2_i_1__0_n_0),
        .D(\bus2ip_addr_i[3]_i_1__0_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[3] ),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(aclk_ctrl),
        .CE(start2_i_1__0_n_0),
        .D(\bus2ip_addr_i[4]_i_1__0_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[4] ),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[5] 
       (.C(aclk_ctrl),
        .CE(start2_i_1__0_n_0),
        .D(\bus2ip_addr_i[5]_i_1__0_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[5] ),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[6] 
       (.C(aclk_ctrl),
        .CE(start2_i_1__0_n_0),
        .D(\bus2ip_addr_i[6]_i_1__0_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[6] ),
        .R(SR));
  LUT3 #(
    .INIT(8'hF8)) 
    is_read_i_1__0
       (.I0(state1__2),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(is_read_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    is_read_i_2__0
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_pf1_ARVALID),
        .O(is_read));
  FDRE is_read_reg
       (.C(aclk_ctrl),
        .CE(is_read_i_1__0_n_0),
        .D(is_read),
        .Q(is_read_reg_n_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h04)) 
    is_write_i_1__0
       (.I0(s_axi_ctrl_pf1_ARVALID),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state[2]_i_2__0_n_0 ),
        .O(is_write));
  FDRE is_write_reg
       (.C(aclk_ctrl),
        .CE(is_read_i_1__0_n_0),
        .D(is_write),
        .Q(is_write_reg_n_0),
        .R(SR));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_bvalid_i_i_1__0
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_1 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(s_axi_ctrl_pf1_BREADY),
        .I4(s_axi_ctrl_pf1_BVALID),
        .O(s_axi_bvalid_i_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1__0_n_0),
        .Q(s_axi_ctrl_pf1_BVALID),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(aclk_ctrl),
        .CE(s_axi_rresp_i),
        .D(Q[0]),
        .Q(s_axi_ctrl_pf1_RDATA[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[14] 
       (.C(aclk_ctrl),
        .CE(s_axi_rresp_i),
        .D(Q[6]),
        .Q(s_axi_ctrl_pf1_RDATA[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[24] 
       (.C(aclk_ctrl),
        .CE(s_axi_rresp_i),
        .D(Q[7]),
        .Q(s_axi_ctrl_pf1_RDATA[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[28] 
       (.C(aclk_ctrl),
        .CE(s_axi_rresp_i),
        .D(Q[8]),
        .Q(s_axi_ctrl_pf1_RDATA[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(aclk_ctrl),
        .CE(s_axi_rresp_i),
        .D(Q[1]),
        .Q(s_axi_ctrl_pf1_RDATA[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(aclk_ctrl),
        .CE(s_axi_rresp_i),
        .D(Q[2]),
        .Q(s_axi_ctrl_pf1_RDATA[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(aclk_ctrl),
        .CE(s_axi_rresp_i),
        .D(Q[3]),
        .Q(s_axi_ctrl_pf1_RDATA[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(aclk_ctrl),
        .CE(s_axi_rresp_i),
        .D(Q[4]),
        .Q(s_axi_ctrl_pf1_RDATA[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(aclk_ctrl),
        .CE(s_axi_rresp_i),
        .D(Q[5]),
        .Q(s_axi_ctrl_pf1_RDATA[5]),
        .R(SR));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_rvalid_i_i_1__0
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(s_axi_ctrl_pf1_RREADY),
        .I4(s_axi_ctrl_pf1_RVALID),
        .O(s_axi_rvalid_i_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1__0_n_0),
        .Q(s_axi_ctrl_pf1_RVALID),
        .R(SR));
  LUT4 #(
    .INIT(16'h000D)) 
    start2_i_1__0
       (.I0(\FSM_onehot_state[2]_i_2__0_n_0 ),
        .I1(s_axi_ctrl_pf1_ARVALID),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .O(start2_i_1__0_n_0));
  FDRE start2_reg
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(start2_i_1__0_n_0),
        .Q(start2_reg_n_0),
        .R(SR));
  LUT5 #(
    .INIT(32'h3AFF3AF0)) 
    \state[0]_i_1__0 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_1 ),
        .I1(state1__2),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(s_axi_ctrl_pf1_ARVALID),
        .O(\state[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h3AF03AF03AF03AFF)) 
    \state[1]_i_1__0 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ),
        .I1(state1__2),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(s_axi_ctrl_pf1_ARVALID),
        .I5(\FSM_onehot_state[2]_i_2__0_n_0 ),
        .O(\state[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\state[0]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\state[1]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "slave_attachment" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment_1
   (SR,
    Bus2IP_CS,
    s_axi_ctrl_pf0_RVALID,
    s_axi_ctrl_pf0_BVALID,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_1 ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    s_axi_ctrl_pf0_RDATA,
    D,
    aclk_ctrl,
    s_axi_ctrl_pf0_ARVALID,
    aresetn_ctrl,
    IP2Bus_WrAck,
    s_axi_ctrl_pf0_AWVALID,
    s_axi_ctrl_pf0_WVALID,
    s_axi_ctrl_pf0_RREADY,
    s_axi_ctrl_pf0_BREADY,
    s_axi_ctrl_pf0_ARADDR,
    s_axi_ctrl_pf0_AWADDR,
    Q);
  output [0:0]SR;
  output Bus2IP_CS;
  output s_axi_ctrl_pf0_RVALID;
  output s_axi_ctrl_pf0_BVALID;
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ;
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_1 ;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  output [12:0]s_axi_ctrl_pf0_RDATA;
  output [12:0]D;
  input aclk_ctrl;
  input s_axi_ctrl_pf0_ARVALID;
  input aresetn_ctrl;
  input IP2Bus_WrAck;
  input s_axi_ctrl_pf0_AWVALID;
  input s_axi_ctrl_pf0_WVALID;
  input s_axi_ctrl_pf0_RREADY;
  input s_axi_ctrl_pf0_BREADY;
  input [4:0]s_axi_ctrl_pf0_ARADDR;
  input [4:0]s_axi_ctrl_pf0_AWADDR;
  input [12:0]Q;

  wire Bus2IP_CS;
  wire [12:0]D;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire [4:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_1 ;
  wire IP2Bus_WrAck;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire [12:0]Q;
  wire [0:0]SR;
  wire aclk_ctrl;
  wire aresetn_ctrl;
  wire clear;
  wire is_read;
  wire is_read_i_1_n_0;
  wire is_read_reg_n_0;
  wire is_write;
  wire is_write_reg_n_0;
  wire [6:2]p_1_in;
  wire [4:0]plusOp;
  wire rst_i_1_n_0;
  wire s_axi_bresp_i;
  wire s_axi_bvalid_i_i_1_n_0;
  wire [4:0]s_axi_ctrl_pf0_ARADDR;
  wire s_axi_ctrl_pf0_ARVALID;
  wire [4:0]s_axi_ctrl_pf0_AWADDR;
  wire s_axi_ctrl_pf0_AWVALID;
  wire s_axi_ctrl_pf0_BREADY;
  wire s_axi_ctrl_pf0_BVALID;
  wire [12:0]s_axi_ctrl_pf0_RDATA;
  wire s_axi_ctrl_pf0_RREADY;
  wire s_axi_ctrl_pf0_RVALID;
  wire s_axi_ctrl_pf0_WVALID;
  wire s_axi_rresp_i;
  wire s_axi_rvalid_i_i_1_n_0;
  wire [4:0]sel;
  wire start2;
  wire start2_i_1_n_0;
  wire state1__2;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;

  LUT5 #(
    .INIT(32'hFF080808)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(s_axi_ctrl_pf0_ARVALID),
        .I3(state1__2),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_pf0_ARVALID),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ),
        .I3(s_axi_rresp_i),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0404)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(s_axi_ctrl_pf0_ARVALID),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state[2]_i_2_n_0 ),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_1 ),
        .I4(s_axi_bresp_i),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(s_axi_ctrl_pf0_AWVALID),
        .I1(s_axi_ctrl_pf0_WVALID),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(s_axi_bresp_i),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_1 ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(state1__2),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ),
        .I5(s_axi_rresp_i),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(s_axi_ctrl_pf0_RREADY),
        .I1(s_axi_ctrl_pf0_RVALID),
        .I2(s_axi_ctrl_pf0_BREADY),
        .I3(s_axi_ctrl_pf0_BVALID),
        .O(state1__2));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(s_axi_rresp_i),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(s_axi_bresp_i),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .O(plusOp[3]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .O(plusOp[4]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00105665)) 
    \IP2Bus_Data[0]_i_1 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[2]),
        .I3(sel[1]),
        .I4(sel[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \IP2Bus_Data[11]_i_1 
       (.I0(sel[3]),
        .I1(sel[1]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[4]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h05000600)) 
    \IP2Bus_Data[16]_i_1 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00010008)) 
    \IP2Bus_Data[1]_i_1 
       (.I0(sel[4]),
        .I1(sel[2]),
        .I2(sel[1]),
        .I3(sel[0]),
        .I4(sel[3]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \IP2Bus_Data[25]_i_1 
       (.I0(sel[3]),
        .I1(sel[0]),
        .I2(sel[1]),
        .I3(sel[2]),
        .I4(sel[4]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \IP2Bus_Data[28]_i_1 
       (.I0(sel[3]),
        .I1(sel[0]),
        .I2(sel[1]),
        .I3(sel[2]),
        .I4(sel[4]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \IP2Bus_Data[29]_i_2 
       (.I0(sel[3]),
        .I1(sel[0]),
        .I2(sel[1]),
        .I3(sel[2]),
        .I4(sel[4]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00070000)) 
    \IP2Bus_Data[2]_i_1 
       (.I0(sel[3]),
        .I1(sel[4]),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000176)) 
    \IP2Bus_Data[4]_i_1 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[2]),
        .I3(sel[1]),
        .I4(sel[0]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000018)) 
    \IP2Bus_Data[5]_i_1 
       (.I0(sel[4]),
        .I1(sel[2]),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[3]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h00000176)) 
    \IP2Bus_Data[6]_i_1 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[2]),
        .I3(sel[0]),
        .I4(sel[1]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \IP2Bus_Data[7]_i_1 
       (.I0(sel[3]),
        .I1(sel[0]),
        .I2(sel[1]),
        .I3(sel[2]),
        .I4(sel[4]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h01100600)) 
    \IP2Bus_Data[9]_i_1 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[1]),
        .I3(sel[0]),
        .I4(sel[2]),
        .O(D[7]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder_2 I_DECODER
       (.Bus2IP_CS(Bus2IP_CS),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] (\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 (\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_1 ),
        .IP2Bus_WrAck(IP2Bus_WrAck),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 (\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ),
        .aclk_ctrl(aclk_ctrl),
        .aresetn_ctrl(aresetn_ctrl),
        .s_axi_ctrl_pf0_ARREADY(is_read_reg_n_0),
        .s_axi_ctrl_pf0_AWREADY(is_write_reg_n_0),
        .start2(start2));
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_ctrl_pf0_ARADDR[0]),
        .I1(s_axi_ctrl_pf0_ARVALID),
        .I2(s_axi_ctrl_pf0_AWADDR[0]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_ctrl_pf0_ARADDR[1]),
        .I1(s_axi_ctrl_pf0_ARVALID),
        .I2(s_axi_ctrl_pf0_AWADDR[1]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[4]_i_1 
       (.I0(s_axi_ctrl_pf0_ARADDR[2]),
        .I1(s_axi_ctrl_pf0_ARVALID),
        .I2(s_axi_ctrl_pf0_AWADDR[2]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[5]_i_1 
       (.I0(s_axi_ctrl_pf0_ARADDR[3]),
        .I1(s_axi_ctrl_pf0_ARVALID),
        .I2(s_axi_ctrl_pf0_AWADDR[3]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[6]_i_1 
       (.I0(s_axi_ctrl_pf0_ARADDR[4]),
        .I1(s_axi_ctrl_pf0_ARVALID),
        .I2(s_axi_ctrl_pf0_AWADDR[4]),
        .O(p_1_in[6]));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(aclk_ctrl),
        .CE(start2_i_1_n_0),
        .D(p_1_in[2]),
        .Q(sel[0]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(aclk_ctrl),
        .CE(start2_i_1_n_0),
        .D(p_1_in[3]),
        .Q(sel[1]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(aclk_ctrl),
        .CE(start2_i_1_n_0),
        .D(p_1_in[4]),
        .Q(sel[2]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[5] 
       (.C(aclk_ctrl),
        .CE(start2_i_1_n_0),
        .D(p_1_in[5]),
        .Q(sel[3]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[6] 
       (.C(aclk_ctrl),
        .CE(start2_i_1_n_0),
        .D(p_1_in[6]),
        .Q(sel[4]),
        .R(SR));
  LUT3 #(
    .INIT(8'hF8)) 
    is_read_i_1
       (.I0(state1__2),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(is_read_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    is_read_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_pf0_ARVALID),
        .O(is_read));
  FDRE is_read_reg
       (.C(aclk_ctrl),
        .CE(is_read_i_1_n_0),
        .D(is_read),
        .Q(is_read_reg_n_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    is_write_i_1
       (.I0(s_axi_ctrl_pf0_ARVALID),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state[2]_i_2_n_0 ),
        .O(is_write));
  FDRE is_write_reg
       (.C(aclk_ctrl),
        .CE(is_read_i_1_n_0),
        .D(is_write),
        .Q(is_write_reg_n_0),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    rst_i_1
       (.I0(aresetn_ctrl),
        .O(rst_i_1_n_0));
  FDRE rst_reg
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(rst_i_1_n_0),
        .Q(SR),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_bvalid_i_i_1
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_1 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(s_axi_ctrl_pf0_BREADY),
        .I4(s_axi_ctrl_pf0_BVALID),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_ctrl_pf0_BVALID),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(aclk_ctrl),
        .CE(s_axi_rresp_i),
        .D(Q[0]),
        .Q(s_axi_ctrl_pf0_RDATA[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[11] 
       (.C(aclk_ctrl),
        .CE(s_axi_rresp_i),
        .D(Q[8]),
        .Q(s_axi_ctrl_pf0_RDATA[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[16] 
       (.C(aclk_ctrl),
        .CE(s_axi_rresp_i),
        .D(Q[9]),
        .Q(s_axi_ctrl_pf0_RDATA[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(aclk_ctrl),
        .CE(s_axi_rresp_i),
        .D(Q[1]),
        .Q(s_axi_ctrl_pf0_RDATA[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[25] 
       (.C(aclk_ctrl),
        .CE(s_axi_rresp_i),
        .D(Q[10]),
        .Q(s_axi_ctrl_pf0_RDATA[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[28] 
       (.C(aclk_ctrl),
        .CE(s_axi_rresp_i),
        .D(Q[11]),
        .Q(s_axi_ctrl_pf0_RDATA[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[29] 
       (.C(aclk_ctrl),
        .CE(s_axi_rresp_i),
        .D(Q[12]),
        .Q(s_axi_ctrl_pf0_RDATA[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(aclk_ctrl),
        .CE(s_axi_rresp_i),
        .D(Q[2]),
        .Q(s_axi_ctrl_pf0_RDATA[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(aclk_ctrl),
        .CE(s_axi_rresp_i),
        .D(Q[3]),
        .Q(s_axi_ctrl_pf0_RDATA[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(aclk_ctrl),
        .CE(s_axi_rresp_i),
        .D(Q[4]),
        .Q(s_axi_ctrl_pf0_RDATA[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(aclk_ctrl),
        .CE(s_axi_rresp_i),
        .D(Q[5]),
        .Q(s_axi_ctrl_pf0_RDATA[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(aclk_ctrl),
        .CE(s_axi_rresp_i),
        .D(Q[6]),
        .Q(s_axi_ctrl_pf0_RDATA[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(aclk_ctrl),
        .CE(s_axi_rresp_i),
        .D(Q[7]),
        .Q(s_axi_ctrl_pf0_RDATA[7]),
        .R(SR));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_rvalid_i_i_1
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(s_axi_ctrl_pf0_RREADY),
        .I4(s_axi_ctrl_pf0_RVALID),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_ctrl_pf0_RVALID),
        .R(SR));
  LUT4 #(
    .INIT(16'h000D)) 
    start2_i_1
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(s_axi_ctrl_pf0_ARVALID),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(SR));
  LUT5 #(
    .INIT(32'h3AFF3AF0)) 
    \state[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_1 ),
        .I1(state1__2),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(s_axi_ctrl_pf0_ARVALID),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3AF03AF03AF03AFF)) 
    \state[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0 ),
        .I1(state1__2),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(s_axi_ctrl_pf0_ARVALID),
        .I5(\FSM_onehot_state[2]_i_2_n_0 ),
        .O(\state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(aclk_ctrl),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(SR));
endmodule

(* CHECK_LICENSE_TYPE = "top_hw_discovery_0,hw_discovery,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "hw_discovery,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk_pcie,
    aresetn_pcie,
    aclk_ctrl,
    aresetn_ctrl,
    s_pcie4_cfg_ext_function_number,
    s_pcie4_cfg_ext_read_data,
    s_pcie4_cfg_ext_read_data_valid,
    s_pcie4_cfg_ext_read_received,
    s_pcie4_cfg_ext_register_number,
    s_pcie4_cfg_ext_write_byte_enable,
    s_pcie4_cfg_ext_write_data,
    s_pcie4_cfg_ext_write_received,
    s_axi_ctrl_pf0_AWADDR,
    s_axi_ctrl_pf0_AWVALID,
    s_axi_ctrl_pf0_AWREADY,
    s_axi_ctrl_pf0_WDATA,
    s_axi_ctrl_pf0_WSTRB,
    s_axi_ctrl_pf0_WVALID,
    s_axi_ctrl_pf0_WREADY,
    s_axi_ctrl_pf0_BRESP,
    s_axi_ctrl_pf0_BVALID,
    s_axi_ctrl_pf0_BREADY,
    s_axi_ctrl_pf0_ARADDR,
    s_axi_ctrl_pf0_ARVALID,
    s_axi_ctrl_pf0_ARREADY,
    s_axi_ctrl_pf0_RDATA,
    s_axi_ctrl_pf0_RRESP,
    s_axi_ctrl_pf0_RVALID,
    s_axi_ctrl_pf0_RREADY,
    s_axi_ctrl_pf1_AWADDR,
    s_axi_ctrl_pf1_AWVALID,
    s_axi_ctrl_pf1_AWREADY,
    s_axi_ctrl_pf1_WDATA,
    s_axi_ctrl_pf1_WSTRB,
    s_axi_ctrl_pf1_WVALID,
    s_axi_ctrl_pf1_WREADY,
    s_axi_ctrl_pf1_BRESP,
    s_axi_ctrl_pf1_BVALID,
    s_axi_ctrl_pf1_BREADY,
    s_axi_ctrl_pf1_ARADDR,
    s_axi_ctrl_pf1_ARVALID,
    s_axi_ctrl_pf1_ARREADY,
    s_axi_ctrl_pf1_RDATA,
    s_axi_ctrl_pf1_RRESP,
    s_axi_ctrl_pf1_RVALID,
    s_axi_ctrl_pf1_RREADY);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_pcie CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_pcie, ASSOCIATED_BUSIF s_pcie4_cfg_ext:m_pcie4_cfg_ext, ASSOCIATED_RESET aresetn_pcie, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_4885_cpm_0_0_pcie0_user_clk, INSERT_VIP 0" *) input aclk_pcie;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_pcie RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn_pcie, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn_pcie;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_ctrl CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_ctrl, ASSOCIATED_BUSIF s_axi_ctrl_pf0:s_axi_ctrl_pf1:s_axi_ctrl_pf2:s_axi_ctrl_pf3, ASSOCIATED_RESET aresetn_ctrl, FREQ_HZ 99999992, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_4885_pspmc_0_0_pl0_ref_clk, INSERT_VIP 0" *) input aclk_ctrl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_ctrl RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn_ctrl, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn_ctrl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_ext:1.0 s_pcie4_cfg_ext function_number" *) input [7:0]s_pcie4_cfg_ext_function_number;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_ext:1.0 s_pcie4_cfg_ext read_data" *) output [31:0]s_pcie4_cfg_ext_read_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_ext:1.0 s_pcie4_cfg_ext read_data_valid" *) output s_pcie4_cfg_ext_read_data_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_ext:1.0 s_pcie4_cfg_ext read_received" *) input s_pcie4_cfg_ext_read_received;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_ext:1.0 s_pcie4_cfg_ext register_number" *) input [9:0]s_pcie4_cfg_ext_register_number;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_ext:1.0 s_pcie4_cfg_ext write_byte_enable" *) input [3:0]s_pcie4_cfg_ext_write_byte_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_ext:1.0 s_pcie4_cfg_ext write_data" *) input [31:0]s_pcie4_cfg_ext_write_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_ext:1.0 s_pcie4_cfg_ext write_received" *) input s_pcie4_cfg_ext_write_received;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf0 AWADDR" *) input [31:0]s_axi_ctrl_pf0_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf0 AWVALID" *) input s_axi_ctrl_pf0_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf0 AWREADY" *) output s_axi_ctrl_pf0_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf0 WDATA" *) input [31:0]s_axi_ctrl_pf0_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf0 WSTRB" *) input [3:0]s_axi_ctrl_pf0_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf0 WVALID" *) input s_axi_ctrl_pf0_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf0 WREADY" *) output s_axi_ctrl_pf0_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf0 BRESP" *) output [1:0]s_axi_ctrl_pf0_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf0 BVALID" *) output s_axi_ctrl_pf0_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf0 BREADY" *) input s_axi_ctrl_pf0_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf0 ARADDR" *) input [31:0]s_axi_ctrl_pf0_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf0 ARVALID" *) input s_axi_ctrl_pf0_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf0 ARREADY" *) output s_axi_ctrl_pf0_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf0 RDATA" *) output [31:0]s_axi_ctrl_pf0_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf0 RRESP" *) output [1:0]s_axi_ctrl_pf0_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf0 RVALID" *) output s_axi_ctrl_pf0_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf0 RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctrl_pf0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999992, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 32, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_4885_pspmc_0_0_pl0_ref_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_ctrl_pf0_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf1 AWADDR" *) input [31:0]s_axi_ctrl_pf1_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf1 AWVALID" *) input s_axi_ctrl_pf1_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf1 AWREADY" *) output s_axi_ctrl_pf1_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf1 WDATA" *) input [31:0]s_axi_ctrl_pf1_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf1 WSTRB" *) input [3:0]s_axi_ctrl_pf1_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf1 WVALID" *) input s_axi_ctrl_pf1_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf1 WREADY" *) output s_axi_ctrl_pf1_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf1 BRESP" *) output [1:0]s_axi_ctrl_pf1_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf1 BVALID" *) output s_axi_ctrl_pf1_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf1 BREADY" *) input s_axi_ctrl_pf1_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf1 ARADDR" *) input [31:0]s_axi_ctrl_pf1_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf1 ARVALID" *) input s_axi_ctrl_pf1_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf1 ARREADY" *) output s_axi_ctrl_pf1_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf1 RDATA" *) output [31:0]s_axi_ctrl_pf1_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf1 RRESP" *) output [1:0]s_axi_ctrl_pf1_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf1 RVALID" *) output s_axi_ctrl_pf1_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf1 RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctrl_pf1, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999992, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 32, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_4885_pspmc_0_0_pl0_ref_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_ctrl_pf1_RREADY;

  wire \<const0> ;
  wire aclk_ctrl;
  wire aclk_pcie;
  wire aresetn_ctrl;
  wire [31:0]s_axi_ctrl_pf0_ARADDR;
  wire s_axi_ctrl_pf0_ARREADY;
  wire s_axi_ctrl_pf0_ARVALID;
  wire [31:0]s_axi_ctrl_pf0_AWADDR;
  wire s_axi_ctrl_pf0_AWREADY;
  wire s_axi_ctrl_pf0_AWVALID;
  wire s_axi_ctrl_pf0_BREADY;
  wire s_axi_ctrl_pf0_BVALID;
  wire [29:0]\^s_axi_ctrl_pf0_RDATA ;
  wire s_axi_ctrl_pf0_RREADY;
  wire s_axi_ctrl_pf0_RVALID;
  wire s_axi_ctrl_pf0_WREADY;
  wire s_axi_ctrl_pf0_WVALID;
  wire [31:0]s_axi_ctrl_pf1_ARADDR;
  wire s_axi_ctrl_pf1_ARREADY;
  wire s_axi_ctrl_pf1_ARVALID;
  wire [31:0]s_axi_ctrl_pf1_AWADDR;
  wire s_axi_ctrl_pf1_AWREADY;
  wire s_axi_ctrl_pf1_AWVALID;
  wire s_axi_ctrl_pf1_BREADY;
  wire s_axi_ctrl_pf1_BVALID;
  wire [28:0]\^s_axi_ctrl_pf1_RDATA ;
  wire s_axi_ctrl_pf1_RREADY;
  wire s_axi_ctrl_pf1_RVALID;
  wire s_axi_ctrl_pf1_WREADY;
  wire s_axi_ctrl_pf1_WVALID;
  wire [7:0]s_pcie4_cfg_ext_function_number;
  wire [25:0]\^s_pcie4_cfg_ext_read_data ;
  wire s_pcie4_cfg_ext_read_data_valid;
  wire s_pcie4_cfg_ext_read_received;
  wire [9:0]s_pcie4_cfg_ext_register_number;
  wire NLW_inst_m_pcie4_cfg_ext_read_received_UNCONNECTED;
  wire NLW_inst_m_pcie4_cfg_ext_write_received_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_pf2_ARREADY_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_pf2_AWREADY_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_pf2_BVALID_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_pf2_RVALID_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_pf2_WREADY_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_pf3_ARREADY_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_pf3_AWREADY_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_pf3_BVALID_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_pf3_RVALID_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_pf3_WREADY_UNCONNECTED;
  wire [7:0]NLW_inst_m_pcie4_cfg_ext_function_number_UNCONNECTED;
  wire [9:0]NLW_inst_m_pcie4_cfg_ext_register_number_UNCONNECTED;
  wire [3:0]NLW_inst_m_pcie4_cfg_ext_write_byte_enable_UNCONNECTED;
  wire [31:0]NLW_inst_m_pcie4_cfg_ext_write_data_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_ctrl_pf0_BRESP_UNCONNECTED;
  wire [31:8]NLW_inst_s_axi_ctrl_pf0_RDATA_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_ctrl_pf0_RRESP_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_ctrl_pf1_BRESP_UNCONNECTED;
  wire [31:8]NLW_inst_s_axi_ctrl_pf1_RDATA_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_ctrl_pf1_RRESP_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_ctrl_pf2_BRESP_UNCONNECTED;
  wire [31:0]NLW_inst_s_axi_ctrl_pf2_RDATA_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_ctrl_pf2_RRESP_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_ctrl_pf3_BRESP_UNCONNECTED;
  wire [31:0]NLW_inst_s_axi_ctrl_pf3_RDATA_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_ctrl_pf3_RRESP_UNCONNECTED;
  wire [31:2]NLW_inst_s_pcie4_cfg_ext_read_data_UNCONNECTED;

  assign s_axi_ctrl_pf0_BRESP[1] = \<const0> ;
  assign s_axi_ctrl_pf0_BRESP[0] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[31] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[30] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[29:28] = \^s_axi_ctrl_pf0_RDATA [29:28];
  assign s_axi_ctrl_pf0_RDATA[27] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[26] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[25:24] = \^s_axi_ctrl_pf0_RDATA [25:24];
  assign s_axi_ctrl_pf0_RDATA[23] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[22] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[21] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[20] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[19] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[18] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[17] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[16] = \^s_axi_ctrl_pf0_RDATA [16];
  assign s_axi_ctrl_pf0_RDATA[15] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[14] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[13] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[12] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[11] = \^s_axi_ctrl_pf0_RDATA [11];
  assign s_axi_ctrl_pf0_RDATA[10] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[9] = \^s_axi_ctrl_pf0_RDATA [9];
  assign s_axi_ctrl_pf0_RDATA[8] = \<const0> ;
  assign s_axi_ctrl_pf0_RDATA[7:0] = \^s_axi_ctrl_pf0_RDATA [7:0];
  assign s_axi_ctrl_pf0_RRESP[1] = \<const0> ;
  assign s_axi_ctrl_pf0_RRESP[0] = \<const0> ;
  assign s_axi_ctrl_pf1_BRESP[1] = \<const0> ;
  assign s_axi_ctrl_pf1_BRESP[0] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[31] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[30] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[29] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[28] = \^s_axi_ctrl_pf1_RDATA [28];
  assign s_axi_ctrl_pf1_RDATA[27] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[26] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[25] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[24] = \^s_axi_ctrl_pf1_RDATA [24];
  assign s_axi_ctrl_pf1_RDATA[23] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[22] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[21] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[20] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[19] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[18] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[17] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[16] = \^s_axi_ctrl_pf1_RDATA [16];
  assign s_axi_ctrl_pf1_RDATA[15] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[14] = \^s_axi_ctrl_pf1_RDATA [14];
  assign s_axi_ctrl_pf1_RDATA[13] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[12] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[11] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[10] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[9] = \^s_axi_ctrl_pf1_RDATA [9];
  assign s_axi_ctrl_pf1_RDATA[8] = \<const0> ;
  assign s_axi_ctrl_pf1_RDATA[7:0] = \^s_axi_ctrl_pf1_RDATA [7:0];
  assign s_axi_ctrl_pf1_RRESP[1] = \<const0> ;
  assign s_axi_ctrl_pf1_RRESP[0] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[31] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[30] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[29] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[28] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[27] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[26] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[25:24] = \^s_pcie4_cfg_ext_read_data [25:24];
  assign s_pcie4_cfg_ext_read_data[23] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[22] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[21] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[20] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[19] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[18] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[17] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[16] = \^s_pcie4_cfg_ext_read_data [16];
  assign s_pcie4_cfg_ext_read_data[15] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[14] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[13] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[12] = \^s_pcie4_cfg_ext_read_data [12];
  assign s_pcie4_cfg_ext_read_data[11] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[10] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[9] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[8] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[7] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[6] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[5] = \^s_pcie4_cfg_ext_read_data [5];
  assign s_pcie4_cfg_ext_read_data[4] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[3] = \^s_pcie4_cfg_ext_read_data [3];
  assign s_pcie4_cfg_ext_read_data[2] = \<const0> ;
  assign s_pcie4_cfg_ext_read_data[1:0] = \^s_pcie4_cfg_ext_read_data [1:0];
  GND GND
       (.G(\<const0> ));
  (* C_CAP_BASE_ADDR = "12'b011000000000" *) 
  (* C_NEXT_CAP_ADDR = "12'b000000000000" *) 
  (* C_NUM_PFS = "2" *) 
  (* C_PF0_BAR_INDEX = "0" *) 
  (* C_PF0_ENTRY_ADDR_0 = "48'b000000000000000000000010000000010000000000000000" *) 
  (* C_PF0_ENTRY_ADDR_1 = "48'b000000000000000000000010000000000000000000000000" *) 
  (* C_PF0_ENTRY_ADDR_10 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF0_ENTRY_ADDR_11 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF0_ENTRY_ADDR_12 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF0_ENTRY_ADDR_13 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF0_ENTRY_ADDR_14 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF0_ENTRY_ADDR_15 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF0_ENTRY_ADDR_2 = "48'b000000000000000000001000000000000000000000000000" *) 
  (* C_PF0_ENTRY_ADDR_3 = "48'b000000000000000000000010000000000010000000000000" *) 
  (* C_PF0_ENTRY_ADDR_4 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF0_ENTRY_ADDR_5 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF0_ENTRY_ADDR_6 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF0_ENTRY_ADDR_7 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF0_ENTRY_ADDR_8 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF0_ENTRY_ADDR_9 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF0_ENTRY_BAR_0 = "0" *) 
  (* C_PF0_ENTRY_BAR_1 = "0" *) 
  (* C_PF0_ENTRY_BAR_10 = "0" *) 
  (* C_PF0_ENTRY_BAR_11 = "0" *) 
  (* C_PF0_ENTRY_BAR_12 = "0" *) 
  (* C_PF0_ENTRY_BAR_13 = "0" *) 
  (* C_PF0_ENTRY_BAR_14 = "0" *) 
  (* C_PF0_ENTRY_BAR_15 = "0" *) 
  (* C_PF0_ENTRY_BAR_2 = "0" *) 
  (* C_PF0_ENTRY_BAR_3 = "0" *) 
  (* C_PF0_ENTRY_BAR_4 = "0" *) 
  (* C_PF0_ENTRY_BAR_5 = "0" *) 
  (* C_PF0_ENTRY_BAR_6 = "0" *) 
  (* C_PF0_ENTRY_BAR_7 = "0" *) 
  (* C_PF0_ENTRY_BAR_8 = "0" *) 
  (* C_PF0_ENTRY_BAR_9 = "0" *) 
  (* C_PF0_ENTRY_MAJOR_VERSION_0 = "1" *) 
  (* C_PF0_ENTRY_MAJOR_VERSION_1 = "1" *) 
  (* C_PF0_ENTRY_MAJOR_VERSION_10 = "0" *) 
  (* C_PF0_ENTRY_MAJOR_VERSION_11 = "0" *) 
  (* C_PF0_ENTRY_MAJOR_VERSION_12 = "0" *) 
  (* C_PF0_ENTRY_MAJOR_VERSION_13 = "0" *) 
  (* C_PF0_ENTRY_MAJOR_VERSION_14 = "0" *) 
  (* C_PF0_ENTRY_MAJOR_VERSION_15 = "0" *) 
  (* C_PF0_ENTRY_MAJOR_VERSION_2 = "1" *) 
  (* C_PF0_ENTRY_MAJOR_VERSION_3 = "1" *) 
  (* C_PF0_ENTRY_MAJOR_VERSION_4 = "0" *) 
  (* C_PF0_ENTRY_MAJOR_VERSION_5 = "0" *) 
  (* C_PF0_ENTRY_MAJOR_VERSION_6 = "0" *) 
  (* C_PF0_ENTRY_MAJOR_VERSION_7 = "0" *) 
  (* C_PF0_ENTRY_MAJOR_VERSION_8 = "0" *) 
  (* C_PF0_ENTRY_MAJOR_VERSION_9 = "0" *) 
  (* C_PF0_ENTRY_MINOR_VERSION_0 = "2" *) 
  (* C_PF0_ENTRY_MINOR_VERSION_1 = "0" *) 
  (* C_PF0_ENTRY_MINOR_VERSION_10 = "0" *) 
  (* C_PF0_ENTRY_MINOR_VERSION_11 = "0" *) 
  (* C_PF0_ENTRY_MINOR_VERSION_12 = "0" *) 
  (* C_PF0_ENTRY_MINOR_VERSION_13 = "0" *) 
  (* C_PF0_ENTRY_MINOR_VERSION_14 = "0" *) 
  (* C_PF0_ENTRY_MINOR_VERSION_15 = "0" *) 
  (* C_PF0_ENTRY_MINOR_VERSION_2 = "0" *) 
  (* C_PF0_ENTRY_MINOR_VERSION_3 = "0" *) 
  (* C_PF0_ENTRY_MINOR_VERSION_4 = "0" *) 
  (* C_PF0_ENTRY_MINOR_VERSION_5 = "0" *) 
  (* C_PF0_ENTRY_MINOR_VERSION_6 = "0" *) 
  (* C_PF0_ENTRY_MINOR_VERSION_7 = "0" *) 
  (* C_PF0_ENTRY_MINOR_VERSION_8 = "0" *) 
  (* C_PF0_ENTRY_MINOR_VERSION_9 = "0" *) 
  (* C_PF0_ENTRY_RSVD0_0 = "4'b0000" *) 
  (* C_PF0_ENTRY_RSVD0_1 = "4'b0011" *) 
  (* C_PF0_ENTRY_RSVD0_10 = "4'b0000" *) 
  (* C_PF0_ENTRY_RSVD0_11 = "4'b0000" *) 
  (* C_PF0_ENTRY_RSVD0_12 = "4'b0000" *) 
  (* C_PF0_ENTRY_RSVD0_13 = "4'b0000" *) 
  (* C_PF0_ENTRY_RSVD0_14 = "4'b0000" *) 
  (* C_PF0_ENTRY_RSVD0_15 = "4'b0000" *) 
  (* C_PF0_ENTRY_RSVD0_2 = "4'b0000" *) 
  (* C_PF0_ENTRY_RSVD0_3 = "4'b0000" *) 
  (* C_PF0_ENTRY_RSVD0_4 = "4'b0000" *) 
  (* C_PF0_ENTRY_RSVD0_5 = "4'b0000" *) 
  (* C_PF0_ENTRY_RSVD0_6 = "4'b0000" *) 
  (* C_PF0_ENTRY_RSVD0_7 = "4'b0000" *) 
  (* C_PF0_ENTRY_RSVD0_8 = "4'b0000" *) 
  (* C_PF0_ENTRY_RSVD0_9 = "4'b0000" *) 
  (* C_PF0_ENTRY_TYPE_0 = "8'b01010100" *) 
  (* C_PF0_ENTRY_TYPE_1 = "8'b01010011" *) 
  (* C_PF0_ENTRY_TYPE_10 = "8'b00000000" *) 
  (* C_PF0_ENTRY_TYPE_11 = "8'b00000000" *) 
  (* C_PF0_ENTRY_TYPE_12 = "8'b00000000" *) 
  (* C_PF0_ENTRY_TYPE_13 = "8'b00000000" *) 
  (* C_PF0_ENTRY_TYPE_14 = "8'b00000000" *) 
  (* C_PF0_ENTRY_TYPE_15 = "8'b00000000" *) 
  (* C_PF0_ENTRY_TYPE_2 = "8'b01010101" *) 
  (* C_PF0_ENTRY_TYPE_3 = "8'b01010000" *) 
  (* C_PF0_ENTRY_TYPE_4 = "8'b00000000" *) 
  (* C_PF0_ENTRY_TYPE_5 = "8'b00000000" *) 
  (* C_PF0_ENTRY_TYPE_6 = "8'b00000000" *) 
  (* C_PF0_ENTRY_TYPE_7 = "8'b00000000" *) 
  (* C_PF0_ENTRY_TYPE_8 = "8'b00000000" *) 
  (* C_PF0_ENTRY_TYPE_9 = "8'b00000000" *) 
  (* C_PF0_ENTRY_VERSION_TYPE_0 = "8'b00000001" *) 
  (* C_PF0_ENTRY_VERSION_TYPE_1 = "8'b00000001" *) 
  (* C_PF0_ENTRY_VERSION_TYPE_10 = "8'b00000000" *) 
  (* C_PF0_ENTRY_VERSION_TYPE_11 = "8'b00000000" *) 
  (* C_PF0_ENTRY_VERSION_TYPE_12 = "8'b00000000" *) 
  (* C_PF0_ENTRY_VERSION_TYPE_13 = "8'b00000000" *) 
  (* C_PF0_ENTRY_VERSION_TYPE_14 = "8'b00000000" *) 
  (* C_PF0_ENTRY_VERSION_TYPE_15 = "8'b00000000" *) 
  (* C_PF0_ENTRY_VERSION_TYPE_2 = "8'b00000001" *) 
  (* C_PF0_ENTRY_VERSION_TYPE_3 = "8'b00000001" *) 
  (* C_PF0_ENTRY_VERSION_TYPE_4 = "8'b00000000" *) 
  (* C_PF0_ENTRY_VERSION_TYPE_5 = "8'b00000000" *) 
  (* C_PF0_ENTRY_VERSION_TYPE_6 = "8'b00000000" *) 
  (* C_PF0_ENTRY_VERSION_TYPE_7 = "8'b00000000" *) 
  (* C_PF0_ENTRY_VERSION_TYPE_8 = "8'b00000000" *) 
  (* C_PF0_ENTRY_VERSION_TYPE_9 = "8'b00000000" *) 
  (* C_PF0_HAS_UUID_ROM = "0" *) 
  (* C_PF0_HIGH_OFFSET = "0" *) 
  (* C_PF0_LOW_OFFSET = "28'b0000001000000000000100000000" *) 
  (* C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE = "4" *) 
  (* C_PF0_S_AXI_ADDR_WIDTH = "32" *) 
  (* C_PF0_S_AXI_DATA_WIDTH = "32" *) 
  (* C_PF0_UUID_ROM_INIT = "00000000,00000000,00000000,00000000" *) 
  (* C_PF1_BAR_INDEX = "2" *) 
  (* C_PF1_ENTRY_ADDR_0 = "48'b000000000000000000000010000000000000000000000000" *) 
  (* C_PF1_ENTRY_ADDR_1 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF1_ENTRY_ADDR_10 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF1_ENTRY_ADDR_11 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF1_ENTRY_ADDR_12 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF1_ENTRY_ADDR_13 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF1_ENTRY_ADDR_14 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF1_ENTRY_ADDR_15 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF1_ENTRY_ADDR_2 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF1_ENTRY_ADDR_3 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF1_ENTRY_ADDR_4 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF1_ENTRY_ADDR_5 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF1_ENTRY_ADDR_6 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF1_ENTRY_ADDR_7 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF1_ENTRY_ADDR_8 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF1_ENTRY_ADDR_9 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF1_ENTRY_BAR_0 = "2" *) 
  (* C_PF1_ENTRY_BAR_1 = "0" *) 
  (* C_PF1_ENTRY_BAR_10 = "0" *) 
  (* C_PF1_ENTRY_BAR_11 = "0" *) 
  (* C_PF1_ENTRY_BAR_12 = "0" *) 
  (* C_PF1_ENTRY_BAR_13 = "0" *) 
  (* C_PF1_ENTRY_BAR_14 = "0" *) 
  (* C_PF1_ENTRY_BAR_15 = "0" *) 
  (* C_PF1_ENTRY_BAR_2 = "0" *) 
  (* C_PF1_ENTRY_BAR_3 = "0" *) 
  (* C_PF1_ENTRY_BAR_4 = "0" *) 
  (* C_PF1_ENTRY_BAR_5 = "0" *) 
  (* C_PF1_ENTRY_BAR_6 = "0" *) 
  (* C_PF1_ENTRY_BAR_7 = "0" *) 
  (* C_PF1_ENTRY_BAR_8 = "0" *) 
  (* C_PF1_ENTRY_BAR_9 = "0" *) 
  (* C_PF1_ENTRY_MAJOR_VERSION_0 = "1" *) 
  (* C_PF1_ENTRY_MAJOR_VERSION_1 = "0" *) 
  (* C_PF1_ENTRY_MAJOR_VERSION_10 = "0" *) 
  (* C_PF1_ENTRY_MAJOR_VERSION_11 = "0" *) 
  (* C_PF1_ENTRY_MAJOR_VERSION_12 = "0" *) 
  (* C_PF1_ENTRY_MAJOR_VERSION_13 = "0" *) 
  (* C_PF1_ENTRY_MAJOR_VERSION_14 = "0" *) 
  (* C_PF1_ENTRY_MAJOR_VERSION_15 = "0" *) 
  (* C_PF1_ENTRY_MAJOR_VERSION_2 = "0" *) 
  (* C_PF1_ENTRY_MAJOR_VERSION_3 = "0" *) 
  (* C_PF1_ENTRY_MAJOR_VERSION_4 = "0" *) 
  (* C_PF1_ENTRY_MAJOR_VERSION_5 = "0" *) 
  (* C_PF1_ENTRY_MAJOR_VERSION_6 = "0" *) 
  (* C_PF1_ENTRY_MAJOR_VERSION_7 = "0" *) 
  (* C_PF1_ENTRY_MAJOR_VERSION_8 = "0" *) 
  (* C_PF1_ENTRY_MAJOR_VERSION_9 = "0" *) 
  (* C_PF1_ENTRY_MINOR_VERSION_0 = "0" *) 
  (* C_PF1_ENTRY_MINOR_VERSION_1 = "0" *) 
  (* C_PF1_ENTRY_MINOR_VERSION_10 = "0" *) 
  (* C_PF1_ENTRY_MINOR_VERSION_11 = "0" *) 
  (* C_PF1_ENTRY_MINOR_VERSION_12 = "0" *) 
  (* C_PF1_ENTRY_MINOR_VERSION_13 = "0" *) 
  (* C_PF1_ENTRY_MINOR_VERSION_14 = "0" *) 
  (* C_PF1_ENTRY_MINOR_VERSION_15 = "0" *) 
  (* C_PF1_ENTRY_MINOR_VERSION_2 = "0" *) 
  (* C_PF1_ENTRY_MINOR_VERSION_3 = "0" *) 
  (* C_PF1_ENTRY_MINOR_VERSION_4 = "0" *) 
  (* C_PF1_ENTRY_MINOR_VERSION_5 = "0" *) 
  (* C_PF1_ENTRY_MINOR_VERSION_6 = "0" *) 
  (* C_PF1_ENTRY_MINOR_VERSION_7 = "0" *) 
  (* C_PF1_ENTRY_MINOR_VERSION_8 = "0" *) 
  (* C_PF1_ENTRY_MINOR_VERSION_9 = "0" *) 
  (* C_PF1_ENTRY_RSVD0_0 = "4'b0001" *) 
  (* C_PF1_ENTRY_RSVD0_1 = "4'b0000" *) 
  (* C_PF1_ENTRY_RSVD0_10 = "4'b0000" *) 
  (* C_PF1_ENTRY_RSVD0_11 = "4'b0000" *) 
  (* C_PF1_ENTRY_RSVD0_12 = "4'b0000" *) 
  (* C_PF1_ENTRY_RSVD0_13 = "4'b0000" *) 
  (* C_PF1_ENTRY_RSVD0_14 = "4'b0000" *) 
  (* C_PF1_ENTRY_RSVD0_15 = "4'b0000" *) 
  (* C_PF1_ENTRY_RSVD0_2 = "4'b0000" *) 
  (* C_PF1_ENTRY_RSVD0_3 = "4'b0000" *) 
  (* C_PF1_ENTRY_RSVD0_4 = "4'b0000" *) 
  (* C_PF1_ENTRY_RSVD0_5 = "4'b0000" *) 
  (* C_PF1_ENTRY_RSVD0_6 = "4'b0000" *) 
  (* C_PF1_ENTRY_RSVD0_7 = "4'b0000" *) 
  (* C_PF1_ENTRY_RSVD0_8 = "4'b0000" *) 
  (* C_PF1_ENTRY_RSVD0_9 = "4'b0000" *) 
  (* C_PF1_ENTRY_TYPE_0 = "8'b01010011" *) 
  (* C_PF1_ENTRY_TYPE_1 = "8'b00000000" *) 
  (* C_PF1_ENTRY_TYPE_10 = "8'b00000000" *) 
  (* C_PF1_ENTRY_TYPE_11 = "8'b00000000" *) 
  (* C_PF1_ENTRY_TYPE_12 = "8'b00000000" *) 
  (* C_PF1_ENTRY_TYPE_13 = "8'b00000000" *) 
  (* C_PF1_ENTRY_TYPE_14 = "8'b00000000" *) 
  (* C_PF1_ENTRY_TYPE_15 = "8'b00000000" *) 
  (* C_PF1_ENTRY_TYPE_2 = "8'b00000000" *) 
  (* C_PF1_ENTRY_TYPE_3 = "8'b00000000" *) 
  (* C_PF1_ENTRY_TYPE_4 = "8'b00000000" *) 
  (* C_PF1_ENTRY_TYPE_5 = "8'b00000000" *) 
  (* C_PF1_ENTRY_TYPE_6 = "8'b00000000" *) 
  (* C_PF1_ENTRY_TYPE_7 = "8'b00000000" *) 
  (* C_PF1_ENTRY_TYPE_8 = "8'b00000000" *) 
  (* C_PF1_ENTRY_TYPE_9 = "8'b00000000" *) 
  (* C_PF1_ENTRY_VERSION_TYPE_0 = "8'b00000001" *) 
  (* C_PF1_ENTRY_VERSION_TYPE_1 = "8'b00000000" *) 
  (* C_PF1_ENTRY_VERSION_TYPE_10 = "8'b00000000" *) 
  (* C_PF1_ENTRY_VERSION_TYPE_11 = "8'b00000000" *) 
  (* C_PF1_ENTRY_VERSION_TYPE_12 = "8'b00000000" *) 
  (* C_PF1_ENTRY_VERSION_TYPE_13 = "8'b00000000" *) 
  (* C_PF1_ENTRY_VERSION_TYPE_14 = "8'b00000000" *) 
  (* C_PF1_ENTRY_VERSION_TYPE_15 = "8'b00000000" *) 
  (* C_PF1_ENTRY_VERSION_TYPE_2 = "8'b00000000" *) 
  (* C_PF1_ENTRY_VERSION_TYPE_3 = "8'b00000000" *) 
  (* C_PF1_ENTRY_VERSION_TYPE_4 = "8'b00000000" *) 
  (* C_PF1_ENTRY_VERSION_TYPE_5 = "8'b00000000" *) 
  (* C_PF1_ENTRY_VERSION_TYPE_6 = "8'b00000000" *) 
  (* C_PF1_ENTRY_VERSION_TYPE_7 = "8'b00000000" *) 
  (* C_PF1_ENTRY_VERSION_TYPE_8 = "8'b00000000" *) 
  (* C_PF1_ENTRY_VERSION_TYPE_9 = "8'b00000000" *) 
  (* C_PF1_HAS_UUID_ROM = "0" *) 
  (* C_PF1_HIGH_OFFSET = "0" *) 
  (* C_PF1_LOW_OFFSET = "28'b0000001000000000000100000000" *) 
  (* C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE = "1" *) 
  (* C_PF1_S_AXI_ADDR_WIDTH = "32" *) 
  (* C_PF1_S_AXI_DATA_WIDTH = "32" *) 
  (* C_PF1_UUID_ROM_INIT = "00000000,00000000,00000000,00000000" *) 
  (* C_PF2_BAR_INDEX = "0" *) 
  (* C_PF2_ENTRY_ADDR_0 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF2_ENTRY_ADDR_1 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF2_ENTRY_ADDR_10 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF2_ENTRY_ADDR_11 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF2_ENTRY_ADDR_12 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF2_ENTRY_ADDR_13 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF2_ENTRY_ADDR_14 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF2_ENTRY_ADDR_15 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF2_ENTRY_ADDR_2 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF2_ENTRY_ADDR_3 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF2_ENTRY_ADDR_4 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF2_ENTRY_ADDR_5 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF2_ENTRY_ADDR_6 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF2_ENTRY_ADDR_7 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF2_ENTRY_ADDR_8 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF2_ENTRY_ADDR_9 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF2_ENTRY_BAR_0 = "0" *) 
  (* C_PF2_ENTRY_BAR_1 = "0" *) 
  (* C_PF2_ENTRY_BAR_10 = "0" *) 
  (* C_PF2_ENTRY_BAR_11 = "0" *) 
  (* C_PF2_ENTRY_BAR_12 = "0" *) 
  (* C_PF2_ENTRY_BAR_13 = "0" *) 
  (* C_PF2_ENTRY_BAR_14 = "0" *) 
  (* C_PF2_ENTRY_BAR_15 = "0" *) 
  (* C_PF2_ENTRY_BAR_2 = "0" *) 
  (* C_PF2_ENTRY_BAR_3 = "0" *) 
  (* C_PF2_ENTRY_BAR_4 = "0" *) 
  (* C_PF2_ENTRY_BAR_5 = "0" *) 
  (* C_PF2_ENTRY_BAR_6 = "0" *) 
  (* C_PF2_ENTRY_BAR_7 = "0" *) 
  (* C_PF2_ENTRY_BAR_8 = "0" *) 
  (* C_PF2_ENTRY_BAR_9 = "0" *) 
  (* C_PF2_ENTRY_MAJOR_VERSION_0 = "0" *) 
  (* C_PF2_ENTRY_MAJOR_VERSION_1 = "0" *) 
  (* C_PF2_ENTRY_MAJOR_VERSION_10 = "0" *) 
  (* C_PF2_ENTRY_MAJOR_VERSION_11 = "0" *) 
  (* C_PF2_ENTRY_MAJOR_VERSION_12 = "0" *) 
  (* C_PF2_ENTRY_MAJOR_VERSION_13 = "0" *) 
  (* C_PF2_ENTRY_MAJOR_VERSION_14 = "0" *) 
  (* C_PF2_ENTRY_MAJOR_VERSION_15 = "0" *) 
  (* C_PF2_ENTRY_MAJOR_VERSION_2 = "0" *) 
  (* C_PF2_ENTRY_MAJOR_VERSION_3 = "0" *) 
  (* C_PF2_ENTRY_MAJOR_VERSION_4 = "0" *) 
  (* C_PF2_ENTRY_MAJOR_VERSION_5 = "0" *) 
  (* C_PF2_ENTRY_MAJOR_VERSION_6 = "0" *) 
  (* C_PF2_ENTRY_MAJOR_VERSION_7 = "0" *) 
  (* C_PF2_ENTRY_MAJOR_VERSION_8 = "0" *) 
  (* C_PF2_ENTRY_MAJOR_VERSION_9 = "0" *) 
  (* C_PF2_ENTRY_MINOR_VERSION_0 = "0" *) 
  (* C_PF2_ENTRY_MINOR_VERSION_1 = "0" *) 
  (* C_PF2_ENTRY_MINOR_VERSION_10 = "0" *) 
  (* C_PF2_ENTRY_MINOR_VERSION_11 = "0" *) 
  (* C_PF2_ENTRY_MINOR_VERSION_12 = "0" *) 
  (* C_PF2_ENTRY_MINOR_VERSION_13 = "0" *) 
  (* C_PF2_ENTRY_MINOR_VERSION_14 = "0" *) 
  (* C_PF2_ENTRY_MINOR_VERSION_15 = "0" *) 
  (* C_PF2_ENTRY_MINOR_VERSION_2 = "0" *) 
  (* C_PF2_ENTRY_MINOR_VERSION_3 = "0" *) 
  (* C_PF2_ENTRY_MINOR_VERSION_4 = "0" *) 
  (* C_PF2_ENTRY_MINOR_VERSION_5 = "0" *) 
  (* C_PF2_ENTRY_MINOR_VERSION_6 = "0" *) 
  (* C_PF2_ENTRY_MINOR_VERSION_7 = "0" *) 
  (* C_PF2_ENTRY_MINOR_VERSION_8 = "0" *) 
  (* C_PF2_ENTRY_MINOR_VERSION_9 = "0" *) 
  (* C_PF2_ENTRY_RSVD0_0 = "4'b0000" *) 
  (* C_PF2_ENTRY_RSVD0_1 = "4'b0000" *) 
  (* C_PF2_ENTRY_RSVD0_10 = "4'b0000" *) 
  (* C_PF2_ENTRY_RSVD0_11 = "4'b0000" *) 
  (* C_PF2_ENTRY_RSVD0_12 = "4'b0000" *) 
  (* C_PF2_ENTRY_RSVD0_13 = "4'b0000" *) 
  (* C_PF2_ENTRY_RSVD0_14 = "4'b0000" *) 
  (* C_PF2_ENTRY_RSVD0_15 = "4'b0000" *) 
  (* C_PF2_ENTRY_RSVD0_2 = "4'b0000" *) 
  (* C_PF2_ENTRY_RSVD0_3 = "4'b0000" *) 
  (* C_PF2_ENTRY_RSVD0_4 = "4'b0000" *) 
  (* C_PF2_ENTRY_RSVD0_5 = "4'b0000" *) 
  (* C_PF2_ENTRY_RSVD0_6 = "4'b0000" *) 
  (* C_PF2_ENTRY_RSVD0_7 = "4'b0000" *) 
  (* C_PF2_ENTRY_RSVD0_8 = "4'b0000" *) 
  (* C_PF2_ENTRY_RSVD0_9 = "4'b0000" *) 
  (* C_PF2_ENTRY_TYPE_0 = "8'b00000000" *) 
  (* C_PF2_ENTRY_TYPE_1 = "8'b00000000" *) 
  (* C_PF2_ENTRY_TYPE_10 = "8'b00000000" *) 
  (* C_PF2_ENTRY_TYPE_11 = "8'b00000000" *) 
  (* C_PF2_ENTRY_TYPE_12 = "8'b00000000" *) 
  (* C_PF2_ENTRY_TYPE_13 = "8'b00000000" *) 
  (* C_PF2_ENTRY_TYPE_14 = "8'b00000000" *) 
  (* C_PF2_ENTRY_TYPE_15 = "8'b00000000" *) 
  (* C_PF2_ENTRY_TYPE_2 = "8'b00000000" *) 
  (* C_PF2_ENTRY_TYPE_3 = "8'b00000000" *) 
  (* C_PF2_ENTRY_TYPE_4 = "8'b00000000" *) 
  (* C_PF2_ENTRY_TYPE_5 = "8'b00000000" *) 
  (* C_PF2_ENTRY_TYPE_6 = "8'b00000000" *) 
  (* C_PF2_ENTRY_TYPE_7 = "8'b00000000" *) 
  (* C_PF2_ENTRY_TYPE_8 = "8'b00000000" *) 
  (* C_PF2_ENTRY_TYPE_9 = "8'b00000000" *) 
  (* C_PF2_ENTRY_VERSION_TYPE_0 = "8'b00000000" *) 
  (* C_PF2_ENTRY_VERSION_TYPE_1 = "8'b00000000" *) 
  (* C_PF2_ENTRY_VERSION_TYPE_10 = "8'b00000000" *) 
  (* C_PF2_ENTRY_VERSION_TYPE_11 = "8'b00000000" *) 
  (* C_PF2_ENTRY_VERSION_TYPE_12 = "8'b00000000" *) 
  (* C_PF2_ENTRY_VERSION_TYPE_13 = "8'b00000000" *) 
  (* C_PF2_ENTRY_VERSION_TYPE_14 = "8'b00000000" *) 
  (* C_PF2_ENTRY_VERSION_TYPE_15 = "8'b00000000" *) 
  (* C_PF2_ENTRY_VERSION_TYPE_2 = "8'b00000000" *) 
  (* C_PF2_ENTRY_VERSION_TYPE_3 = "8'b00000000" *) 
  (* C_PF2_ENTRY_VERSION_TYPE_4 = "8'b00000000" *) 
  (* C_PF2_ENTRY_VERSION_TYPE_5 = "8'b00000000" *) 
  (* C_PF2_ENTRY_VERSION_TYPE_6 = "8'b00000000" *) 
  (* C_PF2_ENTRY_VERSION_TYPE_7 = "8'b00000000" *) 
  (* C_PF2_ENTRY_VERSION_TYPE_8 = "8'b00000000" *) 
  (* C_PF2_ENTRY_VERSION_TYPE_9 = "8'b00000000" *) 
  (* C_PF2_HAS_UUID_ROM = "0" *) 
  (* C_PF2_HIGH_OFFSET = "0" *) 
  (* C_PF2_LOW_OFFSET = "28'b0000000000000000000000000000" *) 
  (* C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE = "1" *) 
  (* C_PF2_S_AXI_ADDR_WIDTH = "32" *) 
  (* C_PF2_S_AXI_DATA_WIDTH = "32" *) 
  (* C_PF2_UUID_ROM_INIT = "00000000,00000000,00000000,00000000" *) 
  (* C_PF3_BAR_INDEX = "0" *) 
  (* C_PF3_ENTRY_ADDR_0 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF3_ENTRY_ADDR_1 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF3_ENTRY_ADDR_10 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF3_ENTRY_ADDR_11 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF3_ENTRY_ADDR_12 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF3_ENTRY_ADDR_13 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF3_ENTRY_ADDR_14 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF3_ENTRY_ADDR_15 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF3_ENTRY_ADDR_2 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF3_ENTRY_ADDR_3 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF3_ENTRY_ADDR_4 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF3_ENTRY_ADDR_5 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF3_ENTRY_ADDR_6 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF3_ENTRY_ADDR_7 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF3_ENTRY_ADDR_8 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF3_ENTRY_ADDR_9 = "48'b000000000000000000000000000000000000000000000000" *) 
  (* C_PF3_ENTRY_BAR_0 = "0" *) 
  (* C_PF3_ENTRY_BAR_1 = "0" *) 
  (* C_PF3_ENTRY_BAR_10 = "0" *) 
  (* C_PF3_ENTRY_BAR_11 = "0" *) 
  (* C_PF3_ENTRY_BAR_12 = "0" *) 
  (* C_PF3_ENTRY_BAR_13 = "0" *) 
  (* C_PF3_ENTRY_BAR_14 = "0" *) 
  (* C_PF3_ENTRY_BAR_15 = "0" *) 
  (* C_PF3_ENTRY_BAR_2 = "0" *) 
  (* C_PF3_ENTRY_BAR_3 = "0" *) 
  (* C_PF3_ENTRY_BAR_4 = "0" *) 
  (* C_PF3_ENTRY_BAR_5 = "0" *) 
  (* C_PF3_ENTRY_BAR_6 = "0" *) 
  (* C_PF3_ENTRY_BAR_7 = "0" *) 
  (* C_PF3_ENTRY_BAR_8 = "0" *) 
  (* C_PF3_ENTRY_BAR_9 = "0" *) 
  (* C_PF3_ENTRY_MAJOR_VERSION_0 = "0" *) 
  (* C_PF3_ENTRY_MAJOR_VERSION_1 = "0" *) 
  (* C_PF3_ENTRY_MAJOR_VERSION_10 = "0" *) 
  (* C_PF3_ENTRY_MAJOR_VERSION_11 = "0" *) 
  (* C_PF3_ENTRY_MAJOR_VERSION_12 = "0" *) 
  (* C_PF3_ENTRY_MAJOR_VERSION_13 = "0" *) 
  (* C_PF3_ENTRY_MAJOR_VERSION_14 = "0" *) 
  (* C_PF3_ENTRY_MAJOR_VERSION_15 = "0" *) 
  (* C_PF3_ENTRY_MAJOR_VERSION_2 = "0" *) 
  (* C_PF3_ENTRY_MAJOR_VERSION_3 = "0" *) 
  (* C_PF3_ENTRY_MAJOR_VERSION_4 = "0" *) 
  (* C_PF3_ENTRY_MAJOR_VERSION_5 = "0" *) 
  (* C_PF3_ENTRY_MAJOR_VERSION_6 = "0" *) 
  (* C_PF3_ENTRY_MAJOR_VERSION_7 = "0" *) 
  (* C_PF3_ENTRY_MAJOR_VERSION_8 = "0" *) 
  (* C_PF3_ENTRY_MAJOR_VERSION_9 = "0" *) 
  (* C_PF3_ENTRY_MINOR_VERSION_0 = "0" *) 
  (* C_PF3_ENTRY_MINOR_VERSION_1 = "0" *) 
  (* C_PF3_ENTRY_MINOR_VERSION_10 = "0" *) 
  (* C_PF3_ENTRY_MINOR_VERSION_11 = "0" *) 
  (* C_PF3_ENTRY_MINOR_VERSION_12 = "0" *) 
  (* C_PF3_ENTRY_MINOR_VERSION_13 = "0" *) 
  (* C_PF3_ENTRY_MINOR_VERSION_14 = "0" *) 
  (* C_PF3_ENTRY_MINOR_VERSION_15 = "0" *) 
  (* C_PF3_ENTRY_MINOR_VERSION_2 = "0" *) 
  (* C_PF3_ENTRY_MINOR_VERSION_3 = "0" *) 
  (* C_PF3_ENTRY_MINOR_VERSION_4 = "0" *) 
  (* C_PF3_ENTRY_MINOR_VERSION_5 = "0" *) 
  (* C_PF3_ENTRY_MINOR_VERSION_6 = "0" *) 
  (* C_PF3_ENTRY_MINOR_VERSION_7 = "0" *) 
  (* C_PF3_ENTRY_MINOR_VERSION_8 = "0" *) 
  (* C_PF3_ENTRY_MINOR_VERSION_9 = "0" *) 
  (* C_PF3_ENTRY_RSVD0_0 = "4'b0000" *) 
  (* C_PF3_ENTRY_RSVD0_1 = "4'b0000" *) 
  (* C_PF3_ENTRY_RSVD0_10 = "4'b0000" *) 
  (* C_PF3_ENTRY_RSVD0_11 = "4'b0000" *) 
  (* C_PF3_ENTRY_RSVD0_12 = "4'b0000" *) 
  (* C_PF3_ENTRY_RSVD0_13 = "4'b0000" *) 
  (* C_PF3_ENTRY_RSVD0_14 = "4'b0000" *) 
  (* C_PF3_ENTRY_RSVD0_15 = "4'b0000" *) 
  (* C_PF3_ENTRY_RSVD0_2 = "4'b0000" *) 
  (* C_PF3_ENTRY_RSVD0_3 = "4'b0000" *) 
  (* C_PF3_ENTRY_RSVD0_4 = "4'b0000" *) 
  (* C_PF3_ENTRY_RSVD0_5 = "4'b0000" *) 
  (* C_PF3_ENTRY_RSVD0_6 = "4'b0000" *) 
  (* C_PF3_ENTRY_RSVD0_7 = "4'b0000" *) 
  (* C_PF3_ENTRY_RSVD0_8 = "4'b0000" *) 
  (* C_PF3_ENTRY_RSVD0_9 = "4'b0000" *) 
  (* C_PF3_ENTRY_TYPE_0 = "8'b00000000" *) 
  (* C_PF3_ENTRY_TYPE_1 = "8'b00000000" *) 
  (* C_PF3_ENTRY_TYPE_10 = "8'b00000000" *) 
  (* C_PF3_ENTRY_TYPE_11 = "8'b00000000" *) 
  (* C_PF3_ENTRY_TYPE_12 = "8'b00000000" *) 
  (* C_PF3_ENTRY_TYPE_13 = "8'b00000000" *) 
  (* C_PF3_ENTRY_TYPE_14 = "8'b00000000" *) 
  (* C_PF3_ENTRY_TYPE_15 = "8'b00000000" *) 
  (* C_PF3_ENTRY_TYPE_2 = "8'b00000000" *) 
  (* C_PF3_ENTRY_TYPE_3 = "8'b00000000" *) 
  (* C_PF3_ENTRY_TYPE_4 = "8'b00000000" *) 
  (* C_PF3_ENTRY_TYPE_5 = "8'b00000000" *) 
  (* C_PF3_ENTRY_TYPE_6 = "8'b00000000" *) 
  (* C_PF3_ENTRY_TYPE_7 = "8'b00000000" *) 
  (* C_PF3_ENTRY_TYPE_8 = "8'b00000000" *) 
  (* C_PF3_ENTRY_TYPE_9 = "8'b00000000" *) 
  (* C_PF3_ENTRY_VERSION_TYPE_0 = "8'b00000000" *) 
  (* C_PF3_ENTRY_VERSION_TYPE_1 = "8'b00000000" *) 
  (* C_PF3_ENTRY_VERSION_TYPE_10 = "8'b00000000" *) 
  (* C_PF3_ENTRY_VERSION_TYPE_11 = "8'b00000000" *) 
  (* C_PF3_ENTRY_VERSION_TYPE_12 = "8'b00000000" *) 
  (* C_PF3_ENTRY_VERSION_TYPE_13 = "8'b00000000" *) 
  (* C_PF3_ENTRY_VERSION_TYPE_14 = "8'b00000000" *) 
  (* C_PF3_ENTRY_VERSION_TYPE_15 = "8'b00000000" *) 
  (* C_PF3_ENTRY_VERSION_TYPE_2 = "8'b00000000" *) 
  (* C_PF3_ENTRY_VERSION_TYPE_3 = "8'b00000000" *) 
  (* C_PF3_ENTRY_VERSION_TYPE_4 = "8'b00000000" *) 
  (* C_PF3_ENTRY_VERSION_TYPE_5 = "8'b00000000" *) 
  (* C_PF3_ENTRY_VERSION_TYPE_6 = "8'b00000000" *) 
  (* C_PF3_ENTRY_VERSION_TYPE_7 = "8'b00000000" *) 
  (* C_PF3_ENTRY_VERSION_TYPE_8 = "8'b00000000" *) 
  (* C_PF3_ENTRY_VERSION_TYPE_9 = "8'b00000000" *) 
  (* C_PF3_HAS_UUID_ROM = "0" *) 
  (* C_PF3_HIGH_OFFSET = "0" *) 
  (* C_PF3_LOW_OFFSET = "28'b0000000000000000000000000000" *) 
  (* C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE = "1" *) 
  (* C_PF3_S_AXI_ADDR_WIDTH = "32" *) 
  (* C_PF3_S_AXI_DATA_WIDTH = "32" *) 
  (* C_PF3_UUID_ROM_INIT = "00000000,00000000,00000000,00000000" *) 
  (* C_XDEVICEFAMILY = "versal" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery inst
       (.aclk_ctrl(aclk_ctrl),
        .aclk_pcie(aclk_pcie),
        .aresetn_ctrl(aresetn_ctrl),
        .aresetn_pcie(1'b0),
        .m_pcie4_cfg_ext_function_number(NLW_inst_m_pcie4_cfg_ext_function_number_UNCONNECTED[7:0]),
        .m_pcie4_cfg_ext_read_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_pcie4_cfg_ext_read_data_valid(1'b0),
        .m_pcie4_cfg_ext_read_received(NLW_inst_m_pcie4_cfg_ext_read_received_UNCONNECTED),
        .m_pcie4_cfg_ext_register_number(NLW_inst_m_pcie4_cfg_ext_register_number_UNCONNECTED[9:0]),
        .m_pcie4_cfg_ext_write_byte_enable(NLW_inst_m_pcie4_cfg_ext_write_byte_enable_UNCONNECTED[3:0]),
        .m_pcie4_cfg_ext_write_data(NLW_inst_m_pcie4_cfg_ext_write_data_UNCONNECTED[31:0]),
        .m_pcie4_cfg_ext_write_received(NLW_inst_m_pcie4_cfg_ext_write_received_UNCONNECTED),
        .s_axi_ctrl_pf0_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_ctrl_pf0_ARADDR[6:2],1'b0,1'b0}),
        .s_axi_ctrl_pf0_ARREADY(s_axi_ctrl_pf0_ARREADY),
        .s_axi_ctrl_pf0_ARVALID(s_axi_ctrl_pf0_ARVALID),
        .s_axi_ctrl_pf0_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_ctrl_pf0_AWADDR[6:2],1'b0,1'b0}),
        .s_axi_ctrl_pf0_AWREADY(s_axi_ctrl_pf0_AWREADY),
        .s_axi_ctrl_pf0_AWVALID(s_axi_ctrl_pf0_AWVALID),
        .s_axi_ctrl_pf0_BREADY(s_axi_ctrl_pf0_BREADY),
        .s_axi_ctrl_pf0_BRESP(NLW_inst_s_axi_ctrl_pf0_BRESP_UNCONNECTED[1:0]),
        .s_axi_ctrl_pf0_BVALID(s_axi_ctrl_pf0_BVALID),
        .s_axi_ctrl_pf0_RDATA({NLW_inst_s_axi_ctrl_pf0_RDATA_UNCONNECTED[31:30],\^s_axi_ctrl_pf0_RDATA }),
        .s_axi_ctrl_pf0_RREADY(s_axi_ctrl_pf0_RREADY),
        .s_axi_ctrl_pf0_RRESP(NLW_inst_s_axi_ctrl_pf0_RRESP_UNCONNECTED[1:0]),
        .s_axi_ctrl_pf0_RVALID(s_axi_ctrl_pf0_RVALID),
        .s_axi_ctrl_pf0_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_pf0_WREADY(s_axi_ctrl_pf0_WREADY),
        .s_axi_ctrl_pf0_WSTRB({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_pf0_WVALID(s_axi_ctrl_pf0_WVALID),
        .s_axi_ctrl_pf1_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_ctrl_pf1_ARADDR[6:2],1'b0,1'b0}),
        .s_axi_ctrl_pf1_ARREADY(s_axi_ctrl_pf1_ARREADY),
        .s_axi_ctrl_pf1_ARVALID(s_axi_ctrl_pf1_ARVALID),
        .s_axi_ctrl_pf1_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_ctrl_pf1_AWADDR[6:2],1'b0,1'b0}),
        .s_axi_ctrl_pf1_AWREADY(s_axi_ctrl_pf1_AWREADY),
        .s_axi_ctrl_pf1_AWVALID(s_axi_ctrl_pf1_AWVALID),
        .s_axi_ctrl_pf1_BREADY(s_axi_ctrl_pf1_BREADY),
        .s_axi_ctrl_pf1_BRESP(NLW_inst_s_axi_ctrl_pf1_BRESP_UNCONNECTED[1:0]),
        .s_axi_ctrl_pf1_BVALID(s_axi_ctrl_pf1_BVALID),
        .s_axi_ctrl_pf1_RDATA({NLW_inst_s_axi_ctrl_pf1_RDATA_UNCONNECTED[31:29],\^s_axi_ctrl_pf1_RDATA }),
        .s_axi_ctrl_pf1_RREADY(s_axi_ctrl_pf1_RREADY),
        .s_axi_ctrl_pf1_RRESP(NLW_inst_s_axi_ctrl_pf1_RRESP_UNCONNECTED[1:0]),
        .s_axi_ctrl_pf1_RVALID(s_axi_ctrl_pf1_RVALID),
        .s_axi_ctrl_pf1_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_pf1_WREADY(s_axi_ctrl_pf1_WREADY),
        .s_axi_ctrl_pf1_WSTRB({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_pf1_WVALID(s_axi_ctrl_pf1_WVALID),
        .s_axi_ctrl_pf2_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_pf2_ARREADY(NLW_inst_s_axi_ctrl_pf2_ARREADY_UNCONNECTED),
        .s_axi_ctrl_pf2_ARVALID(1'b0),
        .s_axi_ctrl_pf2_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_pf2_AWREADY(NLW_inst_s_axi_ctrl_pf2_AWREADY_UNCONNECTED),
        .s_axi_ctrl_pf2_AWVALID(1'b0),
        .s_axi_ctrl_pf2_BREADY(1'b0),
        .s_axi_ctrl_pf2_BRESP(NLW_inst_s_axi_ctrl_pf2_BRESP_UNCONNECTED[1:0]),
        .s_axi_ctrl_pf2_BVALID(NLW_inst_s_axi_ctrl_pf2_BVALID_UNCONNECTED),
        .s_axi_ctrl_pf2_RDATA(NLW_inst_s_axi_ctrl_pf2_RDATA_UNCONNECTED[31:0]),
        .s_axi_ctrl_pf2_RREADY(1'b0),
        .s_axi_ctrl_pf2_RRESP(NLW_inst_s_axi_ctrl_pf2_RRESP_UNCONNECTED[1:0]),
        .s_axi_ctrl_pf2_RVALID(NLW_inst_s_axi_ctrl_pf2_RVALID_UNCONNECTED),
        .s_axi_ctrl_pf2_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_pf2_WREADY(NLW_inst_s_axi_ctrl_pf2_WREADY_UNCONNECTED),
        .s_axi_ctrl_pf2_WSTRB({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_pf2_WVALID(1'b0),
        .s_axi_ctrl_pf3_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_pf3_ARREADY(NLW_inst_s_axi_ctrl_pf3_ARREADY_UNCONNECTED),
        .s_axi_ctrl_pf3_ARVALID(1'b0),
        .s_axi_ctrl_pf3_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_pf3_AWREADY(NLW_inst_s_axi_ctrl_pf3_AWREADY_UNCONNECTED),
        .s_axi_ctrl_pf3_AWVALID(1'b0),
        .s_axi_ctrl_pf3_BREADY(1'b0),
        .s_axi_ctrl_pf3_BRESP(NLW_inst_s_axi_ctrl_pf3_BRESP_UNCONNECTED[1:0]),
        .s_axi_ctrl_pf3_BVALID(NLW_inst_s_axi_ctrl_pf3_BVALID_UNCONNECTED),
        .s_axi_ctrl_pf3_RDATA(NLW_inst_s_axi_ctrl_pf3_RDATA_UNCONNECTED[31:0]),
        .s_axi_ctrl_pf3_RREADY(1'b0),
        .s_axi_ctrl_pf3_RRESP(NLW_inst_s_axi_ctrl_pf3_RRESP_UNCONNECTED[1:0]),
        .s_axi_ctrl_pf3_RVALID(NLW_inst_s_axi_ctrl_pf3_RVALID_UNCONNECTED),
        .s_axi_ctrl_pf3_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_pf3_WREADY(NLW_inst_s_axi_ctrl_pf3_WREADY_UNCONNECTED),
        .s_axi_ctrl_pf3_WSTRB({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_pf3_WVALID(1'b0),
        .s_pcie4_cfg_ext_function_number({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_pcie4_cfg_ext_function_number[1:0]}),
        .s_pcie4_cfg_ext_read_data({NLW_inst_s_pcie4_cfg_ext_read_data_UNCONNECTED[31:26],\^s_pcie4_cfg_ext_read_data }),
        .s_pcie4_cfg_ext_read_data_valid(s_pcie4_cfg_ext_read_data_valid),
        .s_pcie4_cfg_ext_read_received(s_pcie4_cfg_ext_read_received),
        .s_pcie4_cfg_ext_register_number(s_pcie4_cfg_ext_register_number),
        .s_pcie4_cfg_ext_write_byte_enable({1'b0,1'b0,1'b0,1'b0}),
        .s_pcie4_cfg_ext_write_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_pcie4_cfg_ext_write_received(1'b0));
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
