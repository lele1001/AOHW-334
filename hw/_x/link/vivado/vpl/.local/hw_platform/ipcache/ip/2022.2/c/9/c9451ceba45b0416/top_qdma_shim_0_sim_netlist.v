// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Dec  5 00:21:05 2022
// Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_qdma_shim_0_sim_netlist.v
// Design      : top_qdma_shim_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvc1902-vsvd1760-2MP-e-S
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qdma_versal_shim
   (Q,
    usr_irq_ack,
    \usr_irq_in_vec_reg[3]_0 ,
    \usr_irq_in_vec_reg[4]_0 ,
    usr_irq_in_vld,
    usr_irq_req,
    clk,
    usr_irq_out_ack,
    rstn);
  output [2:0]Q;
  output [15:0]usr_irq_ack;
  output \usr_irq_in_vec_reg[3]_0 ;
  output \usr_irq_in_vec_reg[4]_0 ;
  output usr_irq_in_vld;
  input [15:0]usr_irq_req;
  input clk;
  input usr_irq_out_ack;
  input rstn;

  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire [2:0]Q;
  wire clk;
  wire rstn;
  wire [1:0]state;
  wire [1:0]state__0;
  wire [15:0]usr_irq_ack;
  wire [15:0]usr_irq_ack1_in;
  wire \usr_irq_ack[15]_i_1_n_0 ;
  wire \usr_irq_ack[15]_i_2_n_0 ;
  wire [3:0]usr_irq_ack_cpy;
  wire \usr_irq_ack_cpy[3]_i_1_n_0 ;
  wire \usr_irq_ack_cpy_reg_n_0_[0] ;
  wire \usr_irq_ack_cpy_reg_n_0_[1] ;
  wire \usr_irq_ack_cpy_reg_n_0_[2] ;
  wire \usr_irq_ack_cpy_reg_n_0_[3] ;
  wire \usr_irq_in_vec[0]_i_1_n_0 ;
  wire \usr_irq_in_vec[0]_i_2_n_0 ;
  wire \usr_irq_in_vec[0]_i_3_n_0 ;
  wire \usr_irq_in_vec[0]_i_4_n_0 ;
  wire \usr_irq_in_vec[0]_i_5_n_0 ;
  wire \usr_irq_in_vec[0]_i_6_n_0 ;
  wire \usr_irq_in_vec[1]_i_1_n_0 ;
  wire \usr_irq_in_vec[1]_i_1_n_1 ;
  wire \usr_irq_in_vec[1]_i_2_n_0 ;
  wire \usr_irq_in_vec[1]_i_3_n_0 ;
  wire \usr_irq_in_vec[1]_i_4_n_0 ;
  wire \usr_irq_in_vec[1]_i_5_n_0 ;
  wire \usr_irq_in_vec[2]_i_1_n_0 ;
  wire \usr_irq_in_vec[2]_i_2_n_0 ;
  wire \usr_irq_in_vec[2]_i_3_n_0 ;
  wire \usr_irq_in_vec[2]_i_4_n_0 ;
  wire \usr_irq_in_vec[3]_i_1_n_0 ;
  wire \usr_irq_in_vec[3]_i_2_n_0 ;
  wire \usr_irq_in_vec[3]_i_3_n_0 ;
  wire \usr_irq_in_vec_reg[3]_0 ;
  wire \usr_irq_in_vec_reg[4]_0 ;
  wire usr_irq_in_vld;
  wire usr_irq_in_vld_i_1_n_0;
  wire usr_irq_in_vld_i_2_n_0;
  wire usr_irq_in_vld_i_3_n_0;
  wire usr_irq_in_vld_i_4_n_0;
  wire usr_irq_in_vld_i_5_n_0;
  wire usr_irq_in_vld_i_6_n_0;
  wire usr_irq_in_vld_i_7_n_0;
  wire usr_irq_in_vld_i_8_n_0;
  wire usr_irq_out_ack;
  wire [15:0]usr_irq_req;
  wire [15:0]usr_irq_req_cdc;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFC0C0A0A)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(usr_irq_out_ack),
        .I2(state[0]),
        .I3(usr_irq_in_vld_i_3_n_0),
        .I4(state[1]),
        .O(state__0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(usr_irq_req_cdc[0]),
        .I1(usr_irq_req_cdc[1]),
        .I2(\usr_irq_in_vec[3]_i_3_n_0 ),
        .I3(\usr_irq_in_vec[3]_i_2_n_0 ),
        .I4(\usr_irq_in_vec[1]_i_3_n_0 ),
        .I5(\usr_irq_in_vec[2]_i_3_n_0 ),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0FAACCFF)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(usr_irq_in_vld_i_4_n_0),
        .I1(usr_irq_out_ack),
        .I2(usr_irq_in_vld_i_3_n_0),
        .I3(state[1]),
        .I4(state[0]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hB8CC)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(usr_irq_in_vld_i_3_n_0),
        .I1(state[0]),
        .I2(usr_irq_out_ack),
        .I3(state[1]),
        .O(state__0[1]));
  (* FSM_ENCODED_STATES = "iSTATE:10,iSTATE0:01,iSTATE1:00,iSTATE2:11" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(\FSM_sequential_state[1]_i_1_n_0 ),
        .D(state__0[0]),
        .Q(state[0]),
        .R(\usr_irq_ack[15]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:10,iSTATE0:01,iSTATE1:00,iSTATE2:11" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(\FSM_sequential_state[1]_i_1_n_0 ),
        .D(state__0[1]),
        .Q(state[1]),
        .R(\usr_irq_ack[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \usr_irq_ack[0]_i_1 
       (.I0(\usr_irq_in_vec_reg[3]_0 ),
        .I1(state[0]),
        .I2(\usr_irq_in_vec_reg[4]_0 ),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(usr_irq_ack1_in[0]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \usr_irq_ack[10]_i_1 
       (.I0(\usr_irq_in_vec_reg[3]_0 ),
        .I1(state[0]),
        .I2(\usr_irq_in_vec_reg[4]_0 ),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(usr_irq_ack1_in[10]));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \usr_irq_ack[11]_i_1 
       (.I0(\usr_irq_in_vec_reg[3]_0 ),
        .I1(state[0]),
        .I2(\usr_irq_in_vec_reg[4]_0 ),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(usr_irq_ack1_in[11]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \usr_irq_ack[12]_i_1 
       (.I0(\usr_irq_in_vec_reg[3]_0 ),
        .I1(state[0]),
        .I2(\usr_irq_in_vec_reg[4]_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(usr_irq_ack1_in[12]));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \usr_irq_ack[13]_i_1 
       (.I0(\usr_irq_in_vec_reg[3]_0 ),
        .I1(state[0]),
        .I2(\usr_irq_in_vec_reg[4]_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(usr_irq_ack1_in[13]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \usr_irq_ack[14]_i_1 
       (.I0(\usr_irq_in_vec_reg[3]_0 ),
        .I1(state[0]),
        .I2(\usr_irq_in_vec_reg[4]_0 ),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(usr_irq_ack1_in[14]));
  LUT1 #(
    .INIT(2'h1)) 
    \usr_irq_ack[15]_i_1 
       (.I0(rstn),
        .O(\usr_irq_ack[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \usr_irq_ack[15]_i_2 
       (.I0(state[0]),
        .I1(usr_irq_out_ack),
        .I2(state[1]),
        .O(\usr_irq_ack[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \usr_irq_ack[15]_i_3 
       (.I0(\usr_irq_in_vec_reg[3]_0 ),
        .I1(state[0]),
        .I2(\usr_irq_in_vec_reg[4]_0 ),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(usr_irq_ack1_in[15]));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \usr_irq_ack[1]_i_1 
       (.I0(\usr_irq_in_vec_reg[3]_0 ),
        .I1(state[0]),
        .I2(\usr_irq_in_vec_reg[4]_0 ),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(usr_irq_ack1_in[1]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \usr_irq_ack[2]_i_1 
       (.I0(\usr_irq_in_vec_reg[3]_0 ),
        .I1(state[0]),
        .I2(\usr_irq_in_vec_reg[4]_0 ),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(usr_irq_ack1_in[2]));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \usr_irq_ack[3]_i_1 
       (.I0(\usr_irq_in_vec_reg[3]_0 ),
        .I1(state[0]),
        .I2(\usr_irq_in_vec_reg[4]_0 ),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(usr_irq_ack1_in[3]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \usr_irq_ack[4]_i_1 
       (.I0(\usr_irq_in_vec_reg[3]_0 ),
        .I1(state[0]),
        .I2(\usr_irq_in_vec_reg[4]_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(usr_irq_ack1_in[4]));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \usr_irq_ack[5]_i_1 
       (.I0(\usr_irq_in_vec_reg[3]_0 ),
        .I1(state[0]),
        .I2(\usr_irq_in_vec_reg[4]_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(usr_irq_ack1_in[5]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \usr_irq_ack[6]_i_1 
       (.I0(\usr_irq_in_vec_reg[3]_0 ),
        .I1(state[0]),
        .I2(\usr_irq_in_vec_reg[4]_0 ),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(usr_irq_ack1_in[6]));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \usr_irq_ack[7]_i_1 
       (.I0(\usr_irq_in_vec_reg[3]_0 ),
        .I1(state[0]),
        .I2(\usr_irq_in_vec_reg[4]_0 ),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(usr_irq_ack1_in[7]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \usr_irq_ack[8]_i_1 
       (.I0(\usr_irq_in_vec_reg[3]_0 ),
        .I1(state[0]),
        .I2(\usr_irq_in_vec_reg[4]_0 ),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(usr_irq_ack1_in[8]));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \usr_irq_ack[9]_i_1 
       (.I0(\usr_irq_in_vec_reg[3]_0 ),
        .I1(state[0]),
        .I2(\usr_irq_in_vec_reg[4]_0 ),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(usr_irq_ack1_in[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \usr_irq_ack_cpy[0]_i_1 
       (.I0(state[1]),
        .I1(Q[0]),
        .O(usr_irq_ack_cpy[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \usr_irq_ack_cpy[1]_i_1 
       (.I0(state[1]),
        .I1(Q[1]),
        .O(usr_irq_ack_cpy[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \usr_irq_ack_cpy[2]_i_1 
       (.I0(state[1]),
        .I1(Q[2]),
        .O(usr_irq_ack_cpy[2]));
  LUT3 #(
    .INIT(8'h0D)) 
    \usr_irq_ack_cpy[3]_i_1 
       (.I0(state[1]),
        .I1(usr_irq_out_ack),
        .I2(state[0]),
        .O(\usr_irq_ack_cpy[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \usr_irq_ack_cpy[3]_i_2 
       (.I0(state[1]),
        .I1(\usr_irq_in_vec_reg[3]_0 ),
        .O(usr_irq_ack_cpy[3]));
  FDRE \usr_irq_ack_cpy_reg[0] 
       (.C(clk),
        .CE(\usr_irq_ack_cpy[3]_i_1_n_0 ),
        .D(usr_irq_ack_cpy[0]),
        .Q(\usr_irq_ack_cpy_reg_n_0_[0] ),
        .R(\usr_irq_ack[15]_i_1_n_0 ));
  FDRE \usr_irq_ack_cpy_reg[1] 
       (.C(clk),
        .CE(\usr_irq_ack_cpy[3]_i_1_n_0 ),
        .D(usr_irq_ack_cpy[1]),
        .Q(\usr_irq_ack_cpy_reg_n_0_[1] ),
        .R(\usr_irq_ack[15]_i_1_n_0 ));
  FDRE \usr_irq_ack_cpy_reg[2] 
       (.C(clk),
        .CE(\usr_irq_ack_cpy[3]_i_1_n_0 ),
        .D(usr_irq_ack_cpy[2]),
        .Q(\usr_irq_ack_cpy_reg_n_0_[2] ),
        .R(\usr_irq_ack[15]_i_1_n_0 ));
  FDRE \usr_irq_ack_cpy_reg[3] 
       (.C(clk),
        .CE(\usr_irq_ack_cpy[3]_i_1_n_0 ),
        .D(usr_irq_ack_cpy[3]),
        .Q(\usr_irq_ack_cpy_reg_n_0_[3] ),
        .R(\usr_irq_ack[15]_i_1_n_0 ));
  FDRE \usr_irq_ack_reg[0] 
       (.C(clk),
        .CE(\usr_irq_ack[15]_i_2_n_0 ),
        .D(usr_irq_ack1_in[0]),
        .Q(usr_irq_ack[0]),
        .R(\usr_irq_ack[15]_i_1_n_0 ));
  FDRE \usr_irq_ack_reg[10] 
       (.C(clk),
        .CE(\usr_irq_ack[15]_i_2_n_0 ),
        .D(usr_irq_ack1_in[10]),
        .Q(usr_irq_ack[10]),
        .R(\usr_irq_ack[15]_i_1_n_0 ));
  FDRE \usr_irq_ack_reg[11] 
       (.C(clk),
        .CE(\usr_irq_ack[15]_i_2_n_0 ),
        .D(usr_irq_ack1_in[11]),
        .Q(usr_irq_ack[11]),
        .R(\usr_irq_ack[15]_i_1_n_0 ));
  FDRE \usr_irq_ack_reg[12] 
       (.C(clk),
        .CE(\usr_irq_ack[15]_i_2_n_0 ),
        .D(usr_irq_ack1_in[12]),
        .Q(usr_irq_ack[12]),
        .R(\usr_irq_ack[15]_i_1_n_0 ));
  FDRE \usr_irq_ack_reg[13] 
       (.C(clk),
        .CE(\usr_irq_ack[15]_i_2_n_0 ),
        .D(usr_irq_ack1_in[13]),
        .Q(usr_irq_ack[13]),
        .R(\usr_irq_ack[15]_i_1_n_0 ));
  FDRE \usr_irq_ack_reg[14] 
       (.C(clk),
        .CE(\usr_irq_ack[15]_i_2_n_0 ),
        .D(usr_irq_ack1_in[14]),
        .Q(usr_irq_ack[14]),
        .R(\usr_irq_ack[15]_i_1_n_0 ));
  FDRE \usr_irq_ack_reg[15] 
       (.C(clk),
        .CE(\usr_irq_ack[15]_i_2_n_0 ),
        .D(usr_irq_ack1_in[15]),
        .Q(usr_irq_ack[15]),
        .R(\usr_irq_ack[15]_i_1_n_0 ));
  FDRE \usr_irq_ack_reg[1] 
       (.C(clk),
        .CE(\usr_irq_ack[15]_i_2_n_0 ),
        .D(usr_irq_ack1_in[1]),
        .Q(usr_irq_ack[1]),
        .R(\usr_irq_ack[15]_i_1_n_0 ));
  FDRE \usr_irq_ack_reg[2] 
       (.C(clk),
        .CE(\usr_irq_ack[15]_i_2_n_0 ),
        .D(usr_irq_ack1_in[2]),
        .Q(usr_irq_ack[2]),
        .R(\usr_irq_ack[15]_i_1_n_0 ));
  FDRE \usr_irq_ack_reg[3] 
       (.C(clk),
        .CE(\usr_irq_ack[15]_i_2_n_0 ),
        .D(usr_irq_ack1_in[3]),
        .Q(usr_irq_ack[3]),
        .R(\usr_irq_ack[15]_i_1_n_0 ));
  FDRE \usr_irq_ack_reg[4] 
       (.C(clk),
        .CE(\usr_irq_ack[15]_i_2_n_0 ),
        .D(usr_irq_ack1_in[4]),
        .Q(usr_irq_ack[4]),
        .R(\usr_irq_ack[15]_i_1_n_0 ));
  FDRE \usr_irq_ack_reg[5] 
       (.C(clk),
        .CE(\usr_irq_ack[15]_i_2_n_0 ),
        .D(usr_irq_ack1_in[5]),
        .Q(usr_irq_ack[5]),
        .R(\usr_irq_ack[15]_i_1_n_0 ));
  FDRE \usr_irq_ack_reg[6] 
       (.C(clk),
        .CE(\usr_irq_ack[15]_i_2_n_0 ),
        .D(usr_irq_ack1_in[6]),
        .Q(usr_irq_ack[6]),
        .R(\usr_irq_ack[15]_i_1_n_0 ));
  FDRE \usr_irq_ack_reg[7] 
       (.C(clk),
        .CE(\usr_irq_ack[15]_i_2_n_0 ),
        .D(usr_irq_ack1_in[7]),
        .Q(usr_irq_ack[7]),
        .R(\usr_irq_ack[15]_i_1_n_0 ));
  FDRE \usr_irq_ack_reg[8] 
       (.C(clk),
        .CE(\usr_irq_ack[15]_i_2_n_0 ),
        .D(usr_irq_ack1_in[8]),
        .Q(usr_irq_ack[8]),
        .R(\usr_irq_ack[15]_i_1_n_0 ));
  FDRE \usr_irq_ack_reg[9] 
       (.C(clk),
        .CE(\usr_irq_ack[15]_i_2_n_0 ),
        .D(usr_irq_ack1_in[9]),
        .Q(usr_irq_ack[9]),
        .R(\usr_irq_ack[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFEAE)) 
    \usr_irq_in_vec[0]_i_1 
       (.I0(\usr_irq_in_vec[0]_i_2_n_0 ),
        .I1(usr_irq_req_cdc[15]),
        .I2(state[1]),
        .I3(usr_irq_in_vld_i_3_n_0),
        .I4(\usr_irq_in_vec[0]_i_3_n_0 ),
        .O(\usr_irq_in_vec[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444440400)) 
    \usr_irq_in_vec[0]_i_2 
       (.I0(\usr_irq_in_vec[0]_i_4_n_0 ),
        .I1(\usr_irq_in_vec[0]_i_5_n_0 ),
        .I2(usr_irq_req_cdc[6]),
        .I3(usr_irq_req_cdc[5]),
        .I4(usr_irq_req_cdc[7]),
        .I5(\usr_irq_in_vec[0]_i_6_n_0 ),
        .O(\usr_irq_in_vec[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00F400000000)) 
    \usr_irq_in_vec[0]_i_3 
       (.I0(usr_irq_req_cdc[10]),
        .I1(usr_irq_req_cdc[9]),
        .I2(usr_irq_req_cdc[11]),
        .I3(usr_irq_req_cdc[12]),
        .I4(usr_irq_req_cdc[13]),
        .I5(\usr_irq_in_vec[0]_i_5_n_0 ),
        .O(\usr_irq_in_vec[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFAE)) 
    \usr_irq_in_vec[0]_i_4 
       (.I0(usr_irq_req_cdc[8]),
        .I1(usr_irq_req_cdc[6]),
        .I2(usr_irq_req_cdc[7]),
        .I3(usr_irq_req_cdc[12]),
        .I4(usr_irq_req_cdc[10]),
        .O(\usr_irq_in_vec[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \usr_irq_in_vec[0]_i_5 
       (.I0(state[1]),
        .I1(usr_irq_req_cdc[14]),
        .O(\usr_irq_in_vec[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h00AE)) 
    \usr_irq_in_vec[0]_i_6 
       (.I0(usr_irq_req_cdc[3]),
        .I1(usr_irq_req_cdc[1]),
        .I2(usr_irq_req_cdc[2]),
        .I3(usr_irq_req_cdc[4]),
        .O(\usr_irq_in_vec[0]_i_6_n_0 ));
  LUT6_2 #(
    .INIT(64'hBBBBBBB888888888)) 
    \usr_irq_in_vec[1]_i_1 
       (.I0(usr_irq_in_vld_i_3_n_0),
        .I1(state[1]),
        .I2(\usr_irq_in_vec[1]_i_3_n_0 ),
        .I3(usr_irq_req_cdc[10]),
        .I4(usr_irq_req_cdc[11]),
        .I5(\usr_irq_in_vec[1]_i_2_n_0 ),
        .O5(\usr_irq_in_vec[1]_i_1_n_0 ),
        .O6(\usr_irq_in_vec[1]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0B0A)) 
    \usr_irq_in_vec[1]_i_2 
       (.I0(\usr_irq_in_vec[1]_i_4_n_0 ),
        .I1(usr_irq_req_cdc[9]),
        .I2(\usr_irq_in_vec[3]_i_3_n_0 ),
        .I3(\usr_irq_in_vec[1]_i_5_n_0 ),
        .I4(usr_irq_req_cdc[15]),
        .I5(usr_irq_req_cdc[14]),
        .O(\usr_irq_in_vec[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \usr_irq_in_vec[1]_i_3 
       (.I0(usr_irq_req_cdc[6]),
        .I1(usr_irq_req_cdc[7]),
        .I2(usr_irq_req_cdc[14]),
        .I3(usr_irq_req_cdc[15]),
        .I4(usr_irq_req_cdc[3]),
        .I5(usr_irq_req_cdc[2]),
        .O(\usr_irq_in_vec[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \usr_irq_in_vec[1]_i_4 
       (.I0(usr_irq_req_cdc[10]),
        .I1(usr_irq_req_cdc[11]),
        .O(\usr_irq_in_vec[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0000FFF1)) 
    \usr_irq_in_vec[1]_i_5 
       (.I0(usr_irq_req_cdc[4]),
        .I1(usr_irq_req_cdc[5]),
        .I2(usr_irq_req_cdc[6]),
        .I3(usr_irq_req_cdc[7]),
        .I4(usr_irq_req_cdc[8]),
        .O(\usr_irq_in_vec[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBBBA0000BBBA)) 
    \usr_irq_in_vec[2]_i_1 
       (.I0(\usr_irq_in_vec[2]_i_2_n_0 ),
        .I1(\usr_irq_in_vec[3]_i_2_n_0 ),
        .I2(\usr_irq_in_vec[2]_i_3_n_0 ),
        .I3(\usr_irq_in_vec[2]_i_4_n_0 ),
        .I4(state[1]),
        .I5(usr_irq_in_vld_i_3_n_0),
        .O(\usr_irq_in_vec[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \usr_irq_in_vec[2]_i_2 
       (.I0(usr_irq_req_cdc[13]),
        .I1(usr_irq_req_cdc[12]),
        .I2(usr_irq_req_cdc[15]),
        .I3(usr_irq_req_cdc[14]),
        .O(\usr_irq_in_vec[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \usr_irq_in_vec[2]_i_3 
       (.I0(usr_irq_req_cdc[4]),
        .I1(usr_irq_req_cdc[5]),
        .O(\usr_irq_in_vec[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \usr_irq_in_vec[2]_i_4 
       (.I0(usr_irq_req_cdc[6]),
        .I1(usr_irq_req_cdc[7]),
        .O(\usr_irq_in_vec[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFAFAFAFAFAFAC)) 
    \usr_irq_in_vec[3]_i_1 
       (.I0(usr_irq_in_vld_i_3_n_0),
        .I1(\usr_irq_in_vec[3]_i_2_n_0 ),
        .I2(state[1]),
        .I3(\usr_irq_in_vec[3]_i_3_n_0 ),
        .I4(usr_irq_req_cdc[15]),
        .I5(usr_irq_req_cdc[14]),
        .O(\usr_irq_in_vec[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \usr_irq_in_vec[3]_i_2 
       (.I0(usr_irq_req_cdc[9]),
        .I1(usr_irq_req_cdc[8]),
        .I2(usr_irq_req_cdc[11]),
        .I3(usr_irq_req_cdc[10]),
        .O(\usr_irq_in_vec[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \usr_irq_in_vec[3]_i_3 
       (.I0(usr_irq_req_cdc[12]),
        .I1(usr_irq_req_cdc[13]),
        .O(\usr_irq_in_vec[3]_i_3_n_0 ));
  FDRE \usr_irq_in_vec_reg[0] 
       (.C(clk),
        .CE(usr_irq_in_vld_i_1_n_0),
        .D(\usr_irq_in_vec[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\usr_irq_ack[15]_i_1_n_0 ));
  FDRE \usr_irq_in_vec_reg[1] 
       (.C(clk),
        .CE(usr_irq_in_vld_i_1_n_0),
        .D(\usr_irq_in_vec[1]_i_1_n_1 ),
        .Q(Q[1]),
        .R(\usr_irq_ack[15]_i_1_n_0 ));
  FDRE \usr_irq_in_vec_reg[2] 
       (.C(clk),
        .CE(usr_irq_in_vld_i_1_n_0),
        .D(\usr_irq_in_vec[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\usr_irq_ack[15]_i_1_n_0 ));
  FDRE \usr_irq_in_vec_reg[3] 
       (.C(clk),
        .CE(usr_irq_in_vld_i_1_n_0),
        .D(\usr_irq_in_vec[3]_i_1_n_0 ),
        .Q(\usr_irq_in_vec_reg[3]_0 ),
        .R(\usr_irq_ack[15]_i_1_n_0 ));
  FDRE \usr_irq_in_vec_reg[4] 
       (.C(clk),
        .CE(usr_irq_in_vld_i_1_n_0),
        .D(\usr_irq_in_vec[1]_i_1_n_0 ),
        .Q(\usr_irq_in_vec_reg[4]_0 ),
        .R(\usr_irq_ack[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h50C0)) 
    usr_irq_in_vld_i_1
       (.I0(usr_irq_in_vld_i_3_n_0),
        .I1(usr_irq_in_vld_i_4_n_0),
        .I2(state[0]),
        .I3(state[1]),
        .O(usr_irq_in_vld_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    usr_irq_in_vld_i_2
       (.I0(usr_irq_in_vld_i_4_n_0),
        .I1(state[1]),
        .I2(usr_irq_in_vld_i_3_n_0),
        .O(usr_irq_in_vld_i_2_n_0));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    usr_irq_in_vld_i_3
       (.I0(usr_irq_in_vld_i_5_n_0),
        .I1(usr_irq_in_vld_i_6_n_0),
        .I2(\usr_irq_ack_cpy_reg_n_0_[3] ),
        .I3(\usr_irq_ack_cpy_reg_n_0_[2] ),
        .I4(usr_irq_in_vld_i_7_n_0),
        .I5(usr_irq_in_vld_i_8_n_0),
        .O(usr_irq_in_vld_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    usr_irq_in_vld_i_4
       (.I0(\usr_irq_in_vec[1]_i_3_n_0 ),
        .I1(\usr_irq_in_vec[2]_i_3_n_0 ),
        .I2(\usr_irq_in_vec[3]_i_3_n_0 ),
        .I3(\usr_irq_in_vec[3]_i_2_n_0 ),
        .I4(usr_irq_req_cdc[1]),
        .I5(usr_irq_req_cdc[0]),
        .O(usr_irq_in_vld_i_4_n_0));
  LUT6 #(
    .INIT(64'hCACAFFF0CACA0F00)) 
    usr_irq_in_vld_i_5
       (.I0(usr_irq_req_cdc[5]),
        .I1(usr_irq_req_cdc[7]),
        .I2(\usr_irq_ack_cpy_reg_n_0_[1] ),
        .I3(usr_irq_req_cdc[4]),
        .I4(\usr_irq_ack_cpy_reg_n_0_[0] ),
        .I5(usr_irq_req_cdc[6]),
        .O(usr_irq_in_vld_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    usr_irq_in_vld_i_6
       (.I0(usr_irq_req_cdc[15]),
        .I1(usr_irq_req_cdc[14]),
        .I2(\usr_irq_ack_cpy_reg_n_0_[1] ),
        .I3(usr_irq_req_cdc[13]),
        .I4(\usr_irq_ack_cpy_reg_n_0_[0] ),
        .I5(usr_irq_req_cdc[12]),
        .O(usr_irq_in_vld_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    usr_irq_in_vld_i_7
       (.I0(usr_irq_req_cdc[3]),
        .I1(usr_irq_req_cdc[2]),
        .I2(\usr_irq_ack_cpy_reg_n_0_[1] ),
        .I3(usr_irq_req_cdc[1]),
        .I4(\usr_irq_ack_cpy_reg_n_0_[0] ),
        .I5(usr_irq_req_cdc[0]),
        .O(usr_irq_in_vld_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    usr_irq_in_vld_i_8
       (.I0(usr_irq_req_cdc[11]),
        .I1(usr_irq_req_cdc[10]),
        .I2(\usr_irq_ack_cpy_reg_n_0_[1] ),
        .I3(usr_irq_req_cdc[9]),
        .I4(\usr_irq_ack_cpy_reg_n_0_[0] ),
        .I5(usr_irq_req_cdc[8]),
        .O(usr_irq_in_vld_i_8_n_0));
  FDRE usr_irq_in_vld_reg
       (.C(clk),
        .CE(usr_irq_in_vld_i_1_n_0),
        .D(usr_irq_in_vld_i_2_n_0),
        .Q(usr_irq_in_vld),
        .R(\usr_irq_ack[15]_i_1_n_0 ));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "16" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single usr_irq_xpm_cdc
       (.dest_clk(clk),
        .dest_out(usr_irq_req_cdc),
        .src_clk(1'b0),
        .src_in(usr_irq_req));
endmodule

(* CHECK_LICENSE_TYPE = "top_qdma_shim_0,qdma_versal_shim,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "qdma_versal_shim,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rstn,
    usr_irq_req,
    usr_irq_ack,
    usr_irq_in_vld,
    usr_irq_in_vec,
    usr_irq_in_fnc,
    usr_irq_out_ack);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_4885_cpm_0_0_pcie0_user_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  input [15:0]usr_irq_req;
  output [15:0]usr_irq_ack;
  output usr_irq_in_vld;
  output [4:0]usr_irq_in_vec;
  output [7:0]usr_irq_in_fnc;
  input usr_irq_out_ack;

  wire clk;
  wire rstn;
  wire [15:0]usr_irq_ack;
  wire [4:0]usr_irq_in_vec;
  wire usr_irq_in_vld;
  wire usr_irq_out_ack;
  wire [15:0]usr_irq_req;

  assign usr_irq_in_fnc[7] = usr_irq_in_vec[4];
  assign usr_irq_in_fnc[6] = usr_irq_in_vec[4];
  assign usr_irq_in_fnc[5] = usr_irq_in_vec[4];
  assign usr_irq_in_fnc[4] = usr_irq_in_vec[4];
  assign usr_irq_in_fnc[3] = usr_irq_in_vec[4];
  assign usr_irq_in_fnc[2] = usr_irq_in_vec[4];
  assign usr_irq_in_fnc[1:0] = usr_irq_in_vec[4:3];
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qdma_versal_shim inst
       (.Q(usr_irq_in_vec[2:0]),
        .clk(clk),
        .rstn(rstn),
        .usr_irq_ack(usr_irq_ack),
        .\usr_irq_in_vec_reg[3]_0 (usr_irq_in_vec[3]),
        .\usr_irq_in_vec_reg[4]_0 (usr_irq_in_vec[4]),
        .usr_irq_in_vld(usr_irq_in_vld),
        .usr_irq_out_ack(usr_irq_out_ack),
        .usr_irq_req(usr_irq_req));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
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
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [15:0]\syncstages_ff[3] ;

  assign async_path_bit = src_in[15:0];
  assign dest_out[15:0] = \syncstages_ff[3] ;
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
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [0]),
        .Q(\syncstages_ff[3] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [10]),
        .Q(\syncstages_ff[3] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [11]),
        .Q(\syncstages_ff[3] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][12] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [12]),
        .Q(\syncstages_ff[3] [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][13] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [13]),
        .Q(\syncstages_ff[3] [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][14] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [14]),
        .Q(\syncstages_ff[3] [14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][15] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [15]),
        .Q(\syncstages_ff[3] [15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [1]),
        .Q(\syncstages_ff[3] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [2]),
        .Q(\syncstages_ff[3] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [3]),
        .Q(\syncstages_ff[3] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [4]),
        .Q(\syncstages_ff[3] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [5]),
        .Q(\syncstages_ff[3] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [6]),
        .Q(\syncstages_ff[3] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [7]),
        .Q(\syncstages_ff[3] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [8]),
        .Q(\syncstages_ff[3] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [9]),
        .Q(\syncstages_ff[3] [9]),
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
