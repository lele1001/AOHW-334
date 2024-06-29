// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Dec  5 00:26:52 2022
// Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_pf_mailbox_0_sim_netlist.v
// Design      : top_pf_mailbox_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvc1902-vsvd1760-2MP-e-S
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SRL_FIFO
   (FDRE_I1_0,
    data_Exists_I_reg_0,
    FSL0_S_Data_I,
    FSL1_M_Full_I,
    \Addr_Counters[0].FDRE_I_0 ,
    rit_detect_d0,
    \sit_register_reg[0] ,
    SR,
    S0_AXI_ACLK,
    CI,
    S1_AXI_WDATA,
    data_Exists_I_reg_1,
    fifo_length_i11_out,
    SYS_Rst_I,
    rit_detect_d1_reg,
    Q,
    FSL1_M_Write_I,
    Bus_RNW_reg,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    E);
  output FDRE_I1_0;
  output data_Exists_I_reg_0;
  output [0:31]FSL0_S_Data_I;
  output FSL1_M_Full_I;
  output \Addr_Counters[0].FDRE_I_0 ;
  output rit_detect_d0;
  output \sit_register_reg[0] ;
  input [0:0]SR;
  input S0_AXI_ACLK;
  input CI;
  input [31:0]S1_AXI_WDATA;
  input data_Exists_I_reg_1;
  input fifo_length_i11_out;
  input SYS_Rst_I;
  input [3:0]rit_detect_d1_reg;
  input [3:0]Q;
  input FSL1_M_Write_I;
  input Bus_RNW_reg;
  input \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  input [0:0]E;

  wire Addr_0;
  wire Addr_1;
  wire Addr_2;
  wire \Addr_Counters[0].FDRE_I_0 ;
  wire \Addr_Counters[2].Used_MuxCY.MUXCY_L_I_i_1_n_0 ;
  wire Bus_RNW_reg;
  wire CI;
  wire \CO[3]_net ;
  wire \CO[5]_net ;
  wire \CO[7]_net ;
  wire D;
  wire DI;
  wire [0:0]E;
  wire FDRE_I1_0;
  wire [0:31]FSL0_S_Data_I;
  wire FSL1_M_Full_I;
  wire FSL1_M_Write_I;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire GE_net;
  wire GE_net_1;
  wire GE_net_2;
  wire GE_net_3;
  wire LI;
  wire O52_net;
  wire O52_net_1;
  wire PROP_net;
  wire PROP_net_1;
  wire PROP_net_2;
  wire PROP_net_3;
  wire [3:0]Q;
  wire S;
  wire S0_AXI_ACLK;
  wire [31:0]S1_AXI_WDATA;
  wire S4_out;
  wire [0:0]SR;
  wire SYS_Rst_I;
  wire addr_cy_0;
  wire addr_cy_1;
  wire addr_cy_2;
  wire data_Exists_I_reg_0;
  wire data_Exists_I_reg_1;
  wire fifo_length_i11_out;
  wire \fifo_length_i[0]_i_2__0_n_0 ;
  wire \fifo_length_i[1]_i_1__0_n_0 ;
  wire \fifo_length_i[2]_i_1__0_n_0 ;
  wire \fifo_length_i[3]_i_1__0_n_0 ;
  wire \fifo_length_i[4]_i_1__0_n_0 ;
  wire \fifo_length_i_reg_n_0_[0] ;
  wire \fifo_length_i_reg_n_0_[1] ;
  wire \fifo_length_i_reg_n_0_[2] ;
  wire \fifo_length_i_reg_n_0_[3] ;
  wire \fifo_length_i_reg_n_0_[4] ;
  wire rit_detect_d0;
  wire rit_detect_d1_i_2_n_0;
  wire [3:0]rit_detect_d1_reg;
  wire sit_detect_d1_i_2__0_n_0;
  wire \sit_register_reg[0] ;
  wire sum_A_0;
  wire sum_A_1;
  wire sum_A_2;
  wire sum_A_3;
  wire \NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_CYE_UNCONNECTED ;
  wire \NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_CYF_UNCONNECTED ;
  wire \NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_CYG_UNCONNECTED ;
  wire \NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_CYH_UNCONNECTED ;
  wire \NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_GEE_UNCONNECTED ;
  wire \NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_GEF_UNCONNECTED ;
  wire \NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_GEG_UNCONNECTED ;
  wire \NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_GEH_UNCONNECTED ;
  wire \NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_PROPE_UNCONNECTED ;
  wire \NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_PROPF_UNCONNECTED ;
  wire \NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_PROPG_UNCONNECTED ;
  wire \NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_PROPH_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[0].FDRE_I 
       (.C(S0_AXI_ACLK),
        .CE(data_Exists_I_reg_0),
        .D(sum_A_3),
        .Q(DI),
        .R(SR));
  (* CARRY_TYPE = "SINGLE_CY8" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(CARRY8)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LOOKAHEAD8 #(
    .LOOKB("FALSE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0 
       (.CIN(CI),
        .COUTB(addr_cy_1),
        .COUTD(\CO[3]_net ),
        .COUTF(\CO[5]_net ),
        .COUTH(\CO[7]_net ),
        .CYA(addr_cy_2),
        .CYB(O52_net),
        .CYC(addr_cy_0),
        .CYD(O52_net_1),
        .CYE(\NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_CYE_UNCONNECTED ),
        .CYF(\NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_CYF_UNCONNECTED ),
        .CYG(\NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_CYG_UNCONNECTED ),
        .CYH(\NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_CYH_UNCONNECTED ),
        .GEA(GE_net),
        .GEB(GE_net_1),
        .GEC(GE_net_2),
        .GED(GE_net_3),
        .GEE(\NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_GEE_UNCONNECTED ),
        .GEF(\NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_GEF_UNCONNECTED ),
        .GEG(\NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_GEG_UNCONNECTED ),
        .GEH(\NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_GEH_UNCONNECTED ),
        .PROPA(PROP_net),
        .PROPB(PROP_net_1),
        .PROPC(PROP_net_2),
        .PROPD(PROP_net_3),
        .PROPE(\NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_PROPE_UNCONNECTED ),
        .PROPF(\NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_PROPF_UNCONNECTED ),
        .PROPG(\NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_PROPG_UNCONNECTED ),
        .PROPH(\NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_PROPH_UNCONNECTED ));
  (* CARRY_TYPE = "SINGLE_CY8" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(CARRY8)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6CY #(
    .INIT(64'hFFF00F000F0FF0F0)) 
    \Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LUT6CY_0 
       (.GE(GE_net),
        .I0(1'b1),
        .I1(1'b1),
        .I2(S),
        .I3(DI),
        .I4(CI),
        .O51(sum_A_3),
        .O52(addr_cy_2),
        .PROP(PROP_net));
  (* CARRY_TYPE = "SINGLE_CY8" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(CARRY8)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6CY #(
    .INIT(64'hFFF00F000F0FF0F0)) 
    \Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LUT6CY_1 
       (.GE(GE_net_1),
        .I0(1'b1),
        .I1(1'b1),
        .I2(S4_out),
        .I3(Addr_2),
        .I4(addr_cy_2),
        .O51(sum_A_2),
        .O52(O52_net),
        .PROP(PROP_net_1));
  (* CARRY_TYPE = "SINGLE_CY8" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(CARRY8)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6CY #(
    .INIT(64'hFFF00F000F0FF0F0)) 
    \Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LUT6CY_2 
       (.GE(GE_net_2),
        .I0(1'b1),
        .I1(1'b1),
        .I2(\Addr_Counters[2].Used_MuxCY.MUXCY_L_I_i_1_n_0 ),
        .I3(Addr_1),
        .I4(addr_cy_1),
        .O51(sum_A_1),
        .O52(addr_cy_0),
        .PROP(PROP_net_2));
  (* CARRY_TYPE = "SINGLE_CY8" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(CARRY8)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6CY #(
    .INIT(64'hFFF00F000F0FF0F0)) 
    \Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LUT6CY_3 
       (.GE(GE_net_3),
        .I0(1'b1),
        .I1(1'b1),
        .I2(LI),
        .I3(1'b0),
        .I4(addr_cy_0),
        .O51(sum_A_0),
        .O52(O52_net_1),
        .PROP(PROP_net_3));
  LUT6 #(
    .INIT(64'h0BBBBBBBB0000000)) 
    \Addr_Counters[0].Used_MuxCY.MUXCY_L_I_i_1 
       (.I0(FSL1_M_Write_I),
        .I1(\Addr_Counters[0].FDRE_I_0 ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I4(data_Exists_I_reg_0),
        .I5(DI),
        .O(S));
  LUT4 #(
    .INIT(16'h0001)) 
    \Addr_Counters[0].Used_MuxCY.MUXCY_L_I_i_4__0 
       (.I0(DI),
        .I1(Addr_2),
        .I2(Addr_0),
        .I3(Addr_1),
        .O(\Addr_Counters[0].FDRE_I_0 ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[1].FDRE_I 
       (.C(S0_AXI_ACLK),
        .CE(data_Exists_I_reg_0),
        .D(sum_A_2),
        .Q(Addr_2),
        .R(SR));
  LUT6 #(
    .INIT(64'h0BBBBBBBB0000000)) 
    \Addr_Counters[1].Used_MuxCY.MUXCY_L_I_i_1 
       (.I0(FSL1_M_Write_I),
        .I1(\Addr_Counters[0].FDRE_I_0 ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I4(data_Exists_I_reg_0),
        .I5(Addr_2),
        .O(S4_out));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[2].FDRE_I 
       (.C(S0_AXI_ACLK),
        .CE(data_Exists_I_reg_0),
        .D(sum_A_1),
        .Q(Addr_1),
        .R(SR));
  LUT6 #(
    .INIT(64'h0BBBBBBBB0000000)) 
    \Addr_Counters[2].Used_MuxCY.MUXCY_L_I_i_1 
       (.I0(FSL1_M_Write_I),
        .I1(\Addr_Counters[0].FDRE_I_0 ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I4(data_Exists_I_reg_0),
        .I5(Addr_1),
        .O(\Addr_Counters[2].Used_MuxCY.MUXCY_L_I_i_1_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[3].FDRE_I 
       (.C(S0_AXI_ACLK),
        .CE(data_Exists_I_reg_0),
        .D(sum_A_0),
        .Q(Addr_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h0BBBBBBBB0000000)) 
    \Addr_Counters[3].XORCY_I_i_1 
       (.I0(FSL1_M_Write_I),
        .I1(\Addr_Counters[0].FDRE_I_0 ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I4(data_Exists_I_reg_0),
        .I5(Addr_0),
        .O(LI));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    FDRE_I1
       (.C(S0_AXI_ACLK),
        .CE(data_Exists_I_reg_0),
        .D(D),
        .Q(FDRE_I1_0),
        .R(SR));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[0].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[0].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S1_AXI_WDATA[31]),
        .Q(FSL0_S_Data_I[0]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[10].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[10].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S1_AXI_WDATA[21]),
        .Q(FSL0_S_Data_I[10]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[11].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[11].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S1_AXI_WDATA[20]),
        .Q(FSL0_S_Data_I[11]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[12].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[12].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S1_AXI_WDATA[19]),
        .Q(FSL0_S_Data_I[12]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[13].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[13].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S1_AXI_WDATA[18]),
        .Q(FSL0_S_Data_I[13]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[14].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[14].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S1_AXI_WDATA[17]),
        .Q(FSL0_S_Data_I[14]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[15].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[15].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S1_AXI_WDATA[16]),
        .Q(FSL0_S_Data_I[15]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[16].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[16].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S1_AXI_WDATA[15]),
        .Q(FSL0_S_Data_I[16]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[17].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[17].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S1_AXI_WDATA[14]),
        .Q(FSL0_S_Data_I[17]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[18].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[18].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S1_AXI_WDATA[13]),
        .Q(FSL0_S_Data_I[18]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[19].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[19].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S1_AXI_WDATA[12]),
        .Q(FSL0_S_Data_I[19]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[1].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[1].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S1_AXI_WDATA[30]),
        .Q(FSL0_S_Data_I[1]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[20].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[20].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S1_AXI_WDATA[11]),
        .Q(FSL0_S_Data_I[20]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[21].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[21].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S1_AXI_WDATA[10]),
        .Q(FSL0_S_Data_I[21]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[22].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[22].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S1_AXI_WDATA[9]),
        .Q(FSL0_S_Data_I[22]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[23].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[23].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S1_AXI_WDATA[8]),
        .Q(FSL0_S_Data_I[23]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[24].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[24].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S1_AXI_WDATA[7]),
        .Q(FSL0_S_Data_I[24]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[25].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[25].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S1_AXI_WDATA[6]),
        .Q(FSL0_S_Data_I[25]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[26].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[26].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S1_AXI_WDATA[5]),
        .Q(FSL0_S_Data_I[26]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[27].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[27].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S1_AXI_WDATA[4]),
        .Q(FSL0_S_Data_I[27]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[28].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[28].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S1_AXI_WDATA[3]),
        .Q(FSL0_S_Data_I[28]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[29].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[29].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S1_AXI_WDATA[2]),
        .Q(FSL0_S_Data_I[29]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[2].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[2].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S1_AXI_WDATA[29]),
        .Q(FSL0_S_Data_I[2]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[30].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[30].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S1_AXI_WDATA[1]),
        .Q(FSL0_S_Data_I[30]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[31].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[31].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S1_AXI_WDATA[0]),
        .Q(FSL0_S_Data_I[31]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[3].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[3].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S1_AXI_WDATA[28]),
        .Q(FSL0_S_Data_I[3]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[4].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[4].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S1_AXI_WDATA[27]),
        .Q(FSL0_S_Data_I[4]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[5].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[5].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S1_AXI_WDATA[26]),
        .Q(FSL0_S_Data_I[5]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[6].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[6].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S1_AXI_WDATA[25]),
        .Q(FSL0_S_Data_I[6]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[7].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[7].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S1_AXI_WDATA[24]),
        .Q(FSL0_S_Data_I[7]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[8].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[8].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S1_AXI_WDATA[23]),
        .Q(FSL0_S_Data_I[8]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[9].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[9].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S1_AXI_WDATA[22]),
        .Q(FSL0_S_Data_I[9]));
  LUT4 #(
    .INIT(16'h8000)) 
    buffer_full_early
       (.I0(sum_A_3),
        .I1(sum_A_2),
        .I2(sum_A_0),
        .I3(sum_A_1),
        .O(D));
  FDRE data_Exists_I_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(data_Exists_I_reg_1),
        .Q(data_Exists_I_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7FFFFFFE80000001)) 
    \fifo_length_i[0]_i_2__0 
       (.I0(fifo_length_i11_out),
        .I1(\fifo_length_i_reg_n_0_[1] ),
        .I2(\fifo_length_i_reg_n_0_[3] ),
        .I3(\fifo_length_i_reg_n_0_[4] ),
        .I4(\fifo_length_i_reg_n_0_[2] ),
        .I5(\fifo_length_i_reg_n_0_[0] ),
        .O(\fifo_length_i[0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h7FFE8001)) 
    \fifo_length_i[1]_i_1__0 
       (.I0(fifo_length_i11_out),
        .I1(\fifo_length_i_reg_n_0_[2] ),
        .I2(\fifo_length_i_reg_n_0_[4] ),
        .I3(\fifo_length_i_reg_n_0_[3] ),
        .I4(\fifo_length_i_reg_n_0_[1] ),
        .O(\fifo_length_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h7E81)) 
    \fifo_length_i[2]_i_1__0 
       (.I0(fifo_length_i11_out),
        .I1(\fifo_length_i_reg_n_0_[3] ),
        .I2(\fifo_length_i_reg_n_0_[4] ),
        .I3(\fifo_length_i_reg_n_0_[2] ),
        .O(\fifo_length_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \fifo_length_i[3]_i_1__0 
       (.I0(fifo_length_i11_out),
        .I1(\fifo_length_i_reg_n_0_[3] ),
        .I2(\fifo_length_i_reg_n_0_[4] ),
        .O(\fifo_length_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \fifo_length_i[4]_i_1__0 
       (.I0(\fifo_length_i_reg_n_0_[4] ),
        .O(\fifo_length_i[4]_i_1__0_n_0 ));
  FDRE \fifo_length_i_reg[0] 
       (.C(S0_AXI_ACLK),
        .CE(E),
        .D(\fifo_length_i[0]_i_2__0_n_0 ),
        .Q(\fifo_length_i_reg_n_0_[0] ),
        .R(SR));
  FDRE \fifo_length_i_reg[1] 
       (.C(S0_AXI_ACLK),
        .CE(E),
        .D(\fifo_length_i[1]_i_1__0_n_0 ),
        .Q(\fifo_length_i_reg_n_0_[1] ),
        .R(SR));
  FDRE \fifo_length_i_reg[2] 
       (.C(S0_AXI_ACLK),
        .CE(E),
        .D(\fifo_length_i[2]_i_1__0_n_0 ),
        .Q(\fifo_length_i_reg_n_0_[2] ),
        .R(SR));
  FDRE \fifo_length_i_reg[3] 
       (.C(S0_AXI_ACLK),
        .CE(E),
        .D(\fifo_length_i[3]_i_1__0_n_0 ),
        .Q(\fifo_length_i_reg_n_0_[3] ),
        .R(SR));
  FDRE \fifo_length_i_reg[4] 
       (.C(S0_AXI_ACLK),
        .CE(E),
        .D(\fifo_length_i[4]_i_1__0_n_0 ),
        .Q(\fifo_length_i_reg_n_0_[4] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hFFB2)) 
    rit_detect_d1_i_1
       (.I0(rit_detect_d1_i_2_n_0),
        .I1(rit_detect_d1_reg[3]),
        .I2(\fifo_length_i_reg_n_0_[1] ),
        .I3(\fifo_length_i_reg_n_0_[0] ),
        .O(rit_detect_d0));
  LUT6 #(
    .INIT(64'h2F02FFFF00002F02)) 
    rit_detect_d1_i_2
       (.I0(\fifo_length_i_reg_n_0_[4] ),
        .I1(rit_detect_d1_reg[0]),
        .I2(rit_detect_d1_reg[1]),
        .I3(\fifo_length_i_reg_n_0_[3] ),
        .I4(rit_detect_d1_reg[2]),
        .I5(\fifo_length_i_reg_n_0_[2] ),
        .O(rit_detect_d1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata_i[1]_i_5__0 
       (.I0(FDRE_I1_0),
        .I1(SYS_Rst_I),
        .O(FSL1_M_Full_I));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h00B2)) 
    sit_detect_d1_i_1__0
       (.I0(Q[3]),
        .I1(\fifo_length_i_reg_n_0_[1] ),
        .I2(sit_detect_d1_i_2__0_n_0),
        .I3(\fifo_length_i_reg_n_0_[0] ),
        .O(\sit_register_reg[0] ));
  LUT6 #(
    .INIT(64'hDF0DFFFF0000DF0D)) 
    sit_detect_d1_i_2__0
       (.I0(\fifo_length_i_reg_n_0_[4] ),
        .I1(Q[0]),
        .I2(\fifo_length_i_reg_n_0_[3] ),
        .I3(Q[1]),
        .I4(\fifo_length_i_reg_n_0_[2] ),
        .I5(Q[2]),
        .O(sit_detect_d1_i_2__0_n_0));
endmodule

(* ORIG_REF_NAME = "SRL_FIFO" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SRL_FIFO_3
   (FDRE_I1_0,
    data_Exists_I_reg_0,
    FSL1_S_Data_I,
    FSL0_M_Full_I,
    \Addr_Counters[0].FDRE_I_0 ,
    rit_detect_d0,
    \sit_register_reg[0] ,
    SR,
    S0_AXI_ACLK,
    CI,
    S0_AXI_WDATA,
    data_Exists_I_reg_1,
    fifo_length_i11_out,
    SYS_Rst_I,
    Q,
    rit_detect_d1_reg,
    Bus_RNW_reg,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    FSL0_M_Write_I,
    E);
  output FDRE_I1_0;
  output data_Exists_I_reg_0;
  output [0:31]FSL1_S_Data_I;
  output FSL0_M_Full_I;
  output \Addr_Counters[0].FDRE_I_0 ;
  output rit_detect_d0;
  output \sit_register_reg[0] ;
  input [0:0]SR;
  input S0_AXI_ACLK;
  input CI;
  input [31:0]S0_AXI_WDATA;
  input data_Exists_I_reg_1;
  input fifo_length_i11_out;
  input SYS_Rst_I;
  input [3:0]Q;
  input [3:0]rit_detect_d1_reg;
  input Bus_RNW_reg;
  input \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  input FSL0_M_Write_I;
  input [0:0]E;

  wire Addr_0;
  wire Addr_1;
  wire Addr_2;
  wire \Addr_Counters[0].FDRE_I_0 ;
  wire \Addr_Counters[2].Used_MuxCY.MUXCY_L_I_i_1__0_n_0 ;
  wire Bus_RNW_reg;
  wire CI;
  wire \CO[3]_net ;
  wire \CO[5]_net ;
  wire \CO[7]_net ;
  wire D;
  wire DI;
  wire [0:0]E;
  wire FDRE_I1_0;
  wire FSL0_M_Full_I;
  wire FSL0_M_Write_I;
  wire [0:31]FSL1_S_Data_I;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire GE_net;
  wire GE_net_1;
  wire GE_net_2;
  wire GE_net_3;
  wire LI;
  wire O52_net;
  wire O52_net_1;
  wire PROP_net;
  wire PROP_net_1;
  wire PROP_net_2;
  wire PROP_net_3;
  wire [3:0]Q;
  wire S;
  wire S0_AXI_ACLK;
  wire [31:0]S0_AXI_WDATA;
  wire S4_out;
  wire [0:0]SR;
  wire SYS_Rst_I;
  wire addr_cy_0;
  wire addr_cy_1;
  wire addr_cy_2;
  wire data_Exists_I_reg_0;
  wire data_Exists_I_reg_1;
  wire fifo_length_i11_out;
  wire \fifo_length_i[0]_i_2_n_0 ;
  wire \fifo_length_i[1]_i_1_n_0 ;
  wire \fifo_length_i[2]_i_1_n_0 ;
  wire \fifo_length_i[3]_i_1_n_0 ;
  wire \fifo_length_i[4]_i_1_n_0 ;
  wire \fifo_length_i_reg_n_0_[0] ;
  wire \fifo_length_i_reg_n_0_[1] ;
  wire \fifo_length_i_reg_n_0_[2] ;
  wire \fifo_length_i_reg_n_0_[3] ;
  wire \fifo_length_i_reg_n_0_[4] ;
  wire rit_detect_d0;
  wire rit_detect_d1_i_2__0_n_0;
  wire [3:0]rit_detect_d1_reg;
  wire sit_detect_d1_i_2_n_0;
  wire \sit_register_reg[0] ;
  wire sum_A_0;
  wire sum_A_1;
  wire sum_A_2;
  wire sum_A_3;
  wire \NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_CYE_UNCONNECTED ;
  wire \NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_CYF_UNCONNECTED ;
  wire \NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_CYG_UNCONNECTED ;
  wire \NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_CYH_UNCONNECTED ;
  wire \NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_GEE_UNCONNECTED ;
  wire \NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_GEF_UNCONNECTED ;
  wire \NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_GEG_UNCONNECTED ;
  wire \NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_GEH_UNCONNECTED ;
  wire \NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_PROPE_UNCONNECTED ;
  wire \NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_PROPF_UNCONNECTED ;
  wire \NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_PROPG_UNCONNECTED ;
  wire \NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_PROPH_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[0].FDRE_I 
       (.C(S0_AXI_ACLK),
        .CE(data_Exists_I_reg_0),
        .D(sum_A_3),
        .Q(DI),
        .R(SR));
  (* CARRY_TYPE = "SINGLE_CY8" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(CARRY8)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LOOKAHEAD8 #(
    .LOOKB("FALSE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0 
       (.CIN(CI),
        .COUTB(addr_cy_1),
        .COUTD(\CO[3]_net ),
        .COUTF(\CO[5]_net ),
        .COUTH(\CO[7]_net ),
        .CYA(addr_cy_2),
        .CYB(O52_net),
        .CYC(addr_cy_0),
        .CYD(O52_net_1),
        .CYE(\NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_CYE_UNCONNECTED ),
        .CYF(\NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_CYF_UNCONNECTED ),
        .CYG(\NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_CYG_UNCONNECTED ),
        .CYH(\NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_CYH_UNCONNECTED ),
        .GEA(GE_net),
        .GEB(GE_net_1),
        .GEC(GE_net_2),
        .GED(GE_net_3),
        .GEE(\NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_GEE_UNCONNECTED ),
        .GEF(\NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_GEF_UNCONNECTED ),
        .GEG(\NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_GEG_UNCONNECTED ),
        .GEH(\NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_GEH_UNCONNECTED ),
        .PROPA(PROP_net),
        .PROPB(PROP_net_1),
        .PROPC(PROP_net_2),
        .PROPD(PROP_net_3),
        .PROPE(\NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_PROPE_UNCONNECTED ),
        .PROPF(\NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_PROPF_UNCONNECTED ),
        .PROPG(\NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_PROPG_UNCONNECTED ),
        .PROPH(\NLW_Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LOOKAHEAD8_0_PROPH_UNCONNECTED ));
  (* CARRY_TYPE = "SINGLE_CY8" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(CARRY8)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6CY #(
    .INIT(64'hFFF00F000F0FF0F0)) 
    \Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LUT6CY_0 
       (.GE(GE_net),
        .I0(1'b1),
        .I1(1'b1),
        .I2(S),
        .I3(DI),
        .I4(CI),
        .O51(sum_A_3),
        .O52(addr_cy_2),
        .PROP(PROP_net));
  (* CARRY_TYPE = "SINGLE_CY8" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(CARRY8)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6CY #(
    .INIT(64'hFFF00F000F0FF0F0)) 
    \Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LUT6CY_1 
       (.GE(GE_net_1),
        .I0(1'b1),
        .I1(1'b1),
        .I2(S4_out),
        .I3(Addr_2),
        .I4(addr_cy_2),
        .O51(sum_A_2),
        .O52(O52_net),
        .PROP(PROP_net_1));
  (* CARRY_TYPE = "SINGLE_CY8" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(CARRY8)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6CY #(
    .INIT(64'hFFF00F000F0FF0F0)) 
    \Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LUT6CY_2 
       (.GE(GE_net_2),
        .I0(1'b1),
        .I1(1'b1),
        .I2(\Addr_Counters[2].Used_MuxCY.MUXCY_L_I_i_1__0_n_0 ),
        .I3(Addr_1),
        .I4(addr_cy_1),
        .O51(sum_A_1),
        .O52(addr_cy_0),
        .PROP(PROP_net_2));
  (* CARRY_TYPE = "SINGLE_CY8" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(CARRY8)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6CY #(
    .INIT(64'hFFF00F000F0FF0F0)) 
    \Addr_Counters[0].Used_MuxCY.MUXCY_L_I_CARRY4_CARRY8_LUT6CY_3 
       (.GE(GE_net_3),
        .I0(1'b1),
        .I1(1'b1),
        .I2(LI),
        .I3(1'b0),
        .I4(addr_cy_0),
        .O51(sum_A_0),
        .O52(O52_net_1),
        .PROP(PROP_net_3));
  LUT6 #(
    .INIT(64'h7F007F7F80008080)) 
    \Addr_Counters[0].Used_MuxCY.MUXCY_L_I_i_1__0 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I2(data_Exists_I_reg_0),
        .I3(FSL0_M_Write_I),
        .I4(\Addr_Counters[0].FDRE_I_0 ),
        .I5(DI),
        .O(S));
  LUT4 #(
    .INIT(16'h0001)) 
    \Addr_Counters[0].Used_MuxCY.MUXCY_L_I_i_4 
       (.I0(DI),
        .I1(Addr_2),
        .I2(Addr_0),
        .I3(Addr_1),
        .O(\Addr_Counters[0].FDRE_I_0 ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[1].FDRE_I 
       (.C(S0_AXI_ACLK),
        .CE(data_Exists_I_reg_0),
        .D(sum_A_2),
        .Q(Addr_2),
        .R(SR));
  LUT6 #(
    .INIT(64'h7F007F7F80008080)) 
    \Addr_Counters[1].Used_MuxCY.MUXCY_L_I_i_1__0 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I2(data_Exists_I_reg_0),
        .I3(FSL0_M_Write_I),
        .I4(\Addr_Counters[0].FDRE_I_0 ),
        .I5(Addr_2),
        .O(S4_out));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[2].FDRE_I 
       (.C(S0_AXI_ACLK),
        .CE(data_Exists_I_reg_0),
        .D(sum_A_1),
        .Q(Addr_1),
        .R(SR));
  LUT6 #(
    .INIT(64'h7F007F7F80008080)) 
    \Addr_Counters[2].Used_MuxCY.MUXCY_L_I_i_1__0 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I2(data_Exists_I_reg_0),
        .I3(FSL0_M_Write_I),
        .I4(\Addr_Counters[0].FDRE_I_0 ),
        .I5(Addr_1),
        .O(\Addr_Counters[2].Used_MuxCY.MUXCY_L_I_i_1__0_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[3].FDRE_I 
       (.C(S0_AXI_ACLK),
        .CE(data_Exists_I_reg_0),
        .D(sum_A_0),
        .Q(Addr_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h7F007F7F80008080)) 
    \Addr_Counters[3].XORCY_I_i_1__0 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I2(data_Exists_I_reg_0),
        .I3(FSL0_M_Write_I),
        .I4(\Addr_Counters[0].FDRE_I_0 ),
        .I5(Addr_0),
        .O(LI));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    FDRE_I1
       (.C(S0_AXI_ACLK),
        .CE(data_Exists_I_reg_0),
        .D(D),
        .Q(FDRE_I1_0),
        .R(SR));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[0].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[0].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S0_AXI_WDATA[31]),
        .Q(FSL1_S_Data_I[0]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[10].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[10].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S0_AXI_WDATA[21]),
        .Q(FSL1_S_Data_I[10]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[11].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[11].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S0_AXI_WDATA[20]),
        .Q(FSL1_S_Data_I[11]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[12].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[12].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S0_AXI_WDATA[19]),
        .Q(FSL1_S_Data_I[12]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[13].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[13].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S0_AXI_WDATA[18]),
        .Q(FSL1_S_Data_I[13]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[14].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[14].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S0_AXI_WDATA[17]),
        .Q(FSL1_S_Data_I[14]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[15].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[15].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S0_AXI_WDATA[16]),
        .Q(FSL1_S_Data_I[15]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[16].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[16].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S0_AXI_WDATA[15]),
        .Q(FSL1_S_Data_I[16]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[17].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[17].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S0_AXI_WDATA[14]),
        .Q(FSL1_S_Data_I[17]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[18].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[18].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S0_AXI_WDATA[13]),
        .Q(FSL1_S_Data_I[18]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[19].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[19].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S0_AXI_WDATA[12]),
        .Q(FSL1_S_Data_I[19]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[1].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[1].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S0_AXI_WDATA[30]),
        .Q(FSL1_S_Data_I[1]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[20].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[20].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S0_AXI_WDATA[11]),
        .Q(FSL1_S_Data_I[20]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[21].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[21].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S0_AXI_WDATA[10]),
        .Q(FSL1_S_Data_I[21]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[22].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[22].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S0_AXI_WDATA[9]),
        .Q(FSL1_S_Data_I[22]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[23].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[23].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S0_AXI_WDATA[8]),
        .Q(FSL1_S_Data_I[23]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[24].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[24].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S0_AXI_WDATA[7]),
        .Q(FSL1_S_Data_I[24]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[25].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[25].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S0_AXI_WDATA[6]),
        .Q(FSL1_S_Data_I[25]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[26].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[26].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S0_AXI_WDATA[5]),
        .Q(FSL1_S_Data_I[26]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[27].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[27].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S0_AXI_WDATA[4]),
        .Q(FSL1_S_Data_I[27]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[28].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[28].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S0_AXI_WDATA[3]),
        .Q(FSL1_S_Data_I[28]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[29].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[29].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S0_AXI_WDATA[2]),
        .Q(FSL1_S_Data_I[29]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[2].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[2].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S0_AXI_WDATA[29]),
        .Q(FSL1_S_Data_I[2]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[30].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[30].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S0_AXI_WDATA[1]),
        .Q(FSL1_S_Data_I[30]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[31].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[31].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S0_AXI_WDATA[0]),
        .Q(FSL1_S_Data_I[31]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[3].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[3].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S0_AXI_WDATA[28]),
        .Q(FSL1_S_Data_I[3]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[4].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[4].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S0_AXI_WDATA[27]),
        .Q(FSL1_S_Data_I[4]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[5].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[5].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S0_AXI_WDATA[26]),
        .Q(FSL1_S_Data_I[5]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[6].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[6].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S0_AXI_WDATA[25]),
        .Q(FSL1_S_Data_I[6]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[7].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[7].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S0_AXI_WDATA[24]),
        .Q(FSL1_S_Data_I[7]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[8].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[8].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S0_AXI_WDATA[23]),
        .Q(FSL1_S_Data_I[8]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/FIFO_RAM[9].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[9].SRL16E_I 
       (.A0(DI),
        .A1(Addr_2),
        .A2(Addr_1),
        .A3(Addr_0),
        .CE(CI),
        .CLK(S0_AXI_ACLK),
        .D(S0_AXI_WDATA[22]),
        .Q(FSL1_S_Data_I[9]));
  LUT4 #(
    .INIT(16'h8000)) 
    buffer_full_early
       (.I0(sum_A_3),
        .I1(sum_A_2),
        .I2(sum_A_0),
        .I3(sum_A_1),
        .O(D));
  FDRE data_Exists_I_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(data_Exists_I_reg_1),
        .Q(data_Exists_I_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7FFFFFFE80000001)) 
    \fifo_length_i[0]_i_2 
       (.I0(fifo_length_i11_out),
        .I1(\fifo_length_i_reg_n_0_[1] ),
        .I2(\fifo_length_i_reg_n_0_[3] ),
        .I3(\fifo_length_i_reg_n_0_[4] ),
        .I4(\fifo_length_i_reg_n_0_[2] ),
        .I5(\fifo_length_i_reg_n_0_[0] ),
        .O(\fifo_length_i[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h7FFE8001)) 
    \fifo_length_i[1]_i_1 
       (.I0(fifo_length_i11_out),
        .I1(\fifo_length_i_reg_n_0_[2] ),
        .I2(\fifo_length_i_reg_n_0_[4] ),
        .I3(\fifo_length_i_reg_n_0_[3] ),
        .I4(\fifo_length_i_reg_n_0_[1] ),
        .O(\fifo_length_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h7E81)) 
    \fifo_length_i[2]_i_1 
       (.I0(fifo_length_i11_out),
        .I1(\fifo_length_i_reg_n_0_[3] ),
        .I2(\fifo_length_i_reg_n_0_[4] ),
        .I3(\fifo_length_i_reg_n_0_[2] ),
        .O(\fifo_length_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \fifo_length_i[3]_i_1 
       (.I0(fifo_length_i11_out),
        .I1(\fifo_length_i_reg_n_0_[3] ),
        .I2(\fifo_length_i_reg_n_0_[4] ),
        .O(\fifo_length_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \fifo_length_i[4]_i_1 
       (.I0(\fifo_length_i_reg_n_0_[4] ),
        .O(\fifo_length_i[4]_i_1_n_0 ));
  FDRE \fifo_length_i_reg[0] 
       (.C(S0_AXI_ACLK),
        .CE(E),
        .D(\fifo_length_i[0]_i_2_n_0 ),
        .Q(\fifo_length_i_reg_n_0_[0] ),
        .R(SR));
  FDRE \fifo_length_i_reg[1] 
       (.C(S0_AXI_ACLK),
        .CE(E),
        .D(\fifo_length_i[1]_i_1_n_0 ),
        .Q(\fifo_length_i_reg_n_0_[1] ),
        .R(SR));
  FDRE \fifo_length_i_reg[2] 
       (.C(S0_AXI_ACLK),
        .CE(E),
        .D(\fifo_length_i[2]_i_1_n_0 ),
        .Q(\fifo_length_i_reg_n_0_[2] ),
        .R(SR));
  FDRE \fifo_length_i_reg[3] 
       (.C(S0_AXI_ACLK),
        .CE(E),
        .D(\fifo_length_i[3]_i_1_n_0 ),
        .Q(\fifo_length_i_reg_n_0_[3] ),
        .R(SR));
  FDRE \fifo_length_i_reg[4] 
       (.C(S0_AXI_ACLK),
        .CE(E),
        .D(\fifo_length_i[4]_i_1_n_0 ),
        .Q(\fifo_length_i_reg_n_0_[4] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hFFB2)) 
    rit_detect_d1_i_1__0
       (.I0(rit_detect_d1_i_2__0_n_0),
        .I1(rit_detect_d1_reg[3]),
        .I2(\fifo_length_i_reg_n_0_[1] ),
        .I3(\fifo_length_i_reg_n_0_[0] ),
        .O(rit_detect_d0));
  LUT6 #(
    .INIT(64'h2F02FFFF00002F02)) 
    rit_detect_d1_i_2__0
       (.I0(\fifo_length_i_reg_n_0_[4] ),
        .I1(rit_detect_d1_reg[0]),
        .I2(rit_detect_d1_reg[1]),
        .I3(\fifo_length_i_reg_n_0_[3] ),
        .I4(rit_detect_d1_reg[2]),
        .I5(\fifo_length_i_reg_n_0_[2] ),
        .O(rit_detect_d1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata_i[1]_i_5 
       (.I0(FDRE_I1_0),
        .I1(SYS_Rst_I),
        .O(FSL0_M_Full_I));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h00B2)) 
    sit_detect_d1_i_1
       (.I0(Q[3]),
        .I1(\fifo_length_i_reg_n_0_[1] ),
        .I2(sit_detect_d1_i_2_n_0),
        .I3(\fifo_length_i_reg_n_0_[0] ),
        .O(\sit_register_reg[0] ));
  LUT6 #(
    .INIT(64'hDF0DFFFF0000DF0D)) 
    sit_detect_d1_i_2
       (.I0(\fifo_length_i_reg_n_0_[4] ),
        .I1(Q[0]),
        .I2(\fifo_length_i_reg_n_0_[3] ),
        .I3(Q[1]),
        .I4(\fifo_length_i_reg_n_0_[2] ),
        .I5(Q[2]),
        .O(sit_detect_d1_i_2_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Sync_FIFO
   (FDRE_I1,
    data_Exists_I_reg,
    FSL0_S_Data_I,
    FSL1_M_Full_I,
    \Addr_Counters[0].FDRE_I ,
    rit_detect_d0,
    \sit_register_reg[0] ,
    SR,
    S0_AXI_ACLK,
    CI,
    S1_AXI_WDATA,
    data_Exists_I_reg_0,
    fifo_length_i11_out,
    SYS_Rst_I,
    rit_detect_d1_reg,
    Q,
    FSL1_M_Write_I,
    Bus_RNW_reg,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    E);
  output FDRE_I1;
  output data_Exists_I_reg;
  output [0:31]FSL0_S_Data_I;
  output FSL1_M_Full_I;
  output \Addr_Counters[0].FDRE_I ;
  output rit_detect_d0;
  output \sit_register_reg[0] ;
  input [0:0]SR;
  input S0_AXI_ACLK;
  input CI;
  input [31:0]S1_AXI_WDATA;
  input data_Exists_I_reg_0;
  input fifo_length_i11_out;
  input SYS_Rst_I;
  input [3:0]rit_detect_d1_reg;
  input [3:0]Q;
  input FSL1_M_Write_I;
  input Bus_RNW_reg;
  input \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  input [0:0]E;

  wire \Addr_Counters[0].FDRE_I ;
  wire Bus_RNW_reg;
  wire CI;
  wire [0:0]E;
  wire FDRE_I1;
  wire [0:31]FSL0_S_Data_I;
  wire FSL1_M_Full_I;
  wire FSL1_M_Write_I;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire [3:0]Q;
  wire S0_AXI_ACLK;
  wire [31:0]S1_AXI_WDATA;
  wire [0:0]SR;
  wire SYS_Rst_I;
  wire data_Exists_I_reg;
  wire data_Exists_I_reg_0;
  wire fifo_length_i11_out;
  wire rit_detect_d0;
  wire [3:0]rit_detect_d1_reg;
  wire \sit_register_reg[0] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SRL_FIFO \Sync_FIFO_I.srl_fifo_i.FSL_FIFO 
       (.\Addr_Counters[0].FDRE_I_0 (\Addr_Counters[0].FDRE_I ),
        .Bus_RNW_reg(Bus_RNW_reg),
        .CI(CI),
        .E(E),
        .FDRE_I1_0(FDRE_I1),
        .FSL0_S_Data_I(FSL0_S_Data_I),
        .FSL1_M_Full_I(FSL1_M_Full_I),
        .FSL1_M_Write_I(FSL1_M_Write_I),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .Q(Q),
        .S0_AXI_ACLK(S0_AXI_ACLK),
        .S1_AXI_WDATA(S1_AXI_WDATA),
        .SR(SR),
        .SYS_Rst_I(SYS_Rst_I),
        .data_Exists_I_reg_0(data_Exists_I_reg),
        .data_Exists_I_reg_1(data_Exists_I_reg_0),
        .fifo_length_i11_out(fifo_length_i11_out),
        .rit_detect_d0(rit_detect_d0),
        .rit_detect_d1_reg(rit_detect_d1_reg),
        .\sit_register_reg[0] (\sit_register_reg[0] ));
endmodule

(* ORIG_REF_NAME = "Sync_FIFO" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Sync_FIFO_2
   (FDRE_I1,
    data_Exists_I_reg,
    FSL1_S_Data_I,
    FSL0_M_Full_I,
    \Addr_Counters[0].FDRE_I ,
    rit_detect_d0,
    \sit_register_reg[0] ,
    SR,
    S0_AXI_ACLK,
    CI,
    S0_AXI_WDATA,
    data_Exists_I_reg_0,
    fifo_length_i11_out,
    SYS_Rst_I,
    Q,
    rit_detect_d1_reg,
    Bus_RNW_reg,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    FSL0_M_Write_I,
    E);
  output FDRE_I1;
  output data_Exists_I_reg;
  output [0:31]FSL1_S_Data_I;
  output FSL0_M_Full_I;
  output \Addr_Counters[0].FDRE_I ;
  output rit_detect_d0;
  output \sit_register_reg[0] ;
  input [0:0]SR;
  input S0_AXI_ACLK;
  input CI;
  input [31:0]S0_AXI_WDATA;
  input data_Exists_I_reg_0;
  input fifo_length_i11_out;
  input SYS_Rst_I;
  input [3:0]Q;
  input [3:0]rit_detect_d1_reg;
  input Bus_RNW_reg;
  input \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  input FSL0_M_Write_I;
  input [0:0]E;

  wire \Addr_Counters[0].FDRE_I ;
  wire Bus_RNW_reg;
  wire CI;
  wire [0:0]E;
  wire FDRE_I1;
  wire FSL0_M_Full_I;
  wire FSL0_M_Write_I;
  wire [0:31]FSL1_S_Data_I;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire [3:0]Q;
  wire S0_AXI_ACLK;
  wire [31:0]S0_AXI_WDATA;
  wire [0:0]SR;
  wire SYS_Rst_I;
  wire data_Exists_I_reg;
  wire data_Exists_I_reg_0;
  wire fifo_length_i11_out;
  wire rit_detect_d0;
  wire [3:0]rit_detect_d1_reg;
  wire \sit_register_reg[0] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SRL_FIFO_3 \Sync_FIFO_I.srl_fifo_i.FSL_FIFO 
       (.\Addr_Counters[0].FDRE_I_0 (\Addr_Counters[0].FDRE_I ),
        .Bus_RNW_reg(Bus_RNW_reg),
        .CI(CI),
        .E(E),
        .FDRE_I1_0(FDRE_I1),
        .FSL0_M_Full_I(FSL0_M_Full_I),
        .FSL0_M_Write_I(FSL0_M_Write_I),
        .FSL1_S_Data_I(FSL1_S_Data_I),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .Q(Q),
        .S0_AXI_ACLK(S0_AXI_ACLK),
        .S0_AXI_WDATA(S0_AXI_WDATA),
        .SR(SR),
        .SYS_Rst_I(SYS_Rst_I),
        .data_Exists_I_reg_0(data_Exists_I_reg),
        .data_Exists_I_reg_1(data_Exists_I_reg_0),
        .fifo_length_i11_out(fifo_length_i11_out),
        .rit_detect_d0(rit_detect_d0),
        .rit_detect_d1_reg(rit_detect_d1_reg),
        .\sit_register_reg[0] (\sit_register_reg[0] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder
   (\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ,
    Bus_RNW_reg_reg_0,
    D,
    is_read_reg,
    read_fsl_error,
    write_fsl_error,
    FSL1_M_Write_I,
    FSL_M_Reset0,
    FSL_S_Reset0,
    empty_error,
    \FIFO_RAM[0].SRL16E_I ,
    \FSM_onehot_state_reg[2] ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    \state_reg[0] ,
    \state_reg[1] ,
    E,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0 ,
    error_detect,
    Bus_RNW_reg_reg_1,
    Bus_RNW_reg_reg_2,
    fifo_length_i11_out,
    CI,
    Bus_RNW_reg_reg_3,
    start2,
    S1_AXI_ACLK,
    state1__2,
    p_5_in,
    S1_AXI_ARVALID,
    Q,
    FSL1_S_Exists_I,
    FSL1_M_Full_I,
    S1_AXI_WDATA,
    SYS_Rst_I,
    \s_axi_rdata_i_reg[1] ,
    rit_detect_d0,
    \s_axi_rdata_i_reg[2] ,
    \s_axi_rdata_i_reg[0] ,
    \FSM_onehot_state_reg[3] ,
    S1_AXI_ARREADY,
    \s_axi_rdata_i_reg[3] ,
    is_register,
    \s_axi_rdata_i_reg[3]_0 ,
    S1_AXI_AWREADY,
    S1_AXI_AWREADY_0,
    S1_AXI_RREADY,
    S1_AXI_RVALID,
    S1_AXI_BREADY,
    S1_AXI_BVALID,
    FSL1_S_Data_I,
    \s_axi_rdata_i_reg[2]_0 ,
    Bus_RNW_reg_reg_4,
    write_fsl_error_d1,
    read_fsl_error_d1,
    FSL0_M_Write_I,
    \FIFO_RAM[31].SRL16E_I ,
    buffer_Empty__2,
    data_Exists_I_reg,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 );
  output \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ;
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ;
  output Bus_RNW_reg_reg_0;
  output [1:0]D;
  output is_read_reg;
  output read_fsl_error;
  output write_fsl_error;
  output FSL1_M_Write_I;
  output FSL_M_Reset0;
  output FSL_S_Reset0;
  output empty_error;
  output [31:0]\FIFO_RAM[0].SRL16E_I ;
  output [2:0]\FSM_onehot_state_reg[2] ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  output \state_reg[0] ;
  output \state_reg[1] ;
  output [0:0]E;
  output [0:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ;
  output [0:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0 ;
  output error_detect;
  output Bus_RNW_reg_reg_1;
  output [0:0]Bus_RNW_reg_reg_2;
  output fifo_length_i11_out;
  output CI;
  output Bus_RNW_reg_reg_3;
  input start2;
  input S1_AXI_ACLK;
  input state1__2;
  input p_5_in;
  input S1_AXI_ARVALID;
  input [1:0]Q;
  input FSL1_S_Exists_I;
  input FSL1_M_Full_I;
  input [1:0]S1_AXI_WDATA;
  input SYS_Rst_I;
  input \s_axi_rdata_i_reg[1] ;
  input rit_detect_d0;
  input \s_axi_rdata_i_reg[2] ;
  input \s_axi_rdata_i_reg[0] ;
  input [3:0]\FSM_onehot_state_reg[3] ;
  input S1_AXI_ARREADY;
  input [3:0]\s_axi_rdata_i_reg[3] ;
  input [0:2]is_register;
  input [3:0]\s_axi_rdata_i_reg[3]_0 ;
  input S1_AXI_AWREADY;
  input [4:0]S1_AXI_AWREADY_0;
  input S1_AXI_RREADY;
  input S1_AXI_RVALID;
  input S1_AXI_BREADY;
  input S1_AXI_BVALID;
  input [0:31]FSL1_S_Data_I;
  input [2:0]\s_axi_rdata_i_reg[2]_0 ;
  input Bus_RNW_reg_reg_4;
  input write_fsl_error_d1;
  input read_fsl_error_d1;
  input FSL0_M_Write_I;
  input \FIFO_RAM[31].SRL16E_I ;
  input buffer_Empty__2;
  input [0:0]data_Exists_I_reg;
  input [3:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ;

  wire Bus_RNW_reg_i_1__0_n_0;
  wire Bus_RNW_reg_reg_0;
  wire Bus_RNW_reg_reg_1;
  wire [0:0]Bus_RNW_reg_reg_2;
  wire Bus_RNW_reg_reg_3;
  wire Bus_RNW_reg_reg_4;
  wire CI;
  wire [1:0]D;
  wire [0:0]E;
  wire [31:0]\FIFO_RAM[0].SRL16E_I ;
  wire \FIFO_RAM[31].SRL16E_I ;
  wire FSL0_M_Write_I;
  wire FSL1_M_Full_I;
  wire FSL1_M_Write_I;
  wire [0:31]FSL1_S_Data_I;
  wire FSL1_S_Exists_I;
  wire FSL_M_Reset0;
  wire FSL_S_Reset0;
  wire [2:0]\FSM_onehot_state_reg[2] ;
  wire [3:0]\FSM_onehot_state_reg[3] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ;
  wire [3:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ;
  wire [1:0]Q;
  wire S1_AXI_ACLK;
  wire S1_AXI_ARREADY;
  wire S1_AXI_ARREADY_INST_0_i_3_n_0;
  wire S1_AXI_ARREADY_INST_0_i_4_n_0;
  wire S1_AXI_ARVALID;
  wire S1_AXI_AWREADY;
  wire [4:0]S1_AXI_AWREADY_0;
  wire S1_AXI_BREADY;
  wire S1_AXI_BVALID;
  wire S1_AXI_RREADY;
  wire S1_AXI_RVALID;
  wire [1:0]S1_AXI_WDATA;
  wire S1_AXI_WREADY_INST_0_i_1_n_0;
  wire SYS_Rst_I;
  wire buffer_Empty__2;
  wire [7:1]bus2ip_rdce;
  wire ce_expnd_i_0;
  wire ce_expnd_i_1;
  wire ce_expnd_i_11;
  wire ce_expnd_i_2;
  wire ce_expnd_i_3;
  wire ce_expnd_i_4;
  wire ce_expnd_i_5;
  wire ce_expnd_i_6;
  wire ce_expnd_i_7;
  wire ce_expnd_i_9;
  wire [0:0]data_Exists_I_reg;
  wire empty_error;
  wire eqOp__3;
  wire error_detect;
  wire fifo_length_i11_out;
  wire is_read_reg;
  wire [0:2]is_register;
  wire p_5_in;
  wire read_fsl_error;
  wire read_fsl_error_d1;
  wire rit_detect_d0;
  wire \s_axi_rdata_i[0]_i_2__0_n_0 ;
  wire \s_axi_rdata_i[0]_i_3__0_n_0 ;
  wire \s_axi_rdata_i[1]_i_2__0_n_0 ;
  wire \s_axi_rdata_i[1]_i_3__0_n_0 ;
  wire \s_axi_rdata_i[2]_i_2__0_n_0 ;
  wire \s_axi_rdata_i[2]_i_3__0_n_0 ;
  wire \s_axi_rdata_i[31]_i_2__0_n_0 ;
  wire \s_axi_rdata_i[3]_i_2__0_n_0 ;
  wire \s_axi_rdata_i[3]_i_3__0_n_0 ;
  wire \s_axi_rdata_i_reg[0] ;
  wire \s_axi_rdata_i_reg[1] ;
  wire \s_axi_rdata_i_reg[2] ;
  wire [2:0]\s_axi_rdata_i_reg[2]_0 ;
  wire [3:0]\s_axi_rdata_i_reg[3] ;
  wire [3:0]\s_axi_rdata_i_reg[3]_0 ;
  wire start2;
  wire state1__2;
  wire \state_reg[0] ;
  wire \state_reg[1] ;
  wire write_fsl_error;
  wire write_fsl_error_d1;

  LUT5 #(
    .INIT(32'h8000FF00)) 
    \Addr_Counters[0].Used_MuxCY.MUXCY_L_I_i_2__0 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .I2(FSL1_S_Exists_I),
        .I3(FSL0_M_Write_I),
        .I4(\FIFO_RAM[31].SRL16E_I ),
        .O(CI));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \Addr_Counters[0].Used_MuxCY.MUXCY_L_I_i_3__0 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(FSL1_M_Full_I),
        .O(FSL1_M_Write_I));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1__0
       (.I0(Bus_RNW_reg_reg_4),
        .I1(start2),
        .I2(Bus_RNW_reg_reg_0),
        .O(Bus_RNW_reg_i_1__0_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1__0_n_0),
        .Q(Bus_RNW_reg_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h40)) 
    FSL_M_Reset_i_1__0
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg ),
        .I2(S1_AXI_WDATA[0]),
        .O(FSL_M_Reset0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h40)) 
    FSL_S_Reset_i_1__0
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg ),
        .I2(S1_AXI_WDATA[1]),
        .O(FSL_S_Reset0));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[1]_i_1__0 
       (.I0(\FSM_onehot_state_reg[3] [0]),
        .I1(S1_AXI_ARVALID),
        .I2(is_read_reg),
        .I3(\FSM_onehot_state_reg[3] [1]),
        .O(\FSM_onehot_state_reg[2] [0]));
  LUT5 #(
    .INIT(32'h20FF2020)) 
    \FSM_onehot_state[2]_i_1__0 
       (.I0(\FSM_onehot_state_reg[3] [0]),
        .I1(S1_AXI_ARVALID),
        .I2(p_5_in),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I4(\FSM_onehot_state_reg[3] [2]),
        .O(\FSM_onehot_state_reg[2] [1]));
  LUT6 #(
    .INIT(64'hF888F888FFFFF888)) 
    \FSM_onehot_state[3]_i_1__0 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[3] [2]),
        .I2(\FSM_onehot_state_reg[3] [1]),
        .I3(is_read_reg),
        .I4(\FSM_onehot_state_reg[3] [3]),
        .I5(state1__2),
        .O(\FSM_onehot_state_reg[2] [2]));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(S1_AXI_ACLK),
        .CE(start2),
        .D(ce_expnd_i_11),
        .Q(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] 
       (.C(S1_AXI_ACLK),
        .CE(start2),
        .D(ce_expnd_i_1),
        .Q(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0 
       (.I0(SYS_Rst_I),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(is_read_reg),
        .O(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] 
       (.C(S1_AXI_ACLK),
        .CE(start2),
        .D(ce_expnd_i_0),
        .Q(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(S1_AXI_ACLK),
        .CE(start2),
        .D(ce_expnd_i_9),
        .Q(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] 
       (.C(S1_AXI_ACLK),
        .CE(start2),
        .D(ce_expnd_i_7),
        .Q(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] 
       (.C(S1_AXI_ACLK),
        .CE(start2),
        .D(ce_expnd_i_6),
        .Q(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] 
       (.C(S1_AXI_ACLK),
        .CE(start2),
        .D(ce_expnd_i_5),
        .Q(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] 
       (.C(S1_AXI_ACLK),
        .CE(start2),
        .D(ce_expnd_i_4),
        .Q(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] 
       (.C(S1_AXI_ACLK),
        .CE(start2),
        .D(ce_expnd_i_3),
        .Q(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] 
       (.C(S1_AXI_ACLK),
        .CE(start2),
        .D(ce_expnd_i_2),
        .Q(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f \MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_11(ce_expnd_i_11));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized9 \MEM_DECODE_GEN[0].PER_CE_GEN[10].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_1(ce_expnd_i_1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized10 \MEM_DECODE_GEN[0].PER_CE_GEN[11].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_0(ce_expnd_i_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized1 \MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_9(ce_expnd_i_9));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized3 \MEM_DECODE_GEN[0].PER_CE_GEN[4].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_7(ce_expnd_i_7));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized4 \MEM_DECODE_GEN[0].PER_CE_GEN[5].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_6(ce_expnd_i_6));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized5 \MEM_DECODE_GEN[0].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_5(ce_expnd_i_5));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized6 \MEM_DECODE_GEN[0].PER_CE_GEN[7].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_4(ce_expnd_i_4));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized7 \MEM_DECODE_GEN[0].PER_CE_GEN[8].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_3(ce_expnd_i_3));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized8 \MEM_DECODE_GEN[0].PER_CE_GEN[9].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_2(ce_expnd_i_2));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    S1_AXI_ARREADY_INST_0
       (.I0(bus2ip_rdce[5]),
        .I1(bus2ip_rdce[4]),
        .I2(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .I3(S1_AXI_ARREADY_INST_0_i_4_n_0),
        .I4(S1_AXI_ARREADY),
        .I5(eqOp__3),
        .O(is_read_reg));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    S1_AXI_ARREADY_INST_0_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_rdce[5]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    S1_AXI_ARREADY_INST_0_i_2
       (.I0(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_rdce[4]));
  LUT3 #(
    .INIT(8'hC8)) 
    S1_AXI_ARREADY_INST_0_i_3
       (.I0(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .I2(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ),
        .O(S1_AXI_ARREADY_INST_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hFF00FE00)) 
    S1_AXI_ARREADY_INST_0_i_4
       (.I0(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .O(S1_AXI_ARREADY_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFAFAEAFAEAFAE)) 
    S1_AXI_WREADY_INST_0
       (.I0(S1_AXI_WREADY_INST_0_i_1_n_0),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg_reg_0),
        .I3(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg ),
        .I4(S1_AXI_AWREADY),
        .I5(eqOp__3),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    S1_AXI_WREADY_INST_0_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .O(S1_AXI_WREADY_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000010)) 
    S1_AXI_WREADY_INST_0_i_2
       (.I0(S1_AXI_AWREADY_0[3]),
        .I1(S1_AXI_AWREADY_0[2]),
        .I2(S1_AXI_AWREADY_0[4]),
        .I3(S1_AXI_AWREADY_0[0]),
        .I4(S1_AXI_AWREADY_0[1]),
        .O(eqOp__3));
  LUT6 #(
    .INIT(64'h00000000FF70F0F0)) 
    data_Exists_I_i_1__0
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .I2(FSL1_S_Exists_I),
        .I3(FSL0_M_Write_I),
        .I4(buffer_Empty__2),
        .I5(data_Exists_I_reg),
        .O(Bus_RNW_reg_reg_3));
  LUT2 #(
    .INIT(4'hE)) 
    empty_error_i_1__0
       (.I0(SYS_Rst_I),
        .I1(bus2ip_rdce[6]),
        .O(empty_error));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    empty_error_i_2__0
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .I2(FSL1_S_Exists_I),
        .I3(\s_axi_rdata_i_reg[0] ),
        .O(Bus_RNW_reg_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h00807F80)) 
    \fifo_length_i[0]_i_1__0 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .I2(FSL1_S_Exists_I),
        .I3(FSL0_M_Write_I),
        .I4(\FIFO_RAM[31].SRL16E_I ),
        .O(Bus_RNW_reg_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h00007F00)) 
    \fifo_length_i[0]_i_3__0 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .I2(FSL1_S_Exists_I),
        .I3(FSL0_M_Write_I),
        .I4(\FIFO_RAM[31].SRL16E_I ),
        .O(fifo_length_i11_out));
  LUT2 #(
    .INIT(4'h2)) 
    \ie_register[0]_i_1__0 
       (.I0(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ));
  LUT6 #(
    .INIT(64'h00FF000008FF0808)) 
    \is_register[0]_i_2__0 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .I2(FSL1_S_Exists_I),
        .I3(write_fsl_error_d1),
        .I4(write_fsl_error),
        .I5(read_fsl_error_d1),
        .O(error_detect));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h08)) 
    read_fsl_error_d1_i_1__0
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .I2(FSL1_S_Exists_I),
        .O(read_fsl_error));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rit_register[0]_i_1__0 
       (.I0(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0 ));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_bvalid_i_i_1__0
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(S1_AXI_BREADY),
        .I4(S1_AXI_BVALID),
        .O(\state_reg[1] ));
  LUT6 #(
    .INIT(64'h00FE000EFFFEFF0E)) 
    \s_axi_rdata_i[0]_i_1__0 
       (.I0(\s_axi_rdata_i[0]_i_2__0_n_0 ),
        .I1(\s_axi_rdata_i[0]_i_3__0_n_0 ),
        .I2(bus2ip_rdce[6]),
        .I3(bus2ip_rdce[7]),
        .I4(\s_axi_rdata_i_reg[0] ),
        .I5(FSL1_S_Exists_I),
        .O(\FIFO_RAM[0].SRL16E_I [0]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \s_axi_rdata_i[0]_i_2__0 
       (.I0(\s_axi_rdata_i_reg[3] [0]),
        .I1(is_register[2]),
        .I2(\s_axi_rdata_i_reg[3]_0 [0]),
        .I3(bus2ip_rdce[5]),
        .I4(bus2ip_rdce[3]),
        .I5(bus2ip_rdce[4]),
        .O(\s_axi_rdata_i[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA88B8B8)) 
    \s_axi_rdata_i[0]_i_3__0 
       (.I0(\s_axi_rdata_i_reg[2]_0 [0]),
        .I1(bus2ip_rdce[2]),
        .I2(FSL1_S_Data_I[31]),
        .I3(is_register[2]),
        .I4(bus2ip_rdce[1]),
        .I5(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .O(\s_axi_rdata_i[0]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[10]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL1_S_Data_I[21]),
        .I3(bus2ip_rdce[2]),
        .I4(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [10]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[11]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL1_S_Data_I[20]),
        .I3(bus2ip_rdce[2]),
        .I4(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [11]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[12]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL1_S_Data_I[19]),
        .I3(bus2ip_rdce[2]),
        .I4(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [12]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[13]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL1_S_Data_I[18]),
        .I3(bus2ip_rdce[2]),
        .I4(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [13]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[14]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL1_S_Data_I[17]),
        .I3(bus2ip_rdce[2]),
        .I4(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [14]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[15]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL1_S_Data_I[16]),
        .I3(bus2ip_rdce[2]),
        .I4(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [15]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[16]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL1_S_Data_I[15]),
        .I3(bus2ip_rdce[2]),
        .I4(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [16]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[17]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL1_S_Data_I[14]),
        .I3(bus2ip_rdce[2]),
        .I4(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [17]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[18]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL1_S_Data_I[13]),
        .I3(bus2ip_rdce[2]),
        .I4(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [18]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[19]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL1_S_Data_I[12]),
        .I3(bus2ip_rdce[2]),
        .I4(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [19]));
  LUT6 #(
    .INIT(64'hFFFEFF0E00FE000E)) 
    \s_axi_rdata_i[1]_i_1__0 
       (.I0(\s_axi_rdata_i[1]_i_2__0_n_0 ),
        .I1(\s_axi_rdata_i[1]_i_3__0_n_0 ),
        .I2(bus2ip_rdce[6]),
        .I3(bus2ip_rdce[7]),
        .I4(\s_axi_rdata_i_reg[1] ),
        .I5(FSL1_M_Full_I),
        .O(\FIFO_RAM[0].SRL16E_I [1]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \s_axi_rdata_i[1]_i_2__0 
       (.I0(\s_axi_rdata_i_reg[3] [1]),
        .I1(is_register[1]),
        .I2(\s_axi_rdata_i_reg[3]_0 [1]),
        .I3(bus2ip_rdce[5]),
        .I4(bus2ip_rdce[3]),
        .I5(bus2ip_rdce[4]),
        .O(\s_axi_rdata_i[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA88B8B8)) 
    \s_axi_rdata_i[1]_i_3__0 
       (.I0(\s_axi_rdata_i_reg[2]_0 [1]),
        .I1(bus2ip_rdce[2]),
        .I2(FSL1_S_Data_I[30]),
        .I3(is_register[1]),
        .I4(bus2ip_rdce[1]),
        .I5(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .O(\s_axi_rdata_i[1]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_rdata_i[1]_i_4__0 
       (.I0(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_rdce[6]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[20]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL1_S_Data_I[11]),
        .I3(bus2ip_rdce[2]),
        .I4(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [20]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[21]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL1_S_Data_I[10]),
        .I3(bus2ip_rdce[2]),
        .I4(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [21]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[22]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL1_S_Data_I[9]),
        .I3(bus2ip_rdce[2]),
        .I4(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [22]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[23]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL1_S_Data_I[8]),
        .I3(bus2ip_rdce[2]),
        .I4(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [23]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[24]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL1_S_Data_I[7]),
        .I3(bus2ip_rdce[2]),
        .I4(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [24]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[25]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL1_S_Data_I[6]),
        .I3(bus2ip_rdce[2]),
        .I4(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [25]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[26]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL1_S_Data_I[5]),
        .I3(bus2ip_rdce[2]),
        .I4(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [26]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[27]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL1_S_Data_I[4]),
        .I3(bus2ip_rdce[2]),
        .I4(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [27]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[28]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL1_S_Data_I[3]),
        .I3(bus2ip_rdce[2]),
        .I4(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [28]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[29]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL1_S_Data_I[2]),
        .I3(bus2ip_rdce[2]),
        .I4(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [29]));
  LUT5 #(
    .INIT(32'hFE0E0E0E)) 
    \s_axi_rdata_i[2]_i_1__0 
       (.I0(\s_axi_rdata_i[2]_i_2__0_n_0 ),
        .I1(\s_axi_rdata_i[2]_i_3__0_n_0 ),
        .I2(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .I3(\s_axi_rdata_i_reg[2] ),
        .I4(bus2ip_rdce[7]),
        .O(\FIFO_RAM[0].SRL16E_I [2]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \s_axi_rdata_i[2]_i_2__0 
       (.I0(\s_axi_rdata_i_reg[3] [2]),
        .I1(is_register[0]),
        .I2(\s_axi_rdata_i_reg[3]_0 [2]),
        .I3(bus2ip_rdce[5]),
        .I4(bus2ip_rdce[3]),
        .I5(bus2ip_rdce[4]),
        .O(\s_axi_rdata_i[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA88B8B8)) 
    \s_axi_rdata_i[2]_i_3__0 
       (.I0(\s_axi_rdata_i_reg[2]_0 [2]),
        .I1(bus2ip_rdce[2]),
        .I2(FSL1_S_Data_I[29]),
        .I3(is_register[0]),
        .I4(bus2ip_rdce[1]),
        .I5(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .O(\s_axi_rdata_i[2]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[30]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL1_S_Data_I[1]),
        .I3(bus2ip_rdce[2]),
        .I4(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [30]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[31]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL1_S_Data_I[0]),
        .I3(bus2ip_rdce[2]),
        .I4(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [31]));
  LUT3 #(
    .INIT(8'hFE)) 
    \s_axi_rdata_i[31]_i_2__0 
       (.I0(bus2ip_rdce[4]),
        .I1(bus2ip_rdce[3]),
        .I2(bus2ip_rdce[5]),
        .O(\s_axi_rdata_i[31]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_rdata_i[31]_i_3__0 
       (.I0(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_rdce[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_rdata_i[31]_i_4__0 
       (.I0(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_rdce[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_rdata_i[31]_i_5__0 
       (.I0(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_rdce[3]));
  LUT5 #(
    .INIT(32'hFE0E0E0E)) 
    \s_axi_rdata_i[3]_i_1__0 
       (.I0(\s_axi_rdata_i[3]_i_2__0_n_0 ),
        .I1(\s_axi_rdata_i[3]_i_3__0_n_0 ),
        .I2(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .I3(rit_detect_d0),
        .I4(bus2ip_rdce[7]),
        .O(\FIFO_RAM[0].SRL16E_I [3]));
  LUT5 #(
    .INIT(32'hB8880000)) 
    \s_axi_rdata_i[3]_i_2__0 
       (.I0(\s_axi_rdata_i_reg[3] [3]),
        .I1(bus2ip_rdce[5]),
        .I2(bus2ip_rdce[4]),
        .I3(\s_axi_rdata_i_reg[3]_0 [3]),
        .I4(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .O(\s_axi_rdata_i[3]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \s_axi_rdata_i[3]_i_3__0 
       (.I0(bus2ip_rdce[2]),
        .I1(FSL1_S_Data_I[28]),
        .I2(bus2ip_rdce[1]),
        .I3(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .O(\s_axi_rdata_i[3]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_rdata_i[3]_i_4__0 
       (.I0(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_rdce[7]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[4]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL1_S_Data_I[27]),
        .I3(bus2ip_rdce[2]),
        .I4(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [4]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[5]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL1_S_Data_I[26]),
        .I3(bus2ip_rdce[2]),
        .I4(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [5]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[6]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL1_S_Data_I[25]),
        .I3(bus2ip_rdce[2]),
        .I4(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [6]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[7]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL1_S_Data_I[24]),
        .I3(bus2ip_rdce[2]),
        .I4(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [7]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[8]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL1_S_Data_I[23]),
        .I3(bus2ip_rdce[2]),
        .I4(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [8]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[9]_i_1__0 
       (.I0(\s_axi_rdata_i[31]_i_2__0_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL1_S_Data_I[22]),
        .I3(bus2ip_rdce[2]),
        .I4(S1_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [9]));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_rvalid_i_i_1__0
       (.I0(is_read_reg),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(S1_AXI_RREADY),
        .I4(S1_AXI_RVALID),
        .O(\state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sit_register[0]_i_1__0 
       (.I0(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(E));
  LUT5 #(
    .INIT(32'h0FCAFFCA)) 
    \state[0]_i_1__0 
       (.I0(S1_AXI_ARVALID),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(state1__2),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h55FFFF0C5500FF0C)) 
    \state[1]_i_1__0 
       (.I0(state1__2),
        .I1(p_5_in),
        .I2(S1_AXI_ARVALID),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(is_read_reg),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h40)) 
    write_fsl_error_d1_i_1__0
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(FSL1_M_Full_I),
        .O(write_fsl_error));
endmodule

(* ORIG_REF_NAME = "address_decoder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder_6
   (\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ,
    Bus_RNW_reg_reg_0,
    D,
    is_read_reg,
    read_fsl_error,
    write_fsl_error,
    FSL0_M_Write_I,
    FSL_M_Reset0,
    FSL_S_Reset0,
    empty_error,
    \FIFO_RAM[0].SRL16E_I ,
    \FSM_onehot_state_reg[2] ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    \state_reg[0] ,
    \state_reg[1] ,
    E,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0 ,
    error_detect,
    Bus_RNW_reg_reg_1,
    Bus_RNW_reg_reg_2,
    fifo_length_i11_out,
    CI,
    Bus_RNW_reg_reg_3,
    start2,
    S0_AXI_ACLK,
    state1__2,
    p_5_in,
    S0_AXI_ARVALID,
    Q,
    FSL0_S_Exists_I,
    FSL0_M_Full_I,
    S0_AXI_WDATA,
    SYS_Rst_I,
    data1,
    rit_detect_d0,
    \s_axi_rdata_i_reg[2] ,
    \FSM_onehot_state_reg[3] ,
    S0_AXI_ARREADY,
    \s_axi_rdata_i_reg[3] ,
    is_register,
    \s_axi_rdata_i_reg[3]_0 ,
    S0_AXI_AWREADY,
    S0_AXI_AWREADY_0,
    S0_AXI_RREADY,
    S0_AXI_RVALID,
    S0_AXI_BREADY,
    S0_AXI_BVALID,
    FSL0_S_Data_I,
    \s_axi_rdata_i_reg[2]_0 ,
    bus2ip_rnw_i,
    write_fsl_error_d1,
    read_fsl_error_d1,
    FSL1_M_Write_I,
    \FIFO_RAM[31].SRL16E_I ,
    buffer_Empty__2,
    data_Exists_I_reg,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 );
  output \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ;
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ;
  output Bus_RNW_reg_reg_0;
  output [1:0]D;
  output is_read_reg;
  output read_fsl_error;
  output write_fsl_error;
  output FSL0_M_Write_I;
  output FSL_M_Reset0;
  output FSL_S_Reset0;
  output empty_error;
  output [31:0]\FIFO_RAM[0].SRL16E_I ;
  output [2:0]\FSM_onehot_state_reg[2] ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  output \state_reg[0] ;
  output \state_reg[1] ;
  output [0:0]E;
  output [0:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ;
  output [0:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0 ;
  output error_detect;
  output Bus_RNW_reg_reg_1;
  output [0:0]Bus_RNW_reg_reg_2;
  output fifo_length_i11_out;
  output CI;
  output Bus_RNW_reg_reg_3;
  input start2;
  input S0_AXI_ACLK;
  input state1__2;
  input p_5_in;
  input S0_AXI_ARVALID;
  input [1:0]Q;
  input FSL0_S_Exists_I;
  input FSL0_M_Full_I;
  input [1:0]S0_AXI_WDATA;
  input SYS_Rst_I;
  input [1:0]data1;
  input rit_detect_d0;
  input \s_axi_rdata_i_reg[2] ;
  input [3:0]\FSM_onehot_state_reg[3] ;
  input S0_AXI_ARREADY;
  input [3:0]\s_axi_rdata_i_reg[3] ;
  input [0:2]is_register;
  input [3:0]\s_axi_rdata_i_reg[3]_0 ;
  input S0_AXI_AWREADY;
  input [4:0]S0_AXI_AWREADY_0;
  input S0_AXI_RREADY;
  input S0_AXI_RVALID;
  input S0_AXI_BREADY;
  input S0_AXI_BVALID;
  input [0:31]FSL0_S_Data_I;
  input [2:0]\s_axi_rdata_i_reg[2]_0 ;
  input bus2ip_rnw_i;
  input write_fsl_error_d1;
  input read_fsl_error_d1;
  input FSL1_M_Write_I;
  input \FIFO_RAM[31].SRL16E_I ;
  input buffer_Empty__2;
  input [0:0]data_Exists_I_reg;
  input [3:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ;

  wire Bus_RNW_reg_i_1_n_0;
  wire Bus_RNW_reg_reg_0;
  wire Bus_RNW_reg_reg_1;
  wire [0:0]Bus_RNW_reg_reg_2;
  wire Bus_RNW_reg_reg_3;
  wire CI;
  wire [1:0]D;
  wire [0:0]E;
  wire [31:0]\FIFO_RAM[0].SRL16E_I ;
  wire \FIFO_RAM[31].SRL16E_I ;
  wire FSL0_M_Full_I;
  wire FSL0_M_Write_I;
  wire [0:31]FSL0_S_Data_I;
  wire FSL0_S_Exists_I;
  wire FSL1_M_Write_I;
  wire FSL_M_Reset0;
  wire FSL_S_Reset0;
  wire [2:0]\FSM_onehot_state_reg[2] ;
  wire [3:0]\FSM_onehot_state_reg[3] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ;
  wire [3:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ;
  wire [1:0]Q;
  wire S0_AXI_ACLK;
  wire S0_AXI_ARREADY;
  wire S0_AXI_ARREADY_INST_0_i_3_n_0;
  wire S0_AXI_ARREADY_INST_0_i_4_n_0;
  wire S0_AXI_ARVALID;
  wire S0_AXI_AWREADY;
  wire [4:0]S0_AXI_AWREADY_0;
  wire S0_AXI_BREADY;
  wire S0_AXI_BVALID;
  wire S0_AXI_RREADY;
  wire S0_AXI_RVALID;
  wire [1:0]S0_AXI_WDATA;
  wire S0_AXI_WREADY_INST_0_i_1_n_0;
  wire SYS_Rst_I;
  wire buffer_Empty__2;
  wire [7:1]bus2ip_rdce;
  wire bus2ip_rnw_i;
  wire ce_expnd_i_0;
  wire ce_expnd_i_1;
  wire ce_expnd_i_11;
  wire ce_expnd_i_2;
  wire ce_expnd_i_3;
  wire ce_expnd_i_4;
  wire ce_expnd_i_5;
  wire ce_expnd_i_6;
  wire ce_expnd_i_7;
  wire ce_expnd_i_9;
  wire [1:0]data1;
  wire [0:0]data_Exists_I_reg;
  wire empty_error;
  wire eqOp__3;
  wire error_detect;
  wire fifo_length_i11_out;
  wire is_read_reg;
  wire [0:2]is_register;
  wire p_5_in;
  wire read_fsl_error;
  wire read_fsl_error_d1;
  wire rit_detect_d0;
  wire \s_axi_rdata_i[0]_i_2_n_0 ;
  wire \s_axi_rdata_i[0]_i_3_n_0 ;
  wire \s_axi_rdata_i[1]_i_2_n_0 ;
  wire \s_axi_rdata_i[1]_i_3_n_0 ;
  wire \s_axi_rdata_i[2]_i_2_n_0 ;
  wire \s_axi_rdata_i[2]_i_3_n_0 ;
  wire \s_axi_rdata_i[31]_i_2_n_0 ;
  wire \s_axi_rdata_i[3]_i_2_n_0 ;
  wire \s_axi_rdata_i[3]_i_3_n_0 ;
  wire \s_axi_rdata_i_reg[2] ;
  wire [2:0]\s_axi_rdata_i_reg[2]_0 ;
  wire [3:0]\s_axi_rdata_i_reg[3] ;
  wire [3:0]\s_axi_rdata_i_reg[3]_0 ;
  wire start2;
  wire state1__2;
  wire \state_reg[0] ;
  wire \state_reg[1] ;
  wire write_fsl_error;
  wire write_fsl_error_d1;

  LUT5 #(
    .INIT(32'h8000FF00)) 
    \Addr_Counters[0].Used_MuxCY.MUXCY_L_I_i_2 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .I2(FSL0_S_Exists_I),
        .I3(FSL1_M_Write_I),
        .I4(\FIFO_RAM[31].SRL16E_I ),
        .O(CI));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \Addr_Counters[0].Used_MuxCY.MUXCY_L_I_i_3 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(FSL0_M_Full_I),
        .O(FSL0_M_Write_I));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(bus2ip_rnw_i),
        .I1(start2),
        .I2(Bus_RNW_reg_reg_0),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(Bus_RNW_reg_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h40)) 
    FSL_M_Reset_i_1
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg ),
        .I2(S0_AXI_WDATA[0]),
        .O(FSL_M_Reset0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h40)) 
    FSL_S_Reset_i_1
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg ),
        .I2(S0_AXI_WDATA[1]),
        .O(FSL_S_Reset0));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg[3] [0]),
        .I1(S0_AXI_ARVALID),
        .I2(is_read_reg),
        .I3(\FSM_onehot_state_reg[3] [1]),
        .O(\FSM_onehot_state_reg[2] [0]));
  LUT5 #(
    .INIT(32'h20FF2020)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg[3] [0]),
        .I1(S0_AXI_ARVALID),
        .I2(p_5_in),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I4(\FSM_onehot_state_reg[3] [2]),
        .O(\FSM_onehot_state_reg[2] [1]));
  LUT6 #(
    .INIT(64'hF888F888FFFFF888)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[3] [2]),
        .I2(\FSM_onehot_state_reg[3] [1]),
        .I3(is_read_reg),
        .I4(\FSM_onehot_state_reg[3] [3]),
        .I5(state1__2),
        .O(\FSM_onehot_state_reg[2] [2]));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(S0_AXI_ACLK),
        .CE(start2),
        .D(ce_expnd_i_11),
        .Q(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] 
       (.C(S0_AXI_ACLK),
        .CE(start2),
        .D(ce_expnd_i_1),
        .Q(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1 
       (.I0(SYS_Rst_I),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(is_read_reg),
        .O(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] 
       (.C(S0_AXI_ACLK),
        .CE(start2),
        .D(ce_expnd_i_0),
        .Q(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(S0_AXI_ACLK),
        .CE(start2),
        .D(ce_expnd_i_9),
        .Q(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] 
       (.C(S0_AXI_ACLK),
        .CE(start2),
        .D(ce_expnd_i_7),
        .Q(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] 
       (.C(S0_AXI_ACLK),
        .CE(start2),
        .D(ce_expnd_i_6),
        .Q(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] 
       (.C(S0_AXI_ACLK),
        .CE(start2),
        .D(ce_expnd_i_5),
        .Q(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] 
       (.C(S0_AXI_ACLK),
        .CE(start2),
        .D(ce_expnd_i_4),
        .Q(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] 
       (.C(S0_AXI_ACLK),
        .CE(start2),
        .D(ce_expnd_i_3),
        .Q(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] 
       (.C(S0_AXI_ACLK),
        .CE(start2),
        .D(ce_expnd_i_2),
        .Q(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .R(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f_7 \MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_11(ce_expnd_i_11));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized9_8 \MEM_DECODE_GEN[0].PER_CE_GEN[10].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_1(ce_expnd_i_1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized10_9 \MEM_DECODE_GEN[0].PER_CE_GEN[11].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_0(ce_expnd_i_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized1_10 \MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_9(ce_expnd_i_9));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized3_11 \MEM_DECODE_GEN[0].PER_CE_GEN[4].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_7(ce_expnd_i_7));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized4_12 \MEM_DECODE_GEN[0].PER_CE_GEN[5].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_6(ce_expnd_i_6));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized5_13 \MEM_DECODE_GEN[0].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_5(ce_expnd_i_5));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized6_14 \MEM_DECODE_GEN[0].PER_CE_GEN[7].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_4(ce_expnd_i_4));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized7_15 \MEM_DECODE_GEN[0].PER_CE_GEN[8].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_3(ce_expnd_i_3));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized8_16 \MEM_DECODE_GEN[0].PER_CE_GEN[9].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ),
        .ce_expnd_i_2(ce_expnd_i_2));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    S0_AXI_ARREADY_INST_0
       (.I0(bus2ip_rdce[5]),
        .I1(bus2ip_rdce[4]),
        .I2(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .I3(S0_AXI_ARREADY_INST_0_i_4_n_0),
        .I4(S0_AXI_ARREADY),
        .I5(eqOp__3),
        .O(is_read_reg));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    S0_AXI_ARREADY_INST_0_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_rdce[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    S0_AXI_ARREADY_INST_0_i_2
       (.I0(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_rdce[4]));
  LUT3 #(
    .INIT(8'hC8)) 
    S0_AXI_ARREADY_INST_0_i_3
       (.I0(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .I2(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ),
        .O(S0_AXI_ARREADY_INST_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFF00FE00)) 
    S0_AXI_ARREADY_INST_0_i_4
       (.I0(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .O(S0_AXI_ARREADY_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFAFAEAFAEAFAE)) 
    S0_AXI_WREADY_INST_0
       (.I0(S0_AXI_WREADY_INST_0_i_1_n_0),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg_reg_0),
        .I3(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg ),
        .I4(S0_AXI_AWREADY),
        .I5(eqOp__3),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    S0_AXI_WREADY_INST_0_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .O(S0_AXI_WREADY_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000010)) 
    S0_AXI_WREADY_INST_0_i_2
       (.I0(S0_AXI_AWREADY_0[3]),
        .I1(S0_AXI_AWREADY_0[2]),
        .I2(S0_AXI_AWREADY_0[4]),
        .I3(S0_AXI_AWREADY_0[0]),
        .I4(S0_AXI_AWREADY_0[1]),
        .O(eqOp__3));
  LUT6 #(
    .INIT(64'h00000000FF70F0F0)) 
    data_Exists_I_i_1
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .I2(FSL0_S_Exists_I),
        .I3(FSL1_M_Write_I),
        .I4(buffer_Empty__2),
        .I5(data_Exists_I_reg),
        .O(Bus_RNW_reg_reg_3));
  LUT2 #(
    .INIT(4'hE)) 
    empty_error_i_1
       (.I0(SYS_Rst_I),
        .I1(bus2ip_rdce[6]),
        .O(empty_error));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    empty_error_i_2
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .I2(FSL0_S_Exists_I),
        .I3(data1[0]),
        .O(Bus_RNW_reg_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00807F80)) 
    \fifo_length_i[0]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .I2(FSL0_S_Exists_I),
        .I3(FSL1_M_Write_I),
        .I4(\FIFO_RAM[31].SRL16E_I ),
        .O(Bus_RNW_reg_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00007F00)) 
    \fifo_length_i[0]_i_3 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .I2(FSL0_S_Exists_I),
        .I3(FSL1_M_Write_I),
        .I4(\FIFO_RAM[31].SRL16E_I ),
        .O(fifo_length_i11_out));
  LUT2 #(
    .INIT(4'h2)) 
    \ie_register[0]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ));
  LUT6 #(
    .INIT(64'h00FF000008FF0808)) 
    \is_register[0]_i_2 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .I2(FSL0_S_Exists_I),
        .I3(write_fsl_error_d1),
        .I4(write_fsl_error),
        .I5(read_fsl_error_d1),
        .O(error_detect));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h08)) 
    read_fsl_error_d1_i_1
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .I2(FSL0_S_Exists_I),
        .O(read_fsl_error));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rit_register[0]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0 ));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_bvalid_i_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(S0_AXI_BREADY),
        .I4(S0_AXI_BVALID),
        .O(\state_reg[1] ));
  LUT6 #(
    .INIT(64'h00FE000EFFFEFF0E)) 
    \s_axi_rdata_i[0]_i_1 
       (.I0(\s_axi_rdata_i[0]_i_2_n_0 ),
        .I1(\s_axi_rdata_i[0]_i_3_n_0 ),
        .I2(bus2ip_rdce[6]),
        .I3(bus2ip_rdce[7]),
        .I4(data1[0]),
        .I5(FSL0_S_Exists_I),
        .O(\FIFO_RAM[0].SRL16E_I [0]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \s_axi_rdata_i[0]_i_2 
       (.I0(\s_axi_rdata_i_reg[3] [0]),
        .I1(is_register[2]),
        .I2(\s_axi_rdata_i_reg[3]_0 [0]),
        .I3(bus2ip_rdce[5]),
        .I4(bus2ip_rdce[3]),
        .I5(bus2ip_rdce[4]),
        .O(\s_axi_rdata_i[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA88B8B8)) 
    \s_axi_rdata_i[0]_i_3 
       (.I0(\s_axi_rdata_i_reg[2]_0 [0]),
        .I1(bus2ip_rdce[2]),
        .I2(FSL0_S_Data_I[31]),
        .I3(is_register[2]),
        .I4(bus2ip_rdce[1]),
        .I5(\s_axi_rdata_i[31]_i_2_n_0 ),
        .O(\s_axi_rdata_i[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[10]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL0_S_Data_I[21]),
        .I3(bus2ip_rdce[2]),
        .I4(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [10]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[11]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL0_S_Data_I[20]),
        .I3(bus2ip_rdce[2]),
        .I4(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [11]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[12]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL0_S_Data_I[19]),
        .I3(bus2ip_rdce[2]),
        .I4(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [12]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[13]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL0_S_Data_I[18]),
        .I3(bus2ip_rdce[2]),
        .I4(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[14]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL0_S_Data_I[17]),
        .I3(bus2ip_rdce[2]),
        .I4(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [14]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[15]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL0_S_Data_I[16]),
        .I3(bus2ip_rdce[2]),
        .I4(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [15]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[16]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL0_S_Data_I[15]),
        .I3(bus2ip_rdce[2]),
        .I4(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [16]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[17]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL0_S_Data_I[14]),
        .I3(bus2ip_rdce[2]),
        .I4(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [17]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[18]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL0_S_Data_I[13]),
        .I3(bus2ip_rdce[2]),
        .I4(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [18]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[19]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL0_S_Data_I[12]),
        .I3(bus2ip_rdce[2]),
        .I4(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [19]));
  LUT6 #(
    .INIT(64'hFFFEFF0E00FE000E)) 
    \s_axi_rdata_i[1]_i_1 
       (.I0(\s_axi_rdata_i[1]_i_2_n_0 ),
        .I1(\s_axi_rdata_i[1]_i_3_n_0 ),
        .I2(bus2ip_rdce[6]),
        .I3(bus2ip_rdce[7]),
        .I4(data1[1]),
        .I5(FSL0_M_Full_I),
        .O(\FIFO_RAM[0].SRL16E_I [1]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \s_axi_rdata_i[1]_i_2 
       (.I0(\s_axi_rdata_i_reg[3] [1]),
        .I1(is_register[1]),
        .I2(\s_axi_rdata_i_reg[3]_0 [1]),
        .I3(bus2ip_rdce[5]),
        .I4(bus2ip_rdce[3]),
        .I5(bus2ip_rdce[4]),
        .O(\s_axi_rdata_i[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA88B8B8)) 
    \s_axi_rdata_i[1]_i_3 
       (.I0(\s_axi_rdata_i_reg[2]_0 [1]),
        .I1(bus2ip_rdce[2]),
        .I2(FSL0_S_Data_I[30]),
        .I3(is_register[1]),
        .I4(bus2ip_rdce[1]),
        .I5(\s_axi_rdata_i[31]_i_2_n_0 ),
        .O(\s_axi_rdata_i[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_rdata_i[1]_i_4 
       (.I0(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_rdce[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[20]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL0_S_Data_I[11]),
        .I3(bus2ip_rdce[2]),
        .I4(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [20]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[21]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL0_S_Data_I[10]),
        .I3(bus2ip_rdce[2]),
        .I4(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [21]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[22]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL0_S_Data_I[9]),
        .I3(bus2ip_rdce[2]),
        .I4(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [22]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[23]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL0_S_Data_I[8]),
        .I3(bus2ip_rdce[2]),
        .I4(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [23]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[24]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL0_S_Data_I[7]),
        .I3(bus2ip_rdce[2]),
        .I4(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [24]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[25]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL0_S_Data_I[6]),
        .I3(bus2ip_rdce[2]),
        .I4(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [25]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[26]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL0_S_Data_I[5]),
        .I3(bus2ip_rdce[2]),
        .I4(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [26]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[27]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL0_S_Data_I[4]),
        .I3(bus2ip_rdce[2]),
        .I4(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [27]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[28]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL0_S_Data_I[3]),
        .I3(bus2ip_rdce[2]),
        .I4(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [28]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[29]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL0_S_Data_I[2]),
        .I3(bus2ip_rdce[2]),
        .I4(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [29]));
  LUT5 #(
    .INIT(32'hFE0E0E0E)) 
    \s_axi_rdata_i[2]_i_1 
       (.I0(\s_axi_rdata_i[2]_i_2_n_0 ),
        .I1(\s_axi_rdata_i[2]_i_3_n_0 ),
        .I2(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .I3(\s_axi_rdata_i_reg[2] ),
        .I4(bus2ip_rdce[7]),
        .O(\FIFO_RAM[0].SRL16E_I [2]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \s_axi_rdata_i[2]_i_2 
       (.I0(\s_axi_rdata_i_reg[3] [2]),
        .I1(is_register[0]),
        .I2(\s_axi_rdata_i_reg[3]_0 [2]),
        .I3(bus2ip_rdce[5]),
        .I4(bus2ip_rdce[3]),
        .I5(bus2ip_rdce[4]),
        .O(\s_axi_rdata_i[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA88B8B8)) 
    \s_axi_rdata_i[2]_i_3 
       (.I0(\s_axi_rdata_i_reg[2]_0 [2]),
        .I1(bus2ip_rdce[2]),
        .I2(FSL0_S_Data_I[29]),
        .I3(is_register[0]),
        .I4(bus2ip_rdce[1]),
        .I5(\s_axi_rdata_i[31]_i_2_n_0 ),
        .O(\s_axi_rdata_i[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[30]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL0_S_Data_I[1]),
        .I3(bus2ip_rdce[2]),
        .I4(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [30]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[31]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL0_S_Data_I[0]),
        .I3(bus2ip_rdce[2]),
        .I4(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [31]));
  LUT3 #(
    .INIT(8'hFE)) 
    \s_axi_rdata_i[31]_i_2 
       (.I0(bus2ip_rdce[4]),
        .I1(bus2ip_rdce[3]),
        .I2(bus2ip_rdce[5]),
        .O(\s_axi_rdata_i[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_rdata_i[31]_i_3 
       (.I0(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_rdce[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_rdata_i[31]_i_4 
       (.I0(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_rdce[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_rdata_i[31]_i_5 
       (.I0(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_rdce[3]));
  LUT5 #(
    .INIT(32'hFE0E0E0E)) 
    \s_axi_rdata_i[3]_i_1 
       (.I0(\s_axi_rdata_i[3]_i_2_n_0 ),
        .I1(\s_axi_rdata_i[3]_i_3_n_0 ),
        .I2(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .I3(rit_detect_d0),
        .I4(bus2ip_rdce[7]),
        .O(\FIFO_RAM[0].SRL16E_I [3]));
  LUT5 #(
    .INIT(32'hB8880000)) 
    \s_axi_rdata_i[3]_i_2 
       (.I0(\s_axi_rdata_i_reg[3] [3]),
        .I1(bus2ip_rdce[5]),
        .I2(bus2ip_rdce[4]),
        .I3(\s_axi_rdata_i_reg[3]_0 [3]),
        .I4(\s_axi_rdata_i[31]_i_2_n_0 ),
        .O(\s_axi_rdata_i[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \s_axi_rdata_i[3]_i_3 
       (.I0(bus2ip_rdce[2]),
        .I1(FSL0_S_Data_I[28]),
        .I2(bus2ip_rdce[1]),
        .I3(\s_axi_rdata_i[31]_i_2_n_0 ),
        .O(\s_axi_rdata_i[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_rdata_i[3]_i_4 
       (.I0(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_rdce[7]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[4]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL0_S_Data_I[27]),
        .I3(bus2ip_rdce[2]),
        .I4(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[5]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL0_S_Data_I[26]),
        .I3(bus2ip_rdce[2]),
        .I4(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[6]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL0_S_Data_I[25]),
        .I3(bus2ip_rdce[2]),
        .I4(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[7]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL0_S_Data_I[24]),
        .I3(bus2ip_rdce[2]),
        .I4(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[8]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL0_S_Data_I[23]),
        .I3(bus2ip_rdce[2]),
        .I4(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[9]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(bus2ip_rdce[1]),
        .I2(FSL0_S_Data_I[22]),
        .I3(bus2ip_rdce[2]),
        .I4(S0_AXI_ARREADY_INST_0_i_3_n_0),
        .O(\FIFO_RAM[0].SRL16E_I [9]));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_rvalid_i_i_1
       (.I0(is_read_reg),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(S0_AXI_RREADY),
        .I4(S0_AXI_RVALID),
        .O(\state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sit_register[0]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(E));
  LUT5 #(
    .INIT(32'h0FCAFFCA)) 
    \state[0]_i_1 
       (.I0(S0_AXI_ARVALID),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(state1__2),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h55FFFF0C5500FF0C)) 
    \state[1]_i_1 
       (.I0(state1__2),
        .I1(p_5_in),
        .I2(S0_AXI_ARVALID),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(is_read_reg),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h40)) 
    write_fsl_error_d1_i_1
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(FSL0_M_Full_I),
        .O(write_fsl_error));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif
   (\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ,
    Bus_RNW_reg_reg,
    S1_AXI_RVALID,
    S1_AXI_BVALID,
    is_read_reg,
    read_fsl_error,
    write_fsl_error,
    FSL1_M_Write_I,
    FSL_M_Reset0,
    FSL_S_Reset0,
    empty_error,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    E,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ,
    error_detect,
    Bus_RNW_reg_reg_0,
    Bus_RNW_reg_reg_1,
    fifo_length_i11_out,
    CI,
    Bus_RNW_reg_reg_2,
    S1_AXI_RDATA,
    SYS_Rst_I,
    S1_AXI_ACLK,
    S1_AXI_ARVALID,
    S1_AXI_AWVALID,
    S1_AXI_WVALID,
    FSL1_S_Exists_I,
    FSL1_M_Full_I,
    S1_AXI_WDATA,
    \s_axi_rdata_i_reg[1] ,
    rit_detect_d0,
    \s_axi_rdata_i_reg[2] ,
    \s_axi_rdata_i_reg[0] ,
    Q,
    is_register,
    \s_axi_rdata_i_reg[3] ,
    S1_AXI_BREADY,
    S1_AXI_RREADY,
    FSL1_S_Data_I,
    \s_axi_rdata_i_reg[2]_0 ,
    S1_AXI_ARADDR,
    S1_AXI_AWADDR,
    write_fsl_error_d1,
    read_fsl_error_d1,
    FSL0_M_Write_I,
    \FIFO_RAM[31].SRL16E_I ,
    buffer_Empty__2,
    data_Exists_I_reg);
  output \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  output Bus_RNW_reg_reg;
  output S1_AXI_RVALID;
  output S1_AXI_BVALID;
  output is_read_reg;
  output read_fsl_error;
  output write_fsl_error;
  output FSL1_M_Write_I;
  output FSL_M_Reset0;
  output FSL_S_Reset0;
  output empty_error;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  output [0:0]E;
  output [0:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  output [0:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  output error_detect;
  output Bus_RNW_reg_reg_0;
  output [0:0]Bus_RNW_reg_reg_1;
  output fifo_length_i11_out;
  output CI;
  output Bus_RNW_reg_reg_2;
  output [31:0]S1_AXI_RDATA;
  input SYS_Rst_I;
  input S1_AXI_ACLK;
  input S1_AXI_ARVALID;
  input S1_AXI_AWVALID;
  input S1_AXI_WVALID;
  input FSL1_S_Exists_I;
  input FSL1_M_Full_I;
  input [1:0]S1_AXI_WDATA;
  input \s_axi_rdata_i_reg[1] ;
  input rit_detect_d0;
  input \s_axi_rdata_i_reg[2] ;
  input \s_axi_rdata_i_reg[0] ;
  input [3:0]Q;
  input [0:2]is_register;
  input [3:0]\s_axi_rdata_i_reg[3] ;
  input S1_AXI_BREADY;
  input S1_AXI_RREADY;
  input [0:31]FSL1_S_Data_I;
  input [2:0]\s_axi_rdata_i_reg[2]_0 ;
  input [3:0]S1_AXI_ARADDR;
  input [3:0]S1_AXI_AWADDR;
  input write_fsl_error_d1;
  input read_fsl_error_d1;
  input FSL0_M_Write_I;
  input \FIFO_RAM[31].SRL16E_I ;
  input buffer_Empty__2;
  input [0:0]data_Exists_I_reg;

  wire Bus_RNW_reg_reg;
  wire Bus_RNW_reg_reg_0;
  wire [0:0]Bus_RNW_reg_reg_1;
  wire Bus_RNW_reg_reg_2;
  wire CI;
  wire [0:0]E;
  wire \FIFO_RAM[31].SRL16E_I ;
  wire FSL0_M_Write_I;
  wire FSL1_M_Full_I;
  wire FSL1_M_Write_I;
  wire [0:31]FSL1_S_Data_I;
  wire FSL1_S_Exists_I;
  wire FSL_M_Reset0;
  wire FSL_S_Reset0;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  wire [3:0]Q;
  wire S1_AXI_ACLK;
  wire [3:0]S1_AXI_ARADDR;
  wire S1_AXI_ARVALID;
  wire [3:0]S1_AXI_AWADDR;
  wire S1_AXI_AWVALID;
  wire S1_AXI_BREADY;
  wire S1_AXI_BVALID;
  wire [31:0]S1_AXI_RDATA;
  wire S1_AXI_RREADY;
  wire S1_AXI_RVALID;
  wire [1:0]S1_AXI_WDATA;
  wire S1_AXI_WVALID;
  wire SYS_Rst_I;
  wire buffer_Empty__2;
  wire [0:0]data_Exists_I_reg;
  wire empty_error;
  wire error_detect;
  wire fifo_length_i11_out;
  wire is_read_reg;
  wire [0:2]is_register;
  wire read_fsl_error;
  wire read_fsl_error_d1;
  wire rit_detect_d0;
  wire \s_axi_rdata_i_reg[0] ;
  wire \s_axi_rdata_i_reg[1] ;
  wire \s_axi_rdata_i_reg[2] ;
  wire [2:0]\s_axi_rdata_i_reg[2]_0 ;
  wire [3:0]\s_axi_rdata_i_reg[3] ;
  wire write_fsl_error;
  wire write_fsl_error_d1;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment I_SLAVE_ATTACHMENT
       (.Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .Bus_RNW_reg_reg_0(Bus_RNW_reg_reg_0),
        .Bus_RNW_reg_reg_1(Bus_RNW_reg_reg_1),
        .Bus_RNW_reg_reg_2(Bus_RNW_reg_reg_2),
        .CI(CI),
        .E(E),
        .\FIFO_RAM[31].SRL16E_I (\FIFO_RAM[31].SRL16E_I ),
        .FSL0_M_Write_I(FSL0_M_Write_I),
        .FSL1_M_Full_I(FSL1_M_Full_I),
        .FSL1_M_Write_I(FSL1_M_Write_I),
        .FSL1_S_Data_I(FSL1_S_Data_I),
        .FSL1_S_Exists_I(FSL1_S_Exists_I),
        .FSL_M_Reset0(FSL_M_Reset0),
        .FSL_S_Reset0(FSL_S_Reset0),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ),
        .\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] (\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ),
        .\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] (\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ),
        .Q(Q),
        .S1_AXI_ACLK(S1_AXI_ACLK),
        .S1_AXI_ARADDR(S1_AXI_ARADDR),
        .S1_AXI_ARVALID(S1_AXI_ARVALID),
        .S1_AXI_AWADDR(S1_AXI_AWADDR),
        .S1_AXI_AWVALID(S1_AXI_AWVALID),
        .S1_AXI_BREADY(S1_AXI_BREADY),
        .S1_AXI_BVALID(S1_AXI_BVALID),
        .S1_AXI_RDATA(S1_AXI_RDATA),
        .S1_AXI_RREADY(S1_AXI_RREADY),
        .S1_AXI_RVALID(S1_AXI_RVALID),
        .S1_AXI_WDATA(S1_AXI_WDATA),
        .S1_AXI_WVALID(S1_AXI_WVALID),
        .SYS_Rst_I(SYS_Rst_I),
        .buffer_Empty__2(buffer_Empty__2),
        .data_Exists_I_reg(data_Exists_I_reg),
        .empty_error(empty_error),
        .error_detect(error_detect),
        .fifo_length_i11_out(fifo_length_i11_out),
        .is_read_reg_0(is_read_reg),
        .is_register(is_register),
        .read_fsl_error(read_fsl_error),
        .read_fsl_error_d1(read_fsl_error_d1),
        .rit_detect_d0(rit_detect_d0),
        .\s_axi_rdata_i_reg[0]_0 (\s_axi_rdata_i_reg[0] ),
        .\s_axi_rdata_i_reg[1]_0 (\s_axi_rdata_i_reg[1] ),
        .\s_axi_rdata_i_reg[2]_0 (\s_axi_rdata_i_reg[2] ),
        .\s_axi_rdata_i_reg[2]_1 (\s_axi_rdata_i_reg[2]_0 ),
        .\s_axi_rdata_i_reg[3]_0 (\s_axi_rdata_i_reg[3] ),
        .write_fsl_error(write_fsl_error),
        .write_fsl_error_d1(write_fsl_error_d1));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_4
   (\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ,
    Bus_RNW_reg_reg,
    S0_AXI_RVALID,
    S0_AXI_BVALID,
    is_read_reg,
    read_fsl_error,
    write_fsl_error,
    FSL0_M_Write_I,
    FSL_M_Reset0,
    FSL_S_Reset0,
    empty_error,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    E,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ,
    error_detect,
    Bus_RNW_reg_reg_0,
    Bus_RNW_reg_reg_1,
    fifo_length_i11_out,
    CI,
    Bus_RNW_reg_reg_2,
    S0_AXI_RDATA,
    SYS_Rst_I,
    S0_AXI_ACLK,
    S0_AXI_ARVALID,
    S0_AXI_AWVALID,
    S0_AXI_WVALID,
    FSL0_S_Exists_I,
    FSL0_M_Full_I,
    S0_AXI_WDATA,
    data1,
    rit_detect_d0,
    \s_axi_rdata_i_reg[2] ,
    Q,
    is_register,
    \s_axi_rdata_i_reg[3] ,
    S0_AXI_BREADY,
    S0_AXI_RREADY,
    FSL0_S_Data_I,
    \s_axi_rdata_i_reg[2]_0 ,
    S0_AXI_ARADDR,
    S0_AXI_AWADDR,
    write_fsl_error_d1,
    read_fsl_error_d1,
    FSL1_M_Write_I,
    \FIFO_RAM[31].SRL16E_I ,
    buffer_Empty__2,
    data_Exists_I_reg);
  output \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  output Bus_RNW_reg_reg;
  output S0_AXI_RVALID;
  output S0_AXI_BVALID;
  output is_read_reg;
  output read_fsl_error;
  output write_fsl_error;
  output FSL0_M_Write_I;
  output FSL_M_Reset0;
  output FSL_S_Reset0;
  output empty_error;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  output [0:0]E;
  output [0:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  output [0:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  output error_detect;
  output Bus_RNW_reg_reg_0;
  output [0:0]Bus_RNW_reg_reg_1;
  output fifo_length_i11_out;
  output CI;
  output Bus_RNW_reg_reg_2;
  output [31:0]S0_AXI_RDATA;
  input SYS_Rst_I;
  input S0_AXI_ACLK;
  input S0_AXI_ARVALID;
  input S0_AXI_AWVALID;
  input S0_AXI_WVALID;
  input FSL0_S_Exists_I;
  input FSL0_M_Full_I;
  input [1:0]S0_AXI_WDATA;
  input [1:0]data1;
  input rit_detect_d0;
  input \s_axi_rdata_i_reg[2] ;
  input [3:0]Q;
  input [0:2]is_register;
  input [3:0]\s_axi_rdata_i_reg[3] ;
  input S0_AXI_BREADY;
  input S0_AXI_RREADY;
  input [0:31]FSL0_S_Data_I;
  input [2:0]\s_axi_rdata_i_reg[2]_0 ;
  input [3:0]S0_AXI_ARADDR;
  input [3:0]S0_AXI_AWADDR;
  input write_fsl_error_d1;
  input read_fsl_error_d1;
  input FSL1_M_Write_I;
  input \FIFO_RAM[31].SRL16E_I ;
  input buffer_Empty__2;
  input [0:0]data_Exists_I_reg;

  wire Bus_RNW_reg_reg;
  wire Bus_RNW_reg_reg_0;
  wire [0:0]Bus_RNW_reg_reg_1;
  wire Bus_RNW_reg_reg_2;
  wire CI;
  wire [0:0]E;
  wire \FIFO_RAM[31].SRL16E_I ;
  wire FSL0_M_Full_I;
  wire FSL0_M_Write_I;
  wire [0:31]FSL0_S_Data_I;
  wire FSL0_S_Exists_I;
  wire FSL1_M_Write_I;
  wire FSL_M_Reset0;
  wire FSL_S_Reset0;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  wire [3:0]Q;
  wire S0_AXI_ACLK;
  wire [3:0]S0_AXI_ARADDR;
  wire S0_AXI_ARVALID;
  wire [3:0]S0_AXI_AWADDR;
  wire S0_AXI_AWVALID;
  wire S0_AXI_BREADY;
  wire S0_AXI_BVALID;
  wire [31:0]S0_AXI_RDATA;
  wire S0_AXI_RREADY;
  wire S0_AXI_RVALID;
  wire [1:0]S0_AXI_WDATA;
  wire S0_AXI_WVALID;
  wire SYS_Rst_I;
  wire buffer_Empty__2;
  wire [1:0]data1;
  wire [0:0]data_Exists_I_reg;
  wire empty_error;
  wire error_detect;
  wire fifo_length_i11_out;
  wire is_read_reg;
  wire [0:2]is_register;
  wire read_fsl_error;
  wire read_fsl_error_d1;
  wire rit_detect_d0;
  wire \s_axi_rdata_i_reg[2] ;
  wire [2:0]\s_axi_rdata_i_reg[2]_0 ;
  wire [3:0]\s_axi_rdata_i_reg[3] ;
  wire write_fsl_error;
  wire write_fsl_error_d1;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment_5 I_SLAVE_ATTACHMENT
       (.Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .Bus_RNW_reg_reg_0(Bus_RNW_reg_reg_0),
        .Bus_RNW_reg_reg_1(Bus_RNW_reg_reg_1),
        .Bus_RNW_reg_reg_2(Bus_RNW_reg_reg_2),
        .CI(CI),
        .E(E),
        .\FIFO_RAM[31].SRL16E_I (\FIFO_RAM[31].SRL16E_I ),
        .FSL0_M_Full_I(FSL0_M_Full_I),
        .FSL0_M_Write_I(FSL0_M_Write_I),
        .FSL0_S_Data_I(FSL0_S_Data_I),
        .FSL0_S_Exists_I(FSL0_S_Exists_I),
        .FSL1_M_Write_I(FSL1_M_Write_I),
        .FSL_M_Reset0(FSL_M_Reset0),
        .FSL_S_Reset0(FSL_S_Reset0),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ),
        .\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] (\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ),
        .\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] (\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ),
        .Q(Q),
        .S0_AXI_ACLK(S0_AXI_ACLK),
        .S0_AXI_ARADDR(S0_AXI_ARADDR),
        .S0_AXI_ARVALID(S0_AXI_ARVALID),
        .S0_AXI_AWADDR(S0_AXI_AWADDR),
        .S0_AXI_AWVALID(S0_AXI_AWVALID),
        .S0_AXI_BREADY(S0_AXI_BREADY),
        .S0_AXI_BVALID(S0_AXI_BVALID),
        .S0_AXI_RDATA(S0_AXI_RDATA),
        .S0_AXI_RREADY(S0_AXI_RREADY),
        .S0_AXI_RVALID(S0_AXI_RVALID),
        .S0_AXI_WDATA(S0_AXI_WDATA),
        .S0_AXI_WVALID(S0_AXI_WVALID),
        .SYS_Rst_I(SYS_Rst_I),
        .buffer_Empty__2(buffer_Empty__2),
        .data1(data1),
        .data_Exists_I_reg(data_Exists_I_reg),
        .empty_error(empty_error),
        .error_detect(error_detect),
        .fifo_length_i11_out(fifo_length_i11_out),
        .is_read_reg_0(is_read_reg),
        .is_register(is_register),
        .read_fsl_error(read_fsl_error),
        .read_fsl_error_d1(read_fsl_error_d1),
        .rit_detect_d0(rit_detect_d0),
        .\s_axi_rdata_i_reg[2]_0 (\s_axi_rdata_i_reg[2] ),
        .\s_axi_rdata_i_reg[2]_1 (\s_axi_rdata_i_reg[2]_0 ),
        .\s_axi_rdata_i_reg[3]_0 (\s_axi_rdata_i_reg[3] ),
        .write_fsl_error(write_fsl_error),
        .write_fsl_error_d1(write_fsl_error_d1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsl_v20
   (FDRE_I1,
    FSL1_S_Exists_I,
    FSL1_S_Data_I,
    FSL0_M_Full_I,
    buffer_Empty__2,
    rit_detect_d0,
    \sit_register_reg[0] ,
    SR,
    S0_AXI_ACLK,
    CI,
    S0_AXI_WDATA,
    data_Exists_I_reg,
    fifo_length_i11_out,
    SYS_Rst_I,
    Q,
    rit_detect_d1_reg,
    Bus_RNW_reg,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    FSL0_M_Write_I,
    E);
  output FDRE_I1;
  output FSL1_S_Exists_I;
  output [0:31]FSL1_S_Data_I;
  output FSL0_M_Full_I;
  output buffer_Empty__2;
  output rit_detect_d0;
  output \sit_register_reg[0] ;
  input [0:0]SR;
  input S0_AXI_ACLK;
  input CI;
  input [31:0]S0_AXI_WDATA;
  input data_Exists_I_reg;
  input fifo_length_i11_out;
  input SYS_Rst_I;
  input [3:0]Q;
  input [3:0]rit_detect_d1_reg;
  input Bus_RNW_reg;
  input \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  input FSL0_M_Write_I;
  input [0:0]E;

  wire Bus_RNW_reg;
  wire CI;
  wire [0:0]E;
  wire FDRE_I1;
  wire FSL0_M_Full_I;
  wire FSL0_M_Write_I;
  wire [0:31]FSL1_S_Data_I;
  wire FSL1_S_Exists_I;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire [3:0]Q;
  wire S0_AXI_ACLK;
  wire [31:0]S0_AXI_WDATA;
  wire [0:0]SR;
  wire SYS_Rst_I;
  wire buffer_Empty__2;
  wire data_Exists_I_reg;
  wire fifo_length_i11_out;
  wire rit_detect_d0;
  wire [3:0]rit_detect_d1_reg;
  wire \sit_register_reg[0] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Sync_FIFO_2 \Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1 
       (.\Addr_Counters[0].FDRE_I (buffer_Empty__2),
        .Bus_RNW_reg(Bus_RNW_reg),
        .CI(CI),
        .E(E),
        .FDRE_I1(FDRE_I1),
        .FSL0_M_Full_I(FSL0_M_Full_I),
        .FSL0_M_Write_I(FSL0_M_Write_I),
        .FSL1_S_Data_I(FSL1_S_Data_I),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .Q(Q),
        .S0_AXI_ACLK(S0_AXI_ACLK),
        .S0_AXI_WDATA(S0_AXI_WDATA),
        .SR(SR),
        .SYS_Rst_I(SYS_Rst_I),
        .data_Exists_I_reg(FSL1_S_Exists_I),
        .data_Exists_I_reg_0(data_Exists_I_reg),
        .fifo_length_i11_out(fifo_length_i11_out),
        .rit_detect_d0(rit_detect_d0),
        .rit_detect_d1_reg(rit_detect_d1_reg),
        .\sit_register_reg[0] (\sit_register_reg[0] ));
endmodule

(* ORIG_REF_NAME = "fsl_v20" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsl_v20_1
   (FDRE_I1,
    FSL0_S_Exists_I,
    FSL0_S_Data_I,
    FSL1_M_Full_I,
    buffer_Empty__2,
    rit_detect_d0,
    \sit_register_reg[0] ,
    SR,
    S0_AXI_ACLK,
    CI,
    S1_AXI_WDATA,
    data_Exists_I_reg,
    fifo_length_i11_out,
    SYS_Rst_I,
    rit_detect_d1_reg,
    Q,
    FSL1_M_Write_I,
    Bus_RNW_reg,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    E);
  output FDRE_I1;
  output FSL0_S_Exists_I;
  output [0:31]FSL0_S_Data_I;
  output FSL1_M_Full_I;
  output buffer_Empty__2;
  output rit_detect_d0;
  output \sit_register_reg[0] ;
  input [0:0]SR;
  input S0_AXI_ACLK;
  input CI;
  input [31:0]S1_AXI_WDATA;
  input data_Exists_I_reg;
  input fifo_length_i11_out;
  input SYS_Rst_I;
  input [3:0]rit_detect_d1_reg;
  input [3:0]Q;
  input FSL1_M_Write_I;
  input Bus_RNW_reg;
  input \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  input [0:0]E;

  wire Bus_RNW_reg;
  wire CI;
  wire [0:0]E;
  wire FDRE_I1;
  wire [0:31]FSL0_S_Data_I;
  wire FSL0_S_Exists_I;
  wire FSL1_M_Full_I;
  wire FSL1_M_Write_I;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire [3:0]Q;
  wire S0_AXI_ACLK;
  wire [31:0]S1_AXI_WDATA;
  wire [0:0]SR;
  wire SYS_Rst_I;
  wire buffer_Empty__2;
  wire data_Exists_I_reg;
  wire fifo_length_i11_out;
  wire rit_detect_d0;
  wire [3:0]rit_detect_d1_reg;
  wire \sit_register_reg[0] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Sync_FIFO \Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1 
       (.\Addr_Counters[0].FDRE_I (buffer_Empty__2),
        .Bus_RNW_reg(Bus_RNW_reg),
        .CI(CI),
        .E(E),
        .FDRE_I1(FDRE_I1),
        .FSL0_S_Data_I(FSL0_S_Data_I),
        .FSL1_M_Full_I(FSL1_M_Full_I),
        .FSL1_M_Write_I(FSL1_M_Write_I),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .Q(Q),
        .S0_AXI_ACLK(S0_AXI_ACLK),
        .S1_AXI_WDATA(S1_AXI_WDATA),
        .SR(SR),
        .SYS_Rst_I(SYS_Rst_I),
        .data_Exists_I_reg(FSL0_S_Exists_I),
        .data_Exists_I_reg_0(data_Exists_I_reg),
        .fifo_length_i11_out(fifo_length_i11_out),
        .rit_detect_d0(rit_detect_d0),
        .rit_detect_d1_reg(rit_detect_d1_reg),
        .\sit_register_reg[0] (\sit_register_reg[0] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_if_decode
   (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    Interrupt_0,
    FSL0_S_Reset_I,
    Bus_RNW_reg,
    S0_AXI_RVALID,
    S0_AXI_BVALID,
    is_read_reg,
    FSL0_M_Write_I,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    Q,
    \rit_register_reg[0]_0 ,
    SR,
    E,
    fifo_length_i11_out,
    CI,
    Bus_RNW_reg_reg,
    S0_AXI_RDATA,
    SYS_Rst_I,
    S0_AXI_ACLK,
    sit_detect_d1_reg_0,
    rit_detect_d0,
    S0_AXI_ARVALID,
    S0_AXI_AWVALID,
    S0_AXI_WVALID,
    FSL0_S_Exists_I,
    FSL0_M_Full_I,
    S0_AXI_WDATA,
    S0_AXI_BREADY,
    S0_AXI_RREADY,
    FSL1_S_Reset_I,
    FSL0_S_Data_I,
    S0_AXI_ARADDR,
    S0_AXI_AWADDR,
    FSL1_M_Write_I,
    \FIFO_RAM[31].SRL16E_I ,
    buffer_Empty__2,
    data_Exists_I_reg);
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  output Interrupt_0;
  output FSL0_S_Reset_I;
  output Bus_RNW_reg;
  output S0_AXI_RVALID;
  output S0_AXI_BVALID;
  output is_read_reg;
  output FSL0_M_Write_I;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  output [3:0]Q;
  output [3:0]\rit_register_reg[0]_0 ;
  output [0:0]SR;
  output [0:0]E;
  output fifo_length_i11_out;
  output CI;
  output Bus_RNW_reg_reg;
  output [31:0]S0_AXI_RDATA;
  input SYS_Rst_I;
  input S0_AXI_ACLK;
  input sit_detect_d1_reg_0;
  input rit_detect_d0;
  input S0_AXI_ARVALID;
  input S0_AXI_AWVALID;
  input S0_AXI_WVALID;
  input FSL0_S_Exists_I;
  input FSL0_M_Full_I;
  input [3:0]S0_AXI_WDATA;
  input S0_AXI_BREADY;
  input S0_AXI_RREADY;
  input FSL1_S_Reset_I;
  input [0:31]FSL0_S_Data_I;
  input [3:0]S0_AXI_ARADDR;
  input [3:0]S0_AXI_AWADDR;
  input FSL1_M_Write_I;
  input \FIFO_RAM[31].SRL16E_I ;
  input buffer_Empty__2;
  input [0:0]data_Exists_I_reg;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire CI;
  wire [0:0]E;
  wire \FIFO_RAM[31].SRL16E_I ;
  wire FSL0_M_Full_I;
  wire FSL0_M_Reset_I;
  wire FSL0_M_Write_I;
  wire [0:31]FSL0_S_Data_I;
  wire FSL0_S_Exists_I;
  wire FSL0_S_Reset_I;
  wire FSL1_M_Write_I;
  wire FSL1_S_Reset_I;
  wire FSL_M_Reset0;
  wire FSL_S_Reset0;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ;
  wire Interrupt_0;
  wire [3:0]Q;
  wire S0_AXI_ACLK;
  wire [3:0]S0_AXI_ARADDR;
  wire S0_AXI_ARVALID;
  wire [3:0]S0_AXI_AWADDR;
  wire S0_AXI_AWVALID;
  wire S0_AXI_BREADY;
  wire S0_AXI_BVALID;
  wire [31:0]S0_AXI_RDATA;
  wire S0_AXI_RREADY;
  wire S0_AXI_RVALID;
  wire [3:0]S0_AXI_WDATA;
  wire S0_AXI_WVALID;
  wire [0:0]SR;
  wire SYS_Rst_I;
  wire \Use_Async.Interrupt_i_1_n_0 ;
  wire \Using_AXI.AXI4_If_n_13 ;
  wire \Using_AXI.AXI4_If_n_14 ;
  wire \Using_AXI.AXI4_If_n_15 ;
  wire \Using_AXI.AXI4_If_n_17 ;
  wire buffer_Empty__2;
  wire [1:0]data1;
  wire [0:0]data_Exists_I_reg;
  wire empty_error;
  wire error_detect;
  wire fifo_length_i11_out;
  wire full_error_i_1_n_0;
  wire [0:2]ie_register;
  wire is_read_reg;
  wire [0:2]is_register;
  wire \is_register[0]_i_1_n_0 ;
  wire \is_register[1]_i_1_n_0 ;
  wire \is_register[2]_i_1_n_0 ;
  wire read_fsl_error;
  wire read_fsl_error_d1;
  wire rit_detect_d0;
  wire rit_detect_d1;
  wire [3:0]\rit_register_reg[0]_0 ;
  wire sit_detect_d1;
  wire sit_detect_d1_reg_0;
  wire write_fsl_error;
  wire write_fsl_error_d1;

  LUT3 #(
    .INIT(8'hFE)) 
    FDRE_I1_i_1
       (.I0(SYS_Rst_I),
        .I1(FSL0_M_Reset_I),
        .I2(FSL1_S_Reset_I),
        .O(SR));
  FDRE FSL_M_Reset_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(FSL_M_Reset0),
        .Q(FSL0_M_Reset_I),
        .R(SYS_Rst_I));
  FDRE FSL_S_Reset_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(FSL_S_Reset0),
        .Q(FSL0_S_Reset_I),
        .R(SYS_Rst_I));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Use_Async.Interrupt_i_1 
       (.I0(ie_register[1]),
        .I1(is_register[1]),
        .I2(is_register[0]),
        .I3(ie_register[0]),
        .I4(is_register[2]),
        .I5(ie_register[2]),
        .O(\Use_Async.Interrupt_i_1_n_0 ));
  FDRE \Use_Async.Interrupt_reg 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(\Use_Async.Interrupt_i_1_n_0 ),
        .Q(Interrupt_0),
        .R(SYS_Rst_I));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_4 \Using_AXI.AXI4_If 
       (.Bus_RNW_reg_reg(Bus_RNW_reg),
        .Bus_RNW_reg_reg_0(\Using_AXI.AXI4_If_n_17 ),
        .Bus_RNW_reg_reg_1(E),
        .Bus_RNW_reg_reg_2(Bus_RNW_reg_reg),
        .CI(CI),
        .E(\Using_AXI.AXI4_If_n_13 ),
        .\FIFO_RAM[31].SRL16E_I (\FIFO_RAM[31].SRL16E_I ),
        .FSL0_M_Full_I(FSL0_M_Full_I),
        .FSL0_M_Write_I(FSL0_M_Write_I),
        .FSL0_S_Data_I(FSL0_S_Data_I),
        .FSL0_S_Exists_I(FSL0_S_Exists_I),
        .FSL1_M_Write_I(FSL1_M_Write_I),
        .FSL_M_Reset0(FSL_M_Reset0),
        .FSL_S_Reset0(FSL_S_Reset0),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] (\Using_AXI.AXI4_If_n_15 ),
        .\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] (\Using_AXI.AXI4_If_n_14 ),
        .Q(Q),
        .S0_AXI_ACLK(S0_AXI_ACLK),
        .S0_AXI_ARADDR(S0_AXI_ARADDR),
        .S0_AXI_ARVALID(S0_AXI_ARVALID),
        .S0_AXI_AWADDR(S0_AXI_AWADDR),
        .S0_AXI_AWVALID(S0_AXI_AWVALID),
        .S0_AXI_BREADY(S0_AXI_BREADY),
        .S0_AXI_BVALID(S0_AXI_BVALID),
        .S0_AXI_RDATA(S0_AXI_RDATA),
        .S0_AXI_RREADY(S0_AXI_RREADY),
        .S0_AXI_RVALID(S0_AXI_RVALID),
        .S0_AXI_WDATA(S0_AXI_WDATA[1:0]),
        .S0_AXI_WVALID(S0_AXI_WVALID),
        .SYS_Rst_I(SYS_Rst_I),
        .buffer_Empty__2(buffer_Empty__2),
        .data1(data1),
        .data_Exists_I_reg(data_Exists_I_reg),
        .empty_error(empty_error),
        .error_detect(error_detect),
        .fifo_length_i11_out(fifo_length_i11_out),
        .is_read_reg(is_read_reg),
        .is_register(is_register),
        .read_fsl_error(read_fsl_error),
        .read_fsl_error_d1(read_fsl_error_d1),
        .rit_detect_d0(rit_detect_d0),
        .\s_axi_rdata_i_reg[2] (sit_detect_d1_reg_0),
        .\s_axi_rdata_i_reg[2]_0 ({ie_register[0],ie_register[1],ie_register[2]}),
        .\s_axi_rdata_i_reg[3] (\rit_register_reg[0]_0 ),
        .write_fsl_error(write_fsl_error),
        .write_fsl_error_d1(write_fsl_error_d1));
  FDRE empty_error_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(\Using_AXI.AXI4_If_n_17 ),
        .Q(data1[0]),
        .R(empty_error));
  LUT2 #(
    .INIT(4'hE)) 
    full_error_i_1
       (.I0(write_fsl_error),
        .I1(data1[1]),
        .O(full_error_i_1_n_0));
  FDRE full_error_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(full_error_i_1_n_0),
        .Q(data1[1]),
        .R(empty_error));
  FDRE \ie_register_reg[0] 
       (.C(S0_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_14 ),
        .D(S0_AXI_WDATA[2]),
        .Q(ie_register[0]),
        .R(SYS_Rst_I));
  FDRE \ie_register_reg[1] 
       (.C(S0_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_14 ),
        .D(S0_AXI_WDATA[1]),
        .Q(ie_register[1]),
        .R(SYS_Rst_I));
  FDRE \ie_register_reg[2] 
       (.C(S0_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_14 ),
        .D(S0_AXI_WDATA[0]),
        .Q(ie_register[2]),
        .R(SYS_Rst_I));
  LUT5 #(
    .INIT(32'hFFBFAAAA)) 
    \is_register[0]_i_1 
       (.I0(error_detect),
        .I1(S0_AXI_WDATA[2]),
        .I2(\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .I3(Bus_RNW_reg),
        .I4(is_register[0]),
        .O(\is_register[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4FFF44444444)) 
    \is_register[1]_i_1 
       (.I0(rit_detect_d1),
        .I1(rit_detect_d0),
        .I2(S0_AXI_WDATA[1]),
        .I3(\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(is_register[1]),
        .O(\is_register[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4FFF44444444)) 
    \is_register[2]_i_1 
       (.I0(sit_detect_d1),
        .I1(sit_detect_d1_reg_0),
        .I2(S0_AXI_WDATA[0]),
        .I3(\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(is_register[2]),
        .O(\is_register[2]_i_1_n_0 ));
  FDRE \is_register_reg[0] 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(\is_register[0]_i_1_n_0 ),
        .Q(is_register[0]),
        .R(SYS_Rst_I));
  FDRE \is_register_reg[1] 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(\is_register[1]_i_1_n_0 ),
        .Q(is_register[1]),
        .R(SYS_Rst_I));
  FDRE \is_register_reg[2] 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(\is_register[2]_i_1_n_0 ),
        .Q(is_register[2]),
        .R(SYS_Rst_I));
  FDRE read_fsl_error_d1_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(read_fsl_error),
        .Q(read_fsl_error_d1),
        .R(SYS_Rst_I));
  FDRE rit_detect_d1_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(rit_detect_d0),
        .Q(rit_detect_d1),
        .R(1'b0));
  FDRE \rit_register_reg[0] 
       (.C(S0_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_15 ),
        .D(S0_AXI_WDATA[3]),
        .Q(\rit_register_reg[0]_0 [3]),
        .R(SYS_Rst_I));
  FDRE \rit_register_reg[1] 
       (.C(S0_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_15 ),
        .D(S0_AXI_WDATA[2]),
        .Q(\rit_register_reg[0]_0 [2]),
        .R(SYS_Rst_I));
  FDRE \rit_register_reg[2] 
       (.C(S0_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_15 ),
        .D(S0_AXI_WDATA[1]),
        .Q(\rit_register_reg[0]_0 [1]),
        .R(SYS_Rst_I));
  FDRE \rit_register_reg[3] 
       (.C(S0_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_15 ),
        .D(S0_AXI_WDATA[0]),
        .Q(\rit_register_reg[0]_0 [0]),
        .R(SYS_Rst_I));
  FDRE sit_detect_d1_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(sit_detect_d1_reg_0),
        .Q(sit_detect_d1),
        .R(1'b0));
  FDRE \sit_register_reg[0] 
       (.C(S0_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_13 ),
        .D(S0_AXI_WDATA[3]),
        .Q(Q[3]),
        .R(SYS_Rst_I));
  FDRE \sit_register_reg[1] 
       (.C(S0_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_13 ),
        .D(S0_AXI_WDATA[2]),
        .Q(Q[2]),
        .R(SYS_Rst_I));
  FDRE \sit_register_reg[2] 
       (.C(S0_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_13 ),
        .D(S0_AXI_WDATA[1]),
        .Q(Q[1]),
        .R(SYS_Rst_I));
  FDRE \sit_register_reg[3] 
       (.C(S0_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_13 ),
        .D(S0_AXI_WDATA[0]),
        .Q(Q[0]),
        .R(SYS_Rst_I));
  FDRE write_fsl_error_d1_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(write_fsl_error),
        .Q(write_fsl_error_d1),
        .R(SYS_Rst_I));
endmodule

(* ORIG_REF_NAME = "if_decode" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_if_decode_0
   (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    Interrupt_1,
    FSL1_S_Reset_I,
    Bus_RNW_reg,
    S1_AXI_RVALID,
    S1_AXI_BVALID,
    is_read_reg,
    FSL1_M_Write_I,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    Q,
    \rit_register_reg[0]_0 ,
    SR,
    E,
    fifo_length_i11_out,
    CI,
    Bus_RNW_reg_reg,
    S1_AXI_RDATA,
    SYS_Rst_I,
    S1_AXI_ACLK,
    sit_detect_d1_reg_0,
    rit_detect_d0,
    S1_AXI_ARVALID,
    S1_AXI_AWVALID,
    S1_AXI_WVALID,
    FSL1_S_Exists_I,
    FSL1_M_Full_I,
    S1_AXI_WDATA,
    S1_AXI_BREADY,
    S1_AXI_RREADY,
    FSL0_S_Reset_I,
    FSL1_S_Data_I,
    S1_AXI_ARADDR,
    S1_AXI_AWADDR,
    FSL0_M_Write_I,
    \FIFO_RAM[31].SRL16E_I ,
    buffer_Empty__2,
    data_Exists_I_reg);
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  output Interrupt_1;
  output FSL1_S_Reset_I;
  output Bus_RNW_reg;
  output S1_AXI_RVALID;
  output S1_AXI_BVALID;
  output is_read_reg;
  output FSL1_M_Write_I;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  output [3:0]Q;
  output [3:0]\rit_register_reg[0]_0 ;
  output [0:0]SR;
  output [0:0]E;
  output fifo_length_i11_out;
  output CI;
  output Bus_RNW_reg_reg;
  output [31:0]S1_AXI_RDATA;
  input SYS_Rst_I;
  input S1_AXI_ACLK;
  input sit_detect_d1_reg_0;
  input rit_detect_d0;
  input S1_AXI_ARVALID;
  input S1_AXI_AWVALID;
  input S1_AXI_WVALID;
  input FSL1_S_Exists_I;
  input FSL1_M_Full_I;
  input [3:0]S1_AXI_WDATA;
  input S1_AXI_BREADY;
  input S1_AXI_RREADY;
  input FSL0_S_Reset_I;
  input [0:31]FSL1_S_Data_I;
  input [3:0]S1_AXI_ARADDR;
  input [3:0]S1_AXI_AWADDR;
  input FSL0_M_Write_I;
  input \FIFO_RAM[31].SRL16E_I ;
  input buffer_Empty__2;
  input [0:0]data_Exists_I_reg;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire CI;
  wire [0:0]E;
  wire \FIFO_RAM[31].SRL16E_I ;
  wire FSL0_M_Write_I;
  wire FSL0_S_Reset_I;
  wire FSL1_M_Full_I;
  wire FSL1_M_Reset_I;
  wire FSL1_M_Write_I;
  wire [0:31]FSL1_S_Data_I;
  wire FSL1_S_Exists_I;
  wire FSL1_S_Reset_I;
  wire FSL_M_Reset0;
  wire FSL_S_Reset0;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ;
  wire Interrupt_1;
  wire [3:0]Q;
  wire S1_AXI_ACLK;
  wire [3:0]S1_AXI_ARADDR;
  wire S1_AXI_ARVALID;
  wire [3:0]S1_AXI_AWADDR;
  wire S1_AXI_AWVALID;
  wire S1_AXI_BREADY;
  wire S1_AXI_BVALID;
  wire [31:0]S1_AXI_RDATA;
  wire S1_AXI_RREADY;
  wire S1_AXI_RVALID;
  wire [3:0]S1_AXI_WDATA;
  wire S1_AXI_WVALID;
  wire [0:0]SR;
  wire SYS_Rst_I;
  wire \Use_Async.Interrupt_i_1__0_n_0 ;
  wire \Using_AXI.AXI4_If_n_13 ;
  wire \Using_AXI.AXI4_If_n_14 ;
  wire \Using_AXI.AXI4_If_n_15 ;
  wire \Using_AXI.AXI4_If_n_17 ;
  wire buffer_Empty__2;
  wire [0:0]data_Exists_I_reg;
  wire empty_error;
  wire empty_error_reg_n_0;
  wire error_detect;
  wire fifo_length_i11_out;
  wire full_error_i_1_n_0;
  wire full_error_reg_n_0;
  wire [0:2]ie_register;
  wire is_read_reg;
  wire [0:2]is_register;
  wire \is_register[0]_i_1_n_0 ;
  wire \is_register[1]_i_1_n_0 ;
  wire \is_register[2]_i_1_n_0 ;
  wire read_fsl_error;
  wire read_fsl_error_d1;
  wire rit_detect_d0;
  wire rit_detect_d1;
  wire [3:0]\rit_register_reg[0]_0 ;
  wire sit_detect_d1;
  wire sit_detect_d1_reg_0;
  wire write_fsl_error;
  wire write_fsl_error_d1;

  LUT3 #(
    .INIT(8'hFE)) 
    FDRE_I1_i_1__0
       (.I0(SYS_Rst_I),
        .I1(FSL1_M_Reset_I),
        .I2(FSL0_S_Reset_I),
        .O(SR));
  FDRE FSL_M_Reset_reg
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(FSL_M_Reset0),
        .Q(FSL1_M_Reset_I),
        .R(SYS_Rst_I));
  FDRE FSL_S_Reset_reg
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(FSL_S_Reset0),
        .Q(FSL1_S_Reset_I),
        .R(SYS_Rst_I));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Use_Async.Interrupt_i_1__0 
       (.I0(ie_register[1]),
        .I1(is_register[1]),
        .I2(is_register[0]),
        .I3(ie_register[0]),
        .I4(is_register[2]),
        .I5(ie_register[2]),
        .O(\Use_Async.Interrupt_i_1__0_n_0 ));
  FDRE \Use_Async.Interrupt_reg 
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(\Use_Async.Interrupt_i_1__0_n_0 ),
        .Q(Interrupt_1),
        .R(SYS_Rst_I));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif \Using_AXI.AXI4_If 
       (.Bus_RNW_reg_reg(Bus_RNW_reg),
        .Bus_RNW_reg_reg_0(\Using_AXI.AXI4_If_n_17 ),
        .Bus_RNW_reg_reg_1(E),
        .Bus_RNW_reg_reg_2(Bus_RNW_reg_reg),
        .CI(CI),
        .E(\Using_AXI.AXI4_If_n_13 ),
        .\FIFO_RAM[31].SRL16E_I (\FIFO_RAM[31].SRL16E_I ),
        .FSL0_M_Write_I(FSL0_M_Write_I),
        .FSL1_M_Full_I(FSL1_M_Full_I),
        .FSL1_M_Write_I(FSL1_M_Write_I),
        .FSL1_S_Data_I(FSL1_S_Data_I),
        .FSL1_S_Exists_I(FSL1_S_Exists_I),
        .FSL_M_Reset0(FSL_M_Reset0),
        .FSL_S_Reset0(FSL_S_Reset0),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] (\Using_AXI.AXI4_If_n_15 ),
        .\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] (\Using_AXI.AXI4_If_n_14 ),
        .Q(Q),
        .S1_AXI_ACLK(S1_AXI_ACLK),
        .S1_AXI_ARADDR(S1_AXI_ARADDR),
        .S1_AXI_ARVALID(S1_AXI_ARVALID),
        .S1_AXI_AWADDR(S1_AXI_AWADDR),
        .S1_AXI_AWVALID(S1_AXI_AWVALID),
        .S1_AXI_BREADY(S1_AXI_BREADY),
        .S1_AXI_BVALID(S1_AXI_BVALID),
        .S1_AXI_RDATA(S1_AXI_RDATA),
        .S1_AXI_RREADY(S1_AXI_RREADY),
        .S1_AXI_RVALID(S1_AXI_RVALID),
        .S1_AXI_WDATA(S1_AXI_WDATA[1:0]),
        .S1_AXI_WVALID(S1_AXI_WVALID),
        .SYS_Rst_I(SYS_Rst_I),
        .buffer_Empty__2(buffer_Empty__2),
        .data_Exists_I_reg(data_Exists_I_reg),
        .empty_error(empty_error),
        .error_detect(error_detect),
        .fifo_length_i11_out(fifo_length_i11_out),
        .is_read_reg(is_read_reg),
        .is_register(is_register),
        .read_fsl_error(read_fsl_error),
        .read_fsl_error_d1(read_fsl_error_d1),
        .rit_detect_d0(rit_detect_d0),
        .\s_axi_rdata_i_reg[0] (empty_error_reg_n_0),
        .\s_axi_rdata_i_reg[1] (full_error_reg_n_0),
        .\s_axi_rdata_i_reg[2] (sit_detect_d1_reg_0),
        .\s_axi_rdata_i_reg[2]_0 ({ie_register[0],ie_register[1],ie_register[2]}),
        .\s_axi_rdata_i_reg[3] (\rit_register_reg[0]_0 ),
        .write_fsl_error(write_fsl_error),
        .write_fsl_error_d1(write_fsl_error_d1));
  FDRE empty_error_reg
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(\Using_AXI.AXI4_If_n_17 ),
        .Q(empty_error_reg_n_0),
        .R(empty_error));
  LUT2 #(
    .INIT(4'hE)) 
    full_error_i_1
       (.I0(write_fsl_error),
        .I1(full_error_reg_n_0),
        .O(full_error_i_1_n_0));
  FDRE full_error_reg
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(full_error_i_1_n_0),
        .Q(full_error_reg_n_0),
        .R(empty_error));
  FDRE \ie_register_reg[0] 
       (.C(S1_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_14 ),
        .D(S1_AXI_WDATA[2]),
        .Q(ie_register[0]),
        .R(SYS_Rst_I));
  FDRE \ie_register_reg[1] 
       (.C(S1_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_14 ),
        .D(S1_AXI_WDATA[1]),
        .Q(ie_register[1]),
        .R(SYS_Rst_I));
  FDRE \ie_register_reg[2] 
       (.C(S1_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_14 ),
        .D(S1_AXI_WDATA[0]),
        .Q(ie_register[2]),
        .R(SYS_Rst_I));
  LUT5 #(
    .INIT(32'hFFBFAAAA)) 
    \is_register[0]_i_1 
       (.I0(error_detect),
        .I1(S1_AXI_WDATA[2]),
        .I2(\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .I3(Bus_RNW_reg),
        .I4(is_register[0]),
        .O(\is_register[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4FFF44444444)) 
    \is_register[1]_i_1 
       (.I0(rit_detect_d1),
        .I1(rit_detect_d0),
        .I2(S1_AXI_WDATA[1]),
        .I3(\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(is_register[1]),
        .O(\is_register[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4FFF44444444)) 
    \is_register[2]_i_1 
       (.I0(sit_detect_d1),
        .I1(sit_detect_d1_reg_0),
        .I2(S1_AXI_WDATA[0]),
        .I3(\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(is_register[2]),
        .O(\is_register[2]_i_1_n_0 ));
  FDRE \is_register_reg[0] 
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(\is_register[0]_i_1_n_0 ),
        .Q(is_register[0]),
        .R(SYS_Rst_I));
  FDRE \is_register_reg[1] 
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(\is_register[1]_i_1_n_0 ),
        .Q(is_register[1]),
        .R(SYS_Rst_I));
  FDRE \is_register_reg[2] 
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(\is_register[2]_i_1_n_0 ),
        .Q(is_register[2]),
        .R(SYS_Rst_I));
  FDRE read_fsl_error_d1_reg
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(read_fsl_error),
        .Q(read_fsl_error_d1),
        .R(SYS_Rst_I));
  FDRE rit_detect_d1_reg
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(rit_detect_d0),
        .Q(rit_detect_d1),
        .R(1'b0));
  FDRE \rit_register_reg[0] 
       (.C(S1_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_15 ),
        .D(S1_AXI_WDATA[3]),
        .Q(\rit_register_reg[0]_0 [3]),
        .R(SYS_Rst_I));
  FDRE \rit_register_reg[1] 
       (.C(S1_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_15 ),
        .D(S1_AXI_WDATA[2]),
        .Q(\rit_register_reg[0]_0 [2]),
        .R(SYS_Rst_I));
  FDRE \rit_register_reg[2] 
       (.C(S1_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_15 ),
        .D(S1_AXI_WDATA[1]),
        .Q(\rit_register_reg[0]_0 [1]),
        .R(SYS_Rst_I));
  FDRE \rit_register_reg[3] 
       (.C(S1_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_15 ),
        .D(S1_AXI_WDATA[0]),
        .Q(\rit_register_reg[0]_0 [0]),
        .R(SYS_Rst_I));
  FDRE sit_detect_d1_reg
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(sit_detect_d1_reg_0),
        .Q(sit_detect_d1),
        .R(1'b0));
  FDRE \sit_register_reg[0] 
       (.C(S1_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_13 ),
        .D(S1_AXI_WDATA[3]),
        .Q(Q[3]),
        .R(SYS_Rst_I));
  FDRE \sit_register_reg[1] 
       (.C(S1_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_13 ),
        .D(S1_AXI_WDATA[2]),
        .Q(Q[2]),
        .R(SYS_Rst_I));
  FDRE \sit_register_reg[2] 
       (.C(S1_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_13 ),
        .D(S1_AXI_WDATA[1]),
        .Q(Q[1]),
        .R(SYS_Rst_I));
  FDRE \sit_register_reg[3] 
       (.C(S1_AXI_ACLK),
        .CE(\Using_AXI.AXI4_If_n_13 ),
        .D(S1_AXI_WDATA[0]),
        .Q(Q[0]),
        .R(SYS_Rst_I));
  FDRE write_fsl_error_d1_reg
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(write_fsl_error),
        .Q(write_fsl_error_d1),
        .R(SYS_Rst_I));
endmodule

(* C_ASYNC_CLKS = "0" *) (* C_ASYNC_INTERRUPTS = "1" *) (* C_ENABLE_BUS_ERROR = "0" *) 
(* C_EXT_RESET_HIGH = "1" *) (* C_FAMILY = "versal" *) (* C_IMPL_STYLE = "0" *) 
(* C_INTERCONNECT_PORT_0 = "2" *) (* C_INTERCONNECT_PORT_1 = "2" *) (* C_M0_AXIS_DATA_WIDTH = "32" *) 
(* C_M1_AXIS_DATA_WIDTH = "32" *) (* C_MAILBOX_DEPTH = "16" *) (* C_NUM_SYNC_FF = "2" *) 
(* C_S0_AXIS_DATA_WIDTH = "32" *) (* C_S0_AXI_ADDR_WIDTH = "32" *) (* C_S0_AXI_BASEADDR = "32'b00000000000000000000000000000000" *) 
(* C_S0_AXI_DATA_WIDTH = "32" *) (* C_S0_AXI_HIGHADDR = "32'b00000000000000000000111111111111" *) (* C_S1_AXIS_DATA_WIDTH = "32" *) 
(* C_S1_AXI_ADDR_WIDTH = "32" *) (* C_S1_AXI_BASEADDR = "32'b00000000000000000000000000000000" *) (* C_S1_AXI_DATA_WIDTH = "32" *) 
(* C_S1_AXI_HIGHADDR = "32'b00000000000000000000111111111111" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mailbox
   (SYS_Rst,
    S0_AXI_ACLK,
    S0_AXI_ARESETN,
    S0_AXI_AWADDR,
    S0_AXI_AWVALID,
    S0_AXI_AWREADY,
    S0_AXI_WDATA,
    S0_AXI_WSTRB,
    S0_AXI_WVALID,
    S0_AXI_WREADY,
    S0_AXI_BRESP,
    S0_AXI_BVALID,
    S0_AXI_BREADY,
    S0_AXI_ARADDR,
    S0_AXI_ARVALID,
    S0_AXI_ARREADY,
    S0_AXI_RDATA,
    S0_AXI_RRESP,
    S0_AXI_RVALID,
    S0_AXI_RREADY,
    S1_AXI_ACLK,
    S1_AXI_ARESETN,
    S1_AXI_AWADDR,
    S1_AXI_AWVALID,
    S1_AXI_AWREADY,
    S1_AXI_WDATA,
    S1_AXI_WSTRB,
    S1_AXI_WVALID,
    S1_AXI_WREADY,
    S1_AXI_BRESP,
    S1_AXI_BVALID,
    S1_AXI_BREADY,
    S1_AXI_ARADDR,
    S1_AXI_ARVALID,
    S1_AXI_ARREADY,
    S1_AXI_RDATA,
    S1_AXI_RRESP,
    S1_AXI_RVALID,
    S1_AXI_RREADY,
    M0_AXIS_ACLK,
    M0_AXIS_TLAST,
    M0_AXIS_TDATA,
    M0_AXIS_TVALID,
    M0_AXIS_TREADY,
    S0_AXIS_ACLK,
    S0_AXIS_TLAST,
    S0_AXIS_TDATA,
    S0_AXIS_TVALID,
    S0_AXIS_TREADY,
    M1_AXIS_ACLK,
    M1_AXIS_TLAST,
    M1_AXIS_TDATA,
    M1_AXIS_TVALID,
    M1_AXIS_TREADY,
    S1_AXIS_ACLK,
    S1_AXIS_TLAST,
    S1_AXIS_TDATA,
    S1_AXIS_TVALID,
    S1_AXIS_TREADY,
    Interrupt_0,
    Interrupt_1);
  input SYS_Rst;
  input S0_AXI_ACLK;
  input S0_AXI_ARESETN;
  input [31:0]S0_AXI_AWADDR;
  input S0_AXI_AWVALID;
  output S0_AXI_AWREADY;
  input [31:0]S0_AXI_WDATA;
  input [3:0]S0_AXI_WSTRB;
  input S0_AXI_WVALID;
  output S0_AXI_WREADY;
  output [1:0]S0_AXI_BRESP;
  output S0_AXI_BVALID;
  input S0_AXI_BREADY;
  input [31:0]S0_AXI_ARADDR;
  input S0_AXI_ARVALID;
  output S0_AXI_ARREADY;
  output [31:0]S0_AXI_RDATA;
  output [1:0]S0_AXI_RRESP;
  output S0_AXI_RVALID;
  input S0_AXI_RREADY;
  input S1_AXI_ACLK;
  input S1_AXI_ARESETN;
  input [31:0]S1_AXI_AWADDR;
  input S1_AXI_AWVALID;
  output S1_AXI_AWREADY;
  input [31:0]S1_AXI_WDATA;
  input [3:0]S1_AXI_WSTRB;
  input S1_AXI_WVALID;
  output S1_AXI_WREADY;
  output [1:0]S1_AXI_BRESP;
  output S1_AXI_BVALID;
  input S1_AXI_BREADY;
  input [31:0]S1_AXI_ARADDR;
  input S1_AXI_ARVALID;
  output S1_AXI_ARREADY;
  output [31:0]S1_AXI_RDATA;
  output [1:0]S1_AXI_RRESP;
  output S1_AXI_RVALID;
  input S1_AXI_RREADY;
  input M0_AXIS_ACLK;
  output M0_AXIS_TLAST;
  output [31:0]M0_AXIS_TDATA;
  output M0_AXIS_TVALID;
  input M0_AXIS_TREADY;
  input S0_AXIS_ACLK;
  input S0_AXIS_TLAST;
  input [31:0]S0_AXIS_TDATA;
  input S0_AXIS_TVALID;
  output S0_AXIS_TREADY;
  input M1_AXIS_ACLK;
  output M1_AXIS_TLAST;
  output [31:0]M1_AXIS_TDATA;
  output M1_AXIS_TVALID;
  input M1_AXIS_TREADY;
  input S1_AXIS_ACLK;
  input S1_AXIS_TLAST;
  input [31:0]S1_AXIS_TDATA;
  input S1_AXIS_TVALID;
  output S1_AXIS_TREADY;
  output Interrupt_0;
  output Interrupt_1;

  wire \<const0> ;
  wire FSL0_M_Full_I;
  wire FSL0_M_Write_I;
  wire [0:31]FSL0_S_Data_I;
  wire FSL0_S_Exists_I;
  wire FSL0_S_Reset_I;
  wire FSL1_M_Full_I;
  wire FSL1_M_Write_I;
  wire [0:31]FSL1_S_Data_I;
  wire FSL1_S_Exists_I;
  wire FSL1_S_Reset_I;
  wire Interrupt_0;
  wire Interrupt_1;
  wire Reset;
  wire Reset_2;
  wire \Rst_Sync.SYS_Rst_I_i_1_n_0 ;
  (* async_reg = "true" *) wire \Rst_Sync.SYS_Rst_Input_d1 ;
  (* async_reg = "true" *) wire \Rst_Sync.SYS_Rst_Input_d2 ;
  wire S0_AXI_ACLK;
  wire [31:0]S0_AXI_ARADDR;
  wire S0_AXI_ARESETN;
  wire S0_AXI_ARREADY;
  wire S0_AXI_ARVALID;
  wire [31:0]S0_AXI_AWADDR;
  wire S0_AXI_AWREADY;
  wire S0_AXI_AWVALID;
  wire S0_AXI_BREADY;
  wire S0_AXI_BVALID;
  wire [31:0]S0_AXI_RDATA;
  wire S0_AXI_RREADY;
  wire S0_AXI_RVALID;
  wire [31:0]S0_AXI_WDATA;
  wire S0_AXI_WVALID;
  wire S1_AXI_ACLK;
  wire [31:0]S1_AXI_ARADDR;
  wire S1_AXI_ARESETN;
  wire S1_AXI_ARREADY;
  wire S1_AXI_ARVALID;
  wire [31:0]S1_AXI_AWADDR;
  wire S1_AXI_AWREADY;
  wire S1_AXI_AWVALID;
  wire S1_AXI_BREADY;
  wire S1_AXI_BVALID;
  wire [31:0]S1_AXI_RDATA;
  wire S1_AXI_RREADY;
  wire S1_AXI_RVALID;
  wire [31:0]S1_AXI_WDATA;
  wire S1_AXI_WVALID;
  wire SYS_Rst_I;
  wire SYS_Rst_Input;
  wire \Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ;
  wire \Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_3 ;
  wire \Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg_4 ;
  wire \Using_Bus_0.Bus0_If_n_18 ;
  wire \Using_Bus_0.Bus0_If_n_21 ;
  wire \Using_Bus_1.Bus1_If_n_10 ;
  wire \Using_Bus_1.Bus1_If_n_11 ;
  wire \Using_Bus_1.Bus1_If_n_12 ;
  wire \Using_Bus_1.Bus1_If_n_13 ;
  wire \Using_Bus_1.Bus1_If_n_14 ;
  wire \Using_Bus_1.Bus1_If_n_15 ;
  wire \Using_Bus_1.Bus1_If_n_16 ;
  wire \Using_Bus_1.Bus1_If_n_18 ;
  wire \Using_Bus_1.Bus1_If_n_21 ;
  wire \Using_Bus_1.Bus1_If_n_9 ;
  wire \Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/CI ;
  wire \Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/CI_0 ;
  wire \Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/buffer_Empty__2 ;
  wire \Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/buffer_Empty__2_6 ;
  wire \Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/fifo_length_i11_out ;
  wire \Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/fifo_length_i11_out_1 ;
  wire fsl_0_to_1_n_0;
  wire fsl_0_to_1_n_37;
  wire fsl_1_to_0_n_0;
  wire fsl_1_to_0_n_37;
  wire rit_detect_d0;
  wire rit_detect_d0_5;
  wire [0:3]rit_register;
  wire [0:3]sit_register;

  assign M0_AXIS_TDATA[31] = \<const0> ;
  assign M0_AXIS_TDATA[30] = \<const0> ;
  assign M0_AXIS_TDATA[29] = \<const0> ;
  assign M0_AXIS_TDATA[28] = \<const0> ;
  assign M0_AXIS_TDATA[27] = \<const0> ;
  assign M0_AXIS_TDATA[26] = \<const0> ;
  assign M0_AXIS_TDATA[25] = \<const0> ;
  assign M0_AXIS_TDATA[24] = \<const0> ;
  assign M0_AXIS_TDATA[23] = \<const0> ;
  assign M0_AXIS_TDATA[22] = \<const0> ;
  assign M0_AXIS_TDATA[21] = \<const0> ;
  assign M0_AXIS_TDATA[20] = \<const0> ;
  assign M0_AXIS_TDATA[19] = \<const0> ;
  assign M0_AXIS_TDATA[18] = \<const0> ;
  assign M0_AXIS_TDATA[17] = \<const0> ;
  assign M0_AXIS_TDATA[16] = \<const0> ;
  assign M0_AXIS_TDATA[15] = \<const0> ;
  assign M0_AXIS_TDATA[14] = \<const0> ;
  assign M0_AXIS_TDATA[13] = \<const0> ;
  assign M0_AXIS_TDATA[12] = \<const0> ;
  assign M0_AXIS_TDATA[11] = \<const0> ;
  assign M0_AXIS_TDATA[10] = \<const0> ;
  assign M0_AXIS_TDATA[9] = \<const0> ;
  assign M0_AXIS_TDATA[8] = \<const0> ;
  assign M0_AXIS_TDATA[7] = \<const0> ;
  assign M0_AXIS_TDATA[6] = \<const0> ;
  assign M0_AXIS_TDATA[5] = \<const0> ;
  assign M0_AXIS_TDATA[4] = \<const0> ;
  assign M0_AXIS_TDATA[3] = \<const0> ;
  assign M0_AXIS_TDATA[2] = \<const0> ;
  assign M0_AXIS_TDATA[1] = \<const0> ;
  assign M0_AXIS_TDATA[0] = \<const0> ;
  assign M0_AXIS_TLAST = \<const0> ;
  assign M0_AXIS_TVALID = \<const0> ;
  assign M1_AXIS_TDATA[31] = \<const0> ;
  assign M1_AXIS_TDATA[30] = \<const0> ;
  assign M1_AXIS_TDATA[29] = \<const0> ;
  assign M1_AXIS_TDATA[28] = \<const0> ;
  assign M1_AXIS_TDATA[27] = \<const0> ;
  assign M1_AXIS_TDATA[26] = \<const0> ;
  assign M1_AXIS_TDATA[25] = \<const0> ;
  assign M1_AXIS_TDATA[24] = \<const0> ;
  assign M1_AXIS_TDATA[23] = \<const0> ;
  assign M1_AXIS_TDATA[22] = \<const0> ;
  assign M1_AXIS_TDATA[21] = \<const0> ;
  assign M1_AXIS_TDATA[20] = \<const0> ;
  assign M1_AXIS_TDATA[19] = \<const0> ;
  assign M1_AXIS_TDATA[18] = \<const0> ;
  assign M1_AXIS_TDATA[17] = \<const0> ;
  assign M1_AXIS_TDATA[16] = \<const0> ;
  assign M1_AXIS_TDATA[15] = \<const0> ;
  assign M1_AXIS_TDATA[14] = \<const0> ;
  assign M1_AXIS_TDATA[13] = \<const0> ;
  assign M1_AXIS_TDATA[12] = \<const0> ;
  assign M1_AXIS_TDATA[11] = \<const0> ;
  assign M1_AXIS_TDATA[10] = \<const0> ;
  assign M1_AXIS_TDATA[9] = \<const0> ;
  assign M1_AXIS_TDATA[8] = \<const0> ;
  assign M1_AXIS_TDATA[7] = \<const0> ;
  assign M1_AXIS_TDATA[6] = \<const0> ;
  assign M1_AXIS_TDATA[5] = \<const0> ;
  assign M1_AXIS_TDATA[4] = \<const0> ;
  assign M1_AXIS_TDATA[3] = \<const0> ;
  assign M1_AXIS_TDATA[2] = \<const0> ;
  assign M1_AXIS_TDATA[1] = \<const0> ;
  assign M1_AXIS_TDATA[0] = \<const0> ;
  assign M1_AXIS_TLAST = \<const0> ;
  assign M1_AXIS_TVALID = \<const0> ;
  assign S0_AXIS_TREADY = \<const0> ;
  assign S0_AXI_BRESP[1] = \<const0> ;
  assign S0_AXI_BRESP[0] = \<const0> ;
  assign S0_AXI_RRESP[1] = \<const0> ;
  assign S0_AXI_RRESP[0] = \<const0> ;
  assign S0_AXI_WREADY = S0_AXI_AWREADY;
  assign S1_AXIS_TREADY = \<const0> ;
  assign S1_AXI_BRESP[1] = \<const0> ;
  assign S1_AXI_BRESP[0] = \<const0> ;
  assign S1_AXI_RRESP[1] = \<const0> ;
  assign S1_AXI_RRESP[0] = \<const0> ;
  assign S1_AXI_WREADY = S1_AXI_AWREADY;
  GND GND
       (.G(\<const0> ));
  LUT3 #(
    .INIT(8'hBF)) 
    \Rst_Sync.SYS_Rst_I_i_1 
       (.I0(\Rst_Sync.SYS_Rst_Input_d2 ),
        .I1(S0_AXI_ARESETN),
        .I2(S1_AXI_ARESETN),
        .O(\Rst_Sync.SYS_Rst_I_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Rst_Sync.SYS_Rst_I_reg 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(\Rst_Sync.SYS_Rst_I_i_1_n_0 ),
        .Q(SYS_Rst_I),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Rst_Sync.SYS_Rst_Input_d1_reg 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(SYS_Rst_Input),
        .Q(\Rst_Sync.SYS_Rst_Input_d1 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Rst_Sync.SYS_Rst_Input_d2_reg 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(\Rst_Sync.SYS_Rst_Input_d1 ),
        .Q(\Rst_Sync.SYS_Rst_Input_d2 ),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_if_decode \Using_Bus_0.Bus0_If 
       (.Bus_RNW_reg(\Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .Bus_RNW_reg_reg(\Using_Bus_0.Bus0_If_n_21 ),
        .CI(\Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/CI ),
        .E(\Using_Bus_0.Bus0_If_n_18 ),
        .\FIFO_RAM[31].SRL16E_I (fsl_1_to_0_n_0),
        .FSL0_M_Full_I(FSL0_M_Full_I),
        .FSL0_M_Write_I(FSL0_M_Write_I),
        .FSL0_S_Data_I(FSL0_S_Data_I),
        .FSL0_S_Exists_I(FSL0_S_Exists_I),
        .FSL0_S_Reset_I(FSL0_S_Reset_I),
        .FSL1_M_Write_I(FSL1_M_Write_I),
        .FSL1_S_Reset_I(FSL1_S_Reset_I),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (S0_AXI_AWREADY),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .Interrupt_0(Interrupt_0),
        .Q({sit_register[0],sit_register[1],sit_register[2],sit_register[3]}),
        .S0_AXI_ACLK(S0_AXI_ACLK),
        .S0_AXI_ARADDR(S0_AXI_ARADDR[5:2]),
        .S0_AXI_ARVALID(S0_AXI_ARVALID),
        .S0_AXI_AWADDR(S0_AXI_AWADDR[5:2]),
        .S0_AXI_AWVALID(S0_AXI_AWVALID),
        .S0_AXI_BREADY(S0_AXI_BREADY),
        .S0_AXI_BVALID(S0_AXI_BVALID),
        .S0_AXI_RDATA(S0_AXI_RDATA),
        .S0_AXI_RREADY(S0_AXI_RREADY),
        .S0_AXI_RVALID(S0_AXI_RVALID),
        .S0_AXI_WDATA(S0_AXI_WDATA[3:0]),
        .S0_AXI_WVALID(S0_AXI_WVALID),
        .SR(Reset),
        .SYS_Rst_I(SYS_Rst_I),
        .buffer_Empty__2(\Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/buffer_Empty__2_6 ),
        .data_Exists_I_reg(Reset_2),
        .fifo_length_i11_out(\Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/fifo_length_i11_out ),
        .is_read_reg(S0_AXI_ARREADY),
        .rit_detect_d0(rit_detect_d0_5),
        .\rit_register_reg[0]_0 ({rit_register[0],rit_register[1],rit_register[2],rit_register[3]}),
        .sit_detect_d1_reg_0(fsl_0_to_1_n_37));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_if_decode_0 \Using_Bus_1.Bus1_If 
       (.Bus_RNW_reg(\Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_3 ),
        .Bus_RNW_reg_reg(\Using_Bus_1.Bus1_If_n_21 ),
        .CI(\Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/CI_0 ),
        .E(\Using_Bus_1.Bus1_If_n_18 ),
        .\FIFO_RAM[31].SRL16E_I (fsl_0_to_1_n_0),
        .FSL0_M_Write_I(FSL0_M_Write_I),
        .FSL0_S_Reset_I(FSL0_S_Reset_I),
        .FSL1_M_Full_I(FSL1_M_Full_I),
        .FSL1_M_Write_I(FSL1_M_Write_I),
        .FSL1_S_Data_I(FSL1_S_Data_I),
        .FSL1_S_Exists_I(FSL1_S_Exists_I),
        .FSL1_S_Reset_I(FSL1_S_Reset_I),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (S1_AXI_AWREADY),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg_4 ),
        .Interrupt_1(Interrupt_1),
        .Q({\Using_Bus_1.Bus1_If_n_9 ,\Using_Bus_1.Bus1_If_n_10 ,\Using_Bus_1.Bus1_If_n_11 ,\Using_Bus_1.Bus1_If_n_12 }),
        .S1_AXI_ACLK(S1_AXI_ACLK),
        .S1_AXI_ARADDR(S1_AXI_ARADDR[5:2]),
        .S1_AXI_ARVALID(S1_AXI_ARVALID),
        .S1_AXI_AWADDR(S1_AXI_AWADDR[5:2]),
        .S1_AXI_AWVALID(S1_AXI_AWVALID),
        .S1_AXI_BREADY(S1_AXI_BREADY),
        .S1_AXI_BVALID(S1_AXI_BVALID),
        .S1_AXI_RDATA(S1_AXI_RDATA),
        .S1_AXI_RREADY(S1_AXI_RREADY),
        .S1_AXI_RVALID(S1_AXI_RVALID),
        .S1_AXI_WDATA(S1_AXI_WDATA[3:0]),
        .S1_AXI_WVALID(S1_AXI_WVALID),
        .SR(Reset_2),
        .SYS_Rst_I(SYS_Rst_I),
        .buffer_Empty__2(\Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/buffer_Empty__2 ),
        .data_Exists_I_reg(Reset),
        .fifo_length_i11_out(\Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/fifo_length_i11_out_1 ),
        .is_read_reg(S1_AXI_ARREADY),
        .rit_detect_d0(rit_detect_d0),
        .\rit_register_reg[0]_0 ({\Using_Bus_1.Bus1_If_n_13 ,\Using_Bus_1.Bus1_If_n_14 ,\Using_Bus_1.Bus1_If_n_15 ,\Using_Bus_1.Bus1_If_n_16 }),
        .sit_detect_d1_reg_0(fsl_1_to_0_n_37));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsl_v20 fsl_0_to_1
       (.Bus_RNW_reg(\Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_3 ),
        .CI(\Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/CI_0 ),
        .E(\Using_Bus_1.Bus1_If_n_18 ),
        .FDRE_I1(fsl_0_to_1_n_0),
        .FSL0_M_Full_I(FSL0_M_Full_I),
        .FSL0_M_Write_I(FSL0_M_Write_I),
        .FSL1_S_Data_I(FSL1_S_Data_I),
        .FSL1_S_Exists_I(FSL1_S_Exists_I),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg_4 ),
        .Q({sit_register[0],sit_register[1],sit_register[2],sit_register[3]}),
        .S0_AXI_ACLK(S0_AXI_ACLK),
        .S0_AXI_WDATA(S0_AXI_WDATA),
        .SR(Reset),
        .SYS_Rst_I(SYS_Rst_I),
        .buffer_Empty__2(\Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/buffer_Empty__2 ),
        .data_Exists_I_reg(\Using_Bus_1.Bus1_If_n_21 ),
        .fifo_length_i11_out(\Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/fifo_length_i11_out_1 ),
        .rit_detect_d0(rit_detect_d0),
        .rit_detect_d1_reg({\Using_Bus_1.Bus1_If_n_13 ,\Using_Bus_1.Bus1_If_n_14 ,\Using_Bus_1.Bus1_If_n_15 ,\Using_Bus_1.Bus1_If_n_16 }),
        .\sit_register_reg[0] (fsl_0_to_1_n_37));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsl_v20_1 fsl_1_to_0
       (.Bus_RNW_reg(\Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .CI(\Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/CI ),
        .E(\Using_Bus_0.Bus0_If_n_18 ),
        .FDRE_I1(fsl_1_to_0_n_0),
        .FSL0_S_Data_I(FSL0_S_Data_I),
        .FSL0_S_Exists_I(FSL0_S_Exists_I),
        .FSL1_M_Full_I(FSL1_M_Full_I),
        .FSL1_M_Write_I(FSL1_M_Write_I),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .Q({\Using_Bus_1.Bus1_If_n_9 ,\Using_Bus_1.Bus1_If_n_10 ,\Using_Bus_1.Bus1_If_n_11 ,\Using_Bus_1.Bus1_If_n_12 }),
        .S0_AXI_ACLK(S0_AXI_ACLK),
        .S1_AXI_WDATA(S1_AXI_WDATA),
        .SR(Reset_2),
        .SYS_Rst_I(SYS_Rst_I),
        .buffer_Empty__2(\Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/buffer_Empty__2_6 ),
        .data_Exists_I_reg(\Using_Bus_0.Bus0_If_n_21 ),
        .fifo_length_i11_out(\Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.srl_fifo_i.FSL_FIFO/fifo_length_i11_out ),
        .rit_detect_d0(rit_detect_d0_5),
        .rit_detect_d1_reg({rit_register[0],rit_register[1],rit_register[2],rit_register[3]}),
        .\sit_register_reg[0] (fsl_1_to_0_n_37));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(SYS_Rst_Input));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f
   (ce_expnd_i_11,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] );
  output ce_expnd_i_11;
  input [3:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire ce_expnd_i_11;

  LUT4 #(
    .INIT(16'h0001)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [1]),
        .O(ce_expnd_i_11));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f_7
   (ce_expnd_i_11,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] );
  output ce_expnd_i_11;
  input [3:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire ce_expnd_i_11;

  LUT4 #(
    .INIT(16'h0001)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [1]),
        .O(ce_expnd_i_11));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized1
   (ce_expnd_i_9,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] );
  output ce_expnd_i_9;
  input [3:0]\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  wire ce_expnd_i_9;

  LUT4 #(
    .INIT(16'h0100)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] [1]),
        .O(ce_expnd_i_9));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized10
   (ce_expnd_i_0,
    \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] );
  output ce_expnd_i_0;
  input [3:0]\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] ;
  wire ce_expnd_i_0;

  LUT4 #(
    .INIT(16'h4000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] [1]),
        .O(ce_expnd_i_0));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized10_9
   (ce_expnd_i_0,
    \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] );
  output ce_expnd_i_0;
  input [3:0]\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] ;
  wire ce_expnd_i_0;

  LUT4 #(
    .INIT(16'h4000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] [1]),
        .O(ce_expnd_i_0));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized1_10
   (ce_expnd_i_9,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] );
  output ce_expnd_i_9;
  input [3:0]\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  wire ce_expnd_i_9;

  LUT4 #(
    .INIT(16'h0100)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] [1]),
        .O(ce_expnd_i_9));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized3
   (ce_expnd_i_7,
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] );
  output ce_expnd_i_7;
  input [3:0]\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;
  wire ce_expnd_i_7;

  LUT4 #(
    .INIT(16'h0100)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] [2]),
        .O(ce_expnd_i_7));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized3_11
   (ce_expnd_i_7,
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] );
  output ce_expnd_i_7;
  input [3:0]\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;
  wire ce_expnd_i_7;

  LUT4 #(
    .INIT(16'h0100)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] [2]),
        .O(ce_expnd_i_7));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized4
   (ce_expnd_i_6,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] );
  output ce_expnd_i_6;
  input [3:0]\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] ;
  wire ce_expnd_i_6;

  LUT4 #(
    .INIT(16'h1000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] [2]),
        .O(ce_expnd_i_6));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized4_12
   (ce_expnd_i_6,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] );
  output ce_expnd_i_6;
  input [3:0]\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] ;
  wire ce_expnd_i_6;

  LUT4 #(
    .INIT(16'h1000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] [2]),
        .O(ce_expnd_i_6));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized5
   (ce_expnd_i_5,
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] );
  output ce_expnd_i_5;
  input [3:0]\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;
  wire ce_expnd_i_5;

  LUT4 #(
    .INIT(16'h1000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] [1]),
        .I3(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] [2]),
        .O(ce_expnd_i_5));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized5_13
   (ce_expnd_i_5,
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] );
  output ce_expnd_i_5;
  input [3:0]\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;
  wire ce_expnd_i_5;

  LUT4 #(
    .INIT(16'h1000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] [1]),
        .I3(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] [2]),
        .O(ce_expnd_i_5));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized6
   (ce_expnd_i_4,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] );
  output ce_expnd_i_4;
  input [3:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  wire ce_expnd_i_4;

  LUT4 #(
    .INIT(16'h4000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] [1]),
        .O(ce_expnd_i_4));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized6_14
   (ce_expnd_i_4,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] );
  output ce_expnd_i_4;
  input [3:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  wire ce_expnd_i_4;

  LUT4 #(
    .INIT(16'h4000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] [1]),
        .O(ce_expnd_i_4));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized7
   (ce_expnd_i_3,
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] );
  output ce_expnd_i_3;
  input [3:0]\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ;
  wire ce_expnd_i_3;

  LUT4 #(
    .INIT(16'h0100)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] [3]),
        .O(ce_expnd_i_3));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized7_15
   (ce_expnd_i_3,
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] );
  output ce_expnd_i_3;
  input [3:0]\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ;
  wire ce_expnd_i_3;

  LUT4 #(
    .INIT(16'h0100)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] [3]),
        .O(ce_expnd_i_3));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized8
   (ce_expnd_i_2,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] );
  output ce_expnd_i_2;
  input [3:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  wire ce_expnd_i_2;

  LUT4 #(
    .INIT(16'h1000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] [3]),
        .I3(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] [0]),
        .O(ce_expnd_i_2));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized8_16
   (ce_expnd_i_2,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] );
  output ce_expnd_i_2;
  input [3:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  wire ce_expnd_i_2;

  LUT4 #(
    .INIT(16'h1000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] [3]),
        .I3(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] [0]),
        .O(ce_expnd_i_2));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized9
   (ce_expnd_i_1,
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] );
  output ce_expnd_i_1;
  input [3:0]\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] ;
  wire ce_expnd_i_1;

  LUT4 #(
    .INIT(16'h1000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] [3]),
        .I3(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] [1]),
        .O(ce_expnd_i_1));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized9_8
   (ce_expnd_i_1,
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] );
  output ce_expnd_i_1;
  input [3:0]\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] ;

  wire [3:0]\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] ;
  wire ce_expnd_i_1;

  LUT4 #(
    .INIT(16'h1000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] [3]),
        .I3(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] [1]),
        .O(ce_expnd_i_1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment
   (\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ,
    Bus_RNW_reg_reg,
    S1_AXI_RVALID,
    S1_AXI_BVALID,
    is_read_reg_0,
    read_fsl_error,
    write_fsl_error,
    FSL1_M_Write_I,
    FSL_M_Reset0,
    FSL_S_Reset0,
    empty_error,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    E,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ,
    error_detect,
    Bus_RNW_reg_reg_0,
    Bus_RNW_reg_reg_1,
    fifo_length_i11_out,
    CI,
    Bus_RNW_reg_reg_2,
    S1_AXI_RDATA,
    SYS_Rst_I,
    S1_AXI_ACLK,
    S1_AXI_ARVALID,
    S1_AXI_AWVALID,
    S1_AXI_WVALID,
    FSL1_S_Exists_I,
    FSL1_M_Full_I,
    S1_AXI_WDATA,
    \s_axi_rdata_i_reg[1]_0 ,
    rit_detect_d0,
    \s_axi_rdata_i_reg[2]_0 ,
    \s_axi_rdata_i_reg[0]_0 ,
    Q,
    is_register,
    \s_axi_rdata_i_reg[3]_0 ,
    S1_AXI_BREADY,
    S1_AXI_RREADY,
    FSL1_S_Data_I,
    \s_axi_rdata_i_reg[2]_1 ,
    S1_AXI_ARADDR,
    S1_AXI_AWADDR,
    write_fsl_error_d1,
    read_fsl_error_d1,
    FSL0_M_Write_I,
    \FIFO_RAM[31].SRL16E_I ,
    buffer_Empty__2,
    data_Exists_I_reg);
  output \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ;
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  output Bus_RNW_reg_reg;
  output S1_AXI_RVALID;
  output S1_AXI_BVALID;
  output is_read_reg_0;
  output read_fsl_error;
  output write_fsl_error;
  output FSL1_M_Write_I;
  output FSL_M_Reset0;
  output FSL_S_Reset0;
  output empty_error;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  output [0:0]E;
  output [0:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  output [0:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  output error_detect;
  output Bus_RNW_reg_reg_0;
  output [0:0]Bus_RNW_reg_reg_1;
  output fifo_length_i11_out;
  output CI;
  output Bus_RNW_reg_reg_2;
  output [31:0]S1_AXI_RDATA;
  input SYS_Rst_I;
  input S1_AXI_ACLK;
  input S1_AXI_ARVALID;
  input S1_AXI_AWVALID;
  input S1_AXI_WVALID;
  input FSL1_S_Exists_I;
  input FSL1_M_Full_I;
  input [1:0]S1_AXI_WDATA;
  input \s_axi_rdata_i_reg[1]_0 ;
  input rit_detect_d0;
  input \s_axi_rdata_i_reg[2]_0 ;
  input \s_axi_rdata_i_reg[0]_0 ;
  input [3:0]Q;
  input [0:2]is_register;
  input [3:0]\s_axi_rdata_i_reg[3]_0 ;
  input S1_AXI_BREADY;
  input S1_AXI_RREADY;
  input [0:31]FSL1_S_Data_I;
  input [2:0]\s_axi_rdata_i_reg[2]_1 ;
  input [3:0]S1_AXI_ARADDR;
  input [3:0]S1_AXI_AWADDR;
  input write_fsl_error_d1;
  input read_fsl_error_d1;
  input FSL0_M_Write_I;
  input \FIFO_RAM[31].SRL16E_I ;
  input buffer_Empty__2;
  input [0:0]data_Exists_I_reg;

  wire Bus_RNW_reg_reg;
  wire Bus_RNW_reg_reg_0;
  wire [0:0]Bus_RNW_reg_reg_1;
  wire Bus_RNW_reg_reg_2;
  wire CI;
  wire [0:0]E;
  wire \FIFO_RAM[31].SRL16E_I ;
  wire FSL0_M_Write_I;
  wire FSL1_M_Full_I;
  wire FSL1_M_Write_I;
  wire [0:31]FSL1_S_Data_I;
  wire FSL1_S_Exists_I;
  wire FSL_M_Reset0;
  wire FSL_S_Reset0;
  wire \FSM_onehot_state[0]_i_1__0_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0_n_0 ;
  wire [4:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ;
  wire I_DECODER_n_12;
  wire I_DECODER_n_13;
  wire I_DECODER_n_14;
  wire I_DECODER_n_15;
  wire I_DECODER_n_16;
  wire I_DECODER_n_17;
  wire I_DECODER_n_18;
  wire I_DECODER_n_19;
  wire I_DECODER_n_20;
  wire I_DECODER_n_21;
  wire I_DECODER_n_22;
  wire I_DECODER_n_23;
  wire I_DECODER_n_24;
  wire I_DECODER_n_25;
  wire I_DECODER_n_26;
  wire I_DECODER_n_27;
  wire I_DECODER_n_28;
  wire I_DECODER_n_29;
  wire I_DECODER_n_3;
  wire I_DECODER_n_30;
  wire I_DECODER_n_31;
  wire I_DECODER_n_32;
  wire I_DECODER_n_33;
  wire I_DECODER_n_34;
  wire I_DECODER_n_35;
  wire I_DECODER_n_36;
  wire I_DECODER_n_37;
  wire I_DECODER_n_38;
  wire I_DECODER_n_39;
  wire I_DECODER_n_4;
  wire I_DECODER_n_40;
  wire I_DECODER_n_41;
  wire I_DECODER_n_42;
  wire I_DECODER_n_43;
  wire I_DECODER_n_44;
  wire I_DECODER_n_45;
  wire I_DECODER_n_46;
  wire I_DECODER_n_48;
  wire I_DECODER_n_49;
  wire [3:0]Q;
  wire S1_AXI_ACLK;
  wire [3:0]S1_AXI_ARADDR;
  wire S1_AXI_ARVALID;
  wire [3:0]S1_AXI_AWADDR;
  wire S1_AXI_AWVALID;
  wire S1_AXI_BREADY;
  wire S1_AXI_BVALID;
  wire [31:0]S1_AXI_RDATA;
  wire S1_AXI_RREADY;
  wire S1_AXI_RVALID;
  wire [1:0]S1_AXI_WDATA;
  wire S1_AXI_WVALID;
  wire SYS_Rst_I;
  wire buffer_Empty__2;
  wire \bus2ip_addr_i[2]_i_1__0_n_0 ;
  wire \bus2ip_addr_i[3]_i_1__0_n_0 ;
  wire \bus2ip_addr_i[4]_i_1__0_n_0 ;
  wire \bus2ip_addr_i[5]_i_1__0_n_0 ;
  wire \bus2ip_addr_i[5]_i_2__0_n_0 ;
  wire \bus2ip_addr_i_reg_n_0_[2] ;
  wire \bus2ip_addr_i_reg_n_0_[3] ;
  wire \bus2ip_addr_i_reg_n_0_[4] ;
  wire \bus2ip_addr_i_reg_n_0_[5] ;
  wire bus2ip_rnw_i06_out;
  wire bus2ip_rnw_i_reg_n_0;
  wire [0:0]data_Exists_I_reg;
  wire empty_error;
  wire error_detect;
  wire fifo_length_i11_out;
  wire is_read;
  wire is_read_i_1__0_n_0;
  wire is_read_reg_0;
  wire is_read_reg_n_0;
  wire [0:2]is_register;
  wire is_write;
  wire is_write_reg_n_0;
  wire p_5_in;
  wire [4:0]plusOp;
  wire read_fsl_error;
  wire read_fsl_error_d1;
  wire rit_detect_d0;
  wire rst;
  wire s_axi_bresp_i;
  wire \s_axi_rdata_i_reg[0]_0 ;
  wire \s_axi_rdata_i_reg[1]_0 ;
  wire \s_axi_rdata_i_reg[2]_0 ;
  wire [2:0]\s_axi_rdata_i_reg[2]_1 ;
  wire [3:0]\s_axi_rdata_i_reg[3]_0 ;
  wire s_axi_rresp_i;
  wire start2;
  wire start2_i_1__0_n_0;
  wire state1__2;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire write_fsl_error;
  wire write_fsl_error_d1;

  LUT5 #(
    .INIT(32'hFF101010)) 
    \FSM_onehot_state[0]_i_1__0 
       (.I0(S1_AXI_ARVALID),
        .I1(p_5_in),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(state1__2),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[2]_i_2__0 
       (.I0(S1_AXI_AWVALID),
        .I1(S1_AXI_WVALID),
        .O(p_5_in));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[3]_i_2__0 
       (.I0(S1_AXI_BREADY),
        .I1(S1_AXI_BVALID),
        .I2(S1_AXI_RREADY),
        .I3(S1_AXI_RVALID),
        .O(state1__2));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1__0_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(I_DECODER_n_46),
        .Q(s_axi_rresp_i),
        .R(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(I_DECODER_n_45),
        .Q(s_axi_bresp_i),
        .R(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(I_DECODER_n_44),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(rst));
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1__0 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1__0 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1__0 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1__0 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .O(plusOp[3]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_2__0 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .O(plusOp[4]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0_n_0 ));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0_n_0 ));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0_n_0 ));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0_n_0 ));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4] 
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder I_DECODER
       (.Bus_RNW_reg_reg_0(Bus_RNW_reg_reg),
        .Bus_RNW_reg_reg_1(Bus_RNW_reg_reg_0),
        .Bus_RNW_reg_reg_2(Bus_RNW_reg_reg_1),
        .Bus_RNW_reg_reg_3(Bus_RNW_reg_reg_2),
        .Bus_RNW_reg_reg_4(bus2ip_rnw_i_reg_n_0),
        .CI(CI),
        .D({I_DECODER_n_3,I_DECODER_n_4}),
        .E(E),
        .\FIFO_RAM[0].SRL16E_I ({I_DECODER_n_12,I_DECODER_n_13,I_DECODER_n_14,I_DECODER_n_15,I_DECODER_n_16,I_DECODER_n_17,I_DECODER_n_18,I_DECODER_n_19,I_DECODER_n_20,I_DECODER_n_21,I_DECODER_n_22,I_DECODER_n_23,I_DECODER_n_24,I_DECODER_n_25,I_DECODER_n_26,I_DECODER_n_27,I_DECODER_n_28,I_DECODER_n_29,I_DECODER_n_30,I_DECODER_n_31,I_DECODER_n_32,I_DECODER_n_33,I_DECODER_n_34,I_DECODER_n_35,I_DECODER_n_36,I_DECODER_n_37,I_DECODER_n_38,I_DECODER_n_39,I_DECODER_n_40,I_DECODER_n_41,I_DECODER_n_42,I_DECODER_n_43}),
        .\FIFO_RAM[31].SRL16E_I (\FIFO_RAM[31].SRL16E_I ),
        .FSL0_M_Write_I(FSL0_M_Write_I),
        .FSL1_M_Full_I(FSL1_M_Full_I),
        .FSL1_M_Write_I(FSL1_M_Write_I),
        .FSL1_S_Data_I(FSL1_S_Data_I),
        .FSL1_S_Exists_I(FSL1_S_Exists_I),
        .FSL_M_Reset0(FSL_M_Reset0),
        .FSL_S_Reset0(FSL_S_Reset0),
        .\FSM_onehot_state_reg[2] ({I_DECODER_n_44,I_DECODER_n_45,I_DECODER_n_46}),
        .\FSM_onehot_state_reg[3] ({\FSM_onehot_state_reg_n_0_[3] ,s_axi_bresp_i,s_axi_rresp_i,\FSM_onehot_state_reg_n_0_[0] }),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ),
        .\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0 (\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ),
        .\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 (\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ({\bus2ip_addr_i_reg_n_0_[5] ,\bus2ip_addr_i_reg_n_0_[4] ,\bus2ip_addr_i_reg_n_0_[3] ,\bus2ip_addr_i_reg_n_0_[2] }),
        .Q({\state_reg_n_0_[1] ,\state_reg_n_0_[0] }),
        .S1_AXI_ACLK(S1_AXI_ACLK),
        .S1_AXI_ARREADY(is_read_reg_n_0),
        .S1_AXI_ARVALID(S1_AXI_ARVALID),
        .S1_AXI_AWREADY(is_write_reg_n_0),
        .S1_AXI_AWREADY_0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ),
        .S1_AXI_BREADY(S1_AXI_BREADY),
        .S1_AXI_BVALID(S1_AXI_BVALID),
        .S1_AXI_RREADY(S1_AXI_RREADY),
        .S1_AXI_RVALID(S1_AXI_RVALID),
        .S1_AXI_WDATA(S1_AXI_WDATA),
        .SYS_Rst_I(SYS_Rst_I),
        .buffer_Empty__2(buffer_Empty__2),
        .data_Exists_I_reg(data_Exists_I_reg),
        .empty_error(empty_error),
        .error_detect(error_detect),
        .fifo_length_i11_out(fifo_length_i11_out),
        .is_read_reg(is_read_reg_0),
        .is_register(is_register),
        .p_5_in(p_5_in),
        .read_fsl_error(read_fsl_error),
        .read_fsl_error_d1(read_fsl_error_d1),
        .rit_detect_d0(rit_detect_d0),
        .\s_axi_rdata_i_reg[0] (\s_axi_rdata_i_reg[0]_0 ),
        .\s_axi_rdata_i_reg[1] (\s_axi_rdata_i_reg[1]_0 ),
        .\s_axi_rdata_i_reg[2] (\s_axi_rdata_i_reg[2]_0 ),
        .\s_axi_rdata_i_reg[2]_0 (\s_axi_rdata_i_reg[2]_1 ),
        .\s_axi_rdata_i_reg[3] (Q),
        .\s_axi_rdata_i_reg[3]_0 (\s_axi_rdata_i_reg[3]_0 ),
        .start2(start2),
        .state1__2(state1__2),
        .\state_reg[0] (I_DECODER_n_48),
        .\state_reg[1] (I_DECODER_n_49),
        .write_fsl_error(write_fsl_error),
        .write_fsl_error_d1(write_fsl_error_d1));
  LUT5 #(
    .INIT(32'hFFEF1000)) 
    \bus2ip_addr_i[2]_i_1__0 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(S1_AXI_ARVALID),
        .I3(S1_AXI_ARADDR[0]),
        .I4(S1_AXI_AWADDR[0]),
        .O(\bus2ip_addr_i[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF1000)) 
    \bus2ip_addr_i[3]_i_1__0 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(S1_AXI_ARVALID),
        .I3(S1_AXI_ARADDR[1]),
        .I4(S1_AXI_AWADDR[1]),
        .O(\bus2ip_addr_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hFFEF1000)) 
    \bus2ip_addr_i[4]_i_1__0 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(S1_AXI_ARVALID),
        .I3(S1_AXI_ARADDR[2]),
        .I4(S1_AXI_AWADDR[2]),
        .O(\bus2ip_addr_i[4]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h1110)) 
    \bus2ip_addr_i[5]_i_1__0 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(S1_AXI_ARVALID),
        .I3(p_5_in),
        .O(\bus2ip_addr_i[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hFFEF1000)) 
    \bus2ip_addr_i[5]_i_2__0 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(S1_AXI_ARVALID),
        .I3(S1_AXI_ARADDR[3]),
        .I4(S1_AXI_AWADDR[3]),
        .O(\bus2ip_addr_i[5]_i_2__0_n_0 ));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(S1_AXI_ACLK),
        .CE(\bus2ip_addr_i[5]_i_1__0_n_0 ),
        .D(\bus2ip_addr_i[2]_i_1__0_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[2] ),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(S1_AXI_ACLK),
        .CE(\bus2ip_addr_i[5]_i_1__0_n_0 ),
        .D(\bus2ip_addr_i[3]_i_1__0_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[3] ),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(S1_AXI_ACLK),
        .CE(\bus2ip_addr_i[5]_i_1__0_n_0 ),
        .D(\bus2ip_addr_i[4]_i_1__0_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[4] ),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[5] 
       (.C(S1_AXI_ACLK),
        .CE(\bus2ip_addr_i[5]_i_1__0_n_0 ),
        .D(\bus2ip_addr_i[5]_i_2__0_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[5] ),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h10)) 
    bus2ip_rnw_i_i_1__0
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(S1_AXI_ARVALID),
        .O(bus2ip_rnw_i06_out));
  FDRE bus2ip_rnw_i_reg
       (.C(S1_AXI_ACLK),
        .CE(\bus2ip_addr_i[5]_i_1__0_n_0 ),
        .D(bus2ip_rnw_i06_out),
        .Q(bus2ip_rnw_i_reg_n_0),
        .R(rst));
  LUT3 #(
    .INIT(8'hEA)) 
    is_read_i_1__0
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(state1__2),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .O(is_read_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    is_read_i_2__0
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(S1_AXI_ARVALID),
        .O(is_read));
  FDRE is_read_reg
       (.C(S1_AXI_ACLK),
        .CE(is_read_i_1__0_n_0),
        .D(is_read),
        .Q(is_read_reg_n_0),
        .R(rst));
  LUT3 #(
    .INIT(8'h20)) 
    is_write_i_1__0
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(S1_AXI_ARVALID),
        .I2(p_5_in),
        .O(is_write));
  FDRE is_write_reg
       (.C(S1_AXI_ACLK),
        .CE(is_read_i_1__0_n_0),
        .D(is_write),
        .Q(is_write_reg_n_0),
        .R(rst));
  FDRE rst_reg
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(SYS_Rst_I),
        .Q(rst),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(I_DECODER_n_49),
        .Q(S1_AXI_BVALID),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_43),
        .Q(S1_AXI_RDATA[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[10] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_33),
        .Q(S1_AXI_RDATA[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[11] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_32),
        .Q(S1_AXI_RDATA[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[12] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_31),
        .Q(S1_AXI_RDATA[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[13] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_30),
        .Q(S1_AXI_RDATA[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[14] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_29),
        .Q(S1_AXI_RDATA[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[15] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_28),
        .Q(S1_AXI_RDATA[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[16] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_27),
        .Q(S1_AXI_RDATA[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[17] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_26),
        .Q(S1_AXI_RDATA[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[18] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_25),
        .Q(S1_AXI_RDATA[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[19] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_24),
        .Q(S1_AXI_RDATA[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_42),
        .Q(S1_AXI_RDATA[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[20] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_23),
        .Q(S1_AXI_RDATA[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[21] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_22),
        .Q(S1_AXI_RDATA[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[22] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_21),
        .Q(S1_AXI_RDATA[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[23] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_20),
        .Q(S1_AXI_RDATA[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[24] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_19),
        .Q(S1_AXI_RDATA[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[25] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_18),
        .Q(S1_AXI_RDATA[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[26] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_17),
        .Q(S1_AXI_RDATA[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[27] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_16),
        .Q(S1_AXI_RDATA[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[28] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_15),
        .Q(S1_AXI_RDATA[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[29] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_14),
        .Q(S1_AXI_RDATA[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_41),
        .Q(S1_AXI_RDATA[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[30] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_13),
        .Q(S1_AXI_RDATA[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_12),
        .Q(S1_AXI_RDATA[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_40),
        .Q(S1_AXI_RDATA[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_39),
        .Q(S1_AXI_RDATA[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_38),
        .Q(S1_AXI_RDATA[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_37),
        .Q(S1_AXI_RDATA[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_36),
        .Q(S1_AXI_RDATA[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_35),
        .Q(S1_AXI_RDATA[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(S1_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_34),
        .Q(S1_AXI_RDATA[9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(I_DECODER_n_48),
        .Q(S1_AXI_RVALID),
        .R(rst));
  LUT4 #(
    .INIT(16'h1110)) 
    start2_i_1__0
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(S1_AXI_ARVALID),
        .I3(p_5_in),
        .O(start2_i_1__0_n_0));
  FDRE start2_reg
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(start2_i_1__0_n_0),
        .Q(start2),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(I_DECODER_n_4),
        .Q(\state_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(I_DECODER_n_3),
        .Q(\state_reg_n_0_[1] ),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "slave_attachment" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment_5
   (\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ,
    Bus_RNW_reg_reg,
    S0_AXI_RVALID,
    S0_AXI_BVALID,
    is_read_reg_0,
    read_fsl_error,
    write_fsl_error,
    FSL0_M_Write_I,
    FSL_M_Reset0,
    FSL_S_Reset0,
    empty_error,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    E,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ,
    error_detect,
    Bus_RNW_reg_reg_0,
    Bus_RNW_reg_reg_1,
    fifo_length_i11_out,
    CI,
    Bus_RNW_reg_reg_2,
    S0_AXI_RDATA,
    SYS_Rst_I,
    S0_AXI_ACLK,
    S0_AXI_ARVALID,
    S0_AXI_AWVALID,
    S0_AXI_WVALID,
    FSL0_S_Exists_I,
    FSL0_M_Full_I,
    S0_AXI_WDATA,
    data1,
    rit_detect_d0,
    \s_axi_rdata_i_reg[2]_0 ,
    Q,
    is_register,
    \s_axi_rdata_i_reg[3]_0 ,
    S0_AXI_BREADY,
    S0_AXI_RREADY,
    FSL0_S_Data_I,
    \s_axi_rdata_i_reg[2]_1 ,
    S0_AXI_ARADDR,
    S0_AXI_AWADDR,
    write_fsl_error_d1,
    read_fsl_error_d1,
    FSL1_M_Write_I,
    \FIFO_RAM[31].SRL16E_I ,
    buffer_Empty__2,
    data_Exists_I_reg);
  output \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ;
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  output Bus_RNW_reg_reg;
  output S0_AXI_RVALID;
  output S0_AXI_BVALID;
  output is_read_reg_0;
  output read_fsl_error;
  output write_fsl_error;
  output FSL0_M_Write_I;
  output FSL_M_Reset0;
  output FSL_S_Reset0;
  output empty_error;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  output [0:0]E;
  output [0:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  output [0:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  output error_detect;
  output Bus_RNW_reg_reg_0;
  output [0:0]Bus_RNW_reg_reg_1;
  output fifo_length_i11_out;
  output CI;
  output Bus_RNW_reg_reg_2;
  output [31:0]S0_AXI_RDATA;
  input SYS_Rst_I;
  input S0_AXI_ACLK;
  input S0_AXI_ARVALID;
  input S0_AXI_AWVALID;
  input S0_AXI_WVALID;
  input FSL0_S_Exists_I;
  input FSL0_M_Full_I;
  input [1:0]S0_AXI_WDATA;
  input [1:0]data1;
  input rit_detect_d0;
  input \s_axi_rdata_i_reg[2]_0 ;
  input [3:0]Q;
  input [0:2]is_register;
  input [3:0]\s_axi_rdata_i_reg[3]_0 ;
  input S0_AXI_BREADY;
  input S0_AXI_RREADY;
  input [0:31]FSL0_S_Data_I;
  input [2:0]\s_axi_rdata_i_reg[2]_1 ;
  input [3:0]S0_AXI_ARADDR;
  input [3:0]S0_AXI_AWADDR;
  input write_fsl_error_d1;
  input read_fsl_error_d1;
  input FSL1_M_Write_I;
  input \FIFO_RAM[31].SRL16E_I ;
  input buffer_Empty__2;
  input [0:0]data_Exists_I_reg;

  wire Bus_RNW_reg_reg;
  wire Bus_RNW_reg_reg_0;
  wire [0:0]Bus_RNW_reg_reg_1;
  wire Bus_RNW_reg_reg_2;
  wire CI;
  wire [0:0]E;
  wire \FIFO_RAM[31].SRL16E_I ;
  wire FSL0_M_Full_I;
  wire FSL0_M_Write_I;
  wire [0:31]FSL0_S_Data_I;
  wire FSL0_S_Exists_I;
  wire FSL1_M_Write_I;
  wire FSL_M_Reset0;
  wire FSL_S_Reset0;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  wire [4:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ;
  wire I_DECODER_n_12;
  wire I_DECODER_n_13;
  wire I_DECODER_n_14;
  wire I_DECODER_n_15;
  wire I_DECODER_n_16;
  wire I_DECODER_n_17;
  wire I_DECODER_n_18;
  wire I_DECODER_n_19;
  wire I_DECODER_n_20;
  wire I_DECODER_n_21;
  wire I_DECODER_n_22;
  wire I_DECODER_n_23;
  wire I_DECODER_n_24;
  wire I_DECODER_n_25;
  wire I_DECODER_n_26;
  wire I_DECODER_n_27;
  wire I_DECODER_n_28;
  wire I_DECODER_n_29;
  wire I_DECODER_n_3;
  wire I_DECODER_n_30;
  wire I_DECODER_n_31;
  wire I_DECODER_n_32;
  wire I_DECODER_n_33;
  wire I_DECODER_n_34;
  wire I_DECODER_n_35;
  wire I_DECODER_n_36;
  wire I_DECODER_n_37;
  wire I_DECODER_n_38;
  wire I_DECODER_n_39;
  wire I_DECODER_n_4;
  wire I_DECODER_n_40;
  wire I_DECODER_n_41;
  wire I_DECODER_n_42;
  wire I_DECODER_n_43;
  wire I_DECODER_n_44;
  wire I_DECODER_n_45;
  wire I_DECODER_n_46;
  wire I_DECODER_n_48;
  wire I_DECODER_n_49;
  wire [3:0]Q;
  wire S0_AXI_ACLK;
  wire [3:0]S0_AXI_ARADDR;
  wire S0_AXI_ARVALID;
  wire [3:0]S0_AXI_AWADDR;
  wire S0_AXI_AWVALID;
  wire S0_AXI_BREADY;
  wire S0_AXI_BVALID;
  wire [31:0]S0_AXI_RDATA;
  wire S0_AXI_RREADY;
  wire S0_AXI_RVALID;
  wire [1:0]S0_AXI_WDATA;
  wire S0_AXI_WVALID;
  wire SYS_Rst_I;
  wire buffer_Empty__2;
  wire \bus2ip_addr_i[5]_i_1_n_0 ;
  wire \bus2ip_addr_i_reg_n_0_[2] ;
  wire \bus2ip_addr_i_reg_n_0_[3] ;
  wire \bus2ip_addr_i_reg_n_0_[4] ;
  wire \bus2ip_addr_i_reg_n_0_[5] ;
  wire bus2ip_rnw_i;
  wire bus2ip_rnw_i06_out;
  wire clear;
  wire [1:0]data1;
  wire [0:0]data_Exists_I_reg;
  wire empty_error;
  wire error_detect;
  wire fifo_length_i11_out;
  wire is_read;
  wire is_read_i_1_n_0;
  wire is_read_reg_0;
  wire is_read_reg_n_0;
  wire [0:2]is_register;
  wire is_write;
  wire is_write_reg_n_0;
  wire [5:2]p_1_in;
  wire p_5_in;
  wire [4:0]plusOp;
  wire read_fsl_error;
  wire read_fsl_error_d1;
  wire rit_detect_d0;
  wire rst;
  wire s_axi_bresp_i;
  wire \s_axi_rdata_i_reg[2]_0 ;
  wire [2:0]\s_axi_rdata_i_reg[2]_1 ;
  wire [3:0]\s_axi_rdata_i_reg[3]_0 ;
  wire s_axi_rresp_i;
  wire start2;
  wire start2_i_1_n_0;
  wire state1__2;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire write_fsl_error;
  wire write_fsl_error_d1;

  LUT5 #(
    .INIT(32'hFF101010)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(S0_AXI_ARVALID),
        .I1(p_5_in),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(state1__2),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(S0_AXI_AWVALID),
        .I1(S0_AXI_WVALID),
        .O(p_5_in));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(S0_AXI_BREADY),
        .I1(S0_AXI_BVALID),
        .I2(S0_AXI_RREADY),
        .I3(S0_AXI_RVALID),
        .O(state1__2));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(I_DECODER_n_46),
        .Q(s_axi_rresp_i),
        .R(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(I_DECODER_n_45),
        .Q(s_axi_bresp_i),
        .R(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(I_DECODER_n_44),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(rst));
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .O(plusOp[3]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .O(plusOp[4]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4] 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .R(clear));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder_6 I_DECODER
       (.Bus_RNW_reg_reg_0(Bus_RNW_reg_reg),
        .Bus_RNW_reg_reg_1(Bus_RNW_reg_reg_0),
        .Bus_RNW_reg_reg_2(Bus_RNW_reg_reg_1),
        .Bus_RNW_reg_reg_3(Bus_RNW_reg_reg_2),
        .CI(CI),
        .D({I_DECODER_n_3,I_DECODER_n_4}),
        .E(E),
        .\FIFO_RAM[0].SRL16E_I ({I_DECODER_n_12,I_DECODER_n_13,I_DECODER_n_14,I_DECODER_n_15,I_DECODER_n_16,I_DECODER_n_17,I_DECODER_n_18,I_DECODER_n_19,I_DECODER_n_20,I_DECODER_n_21,I_DECODER_n_22,I_DECODER_n_23,I_DECODER_n_24,I_DECODER_n_25,I_DECODER_n_26,I_DECODER_n_27,I_DECODER_n_28,I_DECODER_n_29,I_DECODER_n_30,I_DECODER_n_31,I_DECODER_n_32,I_DECODER_n_33,I_DECODER_n_34,I_DECODER_n_35,I_DECODER_n_36,I_DECODER_n_37,I_DECODER_n_38,I_DECODER_n_39,I_DECODER_n_40,I_DECODER_n_41,I_DECODER_n_42,I_DECODER_n_43}),
        .\FIFO_RAM[31].SRL16E_I (\FIFO_RAM[31].SRL16E_I ),
        .FSL0_M_Full_I(FSL0_M_Full_I),
        .FSL0_M_Write_I(FSL0_M_Write_I),
        .FSL0_S_Data_I(FSL0_S_Data_I),
        .FSL0_S_Exists_I(FSL0_S_Exists_I),
        .FSL1_M_Write_I(FSL1_M_Write_I),
        .FSL_M_Reset0(FSL_M_Reset0),
        .FSL_S_Reset0(FSL_S_Reset0),
        .\FSM_onehot_state_reg[2] ({I_DECODER_n_44,I_DECODER_n_45,I_DECODER_n_46}),
        .\FSM_onehot_state_reg[3] ({\FSM_onehot_state_reg_n_0_[3] ,s_axi_bresp_i,s_axi_rresp_i,\FSM_onehot_state_reg_n_0_[0] }),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ),
        .\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0 (\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ),
        .\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 (\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1 ({\bus2ip_addr_i_reg_n_0_[5] ,\bus2ip_addr_i_reg_n_0_[4] ,\bus2ip_addr_i_reg_n_0_[3] ,\bus2ip_addr_i_reg_n_0_[2] }),
        .Q({\state_reg_n_0_[1] ,\state_reg_n_0_[0] }),
        .S0_AXI_ACLK(S0_AXI_ACLK),
        .S0_AXI_ARREADY(is_read_reg_n_0),
        .S0_AXI_ARVALID(S0_AXI_ARVALID),
        .S0_AXI_AWREADY(is_write_reg_n_0),
        .S0_AXI_AWREADY_0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ),
        .S0_AXI_BREADY(S0_AXI_BREADY),
        .S0_AXI_BVALID(S0_AXI_BVALID),
        .S0_AXI_RREADY(S0_AXI_RREADY),
        .S0_AXI_RVALID(S0_AXI_RVALID),
        .S0_AXI_WDATA(S0_AXI_WDATA),
        .SYS_Rst_I(SYS_Rst_I),
        .buffer_Empty__2(buffer_Empty__2),
        .bus2ip_rnw_i(bus2ip_rnw_i),
        .data1(data1),
        .data_Exists_I_reg(data_Exists_I_reg),
        .empty_error(empty_error),
        .error_detect(error_detect),
        .fifo_length_i11_out(fifo_length_i11_out),
        .is_read_reg(is_read_reg_0),
        .is_register(is_register),
        .p_5_in(p_5_in),
        .read_fsl_error(read_fsl_error),
        .read_fsl_error_d1(read_fsl_error_d1),
        .rit_detect_d0(rit_detect_d0),
        .\s_axi_rdata_i_reg[2] (\s_axi_rdata_i_reg[2]_0 ),
        .\s_axi_rdata_i_reg[2]_0 (\s_axi_rdata_i_reg[2]_1 ),
        .\s_axi_rdata_i_reg[3] (Q),
        .\s_axi_rdata_i_reg[3]_0 (\s_axi_rdata_i_reg[3]_0 ),
        .start2(start2),
        .state1__2(state1__2),
        .\state_reg[0] (I_DECODER_n_48),
        .\state_reg[1] (I_DECODER_n_49),
        .write_fsl_error(write_fsl_error),
        .write_fsl_error_d1(write_fsl_error_d1));
  LUT5 #(
    .INIT(32'hFFEF1000)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(S0_AXI_ARVALID),
        .I3(S0_AXI_ARADDR[0]),
        .I4(S0_AXI_AWADDR[0]),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'hFFEF1000)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(S0_AXI_ARVALID),
        .I3(S0_AXI_ARADDR[1]),
        .I4(S0_AXI_AWADDR[1]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFFEF1000)) 
    \bus2ip_addr_i[4]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(S0_AXI_ARVALID),
        .I3(S0_AXI_ARADDR[2]),
        .I4(S0_AXI_AWADDR[2]),
        .O(p_1_in[4]));
  LUT4 #(
    .INIT(16'h1110)) 
    \bus2ip_addr_i[5]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(S0_AXI_ARVALID),
        .I3(p_5_in),
        .O(\bus2ip_addr_i[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFFEF1000)) 
    \bus2ip_addr_i[5]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(S0_AXI_ARVALID),
        .I3(S0_AXI_ARADDR[3]),
        .I4(S0_AXI_AWADDR[3]),
        .O(p_1_in[5]));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(S0_AXI_ACLK),
        .CE(\bus2ip_addr_i[5]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(\bus2ip_addr_i_reg_n_0_[2] ),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(S0_AXI_ACLK),
        .CE(\bus2ip_addr_i[5]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(\bus2ip_addr_i_reg_n_0_[3] ),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(S0_AXI_ACLK),
        .CE(\bus2ip_addr_i[5]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(\bus2ip_addr_i_reg_n_0_[4] ),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[5] 
       (.C(S0_AXI_ACLK),
        .CE(\bus2ip_addr_i[5]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(\bus2ip_addr_i_reg_n_0_[5] ),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h10)) 
    bus2ip_rnw_i_i_1
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(S0_AXI_ARVALID),
        .O(bus2ip_rnw_i06_out));
  FDRE bus2ip_rnw_i_reg
       (.C(S0_AXI_ACLK),
        .CE(\bus2ip_addr_i[5]_i_1_n_0 ),
        .D(bus2ip_rnw_i06_out),
        .Q(bus2ip_rnw_i),
        .R(rst));
  LUT3 #(
    .INIT(8'hEA)) 
    is_read_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(state1__2),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .O(is_read_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    is_read_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(S0_AXI_ARVALID),
        .O(is_read));
  FDRE is_read_reg
       (.C(S0_AXI_ACLK),
        .CE(is_read_i_1_n_0),
        .D(is_read),
        .Q(is_read_reg_n_0),
        .R(rst));
  LUT3 #(
    .INIT(8'h20)) 
    is_write_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(S0_AXI_ARVALID),
        .I2(p_5_in),
        .O(is_write));
  FDRE is_write_reg
       (.C(S0_AXI_ACLK),
        .CE(is_read_i_1_n_0),
        .D(is_write),
        .Q(is_write_reg_n_0),
        .R(rst));
  FDRE rst_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(SYS_Rst_I),
        .Q(rst),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(I_DECODER_n_49),
        .Q(S0_AXI_BVALID),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_43),
        .Q(S0_AXI_RDATA[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[10] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_33),
        .Q(S0_AXI_RDATA[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[11] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_32),
        .Q(S0_AXI_RDATA[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[12] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_31),
        .Q(S0_AXI_RDATA[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[13] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_30),
        .Q(S0_AXI_RDATA[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[14] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_29),
        .Q(S0_AXI_RDATA[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[15] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_28),
        .Q(S0_AXI_RDATA[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[16] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_27),
        .Q(S0_AXI_RDATA[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[17] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_26),
        .Q(S0_AXI_RDATA[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[18] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_25),
        .Q(S0_AXI_RDATA[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[19] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_24),
        .Q(S0_AXI_RDATA[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_42),
        .Q(S0_AXI_RDATA[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[20] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_23),
        .Q(S0_AXI_RDATA[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[21] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_22),
        .Q(S0_AXI_RDATA[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[22] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_21),
        .Q(S0_AXI_RDATA[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[23] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_20),
        .Q(S0_AXI_RDATA[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[24] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_19),
        .Q(S0_AXI_RDATA[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[25] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_18),
        .Q(S0_AXI_RDATA[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[26] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_17),
        .Q(S0_AXI_RDATA[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[27] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_16),
        .Q(S0_AXI_RDATA[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[28] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_15),
        .Q(S0_AXI_RDATA[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[29] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_14),
        .Q(S0_AXI_RDATA[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_41),
        .Q(S0_AXI_RDATA[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[30] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_13),
        .Q(S0_AXI_RDATA[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_12),
        .Q(S0_AXI_RDATA[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_40),
        .Q(S0_AXI_RDATA[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_39),
        .Q(S0_AXI_RDATA[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_38),
        .Q(S0_AXI_RDATA[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_37),
        .Q(S0_AXI_RDATA[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_36),
        .Q(S0_AXI_RDATA[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_35),
        .Q(S0_AXI_RDATA[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(S0_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(I_DECODER_n_34),
        .Q(S0_AXI_RDATA[9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(I_DECODER_n_48),
        .Q(S0_AXI_RVALID),
        .R(rst));
  LUT4 #(
    .INIT(16'h1110)) 
    start2_i_1
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(S0_AXI_ARVALID),
        .I3(p_5_in),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(I_DECODER_n_4),
        .Q(\state_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(I_DECODER_n_3),
        .Q(\state_reg_n_0_[1] ),
        .R(rst));
endmodule

(* CHECK_LICENSE_TYPE = "top_pf_mailbox_0,mailbox,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mailbox,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (S0_AXI_ACLK,
    S0_AXI_ARESETN,
    S0_AXI_AWADDR,
    S0_AXI_AWVALID,
    S0_AXI_AWREADY,
    S0_AXI_WDATA,
    S0_AXI_WSTRB,
    S0_AXI_WVALID,
    S0_AXI_WREADY,
    S0_AXI_BRESP,
    S0_AXI_BVALID,
    S0_AXI_BREADY,
    S0_AXI_ARADDR,
    S0_AXI_ARVALID,
    S0_AXI_ARREADY,
    S0_AXI_RDATA,
    S0_AXI_RRESP,
    S0_AXI_RVALID,
    S0_AXI_RREADY,
    S1_AXI_ACLK,
    S1_AXI_ARESETN,
    S1_AXI_AWADDR,
    S1_AXI_AWVALID,
    S1_AXI_AWREADY,
    S1_AXI_WDATA,
    S1_AXI_WSTRB,
    S1_AXI_WVALID,
    S1_AXI_WREADY,
    S1_AXI_BRESP,
    S1_AXI_BVALID,
    S1_AXI_BREADY,
    S1_AXI_ARADDR,
    S1_AXI_ARVALID,
    S1_AXI_ARREADY,
    S1_AXI_RDATA,
    S1_AXI_RRESP,
    S1_AXI_RVALID,
    S1_AXI_RREADY,
    Interrupt_0,
    Interrupt_1);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.S0_AXI_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.S0_AXI_ACLK, ASSOCIATED_BUSIF S0_AXI, ASSOCIATED_RESET S0_AXI_ARESETN, FREQ_HZ 99999992, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_4885_pspmc_0_0_pl0_ref_clk, INSERT_VIP 0" *) input S0_AXI_ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.S0_AXI_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.S0_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S0_AXI_ARESETN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S0_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999992, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 32, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_4885_pspmc_0_0_pl0_ref_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [31:0]S0_AXI_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI AWVALID" *) input S0_AXI_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI AWREADY" *) output S0_AXI_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI WDATA" *) input [31:0]S0_AXI_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI WSTRB" *) input [3:0]S0_AXI_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI WVALID" *) input S0_AXI_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI WREADY" *) output S0_AXI_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI BRESP" *) output [1:0]S0_AXI_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI BVALID" *) output S0_AXI_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI BREADY" *) input S0_AXI_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI ARADDR" *) input [31:0]S0_AXI_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI ARVALID" *) input S0_AXI_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI ARREADY" *) output S0_AXI_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI RDATA" *) output [31:0]S0_AXI_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI RRESP" *) output [1:0]S0_AXI_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI RVALID" *) output S0_AXI_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI RREADY" *) input S0_AXI_RREADY;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.S1_AXI_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.S1_AXI_ACLK, ASSOCIATED_BUSIF S1_AXI, ASSOCIATED_RESET S1_AXI_ARESETN, FREQ_HZ 99999992, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_4885_pspmc_0_0_pl0_ref_clk, INSERT_VIP 0" *) input S1_AXI_ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.S1_AXI_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.S1_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S1_AXI_ARESETN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S1_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999992, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 32, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_4885_pspmc_0_0_pl0_ref_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [31:0]S1_AXI_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI AWVALID" *) input S1_AXI_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI AWREADY" *) output S1_AXI_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI WDATA" *) input [31:0]S1_AXI_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI WSTRB" *) input [3:0]S1_AXI_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI WVALID" *) input S1_AXI_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI WREADY" *) output S1_AXI_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI BRESP" *) output [1:0]S1_AXI_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI BVALID" *) output S1_AXI_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI BREADY" *) input S1_AXI_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI ARADDR" *) input [31:0]S1_AXI_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI ARVALID" *) input S1_AXI_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI ARREADY" *) output S1_AXI_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI RDATA" *) output [31:0]S1_AXI_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI RRESP" *) output [1:0]S1_AXI_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI RVALID" *) output S1_AXI_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI RREADY" *) input S1_AXI_RREADY;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 INTERRUPT.Interrupt_0 INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME INTERRUPT.Interrupt_0, SENSITIVITY LEVEL_HIGH, SUGGESTED_PRIORITY HIGH, PORTWIDTH 1" *) output Interrupt_0;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 INTERRUPT.Interrupt_1 INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME INTERRUPT.Interrupt_1, SENSITIVITY LEVEL_HIGH, SUGGESTED_PRIORITY HIGH, PORTWIDTH 1" *) output Interrupt_1;

  wire \<const0> ;
  wire Interrupt_0;
  wire Interrupt_1;
  wire S0_AXI_ACLK;
  wire [31:0]S0_AXI_ARADDR;
  wire S0_AXI_ARESETN;
  wire S0_AXI_ARREADY;
  wire S0_AXI_ARVALID;
  wire [31:0]S0_AXI_AWADDR;
  wire S0_AXI_AWREADY;
  wire S0_AXI_AWVALID;
  wire S0_AXI_BREADY;
  wire S0_AXI_BVALID;
  wire [31:0]S0_AXI_RDATA;
  wire S0_AXI_RREADY;
  wire S0_AXI_RVALID;
  wire [31:0]S0_AXI_WDATA;
  wire S0_AXI_WREADY;
  wire S0_AXI_WVALID;
  wire S1_AXI_ACLK;
  wire [31:0]S1_AXI_ARADDR;
  wire S1_AXI_ARESETN;
  wire S1_AXI_ARREADY;
  wire S1_AXI_ARVALID;
  wire [31:0]S1_AXI_AWADDR;
  wire S1_AXI_AWREADY;
  wire S1_AXI_AWVALID;
  wire S1_AXI_BREADY;
  wire S1_AXI_BVALID;
  wire [31:0]S1_AXI_RDATA;
  wire S1_AXI_RREADY;
  wire S1_AXI_RVALID;
  wire [31:0]S1_AXI_WDATA;
  wire S1_AXI_WREADY;
  wire S1_AXI_WVALID;
  wire NLW_U0_M0_AXIS_TLAST_UNCONNECTED;
  wire NLW_U0_M0_AXIS_TVALID_UNCONNECTED;
  wire NLW_U0_M1_AXIS_TLAST_UNCONNECTED;
  wire NLW_U0_M1_AXIS_TVALID_UNCONNECTED;
  wire NLW_U0_S0_AXIS_TREADY_UNCONNECTED;
  wire NLW_U0_S1_AXIS_TREADY_UNCONNECTED;
  wire [31:0]NLW_U0_M0_AXIS_TDATA_UNCONNECTED;
  wire [31:0]NLW_U0_M1_AXIS_TDATA_UNCONNECTED;
  wire [1:0]NLW_U0_S0_AXI_BRESP_UNCONNECTED;
  wire [1:0]NLW_U0_S0_AXI_RRESP_UNCONNECTED;
  wire [1:0]NLW_U0_S1_AXI_BRESP_UNCONNECTED;
  wire [1:0]NLW_U0_S1_AXI_RRESP_UNCONNECTED;

  assign S0_AXI_BRESP[1] = \<const0> ;
  assign S0_AXI_BRESP[0] = \<const0> ;
  assign S0_AXI_RRESP[1] = \<const0> ;
  assign S0_AXI_RRESP[0] = \<const0> ;
  assign S1_AXI_BRESP[1] = \<const0> ;
  assign S1_AXI_BRESP[0] = \<const0> ;
  assign S1_AXI_RRESP[1] = \<const0> ;
  assign S1_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ASYNC_CLKS = "0" *) 
  (* C_ASYNC_INTERRUPTS = "1" *) 
  (* C_ENABLE_BUS_ERROR = "0" *) 
  (* C_EXT_RESET_HIGH = "1" *) 
  (* C_FAMILY = "versal" *) 
  (* C_IMPL_STYLE = "0" *) 
  (* C_INTERCONNECT_PORT_0 = "2" *) 
  (* C_INTERCONNECT_PORT_1 = "2" *) 
  (* C_M0_AXIS_DATA_WIDTH = "32" *) 
  (* C_M1_AXIS_DATA_WIDTH = "32" *) 
  (* C_MAILBOX_DEPTH = "16" *) 
  (* C_NUM_SYNC_FF = "2" *) 
  (* C_S0_AXIS_DATA_WIDTH = "32" *) 
  (* C_S0_AXI_ADDR_WIDTH = "32" *) 
  (* C_S0_AXI_BASEADDR = "32'b00000000000000000000000000000000" *) 
  (* C_S0_AXI_DATA_WIDTH = "32" *) 
  (* C_S0_AXI_HIGHADDR = "32'b00000000000000000000111111111111" *) 
  (* C_S1_AXIS_DATA_WIDTH = "32" *) 
  (* C_S1_AXI_ADDR_WIDTH = "32" *) 
  (* C_S1_AXI_BASEADDR = "32'b00000000000000000000000000000000" *) 
  (* C_S1_AXI_DATA_WIDTH = "32" *) 
  (* C_S1_AXI_HIGHADDR = "32'b00000000000000000000111111111111" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mailbox U0
       (.Interrupt_0(Interrupt_0),
        .Interrupt_1(Interrupt_1),
        .M0_AXIS_ACLK(1'b0),
        .M0_AXIS_TDATA(NLW_U0_M0_AXIS_TDATA_UNCONNECTED[31:0]),
        .M0_AXIS_TLAST(NLW_U0_M0_AXIS_TLAST_UNCONNECTED),
        .M0_AXIS_TREADY(1'b0),
        .M0_AXIS_TVALID(NLW_U0_M0_AXIS_TVALID_UNCONNECTED),
        .M1_AXIS_ACLK(1'b0),
        .M1_AXIS_TDATA(NLW_U0_M1_AXIS_TDATA_UNCONNECTED[31:0]),
        .M1_AXIS_TLAST(NLW_U0_M1_AXIS_TLAST_UNCONNECTED),
        .M1_AXIS_TREADY(1'b0),
        .M1_AXIS_TVALID(NLW_U0_M1_AXIS_TVALID_UNCONNECTED),
        .S0_AXIS_ACLK(1'b0),
        .S0_AXIS_TDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S0_AXIS_TLAST(1'b0),
        .S0_AXIS_TREADY(NLW_U0_S0_AXIS_TREADY_UNCONNECTED),
        .S0_AXIS_TVALID(1'b0),
        .S0_AXI_ACLK(S0_AXI_ACLK),
        .S0_AXI_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S0_AXI_ARADDR[5:2],1'b0,1'b0}),
        .S0_AXI_ARESETN(S0_AXI_ARESETN),
        .S0_AXI_ARREADY(S0_AXI_ARREADY),
        .S0_AXI_ARVALID(S0_AXI_ARVALID),
        .S0_AXI_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S0_AXI_AWADDR[5:2],1'b0,1'b0}),
        .S0_AXI_AWREADY(S0_AXI_AWREADY),
        .S0_AXI_AWVALID(S0_AXI_AWVALID),
        .S0_AXI_BREADY(S0_AXI_BREADY),
        .S0_AXI_BRESP(NLW_U0_S0_AXI_BRESP_UNCONNECTED[1:0]),
        .S0_AXI_BVALID(S0_AXI_BVALID),
        .S0_AXI_RDATA(S0_AXI_RDATA),
        .S0_AXI_RREADY(S0_AXI_RREADY),
        .S0_AXI_RRESP(NLW_U0_S0_AXI_RRESP_UNCONNECTED[1:0]),
        .S0_AXI_RVALID(S0_AXI_RVALID),
        .S0_AXI_WDATA(S0_AXI_WDATA),
        .S0_AXI_WREADY(S0_AXI_WREADY),
        .S0_AXI_WSTRB({1'b0,1'b0,1'b0,1'b0}),
        .S0_AXI_WVALID(S0_AXI_WVALID),
        .S1_AXIS_ACLK(1'b0),
        .S1_AXIS_TDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S1_AXIS_TLAST(1'b0),
        .S1_AXIS_TREADY(NLW_U0_S1_AXIS_TREADY_UNCONNECTED),
        .S1_AXIS_TVALID(1'b0),
        .S1_AXI_ACLK(S1_AXI_ACLK),
        .S1_AXI_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S1_AXI_ARADDR[5:2],1'b0,1'b0}),
        .S1_AXI_ARESETN(S1_AXI_ARESETN),
        .S1_AXI_ARREADY(S1_AXI_ARREADY),
        .S1_AXI_ARVALID(S1_AXI_ARVALID),
        .S1_AXI_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S1_AXI_AWADDR[5:2],1'b0,1'b0}),
        .S1_AXI_AWREADY(S1_AXI_AWREADY),
        .S1_AXI_AWVALID(S1_AXI_AWVALID),
        .S1_AXI_BREADY(S1_AXI_BREADY),
        .S1_AXI_BRESP(NLW_U0_S1_AXI_BRESP_UNCONNECTED[1:0]),
        .S1_AXI_BVALID(S1_AXI_BVALID),
        .S1_AXI_RDATA(S1_AXI_RDATA),
        .S1_AXI_RREADY(S1_AXI_RREADY),
        .S1_AXI_RRESP(NLW_U0_S1_AXI_RRESP_UNCONNECTED[1:0]),
        .S1_AXI_RVALID(S1_AXI_RVALID),
        .S1_AXI_WDATA(S1_AXI_WDATA),
        .S1_AXI_WREADY(S1_AXI_WREADY),
        .S1_AXI_WSTRB({1'b0,1'b0,1'b0,1'b0}),
        .S1_AXI_WVALID(S1_AXI_WVALID),
        .SYS_Rst(1'b0));
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
