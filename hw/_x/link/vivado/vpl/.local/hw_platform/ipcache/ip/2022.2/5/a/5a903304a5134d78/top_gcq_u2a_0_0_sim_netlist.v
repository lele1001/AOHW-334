// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Dec  5 00:25:36 2022
// Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_gcq_u2a_0_0_sim_netlist.v
// Design      : top_gcq_u2a_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvc1902-vsvd1760-2MP-e-S
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* C_S00_AXI_ADDR_WIDTH = "9" *) (* C_S00_AXI_BASEADDR = "0" *) (* C_S00_AXI_DATA_WIDTH = "32" *) 
(* C_S00_AXI_HIGHADDR = "4095" *) (* C_S01_AXI_ADDR_WIDTH = "9" *) (* C_S01_AXI_BASEADDR = "0" *) 
(* C_S01_AXI_DATA_WIDTH = "32" *) (* C_S01_AXI_HIGHADDR = "4095" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmd_queue_v1_0_0
   (irq_sq,
    irq_cq,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s01_axi_awaddr,
    s01_axi_awprot,
    s01_axi_awvalid,
    s01_axi_awready,
    s01_axi_wdata,
    s01_axi_wstrb,
    s01_axi_wvalid,
    s01_axi_wready,
    s01_axi_bresp,
    s01_axi_bvalid,
    s01_axi_bready,
    s01_axi_araddr,
    s01_axi_arprot,
    s01_axi_arvalid,
    s01_axi_arready,
    s01_axi_rdata,
    s01_axi_rresp,
    s01_axi_rvalid,
    s01_axi_rready);
  output irq_sq;
  output irq_cq;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [8:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [8:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
  input [8:0]s01_axi_awaddr;
  input [2:0]s01_axi_awprot;
  input s01_axi_awvalid;
  output s01_axi_awready;
  input [31:0]s01_axi_wdata;
  input [3:0]s01_axi_wstrb;
  input s01_axi_wvalid;
  output s01_axi_wready;
  output [1:0]s01_axi_bresp;
  output s01_axi_bvalid;
  input s01_axi_bready;
  input [8:0]s01_axi_araddr;
  input [2:0]s01_axi_arprot;
  input s01_axi_arvalid;
  output s01_axi_arready;
  output [31:0]s01_axi_rdata;
  output [1:0]s01_axi_rresp;
  output s01_axi_rvalid;
  input s01_axi_rready;

  wire \<const0> ;
  wire [31:0]axi_s01_rdata;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_0;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_1;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_10;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_12;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_2;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_3;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_4;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_45;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_46;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_47;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_48;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_49;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_50;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_51;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_52;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_53;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_54;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_55;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_56;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_57;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_58;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_59;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_6;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_60;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_61;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_62;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_63;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_64;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_65;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_66;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_67;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_68;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_69;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_7;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_70;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_71;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_72;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_73;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_74;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_75;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_76;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_8;
  wire cmd_queue_v1_0_0_S00_AXI_cq_inst_n_9;
  wire cmd_queue_v1_0_0_S00_AXI_sq_inst_n_2;
  wire irq_cq;
  wire irq_sq;
  wire p_0_in;
  wire s00_axi_aclk;
  wire [8:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [8:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire s00_cq_rd_sel;
  wire s00_cq_wr_sel;
  wire s00_sq_rd_sel;
  wire s00_sq_rd_sel_i_1_n_0;
  wire s00_sq_wr_sel;
  wire s00_sq_wr_sel_i_2_n_0;
  wire [8:0]s01_axi_araddr;
  wire s01_axi_arready;
  wire s01_axi_arvalid;
  wire [8:0]s01_axi_awaddr;
  wire s01_axi_awready;
  wire s01_axi_awvalid;
  wire s01_axi_bready;
  wire s01_axi_bvalid;
  wire [31:0]s01_axi_rdata;
  wire s01_axi_rready;
  wire s01_axi_rvalid;
  wire [31:0]s01_axi_wdata;
  wire s01_axi_wready;
  wire [3:0]s01_axi_wstrb;
  wire s01_axi_wvalid;
  wire s01_cq_rd_sel;
  wire s01_cq_rd_sel_i_1_n_0;
  wire s01_cq_wr_sel;
  wire s01_cq_wr_sel_i_1_n_0;
  wire s01_sq_rd_sel;
  wire s01_sq_wr_sel;
  wire slv_reg10;
  wire soft_reset;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  assign s01_axi_bresp[1] = \<const0> ;
  assign s01_axi_bresp[0] = \<const0> ;
  assign s01_axi_rresp[1] = \<const0> ;
  assign s01_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmd_queue_v1_0_0_S00_AXI cmd_queue_v1_0_0_S00_AXI_cq_inst
       (.Q(cmd_queue_v1_0_0_S00_AXI_cq_inst_n_12),
        .SR(p_0_in),
        .axi_arready_reg_0(cmd_queue_v1_0_0_S00_AXI_cq_inst_n_6),
        .axi_awready_reg_0(cmd_queue_v1_0_0_S00_AXI_cq_inst_n_3),
        .axi_bvalid_reg_0(cmd_queue_v1_0_0_S00_AXI_cq_inst_n_9),
        .\axi_rdata_reg[31]_0 ({cmd_queue_v1_0_0_S00_AXI_cq_inst_n_45,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_46,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_47,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_48,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_49,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_50,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_51,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_52,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_53,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_54,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_55,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_56,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_57,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_58,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_59,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_60,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_61,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_62,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_63,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_64,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_65,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_66,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_67,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_68,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_69,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_70,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_71,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_72,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_73,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_74,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_75,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_76}),
        .axi_rvalid_reg_0(cmd_queue_v1_0_0_S00_AXI_cq_inst_n_10),
        .axi_s01_arready_reg_0(cmd_queue_v1_0_0_S00_AXI_cq_inst_n_2),
        .axi_s01_awready_reg_0(cmd_queue_v1_0_0_S00_AXI_cq_inst_n_1),
        .axi_s01_bvalid_reg_0(cmd_queue_v1_0_0_S00_AXI_cq_inst_n_7),
        .\axi_s01_rdata_reg[31]_0 (axi_s01_rdata),
        .axi_s01_rvalid_reg_0(cmd_queue_v1_0_0_S00_AXI_cq_inst_n_8),
        .axi_s01_wready_reg_0(cmd_queue_v1_0_0_S00_AXI_cq_inst_n_0),
        .axi_wready_reg_0(cmd_queue_v1_0_0_S00_AXI_cq_inst_n_4),
        .irq_cq(irq_cq),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[5:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wvalid(s00_axi_wvalid),
        .s00_cq_rd_sel(s00_cq_rd_sel),
        .s00_cq_wr_sel(s00_cq_wr_sel),
        .s01_axi_araddr(s01_axi_araddr[5:2]),
        .s01_axi_arvalid(s01_axi_arvalid),
        .s01_axi_awaddr(s01_axi_awaddr[5:2]),
        .s01_axi_awvalid(s01_axi_awvalid),
        .s01_axi_bready(s01_axi_bready),
        .s01_axi_rready(s01_axi_rready),
        .s01_axi_wdata(s01_axi_wdata),
        .s01_axi_wstrb(s01_axi_wstrb),
        .s01_axi_wvalid(s01_axi_wvalid),
        .s01_cq_rd_sel(s01_cq_rd_sel),
        .s01_cq_wr_sel(s01_cq_wr_sel),
        .soft_reset(soft_reset),
        .soft_reset_reg(slv_reg10));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmd_queue_v1_0_0_S00_AXI_0 cmd_queue_v1_0_0_S00_AXI_sq_inst
       (.Q(cmd_queue_v1_0_0_S00_AXI_cq_inst_n_12),
        .SR(p_0_in),
        .irq_sq(irq_sq),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[5:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arready_0(cmd_queue_v1_0_0_S00_AXI_cq_inst_n_2),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[5:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awready_0(cmd_queue_v1_0_0_S00_AXI_cq_inst_n_1),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_bvalid_0(cmd_queue_v1_0_0_S00_AXI_cq_inst_n_7),
        .s00_axi_rdata(s00_axi_rdata),
        .\s00_axi_rdata[31] (axi_s01_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_rvalid_0(cmd_queue_v1_0_0_S00_AXI_cq_inst_n_8),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wready_0(cmd_queue_v1_0_0_S00_AXI_cq_inst_n_0),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .s00_sq_rd_sel(s00_sq_rd_sel),
        .s00_sq_wr_sel(s00_sq_wr_sel),
        .s01_axi_araddr(s01_axi_araddr[5:2]),
        .s01_axi_arready(s01_axi_arready),
        .s01_axi_arready_0(cmd_queue_v1_0_0_S00_AXI_cq_inst_n_6),
        .s01_axi_arvalid(s01_axi_arvalid),
        .s01_axi_awready(s01_axi_awready),
        .s01_axi_awready_0(cmd_queue_v1_0_0_S00_AXI_cq_inst_n_3),
        .s01_axi_awvalid(s01_axi_awvalid),
        .s01_axi_bready(s01_axi_bready),
        .s01_axi_bvalid(s01_axi_bvalid),
        .s01_axi_bvalid_0(cmd_queue_v1_0_0_S00_AXI_cq_inst_n_9),
        .s01_axi_rdata(s01_axi_rdata),
        .\s01_axi_rdata[31] ({cmd_queue_v1_0_0_S00_AXI_cq_inst_n_45,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_46,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_47,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_48,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_49,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_50,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_51,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_52,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_53,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_54,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_55,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_56,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_57,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_58,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_59,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_60,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_61,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_62,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_63,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_64,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_65,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_66,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_67,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_68,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_69,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_70,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_71,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_72,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_73,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_74,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_75,cmd_queue_v1_0_0_S00_AXI_cq_inst_n_76}),
        .s01_axi_rready(s01_axi_rready),
        .s01_axi_rvalid(s01_axi_rvalid),
        .s01_axi_rvalid_0(cmd_queue_v1_0_0_S00_AXI_cq_inst_n_10),
        .s01_axi_wready(s01_axi_wready),
        .s01_axi_wready_0(cmd_queue_v1_0_0_S00_AXI_cq_inst_n_4),
        .s01_axi_wvalid(s01_axi_wvalid),
        .s01_sq_rd_sel(s01_sq_rd_sel),
        .s01_sq_wr_sel(s01_sq_wr_sel),
        .\slv_reg3_reg[0]_0 (slv_reg10),
        .\slv_reg3_reg[31]_0 (cmd_queue_v1_0_0_S00_AXI_sq_inst_n_2));
  FDRE s00_cq_rd_sel_reg
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(s00_axi_araddr[8]),
        .Q(s00_cq_rd_sel),
        .R(p_0_in));
  FDRE s00_cq_wr_sel_reg
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(s00_axi_awaddr[8]),
        .Q(s00_cq_wr_sel),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    s00_sq_rd_sel_i_1
       (.I0(s00_axi_araddr[8]),
        .O(s00_sq_rd_sel_i_1_n_0));
  FDRE s00_sq_rd_sel_reg
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(s00_sq_rd_sel_i_1_n_0),
        .Q(s00_sq_rd_sel),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    s00_sq_wr_sel_i_2
       (.I0(s00_axi_awaddr[8]),
        .O(s00_sq_wr_sel_i_2_n_0));
  FDRE s00_sq_wr_sel_reg
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(s00_sq_wr_sel_i_2_n_0),
        .Q(s00_sq_wr_sel),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    s01_cq_rd_sel_i_1
       (.I0(s01_axi_araddr[8]),
        .O(s01_cq_rd_sel_i_1_n_0));
  FDRE s01_cq_rd_sel_reg
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(s01_cq_rd_sel_i_1_n_0),
        .Q(s01_cq_rd_sel),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    s01_cq_wr_sel_i_1
       (.I0(s01_axi_awaddr[8]),
        .O(s01_cq_wr_sel_i_1_n_0));
  FDRE s01_cq_wr_sel_reg
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(s01_cq_wr_sel_i_1_n_0),
        .Q(s01_cq_wr_sel),
        .R(p_0_in));
  FDRE s01_sq_rd_sel_reg
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(s01_axi_araddr[8]),
        .Q(s01_sq_rd_sel),
        .R(p_0_in));
  FDRE s01_sq_wr_sel_reg
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(s01_axi_awaddr[8]),
        .Q(s01_sq_wr_sel),
        .R(p_0_in));
  FDRE soft_reset_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(cmd_queue_v1_0_0_S00_AXI_sq_inst_n_2),
        .Q(soft_reset),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmd_queue_v1_0_0_S00_AXI
   (axi_s01_wready_reg_0,
    axi_s01_awready_reg_0,
    axi_s01_arready_reg_0,
    axi_awready_reg_0,
    axi_wready_reg_0,
    soft_reset_reg,
    axi_arready_reg_0,
    axi_s01_bvalid_reg_0,
    axi_s01_rvalid_reg_0,
    axi_bvalid_reg_0,
    axi_rvalid_reg_0,
    irq_cq,
    Q,
    \axi_s01_rdata_reg[31]_0 ,
    \axi_rdata_reg[31]_0 ,
    SR,
    s00_axi_aclk,
    s00_axi_arvalid,
    s00_cq_rd_sel,
    s01_axi_awvalid,
    s01_axi_wvalid,
    s01_cq_wr_sel,
    s01_axi_wstrb,
    soft_reset,
    s00_axi_aresetn,
    s01_axi_arvalid,
    s01_cq_rd_sel,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_cq_wr_sel,
    s00_axi_bready,
    s00_axi_rready,
    s01_axi_bready,
    s01_axi_rready,
    s00_axi_araddr,
    s01_axi_awaddr,
    s01_axi_wdata,
    s01_axi_araddr);
  output axi_s01_wready_reg_0;
  output axi_s01_awready_reg_0;
  output axi_s01_arready_reg_0;
  output axi_awready_reg_0;
  output axi_wready_reg_0;
  output [0:0]soft_reset_reg;
  output axi_arready_reg_0;
  output axi_s01_bvalid_reg_0;
  output axi_s01_rvalid_reg_0;
  output axi_bvalid_reg_0;
  output axi_rvalid_reg_0;
  output irq_cq;
  output [0:0]Q;
  output [31:0]\axi_s01_rdata_reg[31]_0 ;
  output [31:0]\axi_rdata_reg[31]_0 ;
  input [0:0]SR;
  input s00_axi_aclk;
  input s00_axi_arvalid;
  input s00_cq_rd_sel;
  input s01_axi_awvalid;
  input s01_axi_wvalid;
  input s01_cq_wr_sel;
  input [3:0]s01_axi_wstrb;
  input soft_reset;
  input s00_axi_aresetn;
  input s01_axi_arvalid;
  input s01_cq_rd_sel;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_cq_wr_sel;
  input s00_axi_bready;
  input s00_axi_rready;
  input s01_axi_bready;
  input s01_axi_rready;
  input [3:0]s00_axi_araddr;
  input [3:0]s01_axi_awaddr;
  input [31:0]s01_axi_wdata;
  input [3:0]s01_axi_araddr;

  wire [0:0]Q;
  wire [0:0]SR;
  wire aw_en_i_1__0_n_0;
  wire aw_en_reg_n_0;
  wire aw_s01_en_i_1_n_0;
  wire aw_s01_en_reg_n_0;
  wire \axi_araddr_reg_n_0_[2] ;
  wire \axi_araddr_reg_n_0_[3] ;
  wire \axi_araddr_reg_n_0_[4] ;
  wire \axi_araddr_reg_n_0_[5] ;
  wire axi_arready_i_1__0_n_0;
  wire axi_arready_reg_0;
  wire \axi_awaddr_reg_n_0_[2] ;
  wire \axi_awaddr_reg_n_0_[3] ;
  wire \axi_awaddr_reg_n_0_[4] ;
  wire \axi_awaddr_reg_n_0_[5] ;
  wire axi_awready_i_1__0_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1__0_n_0;
  wire axi_bvalid_reg_0;
  wire \axi_rdata[0]_i_1__0_n_0 ;
  wire \axi_rdata[0]_i_2__0_n_0 ;
  wire \axi_rdata[10]_i_1__0_n_0 ;
  wire \axi_rdata[10]_i_2__0_n_0 ;
  wire \axi_rdata[11]_i_1__0_n_0 ;
  wire \axi_rdata[11]_i_2__0_n_0 ;
  wire \axi_rdata[12]_i_1__0_n_0 ;
  wire \axi_rdata[12]_i_2__0_n_0 ;
  wire \axi_rdata[13]_i_1__0_n_0 ;
  wire \axi_rdata[13]_i_2__0_n_0 ;
  wire \axi_rdata[14]_i_1__0_n_0 ;
  wire \axi_rdata[14]_i_2__0_n_0 ;
  wire \axi_rdata[15]_i_1__0_n_0 ;
  wire \axi_rdata[15]_i_2__0_n_0 ;
  wire \axi_rdata[16]_i_1__0_n_0 ;
  wire \axi_rdata[16]_i_2__0_n_0 ;
  wire \axi_rdata[17]_i_1__0_n_0 ;
  wire \axi_rdata[17]_i_2__0_n_0 ;
  wire \axi_rdata[18]_i_1__0_n_0 ;
  wire \axi_rdata[18]_i_2__0_n_0 ;
  wire \axi_rdata[19]_i_1__0_n_0 ;
  wire \axi_rdata[19]_i_2__0_n_0 ;
  wire \axi_rdata[1]_i_1__0_n_0 ;
  wire \axi_rdata[1]_i_2__0_n_0 ;
  wire \axi_rdata[20]_i_1__0_n_0 ;
  wire \axi_rdata[20]_i_2__0_n_0 ;
  wire \axi_rdata[21]_i_1__0_n_0 ;
  wire \axi_rdata[21]_i_2__0_n_0 ;
  wire \axi_rdata[22]_i_1__0_n_0 ;
  wire \axi_rdata[22]_i_2__0_n_0 ;
  wire \axi_rdata[23]_i_1__0_n_0 ;
  wire \axi_rdata[23]_i_2__0_n_0 ;
  wire \axi_rdata[24]_i_1__0_n_0 ;
  wire \axi_rdata[24]_i_2__0_n_0 ;
  wire \axi_rdata[25]_i_1__0_n_0 ;
  wire \axi_rdata[25]_i_2__0_n_0 ;
  wire \axi_rdata[26]_i_1__0_n_0 ;
  wire \axi_rdata[26]_i_2__0_n_0 ;
  wire \axi_rdata[27]_i_1__0_n_0 ;
  wire \axi_rdata[27]_i_2__0_n_0 ;
  wire \axi_rdata[28]_i_1__0_n_0 ;
  wire \axi_rdata[28]_i_2__0_n_0 ;
  wire \axi_rdata[29]_i_1__0_n_0 ;
  wire \axi_rdata[29]_i_2__0_n_0 ;
  wire \axi_rdata[2]_i_1__0_n_0 ;
  wire \axi_rdata[2]_i_2__0_n_0 ;
  wire \axi_rdata[30]_i_1__0_n_0 ;
  wire \axi_rdata[30]_i_2__0_n_0 ;
  wire \axi_rdata[31]_i_1__0_n_0 ;
  wire \axi_rdata[31]_i_2__0_n_0 ;
  wire \axi_rdata[31]_i_3__0_n_0 ;
  wire \axi_rdata[3]_i_1__0_n_0 ;
  wire \axi_rdata[3]_i_2__0_n_0 ;
  wire \axi_rdata[4]_i_1__0_n_0 ;
  wire \axi_rdata[4]_i_2__0_n_0 ;
  wire \axi_rdata[5]_i_1__0_n_0 ;
  wire \axi_rdata[5]_i_2__0_n_0 ;
  wire \axi_rdata[6]_i_1__0_n_0 ;
  wire \axi_rdata[6]_i_2__0_n_0 ;
  wire \axi_rdata[7]_i_1__0_n_0 ;
  wire \axi_rdata[7]_i_2__0_n_0 ;
  wire \axi_rdata[8]_i_1__0_n_0 ;
  wire \axi_rdata[8]_i_2__0_n_0 ;
  wire \axi_rdata[9]_i_1__0_n_0 ;
  wire \axi_rdata[9]_i_2__0_n_0 ;
  wire [31:0]\axi_rdata_reg[31]_0 ;
  wire axi_rvalid_i_1__0_n_0;
  wire axi_rvalid_reg_0;
  wire \axi_s01_araddr_reg_n_0_[2] ;
  wire \axi_s01_araddr_reg_n_0_[3] ;
  wire \axi_s01_araddr_reg_n_0_[4] ;
  wire \axi_s01_araddr_reg_n_0_[5] ;
  wire axi_s01_arready_i_1_n_0;
  wire axi_s01_arready_reg_0;
  wire axi_s01_awready_i_1_n_0;
  wire axi_s01_awready_reg_0;
  wire axi_s01_bvalid_i_1_n_0;
  wire axi_s01_bvalid_reg_0;
  wire \axi_s01_rdata[0]_i_1_n_0 ;
  wire \axi_s01_rdata[0]_i_2_n_0 ;
  wire \axi_s01_rdata[10]_i_1_n_0 ;
  wire \axi_s01_rdata[10]_i_2_n_0 ;
  wire \axi_s01_rdata[11]_i_1_n_0 ;
  wire \axi_s01_rdata[11]_i_2_n_0 ;
  wire \axi_s01_rdata[12]_i_1_n_0 ;
  wire \axi_s01_rdata[12]_i_2_n_0 ;
  wire \axi_s01_rdata[13]_i_1_n_0 ;
  wire \axi_s01_rdata[13]_i_2_n_0 ;
  wire \axi_s01_rdata[14]_i_1_n_0 ;
  wire \axi_s01_rdata[14]_i_2_n_0 ;
  wire \axi_s01_rdata[15]_i_1_n_0 ;
  wire \axi_s01_rdata[15]_i_2_n_0 ;
  wire \axi_s01_rdata[16]_i_1_n_0 ;
  wire \axi_s01_rdata[16]_i_2_n_0 ;
  wire \axi_s01_rdata[17]_i_1_n_0 ;
  wire \axi_s01_rdata[17]_i_2_n_0 ;
  wire \axi_s01_rdata[18]_i_1_n_0 ;
  wire \axi_s01_rdata[18]_i_2_n_0 ;
  wire \axi_s01_rdata[19]_i_1_n_0 ;
  wire \axi_s01_rdata[19]_i_2_n_0 ;
  wire \axi_s01_rdata[1]_i_1_n_0 ;
  wire \axi_s01_rdata[1]_i_2_n_0 ;
  wire \axi_s01_rdata[20]_i_1_n_0 ;
  wire \axi_s01_rdata[20]_i_2_n_0 ;
  wire \axi_s01_rdata[21]_i_1_n_0 ;
  wire \axi_s01_rdata[21]_i_2_n_0 ;
  wire \axi_s01_rdata[22]_i_1_n_0 ;
  wire \axi_s01_rdata[22]_i_2_n_0 ;
  wire \axi_s01_rdata[23]_i_1_n_0 ;
  wire \axi_s01_rdata[23]_i_2_n_0 ;
  wire \axi_s01_rdata[24]_i_1_n_0 ;
  wire \axi_s01_rdata[24]_i_2_n_0 ;
  wire \axi_s01_rdata[25]_i_1_n_0 ;
  wire \axi_s01_rdata[25]_i_2_n_0 ;
  wire \axi_s01_rdata[26]_i_1_n_0 ;
  wire \axi_s01_rdata[26]_i_2_n_0 ;
  wire \axi_s01_rdata[27]_i_1_n_0 ;
  wire \axi_s01_rdata[27]_i_2_n_0 ;
  wire \axi_s01_rdata[28]_i_1_n_0 ;
  wire \axi_s01_rdata[28]_i_2_n_0 ;
  wire \axi_s01_rdata[29]_i_1_n_0 ;
  wire \axi_s01_rdata[29]_i_2_n_0 ;
  wire \axi_s01_rdata[2]_i_1_n_0 ;
  wire \axi_s01_rdata[2]_i_2_n_0 ;
  wire \axi_s01_rdata[30]_i_1_n_0 ;
  wire \axi_s01_rdata[30]_i_2_n_0 ;
  wire \axi_s01_rdata[31]_i_1_n_0 ;
  wire \axi_s01_rdata[31]_i_2_n_0 ;
  wire \axi_s01_rdata[31]_i_3_n_0 ;
  wire \axi_s01_rdata[3]_i_1_n_0 ;
  wire \axi_s01_rdata[3]_i_2_n_0 ;
  wire \axi_s01_rdata[4]_i_1_n_0 ;
  wire \axi_s01_rdata[4]_i_2_n_0 ;
  wire \axi_s01_rdata[5]_i_1_n_0 ;
  wire \axi_s01_rdata[5]_i_2_n_0 ;
  wire \axi_s01_rdata[6]_i_1_n_0 ;
  wire \axi_s01_rdata[6]_i_2_n_0 ;
  wire \axi_s01_rdata[7]_i_1_n_0 ;
  wire \axi_s01_rdata[7]_i_2_n_0 ;
  wire \axi_s01_rdata[8]_i_1_n_0 ;
  wire \axi_s01_rdata[8]_i_2_n_0 ;
  wire \axi_s01_rdata[9]_i_1_n_0 ;
  wire \axi_s01_rdata[9]_i_2_n_0 ;
  wire [31:0]\axi_s01_rdata_reg[31]_0 ;
  wire axi_s01_rvalid_i_1_n_0;
  wire axi_s01_rvalid_reg_0;
  wire axi_s01_wready_i_1_n_0;
  wire axi_s01_wready_i_2_n_0;
  wire axi_s01_wready_reg_0;
  wire axi_wready_i_1__0_n_0;
  wire axi_wready_reg_0;
  wire irq_cq;
  wire irq_on_write_reg;
  wire irq_on_write_reg_i_1__0_n_0;
  wire irq_on_write_reg_reg_n_0;
  wire irq_reg_i_1__0_n_0;
  wire irq_reg_read_i_1_n_0;
  wire irq_reg_read_reg_n_0;
  wire irq_reg_write_i_1__0_n_0;
  wire irq_reg_write_i_2_n_0;
  wire irq_reg_write_reg_n_0;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_rready;
  wire s00_axi_wvalid;
  wire s00_cq_rd_sel;
  wire s00_cq_wr_sel;
  wire [3:0]s01_axi_araddr;
  wire s01_axi_arvalid;
  wire [3:0]s01_axi_awaddr;
  wire s01_axi_awvalid;
  wire s01_axi_bready;
  wire s01_axi_rready;
  wire [31:0]s01_axi_wdata;
  wire [3:0]s01_axi_wstrb;
  wire s01_axi_wvalid;
  wire s01_cq_rd_sel;
  wire s01_cq_wr_sel;
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1__0_n_0 ;
  wire \slv_reg0[23]_i_1__0_n_0 ;
  wire \slv_reg0[31]_i_1__0_n_0 ;
  wire \slv_reg0[7]_i_1__0_n_0 ;
  wire \slv_reg1[0]_i_1_n_0 ;
  wire \slv_reg1_reg_n_0_[0] ;
  wire [31:0]slv_reg2_high;
  wire \slv_reg2_high[15]_i_1__0_n_0 ;
  wire \slv_reg2_high[23]_i_1__0_n_0 ;
  wire \slv_reg2_high[31]_i_1__0_n_0 ;
  wire \slv_reg2_high[7]_i_1__0_n_0 ;
  wire [31:0]slv_reg2_low;
  wire \slv_reg2_low[15]_i_1__0_n_0 ;
  wire \slv_reg2_low[23]_i_1__0_n_0 ;
  wire \slv_reg2_low[31]_i_1__0_n_0 ;
  wire \slv_reg2_low[7]_i_1__0_n_0 ;
  wire \slv_reg3[15]_i_1__0_n_0 ;
  wire \slv_reg3[23]_i_1__0_n_0 ;
  wire \slv_reg3[31]_i_2__0_n_0 ;
  wire \slv_reg3[31]_i_3_n_0 ;
  wire \slv_reg3[7]_i_1__0_n_0 ;
  wire \slv_reg3_reg_n_0_[0] ;
  wire \slv_reg3_reg_n_0_[10] ;
  wire \slv_reg3_reg_n_0_[11] ;
  wire \slv_reg3_reg_n_0_[12] ;
  wire \slv_reg3_reg_n_0_[13] ;
  wire \slv_reg3_reg_n_0_[14] ;
  wire \slv_reg3_reg_n_0_[15] ;
  wire \slv_reg3_reg_n_0_[16] ;
  wire \slv_reg3_reg_n_0_[17] ;
  wire \slv_reg3_reg_n_0_[18] ;
  wire \slv_reg3_reg_n_0_[19] ;
  wire \slv_reg3_reg_n_0_[1] ;
  wire \slv_reg3_reg_n_0_[20] ;
  wire \slv_reg3_reg_n_0_[21] ;
  wire \slv_reg3_reg_n_0_[22] ;
  wire \slv_reg3_reg_n_0_[23] ;
  wire \slv_reg3_reg_n_0_[24] ;
  wire \slv_reg3_reg_n_0_[25] ;
  wire \slv_reg3_reg_n_0_[26] ;
  wire \slv_reg3_reg_n_0_[27] ;
  wire \slv_reg3_reg_n_0_[28] ;
  wire \slv_reg3_reg_n_0_[29] ;
  wire \slv_reg3_reg_n_0_[2] ;
  wire \slv_reg3_reg_n_0_[30] ;
  wire \slv_reg3_reg_n_0_[3] ;
  wire \slv_reg3_reg_n_0_[4] ;
  wire \slv_reg3_reg_n_0_[5] ;
  wire \slv_reg3_reg_n_0_[6] ;
  wire \slv_reg3_reg_n_0_[7] ;
  wire \slv_reg3_reg_n_0_[8] ;
  wire \slv_reg3_reg_n_0_[9] ;
  wire soft_reset;
  wire [0:0]soft_reset_reg;

  LUT4 #(
    .INIT(16'h0F08)) 
    aw_en_i_1__0
       (.I0(s01_axi_bready),
        .I1(axi_bvalid_reg_0),
        .I2(axi_awready_i_1__0_n_0),
        .I3(aw_en_reg_n_0),
        .O(aw_en_i_1__0_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1__0_n_0),
        .Q(aw_en_reg_n_0),
        .S(SR));
  LUT5 #(
    .INIT(32'hDFD0D0D0)) 
    aw_s01_en_i_1
       (.I0(axi_s01_wready_i_2_n_0),
        .I1(axi_s01_awready_reg_0),
        .I2(aw_s01_en_reg_n_0),
        .I3(s00_axi_bready),
        .I4(axi_s01_bvalid_reg_0),
        .O(aw_s01_en_i_1_n_0));
  FDSE aw_s01_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_s01_en_i_1_n_0),
        .Q(aw_s01_en_reg_n_0),
        .S(SR));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_i_1__0_n_0),
        .D(s01_axi_araddr[0]),
        .Q(\axi_araddr_reg_n_0_[2] ),
        .R(SR));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_i_1__0_n_0),
        .D(s01_axi_araddr[1]),
        .Q(\axi_araddr_reg_n_0_[3] ),
        .R(SR));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_i_1__0_n_0),
        .D(s01_axi_araddr[2]),
        .Q(\axi_araddr_reg_n_0_[4] ),
        .R(SR));
  FDRE \axi_araddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_i_1__0_n_0),
        .D(s01_axi_araddr[3]),
        .Q(\axi_araddr_reg_n_0_[5] ),
        .R(SR));
  LUT3 #(
    .INIT(8'h08)) 
    axi_arready_i_1__0
       (.I0(s01_axi_arvalid),
        .I1(s01_cq_rd_sel),
        .I2(axi_arready_reg_0),
        .O(axi_arready_i_1__0_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1__0_n_0),
        .Q(axi_arready_reg_0),
        .R(SR));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_awready_i_1__0_n_0),
        .D(s01_axi_awaddr[0]),
        .Q(\axi_awaddr_reg_n_0_[2] ),
        .R(SR));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awready_i_1__0_n_0),
        .D(s01_axi_awaddr[1]),
        .Q(\axi_awaddr_reg_n_0_[3] ),
        .R(SR));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_awready_i_1__0_n_0),
        .D(s01_axi_awaddr[2]),
        .Q(\axi_awaddr_reg_n_0_[4] ),
        .R(SR));
  FDRE \axi_awaddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_awready_i_1__0_n_0),
        .D(s01_axi_awaddr[3]),
        .Q(\axi_awaddr_reg_n_0_[5] ),
        .R(SR));
  LUT5 #(
    .INIT(32'h00008000)) 
    axi_awready_i_1__0
       (.I0(s01_axi_awvalid),
        .I1(s01_axi_wvalid),
        .I2(s01_cq_wr_sel),
        .I3(aw_en_reg_n_0),
        .I4(axi_awready_reg_0),
        .O(axi_awready_i_1__0_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_1__0_n_0),
        .Q(axi_awready_reg_0),
        .R(SR));
  LUT3 #(
    .INIT(8'h74)) 
    axi_bvalid_i_1__0
       (.I0(s01_axi_bready),
        .I1(axi_bvalid_reg_0),
        .I2(\slv_reg3[31]_i_3_n_0 ),
        .O(axi_bvalid_i_1__0_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1__0_n_0),
        .Q(axi_bvalid_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_rdata[0]_i_1__0 
       (.I0(\axi_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[0]),
        .I2(\axi_araddr_reg_n_0_[4] ),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(\axi_rdata[0]_i_2__0_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_2__0 
       (.I0(\slv_reg3_reg_n_0_[0] ),
        .I1(slv_reg2_low[0]),
        .I2(\axi_araddr_reg_n_0_[3] ),
        .I3(\slv_reg1_reg_n_0_[0] ),
        .I4(\axi_araddr_reg_n_0_[2] ),
        .I5(slv_reg0[0]),
        .O(\axi_rdata[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[10]_i_1__0 
       (.I0(\axi_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[10]),
        .I2(\axi_araddr_reg_n_0_[4] ),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(\axi_rdata[10]_i_2__0_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[10]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[10]_i_2__0 
       (.I0(\axi_araddr_reg_n_0_[4] ),
        .I1(\axi_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[10]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[10]),
        .I5(\slv_reg3_reg_n_0_[10] ),
        .O(\axi_rdata[10]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[11]_i_1__0 
       (.I0(\axi_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[11]),
        .I2(\axi_araddr_reg_n_0_[4] ),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(\axi_rdata[11]_i_2__0_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[11]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[11]_i_2__0 
       (.I0(\axi_araddr_reg_n_0_[4] ),
        .I1(\axi_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[11]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[11]),
        .I5(\slv_reg3_reg_n_0_[11] ),
        .O(\axi_rdata[11]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[12]_i_1__0 
       (.I0(\axi_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[12]),
        .I2(\axi_araddr_reg_n_0_[4] ),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(\axi_rdata[12]_i_2__0_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[12]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[12]_i_2__0 
       (.I0(\axi_araddr_reg_n_0_[4] ),
        .I1(\axi_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[12]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[12]),
        .I5(\slv_reg3_reg_n_0_[12] ),
        .O(\axi_rdata[12]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[13]_i_1__0 
       (.I0(\axi_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[13]),
        .I2(\axi_araddr_reg_n_0_[4] ),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(\axi_rdata[13]_i_2__0_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[13]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[13]_i_2__0 
       (.I0(\axi_araddr_reg_n_0_[4] ),
        .I1(\axi_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[13]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[13]),
        .I5(\slv_reg3_reg_n_0_[13] ),
        .O(\axi_rdata[13]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[14]_i_1__0 
       (.I0(\axi_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[14]),
        .I2(\axi_araddr_reg_n_0_[4] ),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(\axi_rdata[14]_i_2__0_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[14]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[14]_i_2__0 
       (.I0(\axi_araddr_reg_n_0_[4] ),
        .I1(\axi_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[14]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[14]),
        .I5(\slv_reg3_reg_n_0_[14] ),
        .O(\axi_rdata[14]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[15]_i_1__0 
       (.I0(\axi_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[15]),
        .I2(\axi_araddr_reg_n_0_[4] ),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(\axi_rdata[15]_i_2__0_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[15]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[15]_i_2__0 
       (.I0(\axi_araddr_reg_n_0_[4] ),
        .I1(\axi_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[15]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[15]),
        .I5(\slv_reg3_reg_n_0_[15] ),
        .O(\axi_rdata[15]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[16]_i_1__0 
       (.I0(\axi_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[16]),
        .I2(\axi_araddr_reg_n_0_[4] ),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(\axi_rdata[16]_i_2__0_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[16]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[16]_i_2__0 
       (.I0(\axi_araddr_reg_n_0_[4] ),
        .I1(\axi_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[16]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[16]),
        .I5(\slv_reg3_reg_n_0_[16] ),
        .O(\axi_rdata[16]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[17]_i_1__0 
       (.I0(\axi_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[17]),
        .I2(\axi_araddr_reg_n_0_[4] ),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(\axi_rdata[17]_i_2__0_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[17]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[17]_i_2__0 
       (.I0(\axi_araddr_reg_n_0_[4] ),
        .I1(\axi_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[17]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[17]),
        .I5(\slv_reg3_reg_n_0_[17] ),
        .O(\axi_rdata[17]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[18]_i_1__0 
       (.I0(\axi_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[18]),
        .I2(\axi_araddr_reg_n_0_[4] ),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(\axi_rdata[18]_i_2__0_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[18]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[18]_i_2__0 
       (.I0(\axi_araddr_reg_n_0_[4] ),
        .I1(\axi_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[18]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[18]),
        .I5(\slv_reg3_reg_n_0_[18] ),
        .O(\axi_rdata[18]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[19]_i_1__0 
       (.I0(\axi_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[19]),
        .I2(\axi_araddr_reg_n_0_[4] ),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(\axi_rdata[19]_i_2__0_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[19]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[19]_i_2__0 
       (.I0(\axi_araddr_reg_n_0_[4] ),
        .I1(\axi_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[19]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[19]),
        .I5(\slv_reg3_reg_n_0_[19] ),
        .O(\axi_rdata[19]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[1]_i_1__0 
       (.I0(\axi_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[1]),
        .I2(\axi_araddr_reg_n_0_[4] ),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(\axi_rdata[1]_i_2__0_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[1]_i_2__0 
       (.I0(\axi_araddr_reg_n_0_[4] ),
        .I1(\axi_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[1]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[1]),
        .I5(\slv_reg3_reg_n_0_[1] ),
        .O(\axi_rdata[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[20]_i_1__0 
       (.I0(\axi_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[20]),
        .I2(\axi_araddr_reg_n_0_[4] ),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(\axi_rdata[20]_i_2__0_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[20]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[20]_i_2__0 
       (.I0(\axi_araddr_reg_n_0_[4] ),
        .I1(\axi_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[20]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[20]),
        .I5(\slv_reg3_reg_n_0_[20] ),
        .O(\axi_rdata[20]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[21]_i_1__0 
       (.I0(\axi_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[21]),
        .I2(\axi_araddr_reg_n_0_[4] ),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(\axi_rdata[21]_i_2__0_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[21]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[21]_i_2__0 
       (.I0(\axi_araddr_reg_n_0_[4] ),
        .I1(\axi_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[21]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[21]),
        .I5(\slv_reg3_reg_n_0_[21] ),
        .O(\axi_rdata[21]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[22]_i_1__0 
       (.I0(\axi_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[22]),
        .I2(\axi_araddr_reg_n_0_[4] ),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(\axi_rdata[22]_i_2__0_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[22]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[22]_i_2__0 
       (.I0(\axi_araddr_reg_n_0_[4] ),
        .I1(\axi_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[22]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[22]),
        .I5(\slv_reg3_reg_n_0_[22] ),
        .O(\axi_rdata[22]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[23]_i_1__0 
       (.I0(\axi_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[23]),
        .I2(\axi_araddr_reg_n_0_[4] ),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(\axi_rdata[23]_i_2__0_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[23]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[23]_i_2__0 
       (.I0(\axi_araddr_reg_n_0_[4] ),
        .I1(\axi_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[23]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[23]),
        .I5(\slv_reg3_reg_n_0_[23] ),
        .O(\axi_rdata[23]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[24]_i_1__0 
       (.I0(\axi_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[24]),
        .I2(\axi_araddr_reg_n_0_[4] ),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(\axi_rdata[24]_i_2__0_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[24]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[24]_i_2__0 
       (.I0(\axi_araddr_reg_n_0_[4] ),
        .I1(\axi_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[24]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[24]),
        .I5(\slv_reg3_reg_n_0_[24] ),
        .O(\axi_rdata[24]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[25]_i_1__0 
       (.I0(\axi_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[25]),
        .I2(\axi_araddr_reg_n_0_[4] ),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(\axi_rdata[25]_i_2__0_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[25]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[25]_i_2__0 
       (.I0(\axi_araddr_reg_n_0_[4] ),
        .I1(\axi_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[25]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[25]),
        .I5(\slv_reg3_reg_n_0_[25] ),
        .O(\axi_rdata[25]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[26]_i_1__0 
       (.I0(\axi_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[26]),
        .I2(\axi_araddr_reg_n_0_[4] ),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(\axi_rdata[26]_i_2__0_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[26]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[26]_i_2__0 
       (.I0(\axi_araddr_reg_n_0_[4] ),
        .I1(\axi_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[26]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[26]),
        .I5(\slv_reg3_reg_n_0_[26] ),
        .O(\axi_rdata[26]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[27]_i_1__0 
       (.I0(\axi_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[27]),
        .I2(\axi_araddr_reg_n_0_[4] ),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(\axi_rdata[27]_i_2__0_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[27]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[27]_i_2__0 
       (.I0(\axi_araddr_reg_n_0_[4] ),
        .I1(\axi_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[27]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[27]),
        .I5(\slv_reg3_reg_n_0_[27] ),
        .O(\axi_rdata[27]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[28]_i_1__0 
       (.I0(\axi_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[28]),
        .I2(\axi_araddr_reg_n_0_[4] ),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(\axi_rdata[28]_i_2__0_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[28]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[28]_i_2__0 
       (.I0(\axi_araddr_reg_n_0_[4] ),
        .I1(\axi_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[28]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[28]),
        .I5(\slv_reg3_reg_n_0_[28] ),
        .O(\axi_rdata[28]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[29]_i_1__0 
       (.I0(\axi_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[29]),
        .I2(\axi_araddr_reg_n_0_[4] ),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(\axi_rdata[29]_i_2__0_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[29]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[29]_i_2__0 
       (.I0(\axi_araddr_reg_n_0_[4] ),
        .I1(\axi_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[29]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[29]),
        .I5(\slv_reg3_reg_n_0_[29] ),
        .O(\axi_rdata[29]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[2]_i_1__0 
       (.I0(\axi_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[2]),
        .I2(\axi_araddr_reg_n_0_[4] ),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(\axi_rdata[2]_i_2__0_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[2]_i_2__0 
       (.I0(\axi_araddr_reg_n_0_[4] ),
        .I1(\axi_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[2]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[2]),
        .I5(\slv_reg3_reg_n_0_[2] ),
        .O(\axi_rdata[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[30]_i_1__0 
       (.I0(\axi_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[30]),
        .I2(\axi_araddr_reg_n_0_[4] ),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(\axi_rdata[30]_i_2__0_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[30]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[30]_i_2__0 
       (.I0(\axi_araddr_reg_n_0_[4] ),
        .I1(\axi_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[30]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[30]),
        .I5(\slv_reg3_reg_n_0_[30] ),
        .O(\axi_rdata[30]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \axi_rdata[31]_i_1__0 
       (.I0(s01_axi_arvalid),
        .I1(s01_cq_rd_sel),
        .I2(axi_rvalid_reg_0),
        .I3(axi_arready_reg_0),
        .O(\axi_rdata[31]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[31]_i_2__0 
       (.I0(\axi_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[31]),
        .I2(\axi_araddr_reg_n_0_[4] ),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(\axi_rdata[31]_i_3__0_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[31]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[31]_i_3__0 
       (.I0(\axi_araddr_reg_n_0_[4] ),
        .I1(\axi_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[31]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[31]),
        .I5(Q),
        .O(\axi_rdata[31]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[3]_i_1__0 
       (.I0(\axi_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[3]),
        .I2(\axi_araddr_reg_n_0_[4] ),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(\axi_rdata[3]_i_2__0_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[3]_i_2__0 
       (.I0(\axi_araddr_reg_n_0_[4] ),
        .I1(\axi_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[3]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[3]),
        .I5(\slv_reg3_reg_n_0_[3] ),
        .O(\axi_rdata[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[4]_i_1__0 
       (.I0(\axi_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[4]),
        .I2(\axi_araddr_reg_n_0_[4] ),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(\axi_rdata[4]_i_2__0_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[4]_i_2__0 
       (.I0(\axi_araddr_reg_n_0_[4] ),
        .I1(\axi_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[4]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[4]),
        .I5(\slv_reg3_reg_n_0_[4] ),
        .O(\axi_rdata[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[5]_i_1__0 
       (.I0(\axi_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[5]),
        .I2(\axi_araddr_reg_n_0_[4] ),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(\axi_rdata[5]_i_2__0_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[5]_i_2__0 
       (.I0(\axi_araddr_reg_n_0_[4] ),
        .I1(\axi_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[5]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[5]),
        .I5(\slv_reg3_reg_n_0_[5] ),
        .O(\axi_rdata[5]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[6]_i_1__0 
       (.I0(\axi_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[6]),
        .I2(\axi_araddr_reg_n_0_[4] ),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(\axi_rdata[6]_i_2__0_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[6]_i_2__0 
       (.I0(\axi_araddr_reg_n_0_[4] ),
        .I1(\axi_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[6]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[6]),
        .I5(\slv_reg3_reg_n_0_[6] ),
        .O(\axi_rdata[6]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[7]_i_1__0 
       (.I0(\axi_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[7]),
        .I2(\axi_araddr_reg_n_0_[4] ),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(\axi_rdata[7]_i_2__0_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[7]_i_2__0 
       (.I0(\axi_araddr_reg_n_0_[4] ),
        .I1(\axi_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[7]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[7]),
        .I5(\slv_reg3_reg_n_0_[7] ),
        .O(\axi_rdata[7]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[8]_i_1__0 
       (.I0(\axi_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[8]),
        .I2(\axi_araddr_reg_n_0_[4] ),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(\axi_rdata[8]_i_2__0_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[8]_i_2__0 
       (.I0(\axi_araddr_reg_n_0_[4] ),
        .I1(\axi_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[8]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[8]),
        .I5(\slv_reg3_reg_n_0_[8] ),
        .O(\axi_rdata[8]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[9]_i_1__0 
       (.I0(\axi_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[9]),
        .I2(\axi_araddr_reg_n_0_[4] ),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(\axi_rdata[9]_i_2__0_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[9]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[9]_i_2__0 
       (.I0(\axi_araddr_reg_n_0_[4] ),
        .I1(\axi_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[9]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[9]),
        .I5(\slv_reg3_reg_n_0_[9] ),
        .O(\axi_rdata[9]_i_2__0_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1__0_n_0 ),
        .D(\axi_rdata[0]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[31]_0 [0]),
        .R(SR));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1__0_n_0 ),
        .D(\axi_rdata[10]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[31]_0 [10]),
        .R(SR));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1__0_n_0 ),
        .D(\axi_rdata[11]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[31]_0 [11]),
        .R(SR));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1__0_n_0 ),
        .D(\axi_rdata[12]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[31]_0 [12]),
        .R(SR));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1__0_n_0 ),
        .D(\axi_rdata[13]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[31]_0 [13]),
        .R(SR));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1__0_n_0 ),
        .D(\axi_rdata[14]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[31]_0 [14]),
        .R(SR));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1__0_n_0 ),
        .D(\axi_rdata[15]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[31]_0 [15]),
        .R(SR));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1__0_n_0 ),
        .D(\axi_rdata[16]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[31]_0 [16]),
        .R(SR));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1__0_n_0 ),
        .D(\axi_rdata[17]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[31]_0 [17]),
        .R(SR));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1__0_n_0 ),
        .D(\axi_rdata[18]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[31]_0 [18]),
        .R(SR));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1__0_n_0 ),
        .D(\axi_rdata[19]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[31]_0 [19]),
        .R(SR));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1__0_n_0 ),
        .D(\axi_rdata[1]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[31]_0 [1]),
        .R(SR));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1__0_n_0 ),
        .D(\axi_rdata[20]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[31]_0 [20]),
        .R(SR));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1__0_n_0 ),
        .D(\axi_rdata[21]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[31]_0 [21]),
        .R(SR));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1__0_n_0 ),
        .D(\axi_rdata[22]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[31]_0 [22]),
        .R(SR));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1__0_n_0 ),
        .D(\axi_rdata[23]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[31]_0 [23]),
        .R(SR));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1__0_n_0 ),
        .D(\axi_rdata[24]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[31]_0 [24]),
        .R(SR));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1__0_n_0 ),
        .D(\axi_rdata[25]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[31]_0 [25]),
        .R(SR));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1__0_n_0 ),
        .D(\axi_rdata[26]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[31]_0 [26]),
        .R(SR));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1__0_n_0 ),
        .D(\axi_rdata[27]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[31]_0 [27]),
        .R(SR));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1__0_n_0 ),
        .D(\axi_rdata[28]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[31]_0 [28]),
        .R(SR));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1__0_n_0 ),
        .D(\axi_rdata[29]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[31]_0 [29]),
        .R(SR));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1__0_n_0 ),
        .D(\axi_rdata[2]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[31]_0 [2]),
        .R(SR));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1__0_n_0 ),
        .D(\axi_rdata[30]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[31]_0 [30]),
        .R(SR));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1__0_n_0 ),
        .D(\axi_rdata[31]_i_2__0_n_0 ),
        .Q(\axi_rdata_reg[31]_0 [31]),
        .R(SR));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1__0_n_0 ),
        .D(\axi_rdata[3]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[31]_0 [3]),
        .R(SR));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1__0_n_0 ),
        .D(\axi_rdata[4]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[31]_0 [4]),
        .R(SR));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1__0_n_0 ),
        .D(\axi_rdata[5]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[31]_0 [5]),
        .R(SR));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1__0_n_0 ),
        .D(\axi_rdata[6]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[31]_0 [6]),
        .R(SR));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1__0_n_0 ),
        .D(\axi_rdata[7]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[31]_0 [7]),
        .R(SR));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1__0_n_0 ),
        .D(\axi_rdata[8]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[31]_0 [8]),
        .R(SR));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1__0_n_0 ),
        .D(\axi_rdata[9]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[31]_0 [9]),
        .R(SR));
  LUT5 #(
    .INIT(32'h0800F8F0)) 
    axi_rvalid_i_1__0
       (.I0(s01_axi_arvalid),
        .I1(s01_cq_rd_sel),
        .I2(axi_rvalid_reg_0),
        .I3(axi_arready_reg_0),
        .I4(s01_axi_rready),
        .O(axi_rvalid_i_1__0_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1__0_n_0),
        .Q(axi_rvalid_reg_0),
        .R(SR));
  FDRE \axi_s01_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_s01_arready_i_1_n_0),
        .D(s00_axi_araddr[0]),
        .Q(\axi_s01_araddr_reg_n_0_[2] ),
        .R(SR));
  FDRE \axi_s01_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_s01_arready_i_1_n_0),
        .D(s00_axi_araddr[1]),
        .Q(\axi_s01_araddr_reg_n_0_[3] ),
        .R(SR));
  FDRE \axi_s01_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_s01_arready_i_1_n_0),
        .D(s00_axi_araddr[2]),
        .Q(\axi_s01_araddr_reg_n_0_[4] ),
        .R(SR));
  FDRE \axi_s01_araddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_s01_arready_i_1_n_0),
        .D(s00_axi_araddr[3]),
        .Q(\axi_s01_araddr_reg_n_0_[5] ),
        .R(SR));
  LUT3 #(
    .INIT(8'h08)) 
    axi_s01_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_cq_rd_sel),
        .I2(axi_s01_arready_reg_0),
        .O(axi_s01_arready_i_1_n_0));
  FDRE axi_s01_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_s01_arready_i_1_n_0),
        .Q(axi_s01_arready_reg_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h20)) 
    axi_s01_awready_i_1
       (.I0(axi_s01_wready_i_2_n_0),
        .I1(axi_s01_awready_reg_0),
        .I2(aw_s01_en_reg_n_0),
        .O(axi_s01_awready_i_1_n_0));
  FDRE axi_s01_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_s01_awready_i_1_n_0),
        .Q(axi_s01_awready_reg_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h74444444)) 
    axi_s01_bvalid_i_1
       (.I0(s00_axi_bready),
        .I1(axi_s01_bvalid_reg_0),
        .I2(axi_s01_awready_reg_0),
        .I3(axi_s01_wready_i_2_n_0),
        .I4(axi_s01_wready_reg_0),
        .O(axi_s01_bvalid_i_1_n_0));
  FDRE axi_s01_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_s01_bvalid_i_1_n_0),
        .Q(axi_s01_bvalid_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_s01_rdata[0]_i_1 
       (.I0(\axi_s01_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[0]),
        .I2(\axi_s01_araddr_reg_n_0_[4] ),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(\axi_s01_rdata[0]_i_2_n_0 ),
        .I5(\axi_s01_araddr_reg_n_0_[5] ),
        .O(\axi_s01_rdata[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_s01_rdata[0]_i_2 
       (.I0(\slv_reg3_reg_n_0_[0] ),
        .I1(slv_reg2_low[0]),
        .I2(\axi_s01_araddr_reg_n_0_[3] ),
        .I3(\slv_reg1_reg_n_0_[0] ),
        .I4(\axi_s01_araddr_reg_n_0_[2] ),
        .I5(slv_reg0[0]),
        .O(\axi_s01_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[10]_i_1 
       (.I0(\axi_s01_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[10]),
        .I2(\axi_s01_araddr_reg_n_0_[4] ),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(\axi_s01_rdata[10]_i_2_n_0 ),
        .I5(\axi_s01_araddr_reg_n_0_[5] ),
        .O(\axi_s01_rdata[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[10]_i_2 
       (.I0(\axi_s01_araddr_reg_n_0_[4] ),
        .I1(\axi_s01_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[10]),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[10]),
        .I5(\slv_reg3_reg_n_0_[10] ),
        .O(\axi_s01_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[11]_i_1 
       (.I0(\axi_s01_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[11]),
        .I2(\axi_s01_araddr_reg_n_0_[4] ),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(\axi_s01_rdata[11]_i_2_n_0 ),
        .I5(\axi_s01_araddr_reg_n_0_[5] ),
        .O(\axi_s01_rdata[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[11]_i_2 
       (.I0(\axi_s01_araddr_reg_n_0_[4] ),
        .I1(\axi_s01_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[11]),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[11]),
        .I5(\slv_reg3_reg_n_0_[11] ),
        .O(\axi_s01_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[12]_i_1 
       (.I0(\axi_s01_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[12]),
        .I2(\axi_s01_araddr_reg_n_0_[4] ),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(\axi_s01_rdata[12]_i_2_n_0 ),
        .I5(\axi_s01_araddr_reg_n_0_[5] ),
        .O(\axi_s01_rdata[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[12]_i_2 
       (.I0(\axi_s01_araddr_reg_n_0_[4] ),
        .I1(\axi_s01_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[12]),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[12]),
        .I5(\slv_reg3_reg_n_0_[12] ),
        .O(\axi_s01_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[13]_i_1 
       (.I0(\axi_s01_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[13]),
        .I2(\axi_s01_araddr_reg_n_0_[4] ),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(\axi_s01_rdata[13]_i_2_n_0 ),
        .I5(\axi_s01_araddr_reg_n_0_[5] ),
        .O(\axi_s01_rdata[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[13]_i_2 
       (.I0(\axi_s01_araddr_reg_n_0_[4] ),
        .I1(\axi_s01_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[13]),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[13]),
        .I5(\slv_reg3_reg_n_0_[13] ),
        .O(\axi_s01_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[14]_i_1 
       (.I0(\axi_s01_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[14]),
        .I2(\axi_s01_araddr_reg_n_0_[4] ),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(\axi_s01_rdata[14]_i_2_n_0 ),
        .I5(\axi_s01_araddr_reg_n_0_[5] ),
        .O(\axi_s01_rdata[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[14]_i_2 
       (.I0(\axi_s01_araddr_reg_n_0_[4] ),
        .I1(\axi_s01_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[14]),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[14]),
        .I5(\slv_reg3_reg_n_0_[14] ),
        .O(\axi_s01_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[15]_i_1 
       (.I0(\axi_s01_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[15]),
        .I2(\axi_s01_araddr_reg_n_0_[4] ),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(\axi_s01_rdata[15]_i_2_n_0 ),
        .I5(\axi_s01_araddr_reg_n_0_[5] ),
        .O(\axi_s01_rdata[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[15]_i_2 
       (.I0(\axi_s01_araddr_reg_n_0_[4] ),
        .I1(\axi_s01_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[15]),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[15]),
        .I5(\slv_reg3_reg_n_0_[15] ),
        .O(\axi_s01_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[16]_i_1 
       (.I0(\axi_s01_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[16]),
        .I2(\axi_s01_araddr_reg_n_0_[4] ),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(\axi_s01_rdata[16]_i_2_n_0 ),
        .I5(\axi_s01_araddr_reg_n_0_[5] ),
        .O(\axi_s01_rdata[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[16]_i_2 
       (.I0(\axi_s01_araddr_reg_n_0_[4] ),
        .I1(\axi_s01_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[16]),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[16]),
        .I5(\slv_reg3_reg_n_0_[16] ),
        .O(\axi_s01_rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[17]_i_1 
       (.I0(\axi_s01_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[17]),
        .I2(\axi_s01_araddr_reg_n_0_[4] ),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(\axi_s01_rdata[17]_i_2_n_0 ),
        .I5(\axi_s01_araddr_reg_n_0_[5] ),
        .O(\axi_s01_rdata[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[17]_i_2 
       (.I0(\axi_s01_araddr_reg_n_0_[4] ),
        .I1(\axi_s01_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[17]),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[17]),
        .I5(\slv_reg3_reg_n_0_[17] ),
        .O(\axi_s01_rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[18]_i_1 
       (.I0(\axi_s01_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[18]),
        .I2(\axi_s01_araddr_reg_n_0_[4] ),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(\axi_s01_rdata[18]_i_2_n_0 ),
        .I5(\axi_s01_araddr_reg_n_0_[5] ),
        .O(\axi_s01_rdata[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[18]_i_2 
       (.I0(\axi_s01_araddr_reg_n_0_[4] ),
        .I1(\axi_s01_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[18]),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[18]),
        .I5(\slv_reg3_reg_n_0_[18] ),
        .O(\axi_s01_rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[19]_i_1 
       (.I0(\axi_s01_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[19]),
        .I2(\axi_s01_araddr_reg_n_0_[4] ),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(\axi_s01_rdata[19]_i_2_n_0 ),
        .I5(\axi_s01_araddr_reg_n_0_[5] ),
        .O(\axi_s01_rdata[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[19]_i_2 
       (.I0(\axi_s01_araddr_reg_n_0_[4] ),
        .I1(\axi_s01_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[19]),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[19]),
        .I5(\slv_reg3_reg_n_0_[19] ),
        .O(\axi_s01_rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[1]_i_1 
       (.I0(\axi_s01_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[1]),
        .I2(\axi_s01_araddr_reg_n_0_[4] ),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(\axi_s01_rdata[1]_i_2_n_0 ),
        .I5(\axi_s01_araddr_reg_n_0_[5] ),
        .O(\axi_s01_rdata[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[1]_i_2 
       (.I0(\axi_s01_araddr_reg_n_0_[4] ),
        .I1(\axi_s01_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[1]),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[1]),
        .I5(\slv_reg3_reg_n_0_[1] ),
        .O(\axi_s01_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[20]_i_1 
       (.I0(\axi_s01_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[20]),
        .I2(\axi_s01_araddr_reg_n_0_[4] ),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(\axi_s01_rdata[20]_i_2_n_0 ),
        .I5(\axi_s01_araddr_reg_n_0_[5] ),
        .O(\axi_s01_rdata[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[20]_i_2 
       (.I0(\axi_s01_araddr_reg_n_0_[4] ),
        .I1(\axi_s01_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[20]),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[20]),
        .I5(\slv_reg3_reg_n_0_[20] ),
        .O(\axi_s01_rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[21]_i_1 
       (.I0(\axi_s01_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[21]),
        .I2(\axi_s01_araddr_reg_n_0_[4] ),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(\axi_s01_rdata[21]_i_2_n_0 ),
        .I5(\axi_s01_araddr_reg_n_0_[5] ),
        .O(\axi_s01_rdata[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[21]_i_2 
       (.I0(\axi_s01_araddr_reg_n_0_[4] ),
        .I1(\axi_s01_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[21]),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[21]),
        .I5(\slv_reg3_reg_n_0_[21] ),
        .O(\axi_s01_rdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[22]_i_1 
       (.I0(\axi_s01_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[22]),
        .I2(\axi_s01_araddr_reg_n_0_[4] ),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(\axi_s01_rdata[22]_i_2_n_0 ),
        .I5(\axi_s01_araddr_reg_n_0_[5] ),
        .O(\axi_s01_rdata[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[22]_i_2 
       (.I0(\axi_s01_araddr_reg_n_0_[4] ),
        .I1(\axi_s01_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[22]),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[22]),
        .I5(\slv_reg3_reg_n_0_[22] ),
        .O(\axi_s01_rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[23]_i_1 
       (.I0(\axi_s01_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[23]),
        .I2(\axi_s01_araddr_reg_n_0_[4] ),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(\axi_s01_rdata[23]_i_2_n_0 ),
        .I5(\axi_s01_araddr_reg_n_0_[5] ),
        .O(\axi_s01_rdata[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[23]_i_2 
       (.I0(\axi_s01_araddr_reg_n_0_[4] ),
        .I1(\axi_s01_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[23]),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[23]),
        .I5(\slv_reg3_reg_n_0_[23] ),
        .O(\axi_s01_rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[24]_i_1 
       (.I0(\axi_s01_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[24]),
        .I2(\axi_s01_araddr_reg_n_0_[4] ),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(\axi_s01_rdata[24]_i_2_n_0 ),
        .I5(\axi_s01_araddr_reg_n_0_[5] ),
        .O(\axi_s01_rdata[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[24]_i_2 
       (.I0(\axi_s01_araddr_reg_n_0_[4] ),
        .I1(\axi_s01_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[24]),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[24]),
        .I5(\slv_reg3_reg_n_0_[24] ),
        .O(\axi_s01_rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[25]_i_1 
       (.I0(\axi_s01_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[25]),
        .I2(\axi_s01_araddr_reg_n_0_[4] ),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(\axi_s01_rdata[25]_i_2_n_0 ),
        .I5(\axi_s01_araddr_reg_n_0_[5] ),
        .O(\axi_s01_rdata[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[25]_i_2 
       (.I0(\axi_s01_araddr_reg_n_0_[4] ),
        .I1(\axi_s01_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[25]),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[25]),
        .I5(\slv_reg3_reg_n_0_[25] ),
        .O(\axi_s01_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[26]_i_1 
       (.I0(\axi_s01_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[26]),
        .I2(\axi_s01_araddr_reg_n_0_[4] ),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(\axi_s01_rdata[26]_i_2_n_0 ),
        .I5(\axi_s01_araddr_reg_n_0_[5] ),
        .O(\axi_s01_rdata[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[26]_i_2 
       (.I0(\axi_s01_araddr_reg_n_0_[4] ),
        .I1(\axi_s01_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[26]),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[26]),
        .I5(\slv_reg3_reg_n_0_[26] ),
        .O(\axi_s01_rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[27]_i_1 
       (.I0(\axi_s01_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[27]),
        .I2(\axi_s01_araddr_reg_n_0_[4] ),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(\axi_s01_rdata[27]_i_2_n_0 ),
        .I5(\axi_s01_araddr_reg_n_0_[5] ),
        .O(\axi_s01_rdata[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[27]_i_2 
       (.I0(\axi_s01_araddr_reg_n_0_[4] ),
        .I1(\axi_s01_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[27]),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[27]),
        .I5(\slv_reg3_reg_n_0_[27] ),
        .O(\axi_s01_rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[28]_i_1 
       (.I0(\axi_s01_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[28]),
        .I2(\axi_s01_araddr_reg_n_0_[4] ),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(\axi_s01_rdata[28]_i_2_n_0 ),
        .I5(\axi_s01_araddr_reg_n_0_[5] ),
        .O(\axi_s01_rdata[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[28]_i_2 
       (.I0(\axi_s01_araddr_reg_n_0_[4] ),
        .I1(\axi_s01_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[28]),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[28]),
        .I5(\slv_reg3_reg_n_0_[28] ),
        .O(\axi_s01_rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[29]_i_1 
       (.I0(\axi_s01_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[29]),
        .I2(\axi_s01_araddr_reg_n_0_[4] ),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(\axi_s01_rdata[29]_i_2_n_0 ),
        .I5(\axi_s01_araddr_reg_n_0_[5] ),
        .O(\axi_s01_rdata[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[29]_i_2 
       (.I0(\axi_s01_araddr_reg_n_0_[4] ),
        .I1(\axi_s01_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[29]),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[29]),
        .I5(\slv_reg3_reg_n_0_[29] ),
        .O(\axi_s01_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[2]_i_1 
       (.I0(\axi_s01_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[2]),
        .I2(\axi_s01_araddr_reg_n_0_[4] ),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(\axi_s01_rdata[2]_i_2_n_0 ),
        .I5(\axi_s01_araddr_reg_n_0_[5] ),
        .O(\axi_s01_rdata[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[2]_i_2 
       (.I0(\axi_s01_araddr_reg_n_0_[4] ),
        .I1(\axi_s01_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[2]),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[2]),
        .I5(\slv_reg3_reg_n_0_[2] ),
        .O(\axi_s01_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[30]_i_1 
       (.I0(\axi_s01_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[30]),
        .I2(\axi_s01_araddr_reg_n_0_[4] ),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(\axi_s01_rdata[30]_i_2_n_0 ),
        .I5(\axi_s01_araddr_reg_n_0_[5] ),
        .O(\axi_s01_rdata[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[30]_i_2 
       (.I0(\axi_s01_araddr_reg_n_0_[4] ),
        .I1(\axi_s01_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[30]),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[30]),
        .I5(\slv_reg3_reg_n_0_[30] ),
        .O(\axi_s01_rdata[30]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \axi_s01_rdata[31]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(s00_cq_rd_sel),
        .I2(axi_s01_rvalid_reg_0),
        .I3(axi_s01_arready_reg_0),
        .O(\axi_s01_rdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[31]_i_2 
       (.I0(\axi_s01_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[31]),
        .I2(\axi_s01_araddr_reg_n_0_[4] ),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(\axi_s01_rdata[31]_i_3_n_0 ),
        .I5(\axi_s01_araddr_reg_n_0_[5] ),
        .O(\axi_s01_rdata[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[31]_i_3 
       (.I0(\axi_s01_araddr_reg_n_0_[4] ),
        .I1(\axi_s01_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[31]),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[31]),
        .I5(Q),
        .O(\axi_s01_rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[3]_i_1 
       (.I0(\axi_s01_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[3]),
        .I2(\axi_s01_araddr_reg_n_0_[4] ),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(\axi_s01_rdata[3]_i_2_n_0 ),
        .I5(\axi_s01_araddr_reg_n_0_[5] ),
        .O(\axi_s01_rdata[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[3]_i_2 
       (.I0(\axi_s01_araddr_reg_n_0_[4] ),
        .I1(\axi_s01_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[3]),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[3]),
        .I5(\slv_reg3_reg_n_0_[3] ),
        .O(\axi_s01_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[4]_i_1 
       (.I0(\axi_s01_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[4]),
        .I2(\axi_s01_araddr_reg_n_0_[4] ),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(\axi_s01_rdata[4]_i_2_n_0 ),
        .I5(\axi_s01_araddr_reg_n_0_[5] ),
        .O(\axi_s01_rdata[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[4]_i_2 
       (.I0(\axi_s01_araddr_reg_n_0_[4] ),
        .I1(\axi_s01_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[4]),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[4]),
        .I5(\slv_reg3_reg_n_0_[4] ),
        .O(\axi_s01_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[5]_i_1 
       (.I0(\axi_s01_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[5]),
        .I2(\axi_s01_araddr_reg_n_0_[4] ),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(\axi_s01_rdata[5]_i_2_n_0 ),
        .I5(\axi_s01_araddr_reg_n_0_[5] ),
        .O(\axi_s01_rdata[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[5]_i_2 
       (.I0(\axi_s01_araddr_reg_n_0_[4] ),
        .I1(\axi_s01_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[5]),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[5]),
        .I5(\slv_reg3_reg_n_0_[5] ),
        .O(\axi_s01_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[6]_i_1 
       (.I0(\axi_s01_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[6]),
        .I2(\axi_s01_araddr_reg_n_0_[4] ),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(\axi_s01_rdata[6]_i_2_n_0 ),
        .I5(\axi_s01_araddr_reg_n_0_[5] ),
        .O(\axi_s01_rdata[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[6]_i_2 
       (.I0(\axi_s01_araddr_reg_n_0_[4] ),
        .I1(\axi_s01_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[6]),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[6]),
        .I5(\slv_reg3_reg_n_0_[6] ),
        .O(\axi_s01_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[7]_i_1 
       (.I0(\axi_s01_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[7]),
        .I2(\axi_s01_araddr_reg_n_0_[4] ),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(\axi_s01_rdata[7]_i_2_n_0 ),
        .I5(\axi_s01_araddr_reg_n_0_[5] ),
        .O(\axi_s01_rdata[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[7]_i_2 
       (.I0(\axi_s01_araddr_reg_n_0_[4] ),
        .I1(\axi_s01_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[7]),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[7]),
        .I5(\slv_reg3_reg_n_0_[7] ),
        .O(\axi_s01_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[8]_i_1 
       (.I0(\axi_s01_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[8]),
        .I2(\axi_s01_araddr_reg_n_0_[4] ),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(\axi_s01_rdata[8]_i_2_n_0 ),
        .I5(\axi_s01_araddr_reg_n_0_[5] ),
        .O(\axi_s01_rdata[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[8]_i_2 
       (.I0(\axi_s01_araddr_reg_n_0_[4] ),
        .I1(\axi_s01_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[8]),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[8]),
        .I5(\slv_reg3_reg_n_0_[8] ),
        .O(\axi_s01_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[9]_i_1 
       (.I0(\axi_s01_araddr_reg_n_0_[2] ),
        .I1(slv_reg2_high[9]),
        .I2(\axi_s01_araddr_reg_n_0_[4] ),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(\axi_s01_rdata[9]_i_2_n_0 ),
        .I5(\axi_s01_araddr_reg_n_0_[5] ),
        .O(\axi_s01_rdata[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[9]_i_2 
       (.I0(\axi_s01_araddr_reg_n_0_[4] ),
        .I1(\axi_s01_araddr_reg_n_0_[2] ),
        .I2(slv_reg0[9]),
        .I3(\axi_s01_araddr_reg_n_0_[3] ),
        .I4(slv_reg2_low[9]),
        .I5(\slv_reg3_reg_n_0_[9] ),
        .O(\axi_s01_rdata[9]_i_2_n_0 ));
  FDRE \axi_s01_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\axi_s01_rdata[31]_i_1_n_0 ),
        .D(\axi_s01_rdata[0]_i_1_n_0 ),
        .Q(\axi_s01_rdata_reg[31]_0 [0]),
        .R(SR));
  FDRE \axi_s01_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\axi_s01_rdata[31]_i_1_n_0 ),
        .D(\axi_s01_rdata[10]_i_1_n_0 ),
        .Q(\axi_s01_rdata_reg[31]_0 [10]),
        .R(SR));
  FDRE \axi_s01_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\axi_s01_rdata[31]_i_1_n_0 ),
        .D(\axi_s01_rdata[11]_i_1_n_0 ),
        .Q(\axi_s01_rdata_reg[31]_0 [11]),
        .R(SR));
  FDRE \axi_s01_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\axi_s01_rdata[31]_i_1_n_0 ),
        .D(\axi_s01_rdata[12]_i_1_n_0 ),
        .Q(\axi_s01_rdata_reg[31]_0 [12]),
        .R(SR));
  FDRE \axi_s01_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\axi_s01_rdata[31]_i_1_n_0 ),
        .D(\axi_s01_rdata[13]_i_1_n_0 ),
        .Q(\axi_s01_rdata_reg[31]_0 [13]),
        .R(SR));
  FDRE \axi_s01_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\axi_s01_rdata[31]_i_1_n_0 ),
        .D(\axi_s01_rdata[14]_i_1_n_0 ),
        .Q(\axi_s01_rdata_reg[31]_0 [14]),
        .R(SR));
  FDRE \axi_s01_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\axi_s01_rdata[31]_i_1_n_0 ),
        .D(\axi_s01_rdata[15]_i_1_n_0 ),
        .Q(\axi_s01_rdata_reg[31]_0 [15]),
        .R(SR));
  FDRE \axi_s01_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\axi_s01_rdata[31]_i_1_n_0 ),
        .D(\axi_s01_rdata[16]_i_1_n_0 ),
        .Q(\axi_s01_rdata_reg[31]_0 [16]),
        .R(SR));
  FDRE \axi_s01_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\axi_s01_rdata[31]_i_1_n_0 ),
        .D(\axi_s01_rdata[17]_i_1_n_0 ),
        .Q(\axi_s01_rdata_reg[31]_0 [17]),
        .R(SR));
  FDRE \axi_s01_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\axi_s01_rdata[31]_i_1_n_0 ),
        .D(\axi_s01_rdata[18]_i_1_n_0 ),
        .Q(\axi_s01_rdata_reg[31]_0 [18]),
        .R(SR));
  FDRE \axi_s01_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\axi_s01_rdata[31]_i_1_n_0 ),
        .D(\axi_s01_rdata[19]_i_1_n_0 ),
        .Q(\axi_s01_rdata_reg[31]_0 [19]),
        .R(SR));
  FDRE \axi_s01_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\axi_s01_rdata[31]_i_1_n_0 ),
        .D(\axi_s01_rdata[1]_i_1_n_0 ),
        .Q(\axi_s01_rdata_reg[31]_0 [1]),
        .R(SR));
  FDRE \axi_s01_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\axi_s01_rdata[31]_i_1_n_0 ),
        .D(\axi_s01_rdata[20]_i_1_n_0 ),
        .Q(\axi_s01_rdata_reg[31]_0 [20]),
        .R(SR));
  FDRE \axi_s01_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\axi_s01_rdata[31]_i_1_n_0 ),
        .D(\axi_s01_rdata[21]_i_1_n_0 ),
        .Q(\axi_s01_rdata_reg[31]_0 [21]),
        .R(SR));
  FDRE \axi_s01_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\axi_s01_rdata[31]_i_1_n_0 ),
        .D(\axi_s01_rdata[22]_i_1_n_0 ),
        .Q(\axi_s01_rdata_reg[31]_0 [22]),
        .R(SR));
  FDRE \axi_s01_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\axi_s01_rdata[31]_i_1_n_0 ),
        .D(\axi_s01_rdata[23]_i_1_n_0 ),
        .Q(\axi_s01_rdata_reg[31]_0 [23]),
        .R(SR));
  FDRE \axi_s01_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\axi_s01_rdata[31]_i_1_n_0 ),
        .D(\axi_s01_rdata[24]_i_1_n_0 ),
        .Q(\axi_s01_rdata_reg[31]_0 [24]),
        .R(SR));
  FDRE \axi_s01_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\axi_s01_rdata[31]_i_1_n_0 ),
        .D(\axi_s01_rdata[25]_i_1_n_0 ),
        .Q(\axi_s01_rdata_reg[31]_0 [25]),
        .R(SR));
  FDRE \axi_s01_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\axi_s01_rdata[31]_i_1_n_0 ),
        .D(\axi_s01_rdata[26]_i_1_n_0 ),
        .Q(\axi_s01_rdata_reg[31]_0 [26]),
        .R(SR));
  FDRE \axi_s01_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\axi_s01_rdata[31]_i_1_n_0 ),
        .D(\axi_s01_rdata[27]_i_1_n_0 ),
        .Q(\axi_s01_rdata_reg[31]_0 [27]),
        .R(SR));
  FDRE \axi_s01_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\axi_s01_rdata[31]_i_1_n_0 ),
        .D(\axi_s01_rdata[28]_i_1_n_0 ),
        .Q(\axi_s01_rdata_reg[31]_0 [28]),
        .R(SR));
  FDRE \axi_s01_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\axi_s01_rdata[31]_i_1_n_0 ),
        .D(\axi_s01_rdata[29]_i_1_n_0 ),
        .Q(\axi_s01_rdata_reg[31]_0 [29]),
        .R(SR));
  FDRE \axi_s01_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_s01_rdata[31]_i_1_n_0 ),
        .D(\axi_s01_rdata[2]_i_1_n_0 ),
        .Q(\axi_s01_rdata_reg[31]_0 [2]),
        .R(SR));
  FDRE \axi_s01_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\axi_s01_rdata[31]_i_1_n_0 ),
        .D(\axi_s01_rdata[30]_i_1_n_0 ),
        .Q(\axi_s01_rdata_reg[31]_0 [30]),
        .R(SR));
  FDRE \axi_s01_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\axi_s01_rdata[31]_i_1_n_0 ),
        .D(\axi_s01_rdata[31]_i_2_n_0 ),
        .Q(\axi_s01_rdata_reg[31]_0 [31]),
        .R(SR));
  FDRE \axi_s01_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_s01_rdata[31]_i_1_n_0 ),
        .D(\axi_s01_rdata[3]_i_1_n_0 ),
        .Q(\axi_s01_rdata_reg[31]_0 [3]),
        .R(SR));
  FDRE \axi_s01_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi_s01_rdata[31]_i_1_n_0 ),
        .D(\axi_s01_rdata[4]_i_1_n_0 ),
        .Q(\axi_s01_rdata_reg[31]_0 [4]),
        .R(SR));
  FDRE \axi_s01_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi_s01_rdata[31]_i_1_n_0 ),
        .D(\axi_s01_rdata[5]_i_1_n_0 ),
        .Q(\axi_s01_rdata_reg[31]_0 [5]),
        .R(SR));
  FDRE \axi_s01_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\axi_s01_rdata[31]_i_1_n_0 ),
        .D(\axi_s01_rdata[6]_i_1_n_0 ),
        .Q(\axi_s01_rdata_reg[31]_0 [6]),
        .R(SR));
  FDRE \axi_s01_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\axi_s01_rdata[31]_i_1_n_0 ),
        .D(\axi_s01_rdata[7]_i_1_n_0 ),
        .Q(\axi_s01_rdata_reg[31]_0 [7]),
        .R(SR));
  FDRE \axi_s01_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\axi_s01_rdata[31]_i_1_n_0 ),
        .D(\axi_s01_rdata[8]_i_1_n_0 ),
        .Q(\axi_s01_rdata_reg[31]_0 [8]),
        .R(SR));
  FDRE \axi_s01_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\axi_s01_rdata[31]_i_1_n_0 ),
        .D(\axi_s01_rdata[9]_i_1_n_0 ),
        .Q(\axi_s01_rdata_reg[31]_0 [9]),
        .R(SR));
  LUT3 #(
    .INIT(8'hF2)) 
    axi_s01_rvalid_i_1
       (.I0(axi_s01_rvalid_reg_0),
        .I1(s00_axi_rready),
        .I2(\axi_s01_rdata[31]_i_1_n_0 ),
        .O(axi_s01_rvalid_i_1_n_0));
  FDRE axi_s01_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_s01_rvalid_i_1_n_0),
        .Q(axi_s01_rvalid_reg_0),
        .R(SR));
  LUT3 #(
    .INIT(8'h20)) 
    axi_s01_wready_i_1
       (.I0(axi_s01_wready_i_2_n_0),
        .I1(axi_s01_wready_reg_0),
        .I2(aw_s01_en_reg_n_0),
        .O(axi_s01_wready_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    axi_s01_wready_i_2
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(s00_cq_wr_sel),
        .O(axi_s01_wready_i_2_n_0));
  FDRE axi_s01_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_s01_wready_i_1_n_0),
        .Q(axi_s01_wready_reg_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    axi_wready_i_1__0
       (.I0(s01_axi_awvalid),
        .I1(s01_axi_wvalid),
        .I2(s01_cq_wr_sel),
        .I3(aw_en_reg_n_0),
        .I4(axi_wready_reg_0),
        .O(axi_wready_i_1__0_n_0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1__0_n_0),
        .Q(axi_wready_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000100)) 
    irq_on_write_reg_i_1__0
       (.I0(\axi_awaddr_reg_n_0_[3] ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(irq_on_write_reg),
        .I4(\axi_awaddr_reg_n_0_[5] ),
        .I5(irq_on_write_reg_reg_n_0),
        .O(irq_on_write_reg_i_1__0_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    irq_on_write_reg_i_2__0
       (.I0(s01_axi_wstrb[3]),
        .I1(s01_axi_wstrb[1]),
        .I2(s01_axi_wstrb[0]),
        .I3(s01_axi_wstrb[2]),
        .O(irq_on_write_reg));
  FDRE irq_on_write_reg_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(irq_on_write_reg_i_1__0_n_0),
        .Q(irq_on_write_reg_reg_n_0),
        .R(irq_reg_write_i_1__0_n_0));
  LUT5 #(
    .INIT(32'hE2000000)) 
    irq_reg_i_1__0
       (.I0(irq_on_write_reg_reg_n_0),
        .I1(\slv_reg3_reg_n_0_[1] ),
        .I2(\slv_reg1_reg_n_0_[0] ),
        .I3(s00_axi_aresetn),
        .I4(\slv_reg3_reg_n_0_[0] ),
        .O(irq_reg_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA00020000)) 
    irq_reg_read_i_1
       (.I0(\axi_s01_rdata[31]_i_1_n_0 ),
        .I1(\axi_s01_araddr_reg_n_0_[3] ),
        .I2(\axi_s01_araddr_reg_n_0_[5] ),
        .I3(\axi_s01_araddr_reg_n_0_[4] ),
        .I4(\axi_s01_araddr_reg_n_0_[2] ),
        .I5(irq_reg_read_reg_n_0),
        .O(irq_reg_read_i_1_n_0));
  FDRE irq_reg_read_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(irq_reg_read_i_1_n_0),
        .Q(irq_reg_read_reg_n_0),
        .R(SR));
  FDRE irq_reg_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(irq_reg_i_1__0_n_0),
        .Q(irq_cq),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    irq_reg_write_i_1__0
       (.I0(soft_reset_reg),
        .I1(s01_axi_wvalid),
        .I2(s01_cq_wr_sel),
        .I3(axi_awready_reg_0),
        .I4(axi_wready_reg_0),
        .I5(s01_axi_awvalid),
        .O(irq_reg_write_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    irq_reg_write_i_2
       (.I0(\slv_reg3[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(\axi_awaddr_reg_n_0_[5] ),
        .I4(\axi_awaddr_reg_n_0_[3] ),
        .I5(irq_reg_write_reg_n_0),
        .O(irq_reg_write_i_2_n_0));
  FDRE irq_reg_write_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(irq_reg_write_i_2_n_0),
        .Q(irq_reg_write_reg_n_0),
        .R(irq_reg_write_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \slv_reg0[15]_i_1__0 
       (.I0(\slv_reg3[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(s01_axi_wstrb[1]),
        .I3(\axi_awaddr_reg_n_0_[4] ),
        .I4(\axi_awaddr_reg_n_0_[2] ),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\slv_reg0[15]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \slv_reg0[23]_i_1__0 
       (.I0(\slv_reg3[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(s01_axi_wstrb[2]),
        .I3(\axi_awaddr_reg_n_0_[4] ),
        .I4(\axi_awaddr_reg_n_0_[2] ),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\slv_reg0[23]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \slv_reg0[31]_i_1__0 
       (.I0(\slv_reg3[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(s01_axi_wstrb[3]),
        .I3(\axi_awaddr_reg_n_0_[4] ),
        .I4(\axi_awaddr_reg_n_0_[2] ),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\slv_reg0[31]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \slv_reg0[7]_i_1__0 
       (.I0(\slv_reg3[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(s01_axi_wstrb[0]),
        .I3(\axi_awaddr_reg_n_0_[4] ),
        .I4(\axi_awaddr_reg_n_0_[2] ),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\slv_reg0[7]_i_1__0_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1__0_n_0 ),
        .D(s01_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(soft_reset_reg));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1__0_n_0 ),
        .D(s01_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(soft_reset_reg));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1__0_n_0 ),
        .D(s01_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(soft_reset_reg));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1__0_n_0 ),
        .D(s01_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(soft_reset_reg));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1__0_n_0 ),
        .D(s01_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(soft_reset_reg));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1__0_n_0 ),
        .D(s01_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(soft_reset_reg));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1__0_n_0 ),
        .D(s01_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(soft_reset_reg));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1__0_n_0 ),
        .D(s01_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(soft_reset_reg));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1__0_n_0 ),
        .D(s01_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(soft_reset_reg));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1__0_n_0 ),
        .D(s01_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(soft_reset_reg));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1__0_n_0 ),
        .D(s01_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(soft_reset_reg));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1__0_n_0 ),
        .D(s01_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(soft_reset_reg));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1__0_n_0 ),
        .D(s01_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(soft_reset_reg));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1__0_n_0 ),
        .D(s01_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(soft_reset_reg));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1__0_n_0 ),
        .D(s01_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(soft_reset_reg));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1__0_n_0 ),
        .D(s01_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(soft_reset_reg));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1__0_n_0 ),
        .D(s01_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(soft_reset_reg));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1__0_n_0 ),
        .D(s01_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(soft_reset_reg));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1__0_n_0 ),
        .D(s01_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(soft_reset_reg));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1__0_n_0 ),
        .D(s01_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(soft_reset_reg));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1__0_n_0 ),
        .D(s01_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(soft_reset_reg));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1__0_n_0 ),
        .D(s01_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(soft_reset_reg));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1__0_n_0 ),
        .D(s01_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(soft_reset_reg));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1__0_n_0 ),
        .D(s01_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(soft_reset_reg));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1__0_n_0 ),
        .D(s01_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(soft_reset_reg));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1__0_n_0 ),
        .D(s01_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(soft_reset_reg));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1__0_n_0 ),
        .D(s01_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(soft_reset_reg));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1__0_n_0 ),
        .D(s01_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(soft_reset_reg));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1__0_n_0 ),
        .D(s01_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(soft_reset_reg));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1__0_n_0 ),
        .D(s01_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(soft_reset_reg));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1__0_n_0 ),
        .D(s01_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(soft_reset_reg));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1__0_n_0 ),
        .D(s01_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(soft_reset_reg));
  LUT3 #(
    .INIT(8'hF4)) 
    \slv_reg1[0]_i_1 
       (.I0(irq_reg_read_reg_n_0),
        .I1(\slv_reg1_reg_n_0_[0] ),
        .I2(irq_reg_write_reg_n_0),
        .O(\slv_reg1[0]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg1[0]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[0] ),
        .R(soft_reset_reg));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \slv_reg2_high[15]_i_1__0 
       (.I0(\slv_reg3[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(s01_axi_wstrb[1]),
        .I3(\axi_awaddr_reg_n_0_[4] ),
        .I4(\axi_awaddr_reg_n_0_[2] ),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\slv_reg2_high[15]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \slv_reg2_high[23]_i_1__0 
       (.I0(\slv_reg3[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(s01_axi_wstrb[2]),
        .I3(\axi_awaddr_reg_n_0_[4] ),
        .I4(\axi_awaddr_reg_n_0_[2] ),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\slv_reg2_high[23]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \slv_reg2_high[31]_i_1__0 
       (.I0(\slv_reg3[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(s01_axi_wstrb[3]),
        .I3(\axi_awaddr_reg_n_0_[4] ),
        .I4(\axi_awaddr_reg_n_0_[2] ),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\slv_reg2_high[31]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \slv_reg2_high[7]_i_1__0 
       (.I0(\slv_reg3[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(s01_axi_wstrb[0]),
        .I3(\axi_awaddr_reg_n_0_[4] ),
        .I4(\axi_awaddr_reg_n_0_[2] ),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\slv_reg2_high[7]_i_1__0_n_0 ));
  FDRE \slv_reg2_high_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[7]_i_1__0_n_0 ),
        .D(s01_axi_wdata[0]),
        .Q(slv_reg2_high[0]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_high_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[15]_i_1__0_n_0 ),
        .D(s01_axi_wdata[10]),
        .Q(slv_reg2_high[10]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_high_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[15]_i_1__0_n_0 ),
        .D(s01_axi_wdata[11]),
        .Q(slv_reg2_high[11]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_high_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[15]_i_1__0_n_0 ),
        .D(s01_axi_wdata[12]),
        .Q(slv_reg2_high[12]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_high_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[15]_i_1__0_n_0 ),
        .D(s01_axi_wdata[13]),
        .Q(slv_reg2_high[13]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_high_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[15]_i_1__0_n_0 ),
        .D(s01_axi_wdata[14]),
        .Q(slv_reg2_high[14]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_high_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[15]_i_1__0_n_0 ),
        .D(s01_axi_wdata[15]),
        .Q(slv_reg2_high[15]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_high_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[23]_i_1__0_n_0 ),
        .D(s01_axi_wdata[16]),
        .Q(slv_reg2_high[16]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_high_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[23]_i_1__0_n_0 ),
        .D(s01_axi_wdata[17]),
        .Q(slv_reg2_high[17]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_high_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[23]_i_1__0_n_0 ),
        .D(s01_axi_wdata[18]),
        .Q(slv_reg2_high[18]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_high_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[23]_i_1__0_n_0 ),
        .D(s01_axi_wdata[19]),
        .Q(slv_reg2_high[19]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_high_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[7]_i_1__0_n_0 ),
        .D(s01_axi_wdata[1]),
        .Q(slv_reg2_high[1]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_high_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[23]_i_1__0_n_0 ),
        .D(s01_axi_wdata[20]),
        .Q(slv_reg2_high[20]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_high_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[23]_i_1__0_n_0 ),
        .D(s01_axi_wdata[21]),
        .Q(slv_reg2_high[21]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_high_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[23]_i_1__0_n_0 ),
        .D(s01_axi_wdata[22]),
        .Q(slv_reg2_high[22]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_high_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[23]_i_1__0_n_0 ),
        .D(s01_axi_wdata[23]),
        .Q(slv_reg2_high[23]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_high_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[31]_i_1__0_n_0 ),
        .D(s01_axi_wdata[24]),
        .Q(slv_reg2_high[24]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_high_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[31]_i_1__0_n_0 ),
        .D(s01_axi_wdata[25]),
        .Q(slv_reg2_high[25]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_high_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[31]_i_1__0_n_0 ),
        .D(s01_axi_wdata[26]),
        .Q(slv_reg2_high[26]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_high_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[31]_i_1__0_n_0 ),
        .D(s01_axi_wdata[27]),
        .Q(slv_reg2_high[27]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_high_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[31]_i_1__0_n_0 ),
        .D(s01_axi_wdata[28]),
        .Q(slv_reg2_high[28]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_high_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[31]_i_1__0_n_0 ),
        .D(s01_axi_wdata[29]),
        .Q(slv_reg2_high[29]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_high_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[7]_i_1__0_n_0 ),
        .D(s01_axi_wdata[2]),
        .Q(slv_reg2_high[2]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_high_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[31]_i_1__0_n_0 ),
        .D(s01_axi_wdata[30]),
        .Q(slv_reg2_high[30]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_high_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[31]_i_1__0_n_0 ),
        .D(s01_axi_wdata[31]),
        .Q(slv_reg2_high[31]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_high_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[7]_i_1__0_n_0 ),
        .D(s01_axi_wdata[3]),
        .Q(slv_reg2_high[3]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_high_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[7]_i_1__0_n_0 ),
        .D(s01_axi_wdata[4]),
        .Q(slv_reg2_high[4]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_high_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[7]_i_1__0_n_0 ),
        .D(s01_axi_wdata[5]),
        .Q(slv_reg2_high[5]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_high_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[7]_i_1__0_n_0 ),
        .D(s01_axi_wdata[6]),
        .Q(slv_reg2_high[6]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_high_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[7]_i_1__0_n_0 ),
        .D(s01_axi_wdata[7]),
        .Q(slv_reg2_high[7]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_high_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[15]_i_1__0_n_0 ),
        .D(s01_axi_wdata[8]),
        .Q(slv_reg2_high[8]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_high_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[15]_i_1__0_n_0 ),
        .D(s01_axi_wdata[9]),
        .Q(slv_reg2_high[9]),
        .R(soft_reset_reg));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \slv_reg2_low[15]_i_1__0 
       (.I0(\slv_reg3[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .I3(s01_axi_wstrb[1]),
        .I4(\axi_awaddr_reg_n_0_[2] ),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\slv_reg2_low[15]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \slv_reg2_low[23]_i_1__0 
       (.I0(\slv_reg3[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .I3(s01_axi_wstrb[2]),
        .I4(\axi_awaddr_reg_n_0_[2] ),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\slv_reg2_low[23]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \slv_reg2_low[31]_i_1__0 
       (.I0(\slv_reg3[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .I3(s01_axi_wstrb[3]),
        .I4(\axi_awaddr_reg_n_0_[2] ),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\slv_reg2_low[31]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \slv_reg2_low[7]_i_1__0 
       (.I0(\slv_reg3[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .I3(s01_axi_wstrb[0]),
        .I4(\axi_awaddr_reg_n_0_[2] ),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\slv_reg2_low[7]_i_1__0_n_0 ));
  FDRE \slv_reg2_low_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[7]_i_1__0_n_0 ),
        .D(s01_axi_wdata[0]),
        .Q(slv_reg2_low[0]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_low_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[15]_i_1__0_n_0 ),
        .D(s01_axi_wdata[10]),
        .Q(slv_reg2_low[10]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_low_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[15]_i_1__0_n_0 ),
        .D(s01_axi_wdata[11]),
        .Q(slv_reg2_low[11]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_low_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[15]_i_1__0_n_0 ),
        .D(s01_axi_wdata[12]),
        .Q(slv_reg2_low[12]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_low_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[15]_i_1__0_n_0 ),
        .D(s01_axi_wdata[13]),
        .Q(slv_reg2_low[13]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_low_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[15]_i_1__0_n_0 ),
        .D(s01_axi_wdata[14]),
        .Q(slv_reg2_low[14]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_low_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[15]_i_1__0_n_0 ),
        .D(s01_axi_wdata[15]),
        .Q(slv_reg2_low[15]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_low_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[23]_i_1__0_n_0 ),
        .D(s01_axi_wdata[16]),
        .Q(slv_reg2_low[16]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_low_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[23]_i_1__0_n_0 ),
        .D(s01_axi_wdata[17]),
        .Q(slv_reg2_low[17]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_low_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[23]_i_1__0_n_0 ),
        .D(s01_axi_wdata[18]),
        .Q(slv_reg2_low[18]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_low_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[23]_i_1__0_n_0 ),
        .D(s01_axi_wdata[19]),
        .Q(slv_reg2_low[19]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_low_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[7]_i_1__0_n_0 ),
        .D(s01_axi_wdata[1]),
        .Q(slv_reg2_low[1]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_low_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[23]_i_1__0_n_0 ),
        .D(s01_axi_wdata[20]),
        .Q(slv_reg2_low[20]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_low_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[23]_i_1__0_n_0 ),
        .D(s01_axi_wdata[21]),
        .Q(slv_reg2_low[21]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_low_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[23]_i_1__0_n_0 ),
        .D(s01_axi_wdata[22]),
        .Q(slv_reg2_low[22]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_low_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[23]_i_1__0_n_0 ),
        .D(s01_axi_wdata[23]),
        .Q(slv_reg2_low[23]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_low_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[31]_i_1__0_n_0 ),
        .D(s01_axi_wdata[24]),
        .Q(slv_reg2_low[24]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_low_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[31]_i_1__0_n_0 ),
        .D(s01_axi_wdata[25]),
        .Q(slv_reg2_low[25]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_low_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[31]_i_1__0_n_0 ),
        .D(s01_axi_wdata[26]),
        .Q(slv_reg2_low[26]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_low_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[31]_i_1__0_n_0 ),
        .D(s01_axi_wdata[27]),
        .Q(slv_reg2_low[27]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_low_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[31]_i_1__0_n_0 ),
        .D(s01_axi_wdata[28]),
        .Q(slv_reg2_low[28]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_low_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[31]_i_1__0_n_0 ),
        .D(s01_axi_wdata[29]),
        .Q(slv_reg2_low[29]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_low_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[7]_i_1__0_n_0 ),
        .D(s01_axi_wdata[2]),
        .Q(slv_reg2_low[2]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_low_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[31]_i_1__0_n_0 ),
        .D(s01_axi_wdata[30]),
        .Q(slv_reg2_low[30]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_low_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[31]_i_1__0_n_0 ),
        .D(s01_axi_wdata[31]),
        .Q(slv_reg2_low[31]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_low_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[7]_i_1__0_n_0 ),
        .D(s01_axi_wdata[3]),
        .Q(slv_reg2_low[3]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_low_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[7]_i_1__0_n_0 ),
        .D(s01_axi_wdata[4]),
        .Q(slv_reg2_low[4]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_low_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[7]_i_1__0_n_0 ),
        .D(s01_axi_wdata[5]),
        .Q(slv_reg2_low[5]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_low_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[7]_i_1__0_n_0 ),
        .D(s01_axi_wdata[6]),
        .Q(slv_reg2_low[6]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_low_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[7]_i_1__0_n_0 ),
        .D(s01_axi_wdata[7]),
        .Q(slv_reg2_low[7]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_low_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[15]_i_1__0_n_0 ),
        .D(s01_axi_wdata[8]),
        .Q(slv_reg2_low[8]),
        .R(soft_reset_reg));
  FDRE \slv_reg2_low_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[15]_i_1__0_n_0 ),
        .D(s01_axi_wdata[9]),
        .Q(slv_reg2_low[9]),
        .R(soft_reset_reg));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg3[15]_i_1__0 
       (.I0(\slv_reg3[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(s01_axi_wstrb[1]),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .I4(\axi_awaddr_reg_n_0_[3] ),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\slv_reg3[15]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg3[23]_i_1__0 
       (.I0(\slv_reg3[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(s01_axi_wstrb[2]),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .I4(\axi_awaddr_reg_n_0_[3] ),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\slv_reg3[23]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg3[31]_i_1__0 
       (.I0(soft_reset),
        .I1(s00_axi_aresetn),
        .O(soft_reset_reg));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg3[31]_i_2__0 
       (.I0(\slv_reg3[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(s01_axi_wstrb[3]),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .I4(\axi_awaddr_reg_n_0_[3] ),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\slv_reg3[31]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg3[31]_i_3 
       (.I0(s01_axi_awvalid),
        .I1(axi_wready_reg_0),
        .I2(axi_awready_reg_0),
        .I3(s01_cq_wr_sel),
        .I4(s01_axi_wvalid),
        .O(\slv_reg3[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg3[7]_i_1__0 
       (.I0(\slv_reg3[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(s01_axi_wstrb[0]),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .I4(\axi_awaddr_reg_n_0_[3] ),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\slv_reg3[7]_i_1__0_n_0 ));
  FDSE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1__0_n_0 ),
        .D(s01_axi_wdata[0]),
        .Q(\slv_reg3_reg_n_0_[0] ),
        .S(soft_reset_reg));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1__0_n_0 ),
        .D(s01_axi_wdata[10]),
        .Q(\slv_reg3_reg_n_0_[10] ),
        .R(soft_reset_reg));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1__0_n_0 ),
        .D(s01_axi_wdata[11]),
        .Q(\slv_reg3_reg_n_0_[11] ),
        .R(soft_reset_reg));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1__0_n_0 ),
        .D(s01_axi_wdata[12]),
        .Q(\slv_reg3_reg_n_0_[12] ),
        .R(soft_reset_reg));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1__0_n_0 ),
        .D(s01_axi_wdata[13]),
        .Q(\slv_reg3_reg_n_0_[13] ),
        .R(soft_reset_reg));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1__0_n_0 ),
        .D(s01_axi_wdata[14]),
        .Q(\slv_reg3_reg_n_0_[14] ),
        .R(soft_reset_reg));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1__0_n_0 ),
        .D(s01_axi_wdata[15]),
        .Q(\slv_reg3_reg_n_0_[15] ),
        .R(soft_reset_reg));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1__0_n_0 ),
        .D(s01_axi_wdata[16]),
        .Q(\slv_reg3_reg_n_0_[16] ),
        .R(soft_reset_reg));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1__0_n_0 ),
        .D(s01_axi_wdata[17]),
        .Q(\slv_reg3_reg_n_0_[17] ),
        .R(soft_reset_reg));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1__0_n_0 ),
        .D(s01_axi_wdata[18]),
        .Q(\slv_reg3_reg_n_0_[18] ),
        .R(soft_reset_reg));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1__0_n_0 ),
        .D(s01_axi_wdata[19]),
        .Q(\slv_reg3_reg_n_0_[19] ),
        .R(soft_reset_reg));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1__0_n_0 ),
        .D(s01_axi_wdata[1]),
        .Q(\slv_reg3_reg_n_0_[1] ),
        .R(soft_reset_reg));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1__0_n_0 ),
        .D(s01_axi_wdata[20]),
        .Q(\slv_reg3_reg_n_0_[20] ),
        .R(soft_reset_reg));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1__0_n_0 ),
        .D(s01_axi_wdata[21]),
        .Q(\slv_reg3_reg_n_0_[21] ),
        .R(soft_reset_reg));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1__0_n_0 ),
        .D(s01_axi_wdata[22]),
        .Q(\slv_reg3_reg_n_0_[22] ),
        .R(soft_reset_reg));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1__0_n_0 ),
        .D(s01_axi_wdata[23]),
        .Q(\slv_reg3_reg_n_0_[23] ),
        .R(soft_reset_reg));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_2__0_n_0 ),
        .D(s01_axi_wdata[24]),
        .Q(\slv_reg3_reg_n_0_[24] ),
        .R(soft_reset_reg));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_2__0_n_0 ),
        .D(s01_axi_wdata[25]),
        .Q(\slv_reg3_reg_n_0_[25] ),
        .R(soft_reset_reg));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_2__0_n_0 ),
        .D(s01_axi_wdata[26]),
        .Q(\slv_reg3_reg_n_0_[26] ),
        .R(soft_reset_reg));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_2__0_n_0 ),
        .D(s01_axi_wdata[27]),
        .Q(\slv_reg3_reg_n_0_[27] ),
        .R(soft_reset_reg));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_2__0_n_0 ),
        .D(s01_axi_wdata[28]),
        .Q(\slv_reg3_reg_n_0_[28] ),
        .R(soft_reset_reg));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_2__0_n_0 ),
        .D(s01_axi_wdata[29]),
        .Q(\slv_reg3_reg_n_0_[29] ),
        .R(soft_reset_reg));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1__0_n_0 ),
        .D(s01_axi_wdata[2]),
        .Q(\slv_reg3_reg_n_0_[2] ),
        .R(soft_reset_reg));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_2__0_n_0 ),
        .D(s01_axi_wdata[30]),
        .Q(\slv_reg3_reg_n_0_[30] ),
        .R(soft_reset_reg));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_2__0_n_0 ),
        .D(s01_axi_wdata[31]),
        .Q(Q),
        .R(soft_reset_reg));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1__0_n_0 ),
        .D(s01_axi_wdata[3]),
        .Q(\slv_reg3_reg_n_0_[3] ),
        .R(soft_reset_reg));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1__0_n_0 ),
        .D(s01_axi_wdata[4]),
        .Q(\slv_reg3_reg_n_0_[4] ),
        .R(soft_reset_reg));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1__0_n_0 ),
        .D(s01_axi_wdata[5]),
        .Q(\slv_reg3_reg_n_0_[5] ),
        .R(soft_reset_reg));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1__0_n_0 ),
        .D(s01_axi_wdata[6]),
        .Q(\slv_reg3_reg_n_0_[6] ),
        .R(soft_reset_reg));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1__0_n_0 ),
        .D(s01_axi_wdata[7]),
        .Q(\slv_reg3_reg_n_0_[7] ),
        .R(soft_reset_reg));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1__0_n_0 ),
        .D(s01_axi_wdata[8]),
        .Q(\slv_reg3_reg_n_0_[8] ),
        .R(soft_reset_reg));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1__0_n_0 ),
        .D(s01_axi_wdata[9]),
        .Q(\slv_reg3_reg_n_0_[9] ),
        .R(soft_reset_reg));
endmodule

(* ORIG_REF_NAME = "cmd_queue_v1_0_0_S00_AXI" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmd_queue_v1_0_0_S00_AXI_0
   (SR,
    irq_sq,
    \slv_reg3_reg[31]_0 ,
    s00_axi_awready,
    s00_axi_wready,
    s00_axi_bvalid,
    s00_axi_arready,
    s00_axi_rvalid,
    s01_axi_awready,
    s01_axi_wready,
    s01_axi_bvalid,
    s01_axi_arready,
    s01_axi_rvalid,
    s00_axi_rdata,
    s01_axi_rdata,
    s00_axi_aclk,
    \slv_reg3_reg[0]_0 ,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_sq_wr_sel,
    s00_axi_wstrb,
    s00_axi_arvalid,
    s00_sq_rd_sel,
    Q,
    s01_axi_arvalid,
    s01_sq_rd_sel,
    s00_axi_aresetn,
    s00_axi_awready_0,
    s00_axi_wready_0,
    s00_axi_bvalid_0,
    s00_axi_arready_0,
    s00_axi_rvalid_0,
    s01_axi_wvalid,
    s01_axi_awvalid,
    s01_sq_wr_sel,
    s01_axi_awready_0,
    s01_axi_wready_0,
    s01_axi_bvalid_0,
    s01_axi_arready_0,
    s01_axi_rvalid_0,
    \s00_axi_rdata[31] ,
    \s01_axi_rdata[31] ,
    s00_axi_bready,
    s01_axi_rready,
    s01_axi_bready,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_wdata,
    s01_axi_araddr,
    s00_axi_araddr);
  output [0:0]SR;
  output irq_sq;
  output \slv_reg3_reg[31]_0 ;
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_bvalid;
  output s00_axi_arready;
  output s00_axi_rvalid;
  output s01_axi_awready;
  output s01_axi_wready;
  output s01_axi_bvalid;
  output s01_axi_arready;
  output s01_axi_rvalid;
  output [31:0]s00_axi_rdata;
  output [31:0]s01_axi_rdata;
  input s00_axi_aclk;
  input [0:0]\slv_reg3_reg[0]_0 ;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_sq_wr_sel;
  input [3:0]s00_axi_wstrb;
  input s00_axi_arvalid;
  input s00_sq_rd_sel;
  input [0:0]Q;
  input s01_axi_arvalid;
  input s01_sq_rd_sel;
  input s00_axi_aresetn;
  input s00_axi_awready_0;
  input s00_axi_wready_0;
  input s00_axi_bvalid_0;
  input s00_axi_arready_0;
  input s00_axi_rvalid_0;
  input s01_axi_wvalid;
  input s01_axi_awvalid;
  input s01_sq_wr_sel;
  input s01_axi_awready_0;
  input s01_axi_wready_0;
  input s01_axi_bvalid_0;
  input s01_axi_arready_0;
  input s01_axi_rvalid_0;
  input [31:0]\s00_axi_rdata[31] ;
  input [31:0]\s01_axi_rdata[31] ;
  input s00_axi_bready;
  input s01_axi_rready;
  input s01_axi_bready;
  input s00_axi_rready;
  input [3:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [3:0]s01_axi_araddr;
  input [3:0]s00_axi_araddr;

  wire [0:0]Q;
  wire [0:0]SR;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire aw_s01_en_i_1__0_n_0;
  wire aw_s01_en_reg_n_0;
  wire \axi_araddr_reg_n_0_[5] ;
  wire axi_arready;
  wire axi_arready0;
  wire [5:2]axi_awaddr;
  wire axi_awready;
  wire axi_awready0;
  wire axi_bvalid;
  wire axi_bvalid_i_1_n_0;
  wire [31:0]axi_rdata;
  wire \axi_rdata[0]_i_1_n_0 ;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[10]_i_1_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[11]_i_1_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[12]_i_1_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[13]_i_1_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[14]_i_1_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[15]_i_1_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[16]_i_1_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[17]_i_1_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[18]_i_1_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[19]_i_1_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[1]_i_1_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[20]_i_1_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[21]_i_1_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[22]_i_1_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[23]_i_1_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[24]_i_1_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[25]_i_1_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[26]_i_1_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[27]_i_1_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[28]_i_1_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[29]_i_1_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[2]_i_1_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[30]_i_1_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[31]_i_2_n_0 ;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire \axi_rdata[3]_i_1_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[4]_i_1_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[5]_i_1_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[6]_i_1_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[7]_i_1_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[8]_i_1_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[9]_i_1_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire axi_rvalid;
  wire axi_rvalid_i_1_n_0;
  wire [5:2]axi_s01_araddr;
  wire axi_s01_arready;
  wire axi_s01_arready0;
  wire axi_s01_awready;
  wire axi_s01_awready0;
  wire axi_s01_bvalid;
  wire axi_s01_bvalid_i_1__0_n_0;
  wire \axi_s01_rdata[0]_i_1__0_n_0 ;
  wire \axi_s01_rdata[0]_i_2__0_n_0 ;
  wire \axi_s01_rdata[10]_i_1__0_n_0 ;
  wire \axi_s01_rdata[10]_i_2__0_n_0 ;
  wire \axi_s01_rdata[11]_i_1__0_n_0 ;
  wire \axi_s01_rdata[11]_i_2__0_n_0 ;
  wire \axi_s01_rdata[12]_i_1__0_n_0 ;
  wire \axi_s01_rdata[12]_i_2__0_n_0 ;
  wire \axi_s01_rdata[13]_i_1__0_n_0 ;
  wire \axi_s01_rdata[13]_i_2__0_n_0 ;
  wire \axi_s01_rdata[14]_i_1__0_n_0 ;
  wire \axi_s01_rdata[14]_i_2__0_n_0 ;
  wire \axi_s01_rdata[15]_i_1__0_n_0 ;
  wire \axi_s01_rdata[15]_i_2__0_n_0 ;
  wire \axi_s01_rdata[16]_i_1__0_n_0 ;
  wire \axi_s01_rdata[16]_i_2__0_n_0 ;
  wire \axi_s01_rdata[17]_i_1__0_n_0 ;
  wire \axi_s01_rdata[17]_i_2__0_n_0 ;
  wire \axi_s01_rdata[18]_i_1__0_n_0 ;
  wire \axi_s01_rdata[18]_i_2__0_n_0 ;
  wire \axi_s01_rdata[19]_i_1__0_n_0 ;
  wire \axi_s01_rdata[19]_i_2__0_n_0 ;
  wire \axi_s01_rdata[1]_i_1__0_n_0 ;
  wire \axi_s01_rdata[1]_i_2__0_n_0 ;
  wire \axi_s01_rdata[20]_i_1__0_n_0 ;
  wire \axi_s01_rdata[20]_i_2__0_n_0 ;
  wire \axi_s01_rdata[21]_i_1__0_n_0 ;
  wire \axi_s01_rdata[21]_i_2__0_n_0 ;
  wire \axi_s01_rdata[22]_i_1__0_n_0 ;
  wire \axi_s01_rdata[22]_i_2__0_n_0 ;
  wire \axi_s01_rdata[23]_i_1__0_n_0 ;
  wire \axi_s01_rdata[23]_i_2__0_n_0 ;
  wire \axi_s01_rdata[24]_i_1__0_n_0 ;
  wire \axi_s01_rdata[24]_i_2__0_n_0 ;
  wire \axi_s01_rdata[25]_i_1__0_n_0 ;
  wire \axi_s01_rdata[25]_i_2__0_n_0 ;
  wire \axi_s01_rdata[26]_i_1__0_n_0 ;
  wire \axi_s01_rdata[26]_i_2__0_n_0 ;
  wire \axi_s01_rdata[27]_i_1__0_n_0 ;
  wire \axi_s01_rdata[27]_i_2__0_n_0 ;
  wire \axi_s01_rdata[28]_i_1__0_n_0 ;
  wire \axi_s01_rdata[28]_i_2__0_n_0 ;
  wire \axi_s01_rdata[29]_i_1__0_n_0 ;
  wire \axi_s01_rdata[29]_i_2__0_n_0 ;
  wire \axi_s01_rdata[2]_i_1__0_n_0 ;
  wire \axi_s01_rdata[2]_i_2__0_n_0 ;
  wire \axi_s01_rdata[30]_i_1__0_n_0 ;
  wire \axi_s01_rdata[30]_i_2__0_n_0 ;
  wire \axi_s01_rdata[31]_i_2__0_n_0 ;
  wire \axi_s01_rdata[31]_i_3__0_n_0 ;
  wire \axi_s01_rdata[3]_i_1__0_n_0 ;
  wire \axi_s01_rdata[3]_i_2__0_n_0 ;
  wire \axi_s01_rdata[4]_i_1__0_n_0 ;
  wire \axi_s01_rdata[4]_i_2__0_n_0 ;
  wire \axi_s01_rdata[5]_i_1__0_n_0 ;
  wire \axi_s01_rdata[5]_i_2__0_n_0 ;
  wire \axi_s01_rdata[6]_i_1__0_n_0 ;
  wire \axi_s01_rdata[6]_i_2__0_n_0 ;
  wire \axi_s01_rdata[7]_i_1__0_n_0 ;
  wire \axi_s01_rdata[7]_i_2__0_n_0 ;
  wire \axi_s01_rdata[8]_i_1__0_n_0 ;
  wire \axi_s01_rdata[8]_i_2__0_n_0 ;
  wire \axi_s01_rdata[9]_i_1__0_n_0 ;
  wire \axi_s01_rdata[9]_i_2__0_n_0 ;
  wire \axi_s01_rdata_reg_n_0_[0] ;
  wire \axi_s01_rdata_reg_n_0_[10] ;
  wire \axi_s01_rdata_reg_n_0_[11] ;
  wire \axi_s01_rdata_reg_n_0_[12] ;
  wire \axi_s01_rdata_reg_n_0_[13] ;
  wire \axi_s01_rdata_reg_n_0_[14] ;
  wire \axi_s01_rdata_reg_n_0_[15] ;
  wire \axi_s01_rdata_reg_n_0_[16] ;
  wire \axi_s01_rdata_reg_n_0_[17] ;
  wire \axi_s01_rdata_reg_n_0_[18] ;
  wire \axi_s01_rdata_reg_n_0_[19] ;
  wire \axi_s01_rdata_reg_n_0_[1] ;
  wire \axi_s01_rdata_reg_n_0_[20] ;
  wire \axi_s01_rdata_reg_n_0_[21] ;
  wire \axi_s01_rdata_reg_n_0_[22] ;
  wire \axi_s01_rdata_reg_n_0_[23] ;
  wire \axi_s01_rdata_reg_n_0_[24] ;
  wire \axi_s01_rdata_reg_n_0_[25] ;
  wire \axi_s01_rdata_reg_n_0_[26] ;
  wire \axi_s01_rdata_reg_n_0_[27] ;
  wire \axi_s01_rdata_reg_n_0_[28] ;
  wire \axi_s01_rdata_reg_n_0_[29] ;
  wire \axi_s01_rdata_reg_n_0_[2] ;
  wire \axi_s01_rdata_reg_n_0_[30] ;
  wire \axi_s01_rdata_reg_n_0_[31] ;
  wire \axi_s01_rdata_reg_n_0_[3] ;
  wire \axi_s01_rdata_reg_n_0_[4] ;
  wire \axi_s01_rdata_reg_n_0_[5] ;
  wire \axi_s01_rdata_reg_n_0_[6] ;
  wire \axi_s01_rdata_reg_n_0_[7] ;
  wire \axi_s01_rdata_reg_n_0_[8] ;
  wire \axi_s01_rdata_reg_n_0_[9] ;
  wire axi_s01_rvalid;
  wire axi_s01_rvalid_i_1__0_n_0;
  wire axi_s01_wready;
  wire axi_s01_wready0;
  wire axi_s01_wready_i_2__0_n_0;
  wire axi_wready;
  wire axi_wready0;
  wire irq_on_write_reg;
  wire irq_on_write_reg_0;
  wire irq_on_write_reg_i_1_n_0;
  wire irq_reg_i_1_n_0;
  wire irq_reg_read_i_1__0_n_0;
  wire irq_reg_read_reg_n_0;
  wire irq_reg_write_i_1_n_0;
  wire irq_reg_write_i_2__0_n_0;
  wire irq_reg_write_reg_n_0;
  wire irq_sq;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arready_0;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awready_0;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire s00_axi_bvalid_0;
  wire [31:0]s00_axi_rdata;
  wire [31:0]\s00_axi_rdata[31] ;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire s00_axi_rvalid_0;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire s00_axi_wready_0;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire s00_sq_rd_sel;
  wire s00_sq_wr_sel;
  wire [3:0]s01_axi_araddr;
  wire s01_axi_arready;
  wire s01_axi_arready_0;
  wire s01_axi_arvalid;
  wire s01_axi_awready;
  wire s01_axi_awready_0;
  wire s01_axi_awvalid;
  wire s01_axi_bready;
  wire s01_axi_bvalid;
  wire s01_axi_bvalid_0;
  wire [31:0]s01_axi_rdata;
  wire [31:0]\s01_axi_rdata[31] ;
  wire s01_axi_rready;
  wire s01_axi_rvalid;
  wire s01_axi_rvalid_0;
  wire s01_axi_wready;
  wire s01_axi_wready_0;
  wire s01_axi_wvalid;
  wire s01_sq_rd_sel;
  wire s01_sq_wr_sel;
  wire [2:0]sel0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg0_reg_n_0_[0] ;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[1] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg0_reg_n_0_[8] ;
  wire \slv_reg0_reg_n_0_[9] ;
  wire \slv_reg1[0]_i_1__0_n_0 ;
  wire \slv_reg1_reg_n_0_[0] ;
  wire \slv_reg2_high[15]_i_1_n_0 ;
  wire \slv_reg2_high[23]_i_1_n_0 ;
  wire \slv_reg2_high[31]_i_1_n_0 ;
  wire \slv_reg2_high[7]_i_1_n_0 ;
  wire \slv_reg2_high_reg_n_0_[0] ;
  wire \slv_reg2_high_reg_n_0_[10] ;
  wire \slv_reg2_high_reg_n_0_[11] ;
  wire \slv_reg2_high_reg_n_0_[12] ;
  wire \slv_reg2_high_reg_n_0_[13] ;
  wire \slv_reg2_high_reg_n_0_[14] ;
  wire \slv_reg2_high_reg_n_0_[15] ;
  wire \slv_reg2_high_reg_n_0_[16] ;
  wire \slv_reg2_high_reg_n_0_[17] ;
  wire \slv_reg2_high_reg_n_0_[18] ;
  wire \slv_reg2_high_reg_n_0_[19] ;
  wire \slv_reg2_high_reg_n_0_[1] ;
  wire \slv_reg2_high_reg_n_0_[20] ;
  wire \slv_reg2_high_reg_n_0_[21] ;
  wire \slv_reg2_high_reg_n_0_[22] ;
  wire \slv_reg2_high_reg_n_0_[23] ;
  wire \slv_reg2_high_reg_n_0_[24] ;
  wire \slv_reg2_high_reg_n_0_[25] ;
  wire \slv_reg2_high_reg_n_0_[26] ;
  wire \slv_reg2_high_reg_n_0_[27] ;
  wire \slv_reg2_high_reg_n_0_[28] ;
  wire \slv_reg2_high_reg_n_0_[29] ;
  wire \slv_reg2_high_reg_n_0_[2] ;
  wire \slv_reg2_high_reg_n_0_[30] ;
  wire \slv_reg2_high_reg_n_0_[31] ;
  wire \slv_reg2_high_reg_n_0_[3] ;
  wire \slv_reg2_high_reg_n_0_[4] ;
  wire \slv_reg2_high_reg_n_0_[5] ;
  wire \slv_reg2_high_reg_n_0_[6] ;
  wire \slv_reg2_high_reg_n_0_[7] ;
  wire \slv_reg2_high_reg_n_0_[8] ;
  wire \slv_reg2_high_reg_n_0_[9] ;
  wire \slv_reg2_low[15]_i_1_n_0 ;
  wire \slv_reg2_low[23]_i_1_n_0 ;
  wire \slv_reg2_low[31]_i_1_n_0 ;
  wire \slv_reg2_low[7]_i_1_n_0 ;
  wire \slv_reg2_low_reg_n_0_[0] ;
  wire \slv_reg2_low_reg_n_0_[10] ;
  wire \slv_reg2_low_reg_n_0_[11] ;
  wire \slv_reg2_low_reg_n_0_[12] ;
  wire \slv_reg2_low_reg_n_0_[13] ;
  wire \slv_reg2_low_reg_n_0_[14] ;
  wire \slv_reg2_low_reg_n_0_[15] ;
  wire \slv_reg2_low_reg_n_0_[16] ;
  wire \slv_reg2_low_reg_n_0_[17] ;
  wire \slv_reg2_low_reg_n_0_[18] ;
  wire \slv_reg2_low_reg_n_0_[19] ;
  wire \slv_reg2_low_reg_n_0_[1] ;
  wire \slv_reg2_low_reg_n_0_[20] ;
  wire \slv_reg2_low_reg_n_0_[21] ;
  wire \slv_reg2_low_reg_n_0_[22] ;
  wire \slv_reg2_low_reg_n_0_[23] ;
  wire \slv_reg2_low_reg_n_0_[24] ;
  wire \slv_reg2_low_reg_n_0_[25] ;
  wire \slv_reg2_low_reg_n_0_[26] ;
  wire \slv_reg2_low_reg_n_0_[27] ;
  wire \slv_reg2_low_reg_n_0_[28] ;
  wire \slv_reg2_low_reg_n_0_[29] ;
  wire \slv_reg2_low_reg_n_0_[2] ;
  wire \slv_reg2_low_reg_n_0_[30] ;
  wire \slv_reg2_low_reg_n_0_[31] ;
  wire \slv_reg2_low_reg_n_0_[3] ;
  wire \slv_reg2_low_reg_n_0_[4] ;
  wire \slv_reg2_low_reg_n_0_[5] ;
  wire \slv_reg2_low_reg_n_0_[6] ;
  wire \slv_reg2_low_reg_n_0_[7] ;
  wire \slv_reg2_low_reg_n_0_[8] ;
  wire \slv_reg2_low_reg_n_0_[9] ;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire [0:0]\slv_reg3_reg[0]_0 ;
  wire \slv_reg3_reg[31]_0 ;
  wire \slv_reg3_reg_n_0_[0] ;
  wire \slv_reg3_reg_n_0_[10] ;
  wire \slv_reg3_reg_n_0_[11] ;
  wire \slv_reg3_reg_n_0_[12] ;
  wire \slv_reg3_reg_n_0_[13] ;
  wire \slv_reg3_reg_n_0_[14] ;
  wire \slv_reg3_reg_n_0_[15] ;
  wire \slv_reg3_reg_n_0_[16] ;
  wire \slv_reg3_reg_n_0_[17] ;
  wire \slv_reg3_reg_n_0_[18] ;
  wire \slv_reg3_reg_n_0_[19] ;
  wire \slv_reg3_reg_n_0_[1] ;
  wire \slv_reg3_reg_n_0_[20] ;
  wire \slv_reg3_reg_n_0_[21] ;
  wire \slv_reg3_reg_n_0_[22] ;
  wire \slv_reg3_reg_n_0_[23] ;
  wire \slv_reg3_reg_n_0_[24] ;
  wire \slv_reg3_reg_n_0_[25] ;
  wire \slv_reg3_reg_n_0_[26] ;
  wire \slv_reg3_reg_n_0_[27] ;
  wire \slv_reg3_reg_n_0_[28] ;
  wire \slv_reg3_reg_n_0_[29] ;
  wire \slv_reg3_reg_n_0_[2] ;
  wire \slv_reg3_reg_n_0_[30] ;
  wire \slv_reg3_reg_n_0_[31] ;
  wire \slv_reg3_reg_n_0_[3] ;
  wire \slv_reg3_reg_n_0_[4] ;
  wire \slv_reg3_reg_n_0_[5] ;
  wire \slv_reg3_reg_n_0_[6] ;
  wire \slv_reg3_reg_n_0_[7] ;
  wire \slv_reg3_reg_n_0_[8] ;
  wire \slv_reg3_reg_n_0_[9] ;
  wire slv_reg_rden;
  wire slv_reg_s01_rden;
  wire slv_reg_wren;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0F08)) 
    aw_en_i_1
       (.I0(s00_axi_bready),
        .I1(axi_bvalid),
        .I2(axi_awready0),
        .I3(aw_en_reg_n_0),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(SR));
  LUT5 #(
    .INIT(32'hDFD0D0D0)) 
    aw_s01_en_i_1__0
       (.I0(axi_s01_wready_i_2__0_n_0),
        .I1(axi_s01_awready),
        .I2(aw_s01_en_reg_n_0),
        .I3(s01_axi_bready),
        .I4(axi_s01_bvalid),
        .O(aw_s01_en_i_1__0_n_0));
  FDSE aw_s01_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_s01_en_i_1__0_n_0),
        .Q(aw_s01_en_reg_n_0),
        .S(SR));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[0]),
        .Q(sel0[0]),
        .R(SR));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[1]),
        .Q(sel0[1]),
        .R(SR));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[2]),
        .Q(sel0[2]),
        .R(SR));
  FDRE \axi_araddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[3]),
        .Q(\axi_araddr_reg_n_0_[5] ),
        .R(SR));
  LUT3 #(
    .INIT(8'h08)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_sq_rd_sel),
        .I2(axi_arready),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready),
        .R(SR));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[0]),
        .Q(axi_awaddr[2]),
        .R(SR));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[1]),
        .Q(axi_awaddr[3]),
        .R(SR));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[2]),
        .Q(axi_awaddr[4]),
        .R(SR));
  FDRE \axi_awaddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[3]),
        .Q(axi_awaddr[5]),
        .R(SR));
  LUT5 #(
    .INIT(32'h00008000)) 
    axi_awready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(s00_sq_wr_sel),
        .I3(aw_en_reg_n_0),
        .I4(axi_awready),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready),
        .R(SR));
  LUT3 #(
    .INIT(8'h74)) 
    axi_bvalid_i_1
       (.I0(s00_axi_bready),
        .I1(axi_bvalid),
        .I2(slv_reg_wren),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(axi_bvalid),
        .R(SR));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_rdata[0]_i_1 
       (.I0(sel0[0]),
        .I1(\slv_reg2_high_reg_n_0_[0] ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[0]_i_2_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_2 
       (.I0(\slv_reg3_reg_n_0_[0] ),
        .I1(\slv_reg2_low_reg_n_0_[0] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[0] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[0] ),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[10]_i_1 
       (.I0(sel0[0]),
        .I1(\slv_reg2_high_reg_n_0_[10] ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[10]_i_2_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[10]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(\slv_reg0_reg_n_0_[10] ),
        .I3(sel0[1]),
        .I4(\slv_reg2_low_reg_n_0_[10] ),
        .I5(\slv_reg3_reg_n_0_[10] ),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[11]_i_1 
       (.I0(sel0[0]),
        .I1(\slv_reg2_high_reg_n_0_[11] ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[11]_i_2_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[11]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(\slv_reg0_reg_n_0_[11] ),
        .I3(sel0[1]),
        .I4(\slv_reg2_low_reg_n_0_[11] ),
        .I5(\slv_reg3_reg_n_0_[11] ),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[12]_i_1 
       (.I0(sel0[0]),
        .I1(\slv_reg2_high_reg_n_0_[12] ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[12]_i_2_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[12]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(\slv_reg0_reg_n_0_[12] ),
        .I3(sel0[1]),
        .I4(\slv_reg2_low_reg_n_0_[12] ),
        .I5(\slv_reg3_reg_n_0_[12] ),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[13]_i_1 
       (.I0(sel0[0]),
        .I1(\slv_reg2_high_reg_n_0_[13] ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[13]_i_2_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[13]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(\slv_reg0_reg_n_0_[13] ),
        .I3(sel0[1]),
        .I4(\slv_reg2_low_reg_n_0_[13] ),
        .I5(\slv_reg3_reg_n_0_[13] ),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[14]_i_1 
       (.I0(sel0[0]),
        .I1(\slv_reg2_high_reg_n_0_[14] ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[14]_i_2_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[14]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(\slv_reg0_reg_n_0_[14] ),
        .I3(sel0[1]),
        .I4(\slv_reg2_low_reg_n_0_[14] ),
        .I5(\slv_reg3_reg_n_0_[14] ),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[15]_i_1 
       (.I0(sel0[0]),
        .I1(\slv_reg2_high_reg_n_0_[15] ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[15]_i_2_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[15]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(\slv_reg0_reg_n_0_[15] ),
        .I3(sel0[1]),
        .I4(\slv_reg2_low_reg_n_0_[15] ),
        .I5(\slv_reg3_reg_n_0_[15] ),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[16]_i_1 
       (.I0(sel0[0]),
        .I1(\slv_reg2_high_reg_n_0_[16] ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[16]_i_2_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[16]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(\slv_reg0_reg_n_0_[16] ),
        .I3(sel0[1]),
        .I4(\slv_reg2_low_reg_n_0_[16] ),
        .I5(\slv_reg3_reg_n_0_[16] ),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[17]_i_1 
       (.I0(sel0[0]),
        .I1(\slv_reg2_high_reg_n_0_[17] ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[17]_i_2_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[17]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(\slv_reg0_reg_n_0_[17] ),
        .I3(sel0[1]),
        .I4(\slv_reg2_low_reg_n_0_[17] ),
        .I5(\slv_reg3_reg_n_0_[17] ),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[18]_i_1 
       (.I0(sel0[0]),
        .I1(\slv_reg2_high_reg_n_0_[18] ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[18]_i_2_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[18]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(\slv_reg0_reg_n_0_[18] ),
        .I3(sel0[1]),
        .I4(\slv_reg2_low_reg_n_0_[18] ),
        .I5(\slv_reg3_reg_n_0_[18] ),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[19]_i_1 
       (.I0(sel0[0]),
        .I1(\slv_reg2_high_reg_n_0_[19] ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[19]_i_2_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[19]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(\slv_reg0_reg_n_0_[19] ),
        .I3(sel0[1]),
        .I4(\slv_reg2_low_reg_n_0_[19] ),
        .I5(\slv_reg3_reg_n_0_[19] ),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[1]_i_1 
       (.I0(sel0[0]),
        .I1(\slv_reg2_high_reg_n_0_[1] ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[1]_i_2_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[1]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(\slv_reg0_reg_n_0_[1] ),
        .I3(sel0[1]),
        .I4(\slv_reg2_low_reg_n_0_[1] ),
        .I5(\slv_reg3_reg_n_0_[1] ),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[20]_i_1 
       (.I0(sel0[0]),
        .I1(\slv_reg2_high_reg_n_0_[20] ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[20]_i_2_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[20]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(\slv_reg0_reg_n_0_[20] ),
        .I3(sel0[1]),
        .I4(\slv_reg2_low_reg_n_0_[20] ),
        .I5(\slv_reg3_reg_n_0_[20] ),
        .O(\axi_rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[21]_i_1 
       (.I0(sel0[0]),
        .I1(\slv_reg2_high_reg_n_0_[21] ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[21]_i_2_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[21]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(\slv_reg0_reg_n_0_[21] ),
        .I3(sel0[1]),
        .I4(\slv_reg2_low_reg_n_0_[21] ),
        .I5(\slv_reg3_reg_n_0_[21] ),
        .O(\axi_rdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[22]_i_1 
       (.I0(sel0[0]),
        .I1(\slv_reg2_high_reg_n_0_[22] ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[22]_i_2_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[22]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(\slv_reg0_reg_n_0_[22] ),
        .I3(sel0[1]),
        .I4(\slv_reg2_low_reg_n_0_[22] ),
        .I5(\slv_reg3_reg_n_0_[22] ),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[23]_i_1 
       (.I0(sel0[0]),
        .I1(\slv_reg2_high_reg_n_0_[23] ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[23]_i_2_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[23]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(\slv_reg0_reg_n_0_[23] ),
        .I3(sel0[1]),
        .I4(\slv_reg2_low_reg_n_0_[23] ),
        .I5(\slv_reg3_reg_n_0_[23] ),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[24]_i_1 
       (.I0(sel0[0]),
        .I1(\slv_reg2_high_reg_n_0_[24] ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[24]_i_2_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[24]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(\slv_reg0_reg_n_0_[24] ),
        .I3(sel0[1]),
        .I4(\slv_reg2_low_reg_n_0_[24] ),
        .I5(\slv_reg3_reg_n_0_[24] ),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[25]_i_1 
       (.I0(sel0[0]),
        .I1(\slv_reg2_high_reg_n_0_[25] ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[25]_i_2_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[25]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(\slv_reg0_reg_n_0_[25] ),
        .I3(sel0[1]),
        .I4(\slv_reg2_low_reg_n_0_[25] ),
        .I5(\slv_reg3_reg_n_0_[25] ),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[26]_i_1 
       (.I0(sel0[0]),
        .I1(\slv_reg2_high_reg_n_0_[26] ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[26]_i_2_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[26]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(\slv_reg0_reg_n_0_[26] ),
        .I3(sel0[1]),
        .I4(\slv_reg2_low_reg_n_0_[26] ),
        .I5(\slv_reg3_reg_n_0_[26] ),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[27]_i_1 
       (.I0(sel0[0]),
        .I1(\slv_reg2_high_reg_n_0_[27] ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[27]_i_2_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[27]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(\slv_reg0_reg_n_0_[27] ),
        .I3(sel0[1]),
        .I4(\slv_reg2_low_reg_n_0_[27] ),
        .I5(\slv_reg3_reg_n_0_[27] ),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[28]_i_1 
       (.I0(sel0[0]),
        .I1(\slv_reg2_high_reg_n_0_[28] ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[28]_i_2_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[28]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(\slv_reg0_reg_n_0_[28] ),
        .I3(sel0[1]),
        .I4(\slv_reg2_low_reg_n_0_[28] ),
        .I5(\slv_reg3_reg_n_0_[28] ),
        .O(\axi_rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[29]_i_1 
       (.I0(sel0[0]),
        .I1(\slv_reg2_high_reg_n_0_[29] ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[29]_i_2_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[29]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(\slv_reg0_reg_n_0_[29] ),
        .I3(sel0[1]),
        .I4(\slv_reg2_low_reg_n_0_[29] ),
        .I5(\slv_reg3_reg_n_0_[29] ),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[2]_i_1 
       (.I0(sel0[0]),
        .I1(\slv_reg2_high_reg_n_0_[2] ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[2]_i_2_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[2]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(\slv_reg0_reg_n_0_[2] ),
        .I3(sel0[1]),
        .I4(\slv_reg2_low_reg_n_0_[2] ),
        .I5(\slv_reg3_reg_n_0_[2] ),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[30]_i_1 
       (.I0(sel0[0]),
        .I1(\slv_reg2_high_reg_n_0_[30] ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[30]_i_2_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[30]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(\slv_reg0_reg_n_0_[30] ),
        .I3(sel0[1]),
        .I4(\slv_reg2_low_reg_n_0_[30] ),
        .I5(\slv_reg3_reg_n_0_[30] ),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \axi_rdata[31]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(s00_sq_rd_sel),
        .I2(axi_rvalid),
        .I3(axi_arready),
        .O(slv_reg_rden));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[31]_i_2 
       (.I0(sel0[0]),
        .I1(\slv_reg2_high_reg_n_0_[31] ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[31]_i_3_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[31]_i_3 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(\slv_reg0_reg_n_0_[31] ),
        .I3(sel0[1]),
        .I4(\slv_reg2_low_reg_n_0_[31] ),
        .I5(\slv_reg3_reg_n_0_[31] ),
        .O(\axi_rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[3]_i_1 
       (.I0(sel0[0]),
        .I1(\slv_reg2_high_reg_n_0_[3] ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[3]_i_2_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[3]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(\slv_reg0_reg_n_0_[3] ),
        .I3(sel0[1]),
        .I4(\slv_reg2_low_reg_n_0_[3] ),
        .I5(\slv_reg3_reg_n_0_[3] ),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[4]_i_1 
       (.I0(sel0[0]),
        .I1(\slv_reg2_high_reg_n_0_[4] ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[4]_i_2_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[4]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(\slv_reg0_reg_n_0_[4] ),
        .I3(sel0[1]),
        .I4(\slv_reg2_low_reg_n_0_[4] ),
        .I5(\slv_reg3_reg_n_0_[4] ),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[5]_i_1 
       (.I0(sel0[0]),
        .I1(\slv_reg2_high_reg_n_0_[5] ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[5]_i_2_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[5]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(\slv_reg0_reg_n_0_[5] ),
        .I3(sel0[1]),
        .I4(\slv_reg2_low_reg_n_0_[5] ),
        .I5(\slv_reg3_reg_n_0_[5] ),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[6]_i_1 
       (.I0(sel0[0]),
        .I1(\slv_reg2_high_reg_n_0_[6] ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[6]_i_2_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[6]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(\slv_reg0_reg_n_0_[6] ),
        .I3(sel0[1]),
        .I4(\slv_reg2_low_reg_n_0_[6] ),
        .I5(\slv_reg3_reg_n_0_[6] ),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[7]_i_1 
       (.I0(sel0[0]),
        .I1(\slv_reg2_high_reg_n_0_[7] ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[7]_i_2_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[7]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(\slv_reg0_reg_n_0_[7] ),
        .I3(sel0[1]),
        .I4(\slv_reg2_low_reg_n_0_[7] ),
        .I5(\slv_reg3_reg_n_0_[7] ),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[8]_i_1 
       (.I0(sel0[0]),
        .I1(\slv_reg2_high_reg_n_0_[8] ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[8]_i_2_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[8]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(\slv_reg0_reg_n_0_[8] ),
        .I3(sel0[1]),
        .I4(\slv_reg2_low_reg_n_0_[8] ),
        .I5(\slv_reg3_reg_n_0_[8] ),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_rdata[9]_i_1 
       (.I0(sel0[0]),
        .I1(\slv_reg2_high_reg_n_0_[9] ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[9]_i_2_n_0 ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_rdata[9]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(\slv_reg0_reg_n_0_[9] ),
        .I3(sel0[1]),
        .I4(\slv_reg2_low_reg_n_0_[9] ),
        .I5(\slv_reg3_reg_n_0_[9] ),
        .O(\axi_rdata[9]_i_2_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[0]_i_1_n_0 ),
        .Q(axi_rdata[0]),
        .R(SR));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[10]_i_1_n_0 ),
        .Q(axi_rdata[10]),
        .R(SR));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[11]_i_1_n_0 ),
        .Q(axi_rdata[11]),
        .R(SR));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[12]_i_1_n_0 ),
        .Q(axi_rdata[12]),
        .R(SR));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[13]_i_1_n_0 ),
        .Q(axi_rdata[13]),
        .R(SR));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[14]_i_1_n_0 ),
        .Q(axi_rdata[14]),
        .R(SR));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[15]_i_1_n_0 ),
        .Q(axi_rdata[15]),
        .R(SR));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[16]_i_1_n_0 ),
        .Q(axi_rdata[16]),
        .R(SR));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[17]_i_1_n_0 ),
        .Q(axi_rdata[17]),
        .R(SR));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[18]_i_1_n_0 ),
        .Q(axi_rdata[18]),
        .R(SR));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[19]_i_1_n_0 ),
        .Q(axi_rdata[19]),
        .R(SR));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[1]_i_1_n_0 ),
        .Q(axi_rdata[1]),
        .R(SR));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[20]_i_1_n_0 ),
        .Q(axi_rdata[20]),
        .R(SR));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[21]_i_1_n_0 ),
        .Q(axi_rdata[21]),
        .R(SR));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[22]_i_1_n_0 ),
        .Q(axi_rdata[22]),
        .R(SR));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[23]_i_1_n_0 ),
        .Q(axi_rdata[23]),
        .R(SR));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[24]_i_1_n_0 ),
        .Q(axi_rdata[24]),
        .R(SR));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[25]_i_1_n_0 ),
        .Q(axi_rdata[25]),
        .R(SR));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[26]_i_1_n_0 ),
        .Q(axi_rdata[26]),
        .R(SR));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[27]_i_1_n_0 ),
        .Q(axi_rdata[27]),
        .R(SR));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[28]_i_1_n_0 ),
        .Q(axi_rdata[28]),
        .R(SR));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[29]_i_1_n_0 ),
        .Q(axi_rdata[29]),
        .R(SR));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[2]_i_1_n_0 ),
        .Q(axi_rdata[2]),
        .R(SR));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[30]_i_1_n_0 ),
        .Q(axi_rdata[30]),
        .R(SR));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[31]_i_2_n_0 ),
        .Q(axi_rdata[31]),
        .R(SR));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[3]_i_1_n_0 ),
        .Q(axi_rdata[3]),
        .R(SR));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[4]_i_1_n_0 ),
        .Q(axi_rdata[4]),
        .R(SR));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[5]_i_1_n_0 ),
        .Q(axi_rdata[5]),
        .R(SR));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[6]_i_1_n_0 ),
        .Q(axi_rdata[6]),
        .R(SR));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[7]_i_1_n_0 ),
        .Q(axi_rdata[7]),
        .R(SR));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[8]_i_1_n_0 ),
        .Q(axi_rdata[8]),
        .R(SR));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[9]_i_1_n_0 ),
        .Q(axi_rdata[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0800F8F0)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_sq_rd_sel),
        .I2(axi_rvalid),
        .I3(axi_arready),
        .I4(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid),
        .R(SR));
  FDRE \axi_s01_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_s01_arready0),
        .D(s01_axi_araddr[0]),
        .Q(axi_s01_araddr[2]),
        .R(SR));
  FDRE \axi_s01_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_s01_arready0),
        .D(s01_axi_araddr[1]),
        .Q(axi_s01_araddr[3]),
        .R(SR));
  FDRE \axi_s01_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_s01_arready0),
        .D(s01_axi_araddr[2]),
        .Q(axi_s01_araddr[4]),
        .R(SR));
  FDRE \axi_s01_araddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_s01_arready0),
        .D(s01_axi_araddr[3]),
        .Q(axi_s01_araddr[5]),
        .R(SR));
  LUT3 #(
    .INIT(8'h08)) 
    axi_s01_arready_i_1__0
       (.I0(s01_axi_arvalid),
        .I1(s01_sq_rd_sel),
        .I2(axi_s01_arready),
        .O(axi_s01_arready0));
  FDRE axi_s01_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_s01_arready0),
        .Q(axi_s01_arready),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h20)) 
    axi_s01_awready_i_1__0
       (.I0(axi_s01_wready_i_2__0_n_0),
        .I1(axi_s01_awready),
        .I2(aw_s01_en_reg_n_0),
        .O(axi_s01_awready0));
  FDRE axi_s01_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_s01_awready0),
        .Q(axi_s01_awready),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h74444444)) 
    axi_s01_bvalid_i_1__0
       (.I0(s01_axi_bready),
        .I1(axi_s01_bvalid),
        .I2(axi_s01_awready),
        .I3(axi_s01_wready_i_2__0_n_0),
        .I4(axi_s01_wready),
        .O(axi_s01_bvalid_i_1__0_n_0));
  FDRE axi_s01_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_s01_bvalid_i_1__0_n_0),
        .Q(axi_s01_bvalid),
        .R(SR));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_s01_rdata[0]_i_1__0 
       (.I0(axi_s01_araddr[2]),
        .I1(\slv_reg2_high_reg_n_0_[0] ),
        .I2(axi_s01_araddr[4]),
        .I3(axi_s01_araddr[3]),
        .I4(\axi_s01_rdata[0]_i_2__0_n_0 ),
        .I5(axi_s01_araddr[5]),
        .O(\axi_s01_rdata[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_s01_rdata[0]_i_2__0 
       (.I0(\slv_reg3_reg_n_0_[0] ),
        .I1(\slv_reg2_low_reg_n_0_[0] ),
        .I2(axi_s01_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[0] ),
        .I4(axi_s01_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[0] ),
        .O(\axi_s01_rdata[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[10]_i_1__0 
       (.I0(axi_s01_araddr[2]),
        .I1(\slv_reg2_high_reg_n_0_[10] ),
        .I2(axi_s01_araddr[4]),
        .I3(axi_s01_araddr[3]),
        .I4(\axi_s01_rdata[10]_i_2__0_n_0 ),
        .I5(axi_s01_araddr[5]),
        .O(\axi_s01_rdata[10]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[10]_i_2__0 
       (.I0(axi_s01_araddr[4]),
        .I1(axi_s01_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[10] ),
        .I3(axi_s01_araddr[3]),
        .I4(\slv_reg2_low_reg_n_0_[10] ),
        .I5(\slv_reg3_reg_n_0_[10] ),
        .O(\axi_s01_rdata[10]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[11]_i_1__0 
       (.I0(axi_s01_araddr[2]),
        .I1(\slv_reg2_high_reg_n_0_[11] ),
        .I2(axi_s01_araddr[4]),
        .I3(axi_s01_araddr[3]),
        .I4(\axi_s01_rdata[11]_i_2__0_n_0 ),
        .I5(axi_s01_araddr[5]),
        .O(\axi_s01_rdata[11]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[11]_i_2__0 
       (.I0(axi_s01_araddr[4]),
        .I1(axi_s01_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[11] ),
        .I3(axi_s01_araddr[3]),
        .I4(\slv_reg2_low_reg_n_0_[11] ),
        .I5(\slv_reg3_reg_n_0_[11] ),
        .O(\axi_s01_rdata[11]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[12]_i_1__0 
       (.I0(axi_s01_araddr[2]),
        .I1(\slv_reg2_high_reg_n_0_[12] ),
        .I2(axi_s01_araddr[4]),
        .I3(axi_s01_araddr[3]),
        .I4(\axi_s01_rdata[12]_i_2__0_n_0 ),
        .I5(axi_s01_araddr[5]),
        .O(\axi_s01_rdata[12]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[12]_i_2__0 
       (.I0(axi_s01_araddr[4]),
        .I1(axi_s01_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[12] ),
        .I3(axi_s01_araddr[3]),
        .I4(\slv_reg2_low_reg_n_0_[12] ),
        .I5(\slv_reg3_reg_n_0_[12] ),
        .O(\axi_s01_rdata[12]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[13]_i_1__0 
       (.I0(axi_s01_araddr[2]),
        .I1(\slv_reg2_high_reg_n_0_[13] ),
        .I2(axi_s01_araddr[4]),
        .I3(axi_s01_araddr[3]),
        .I4(\axi_s01_rdata[13]_i_2__0_n_0 ),
        .I5(axi_s01_araddr[5]),
        .O(\axi_s01_rdata[13]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[13]_i_2__0 
       (.I0(axi_s01_araddr[4]),
        .I1(axi_s01_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[13] ),
        .I3(axi_s01_araddr[3]),
        .I4(\slv_reg2_low_reg_n_0_[13] ),
        .I5(\slv_reg3_reg_n_0_[13] ),
        .O(\axi_s01_rdata[13]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[14]_i_1__0 
       (.I0(axi_s01_araddr[2]),
        .I1(\slv_reg2_high_reg_n_0_[14] ),
        .I2(axi_s01_araddr[4]),
        .I3(axi_s01_araddr[3]),
        .I4(\axi_s01_rdata[14]_i_2__0_n_0 ),
        .I5(axi_s01_araddr[5]),
        .O(\axi_s01_rdata[14]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[14]_i_2__0 
       (.I0(axi_s01_araddr[4]),
        .I1(axi_s01_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[14] ),
        .I3(axi_s01_araddr[3]),
        .I4(\slv_reg2_low_reg_n_0_[14] ),
        .I5(\slv_reg3_reg_n_0_[14] ),
        .O(\axi_s01_rdata[14]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[15]_i_1__0 
       (.I0(axi_s01_araddr[2]),
        .I1(\slv_reg2_high_reg_n_0_[15] ),
        .I2(axi_s01_araddr[4]),
        .I3(axi_s01_araddr[3]),
        .I4(\axi_s01_rdata[15]_i_2__0_n_0 ),
        .I5(axi_s01_araddr[5]),
        .O(\axi_s01_rdata[15]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[15]_i_2__0 
       (.I0(axi_s01_araddr[4]),
        .I1(axi_s01_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[15] ),
        .I3(axi_s01_araddr[3]),
        .I4(\slv_reg2_low_reg_n_0_[15] ),
        .I5(\slv_reg3_reg_n_0_[15] ),
        .O(\axi_s01_rdata[15]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[16]_i_1__0 
       (.I0(axi_s01_araddr[2]),
        .I1(\slv_reg2_high_reg_n_0_[16] ),
        .I2(axi_s01_araddr[4]),
        .I3(axi_s01_araddr[3]),
        .I4(\axi_s01_rdata[16]_i_2__0_n_0 ),
        .I5(axi_s01_araddr[5]),
        .O(\axi_s01_rdata[16]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[16]_i_2__0 
       (.I0(axi_s01_araddr[4]),
        .I1(axi_s01_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[16] ),
        .I3(axi_s01_araddr[3]),
        .I4(\slv_reg2_low_reg_n_0_[16] ),
        .I5(\slv_reg3_reg_n_0_[16] ),
        .O(\axi_s01_rdata[16]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[17]_i_1__0 
       (.I0(axi_s01_araddr[2]),
        .I1(\slv_reg2_high_reg_n_0_[17] ),
        .I2(axi_s01_araddr[4]),
        .I3(axi_s01_araddr[3]),
        .I4(\axi_s01_rdata[17]_i_2__0_n_0 ),
        .I5(axi_s01_araddr[5]),
        .O(\axi_s01_rdata[17]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[17]_i_2__0 
       (.I0(axi_s01_araddr[4]),
        .I1(axi_s01_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[17] ),
        .I3(axi_s01_araddr[3]),
        .I4(\slv_reg2_low_reg_n_0_[17] ),
        .I5(\slv_reg3_reg_n_0_[17] ),
        .O(\axi_s01_rdata[17]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[18]_i_1__0 
       (.I0(axi_s01_araddr[2]),
        .I1(\slv_reg2_high_reg_n_0_[18] ),
        .I2(axi_s01_araddr[4]),
        .I3(axi_s01_araddr[3]),
        .I4(\axi_s01_rdata[18]_i_2__0_n_0 ),
        .I5(axi_s01_araddr[5]),
        .O(\axi_s01_rdata[18]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[18]_i_2__0 
       (.I0(axi_s01_araddr[4]),
        .I1(axi_s01_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[18] ),
        .I3(axi_s01_araddr[3]),
        .I4(\slv_reg2_low_reg_n_0_[18] ),
        .I5(\slv_reg3_reg_n_0_[18] ),
        .O(\axi_s01_rdata[18]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[19]_i_1__0 
       (.I0(axi_s01_araddr[2]),
        .I1(\slv_reg2_high_reg_n_0_[19] ),
        .I2(axi_s01_araddr[4]),
        .I3(axi_s01_araddr[3]),
        .I4(\axi_s01_rdata[19]_i_2__0_n_0 ),
        .I5(axi_s01_araddr[5]),
        .O(\axi_s01_rdata[19]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[19]_i_2__0 
       (.I0(axi_s01_araddr[4]),
        .I1(axi_s01_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[19] ),
        .I3(axi_s01_araddr[3]),
        .I4(\slv_reg2_low_reg_n_0_[19] ),
        .I5(\slv_reg3_reg_n_0_[19] ),
        .O(\axi_s01_rdata[19]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[1]_i_1__0 
       (.I0(axi_s01_araddr[2]),
        .I1(\slv_reg2_high_reg_n_0_[1] ),
        .I2(axi_s01_araddr[4]),
        .I3(axi_s01_araddr[3]),
        .I4(\axi_s01_rdata[1]_i_2__0_n_0 ),
        .I5(axi_s01_araddr[5]),
        .O(\axi_s01_rdata[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[1]_i_2__0 
       (.I0(axi_s01_araddr[4]),
        .I1(axi_s01_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[1] ),
        .I3(axi_s01_araddr[3]),
        .I4(\slv_reg2_low_reg_n_0_[1] ),
        .I5(\slv_reg3_reg_n_0_[1] ),
        .O(\axi_s01_rdata[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[20]_i_1__0 
       (.I0(axi_s01_araddr[2]),
        .I1(\slv_reg2_high_reg_n_0_[20] ),
        .I2(axi_s01_araddr[4]),
        .I3(axi_s01_araddr[3]),
        .I4(\axi_s01_rdata[20]_i_2__0_n_0 ),
        .I5(axi_s01_araddr[5]),
        .O(\axi_s01_rdata[20]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[20]_i_2__0 
       (.I0(axi_s01_araddr[4]),
        .I1(axi_s01_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[20] ),
        .I3(axi_s01_araddr[3]),
        .I4(\slv_reg2_low_reg_n_0_[20] ),
        .I5(\slv_reg3_reg_n_0_[20] ),
        .O(\axi_s01_rdata[20]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[21]_i_1__0 
       (.I0(axi_s01_araddr[2]),
        .I1(\slv_reg2_high_reg_n_0_[21] ),
        .I2(axi_s01_araddr[4]),
        .I3(axi_s01_araddr[3]),
        .I4(\axi_s01_rdata[21]_i_2__0_n_0 ),
        .I5(axi_s01_araddr[5]),
        .O(\axi_s01_rdata[21]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[21]_i_2__0 
       (.I0(axi_s01_araddr[4]),
        .I1(axi_s01_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[21] ),
        .I3(axi_s01_araddr[3]),
        .I4(\slv_reg2_low_reg_n_0_[21] ),
        .I5(\slv_reg3_reg_n_0_[21] ),
        .O(\axi_s01_rdata[21]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[22]_i_1__0 
       (.I0(axi_s01_araddr[2]),
        .I1(\slv_reg2_high_reg_n_0_[22] ),
        .I2(axi_s01_araddr[4]),
        .I3(axi_s01_araddr[3]),
        .I4(\axi_s01_rdata[22]_i_2__0_n_0 ),
        .I5(axi_s01_araddr[5]),
        .O(\axi_s01_rdata[22]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[22]_i_2__0 
       (.I0(axi_s01_araddr[4]),
        .I1(axi_s01_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[22] ),
        .I3(axi_s01_araddr[3]),
        .I4(\slv_reg2_low_reg_n_0_[22] ),
        .I5(\slv_reg3_reg_n_0_[22] ),
        .O(\axi_s01_rdata[22]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[23]_i_1__0 
       (.I0(axi_s01_araddr[2]),
        .I1(\slv_reg2_high_reg_n_0_[23] ),
        .I2(axi_s01_araddr[4]),
        .I3(axi_s01_araddr[3]),
        .I4(\axi_s01_rdata[23]_i_2__0_n_0 ),
        .I5(axi_s01_araddr[5]),
        .O(\axi_s01_rdata[23]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[23]_i_2__0 
       (.I0(axi_s01_araddr[4]),
        .I1(axi_s01_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[23] ),
        .I3(axi_s01_araddr[3]),
        .I4(\slv_reg2_low_reg_n_0_[23] ),
        .I5(\slv_reg3_reg_n_0_[23] ),
        .O(\axi_s01_rdata[23]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[24]_i_1__0 
       (.I0(axi_s01_araddr[2]),
        .I1(\slv_reg2_high_reg_n_0_[24] ),
        .I2(axi_s01_araddr[4]),
        .I3(axi_s01_araddr[3]),
        .I4(\axi_s01_rdata[24]_i_2__0_n_0 ),
        .I5(axi_s01_araddr[5]),
        .O(\axi_s01_rdata[24]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[24]_i_2__0 
       (.I0(axi_s01_araddr[4]),
        .I1(axi_s01_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[24] ),
        .I3(axi_s01_araddr[3]),
        .I4(\slv_reg2_low_reg_n_0_[24] ),
        .I5(\slv_reg3_reg_n_0_[24] ),
        .O(\axi_s01_rdata[24]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[25]_i_1__0 
       (.I0(axi_s01_araddr[2]),
        .I1(\slv_reg2_high_reg_n_0_[25] ),
        .I2(axi_s01_araddr[4]),
        .I3(axi_s01_araddr[3]),
        .I4(\axi_s01_rdata[25]_i_2__0_n_0 ),
        .I5(axi_s01_araddr[5]),
        .O(\axi_s01_rdata[25]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[25]_i_2__0 
       (.I0(axi_s01_araddr[4]),
        .I1(axi_s01_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[25] ),
        .I3(axi_s01_araddr[3]),
        .I4(\slv_reg2_low_reg_n_0_[25] ),
        .I5(\slv_reg3_reg_n_0_[25] ),
        .O(\axi_s01_rdata[25]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[26]_i_1__0 
       (.I0(axi_s01_araddr[2]),
        .I1(\slv_reg2_high_reg_n_0_[26] ),
        .I2(axi_s01_araddr[4]),
        .I3(axi_s01_araddr[3]),
        .I4(\axi_s01_rdata[26]_i_2__0_n_0 ),
        .I5(axi_s01_araddr[5]),
        .O(\axi_s01_rdata[26]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[26]_i_2__0 
       (.I0(axi_s01_araddr[4]),
        .I1(axi_s01_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[26] ),
        .I3(axi_s01_araddr[3]),
        .I4(\slv_reg2_low_reg_n_0_[26] ),
        .I5(\slv_reg3_reg_n_0_[26] ),
        .O(\axi_s01_rdata[26]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[27]_i_1__0 
       (.I0(axi_s01_araddr[2]),
        .I1(\slv_reg2_high_reg_n_0_[27] ),
        .I2(axi_s01_araddr[4]),
        .I3(axi_s01_araddr[3]),
        .I4(\axi_s01_rdata[27]_i_2__0_n_0 ),
        .I5(axi_s01_araddr[5]),
        .O(\axi_s01_rdata[27]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[27]_i_2__0 
       (.I0(axi_s01_araddr[4]),
        .I1(axi_s01_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[27] ),
        .I3(axi_s01_araddr[3]),
        .I4(\slv_reg2_low_reg_n_0_[27] ),
        .I5(\slv_reg3_reg_n_0_[27] ),
        .O(\axi_s01_rdata[27]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[28]_i_1__0 
       (.I0(axi_s01_araddr[2]),
        .I1(\slv_reg2_high_reg_n_0_[28] ),
        .I2(axi_s01_araddr[4]),
        .I3(axi_s01_araddr[3]),
        .I4(\axi_s01_rdata[28]_i_2__0_n_0 ),
        .I5(axi_s01_araddr[5]),
        .O(\axi_s01_rdata[28]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[28]_i_2__0 
       (.I0(axi_s01_araddr[4]),
        .I1(axi_s01_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[28] ),
        .I3(axi_s01_araddr[3]),
        .I4(\slv_reg2_low_reg_n_0_[28] ),
        .I5(\slv_reg3_reg_n_0_[28] ),
        .O(\axi_s01_rdata[28]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[29]_i_1__0 
       (.I0(axi_s01_araddr[2]),
        .I1(\slv_reg2_high_reg_n_0_[29] ),
        .I2(axi_s01_araddr[4]),
        .I3(axi_s01_araddr[3]),
        .I4(\axi_s01_rdata[29]_i_2__0_n_0 ),
        .I5(axi_s01_araddr[5]),
        .O(\axi_s01_rdata[29]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[29]_i_2__0 
       (.I0(axi_s01_araddr[4]),
        .I1(axi_s01_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[29] ),
        .I3(axi_s01_araddr[3]),
        .I4(\slv_reg2_low_reg_n_0_[29] ),
        .I5(\slv_reg3_reg_n_0_[29] ),
        .O(\axi_s01_rdata[29]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[2]_i_1__0 
       (.I0(axi_s01_araddr[2]),
        .I1(\slv_reg2_high_reg_n_0_[2] ),
        .I2(axi_s01_araddr[4]),
        .I3(axi_s01_araddr[3]),
        .I4(\axi_s01_rdata[2]_i_2__0_n_0 ),
        .I5(axi_s01_araddr[5]),
        .O(\axi_s01_rdata[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[2]_i_2__0 
       (.I0(axi_s01_araddr[4]),
        .I1(axi_s01_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[2] ),
        .I3(axi_s01_araddr[3]),
        .I4(\slv_reg2_low_reg_n_0_[2] ),
        .I5(\slv_reg3_reg_n_0_[2] ),
        .O(\axi_s01_rdata[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[30]_i_1__0 
       (.I0(axi_s01_araddr[2]),
        .I1(\slv_reg2_high_reg_n_0_[30] ),
        .I2(axi_s01_araddr[4]),
        .I3(axi_s01_araddr[3]),
        .I4(\axi_s01_rdata[30]_i_2__0_n_0 ),
        .I5(axi_s01_araddr[5]),
        .O(\axi_s01_rdata[30]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[30]_i_2__0 
       (.I0(axi_s01_araddr[4]),
        .I1(axi_s01_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[30] ),
        .I3(axi_s01_araddr[3]),
        .I4(\slv_reg2_low_reg_n_0_[30] ),
        .I5(\slv_reg3_reg_n_0_[30] ),
        .O(\axi_s01_rdata[30]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \axi_s01_rdata[31]_i_1__0 
       (.I0(s01_axi_arvalid),
        .I1(s01_sq_rd_sel),
        .I2(axi_s01_rvalid),
        .I3(axi_s01_arready),
        .O(slv_reg_s01_rden));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[31]_i_2__0 
       (.I0(axi_s01_araddr[2]),
        .I1(\slv_reg2_high_reg_n_0_[31] ),
        .I2(axi_s01_araddr[4]),
        .I3(axi_s01_araddr[3]),
        .I4(\axi_s01_rdata[31]_i_3__0_n_0 ),
        .I5(axi_s01_araddr[5]),
        .O(\axi_s01_rdata[31]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[31]_i_3__0 
       (.I0(axi_s01_araddr[4]),
        .I1(axi_s01_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[31] ),
        .I3(axi_s01_araddr[3]),
        .I4(\slv_reg2_low_reg_n_0_[31] ),
        .I5(\slv_reg3_reg_n_0_[31] ),
        .O(\axi_s01_rdata[31]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[3]_i_1__0 
       (.I0(axi_s01_araddr[2]),
        .I1(\slv_reg2_high_reg_n_0_[3] ),
        .I2(axi_s01_araddr[4]),
        .I3(axi_s01_araddr[3]),
        .I4(\axi_s01_rdata[3]_i_2__0_n_0 ),
        .I5(axi_s01_araddr[5]),
        .O(\axi_s01_rdata[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[3]_i_2__0 
       (.I0(axi_s01_araddr[4]),
        .I1(axi_s01_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[3] ),
        .I3(axi_s01_araddr[3]),
        .I4(\slv_reg2_low_reg_n_0_[3] ),
        .I5(\slv_reg3_reg_n_0_[3] ),
        .O(\axi_s01_rdata[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[4]_i_1__0 
       (.I0(axi_s01_araddr[2]),
        .I1(\slv_reg2_high_reg_n_0_[4] ),
        .I2(axi_s01_araddr[4]),
        .I3(axi_s01_araddr[3]),
        .I4(\axi_s01_rdata[4]_i_2__0_n_0 ),
        .I5(axi_s01_araddr[5]),
        .O(\axi_s01_rdata[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[4]_i_2__0 
       (.I0(axi_s01_araddr[4]),
        .I1(axi_s01_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[4] ),
        .I3(axi_s01_araddr[3]),
        .I4(\slv_reg2_low_reg_n_0_[4] ),
        .I5(\slv_reg3_reg_n_0_[4] ),
        .O(\axi_s01_rdata[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[5]_i_1__0 
       (.I0(axi_s01_araddr[2]),
        .I1(\slv_reg2_high_reg_n_0_[5] ),
        .I2(axi_s01_araddr[4]),
        .I3(axi_s01_araddr[3]),
        .I4(\axi_s01_rdata[5]_i_2__0_n_0 ),
        .I5(axi_s01_araddr[5]),
        .O(\axi_s01_rdata[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[5]_i_2__0 
       (.I0(axi_s01_araddr[4]),
        .I1(axi_s01_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[5] ),
        .I3(axi_s01_araddr[3]),
        .I4(\slv_reg2_low_reg_n_0_[5] ),
        .I5(\slv_reg3_reg_n_0_[5] ),
        .O(\axi_s01_rdata[5]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[6]_i_1__0 
       (.I0(axi_s01_araddr[2]),
        .I1(\slv_reg2_high_reg_n_0_[6] ),
        .I2(axi_s01_araddr[4]),
        .I3(axi_s01_araddr[3]),
        .I4(\axi_s01_rdata[6]_i_2__0_n_0 ),
        .I5(axi_s01_araddr[5]),
        .O(\axi_s01_rdata[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[6]_i_2__0 
       (.I0(axi_s01_araddr[4]),
        .I1(axi_s01_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[6] ),
        .I3(axi_s01_araddr[3]),
        .I4(\slv_reg2_low_reg_n_0_[6] ),
        .I5(\slv_reg3_reg_n_0_[6] ),
        .O(\axi_s01_rdata[6]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[7]_i_1__0 
       (.I0(axi_s01_araddr[2]),
        .I1(\slv_reg2_high_reg_n_0_[7] ),
        .I2(axi_s01_araddr[4]),
        .I3(axi_s01_araddr[3]),
        .I4(\axi_s01_rdata[7]_i_2__0_n_0 ),
        .I5(axi_s01_araddr[5]),
        .O(\axi_s01_rdata[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[7]_i_2__0 
       (.I0(axi_s01_araddr[4]),
        .I1(axi_s01_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[7] ),
        .I3(axi_s01_araddr[3]),
        .I4(\slv_reg2_low_reg_n_0_[7] ),
        .I5(\slv_reg3_reg_n_0_[7] ),
        .O(\axi_s01_rdata[7]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[8]_i_1__0 
       (.I0(axi_s01_araddr[2]),
        .I1(\slv_reg2_high_reg_n_0_[8] ),
        .I2(axi_s01_araddr[4]),
        .I3(axi_s01_araddr[3]),
        .I4(\axi_s01_rdata[8]_i_2__0_n_0 ),
        .I5(axi_s01_araddr[5]),
        .O(\axi_s01_rdata[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[8]_i_2__0 
       (.I0(axi_s01_araddr[4]),
        .I1(axi_s01_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[8] ),
        .I3(axi_s01_araddr[3]),
        .I4(\slv_reg2_low_reg_n_0_[8] ),
        .I5(\slv_reg3_reg_n_0_[8] ),
        .O(\axi_s01_rdata[8]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0040)) 
    \axi_s01_rdata[9]_i_1__0 
       (.I0(axi_s01_araddr[2]),
        .I1(\slv_reg2_high_reg_n_0_[9] ),
        .I2(axi_s01_araddr[4]),
        .I3(axi_s01_araddr[3]),
        .I4(\axi_s01_rdata[9]_i_2__0_n_0 ),
        .I5(axi_s01_araddr[5]),
        .O(\axi_s01_rdata[9]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \axi_s01_rdata[9]_i_2__0 
       (.I0(axi_s01_araddr[4]),
        .I1(axi_s01_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[9] ),
        .I3(axi_s01_araddr[3]),
        .I4(\slv_reg2_low_reg_n_0_[9] ),
        .I5(\slv_reg3_reg_n_0_[9] ),
        .O(\axi_s01_rdata[9]_i_2__0_n_0 ));
  FDRE \axi_s01_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_s01_rden),
        .D(\axi_s01_rdata[0]_i_1__0_n_0 ),
        .Q(\axi_s01_rdata_reg_n_0_[0] ),
        .R(SR));
  FDRE \axi_s01_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_s01_rden),
        .D(\axi_s01_rdata[10]_i_1__0_n_0 ),
        .Q(\axi_s01_rdata_reg_n_0_[10] ),
        .R(SR));
  FDRE \axi_s01_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_s01_rden),
        .D(\axi_s01_rdata[11]_i_1__0_n_0 ),
        .Q(\axi_s01_rdata_reg_n_0_[11] ),
        .R(SR));
  FDRE \axi_s01_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_s01_rden),
        .D(\axi_s01_rdata[12]_i_1__0_n_0 ),
        .Q(\axi_s01_rdata_reg_n_0_[12] ),
        .R(SR));
  FDRE \axi_s01_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_s01_rden),
        .D(\axi_s01_rdata[13]_i_1__0_n_0 ),
        .Q(\axi_s01_rdata_reg_n_0_[13] ),
        .R(SR));
  FDRE \axi_s01_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_s01_rden),
        .D(\axi_s01_rdata[14]_i_1__0_n_0 ),
        .Q(\axi_s01_rdata_reg_n_0_[14] ),
        .R(SR));
  FDRE \axi_s01_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_s01_rden),
        .D(\axi_s01_rdata[15]_i_1__0_n_0 ),
        .Q(\axi_s01_rdata_reg_n_0_[15] ),
        .R(SR));
  FDRE \axi_s01_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_s01_rden),
        .D(\axi_s01_rdata[16]_i_1__0_n_0 ),
        .Q(\axi_s01_rdata_reg_n_0_[16] ),
        .R(SR));
  FDRE \axi_s01_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_s01_rden),
        .D(\axi_s01_rdata[17]_i_1__0_n_0 ),
        .Q(\axi_s01_rdata_reg_n_0_[17] ),
        .R(SR));
  FDRE \axi_s01_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_s01_rden),
        .D(\axi_s01_rdata[18]_i_1__0_n_0 ),
        .Q(\axi_s01_rdata_reg_n_0_[18] ),
        .R(SR));
  FDRE \axi_s01_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_s01_rden),
        .D(\axi_s01_rdata[19]_i_1__0_n_0 ),
        .Q(\axi_s01_rdata_reg_n_0_[19] ),
        .R(SR));
  FDRE \axi_s01_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_s01_rden),
        .D(\axi_s01_rdata[1]_i_1__0_n_0 ),
        .Q(\axi_s01_rdata_reg_n_0_[1] ),
        .R(SR));
  FDRE \axi_s01_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_s01_rden),
        .D(\axi_s01_rdata[20]_i_1__0_n_0 ),
        .Q(\axi_s01_rdata_reg_n_0_[20] ),
        .R(SR));
  FDRE \axi_s01_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_s01_rden),
        .D(\axi_s01_rdata[21]_i_1__0_n_0 ),
        .Q(\axi_s01_rdata_reg_n_0_[21] ),
        .R(SR));
  FDRE \axi_s01_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_s01_rden),
        .D(\axi_s01_rdata[22]_i_1__0_n_0 ),
        .Q(\axi_s01_rdata_reg_n_0_[22] ),
        .R(SR));
  FDRE \axi_s01_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_s01_rden),
        .D(\axi_s01_rdata[23]_i_1__0_n_0 ),
        .Q(\axi_s01_rdata_reg_n_0_[23] ),
        .R(SR));
  FDRE \axi_s01_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_s01_rden),
        .D(\axi_s01_rdata[24]_i_1__0_n_0 ),
        .Q(\axi_s01_rdata_reg_n_0_[24] ),
        .R(SR));
  FDRE \axi_s01_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_s01_rden),
        .D(\axi_s01_rdata[25]_i_1__0_n_0 ),
        .Q(\axi_s01_rdata_reg_n_0_[25] ),
        .R(SR));
  FDRE \axi_s01_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_s01_rden),
        .D(\axi_s01_rdata[26]_i_1__0_n_0 ),
        .Q(\axi_s01_rdata_reg_n_0_[26] ),
        .R(SR));
  FDRE \axi_s01_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_s01_rden),
        .D(\axi_s01_rdata[27]_i_1__0_n_0 ),
        .Q(\axi_s01_rdata_reg_n_0_[27] ),
        .R(SR));
  FDRE \axi_s01_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_s01_rden),
        .D(\axi_s01_rdata[28]_i_1__0_n_0 ),
        .Q(\axi_s01_rdata_reg_n_0_[28] ),
        .R(SR));
  FDRE \axi_s01_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_s01_rden),
        .D(\axi_s01_rdata[29]_i_1__0_n_0 ),
        .Q(\axi_s01_rdata_reg_n_0_[29] ),
        .R(SR));
  FDRE \axi_s01_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_s01_rden),
        .D(\axi_s01_rdata[2]_i_1__0_n_0 ),
        .Q(\axi_s01_rdata_reg_n_0_[2] ),
        .R(SR));
  FDRE \axi_s01_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_s01_rden),
        .D(\axi_s01_rdata[30]_i_1__0_n_0 ),
        .Q(\axi_s01_rdata_reg_n_0_[30] ),
        .R(SR));
  FDRE \axi_s01_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_s01_rden),
        .D(\axi_s01_rdata[31]_i_2__0_n_0 ),
        .Q(\axi_s01_rdata_reg_n_0_[31] ),
        .R(SR));
  FDRE \axi_s01_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_s01_rden),
        .D(\axi_s01_rdata[3]_i_1__0_n_0 ),
        .Q(\axi_s01_rdata_reg_n_0_[3] ),
        .R(SR));
  FDRE \axi_s01_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_s01_rden),
        .D(\axi_s01_rdata[4]_i_1__0_n_0 ),
        .Q(\axi_s01_rdata_reg_n_0_[4] ),
        .R(SR));
  FDRE \axi_s01_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_s01_rden),
        .D(\axi_s01_rdata[5]_i_1__0_n_0 ),
        .Q(\axi_s01_rdata_reg_n_0_[5] ),
        .R(SR));
  FDRE \axi_s01_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_s01_rden),
        .D(\axi_s01_rdata[6]_i_1__0_n_0 ),
        .Q(\axi_s01_rdata_reg_n_0_[6] ),
        .R(SR));
  FDRE \axi_s01_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_s01_rden),
        .D(\axi_s01_rdata[7]_i_1__0_n_0 ),
        .Q(\axi_s01_rdata_reg_n_0_[7] ),
        .R(SR));
  FDRE \axi_s01_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_s01_rden),
        .D(\axi_s01_rdata[8]_i_1__0_n_0 ),
        .Q(\axi_s01_rdata_reg_n_0_[8] ),
        .R(SR));
  FDRE \axi_s01_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_s01_rden),
        .D(\axi_s01_rdata[9]_i_1__0_n_0 ),
        .Q(\axi_s01_rdata_reg_n_0_[9] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    axi_s01_rvalid_i_1__0
       (.I0(axi_s01_rvalid),
        .I1(s01_axi_rready),
        .I2(slv_reg_s01_rden),
        .O(axi_s01_rvalid_i_1__0_n_0));
  FDRE axi_s01_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_s01_rvalid_i_1__0_n_0),
        .Q(axi_s01_rvalid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h20)) 
    axi_s01_wready_i_1__0
       (.I0(axi_s01_wready_i_2__0_n_0),
        .I1(axi_s01_wready),
        .I2(aw_s01_en_reg_n_0),
        .O(axi_s01_wready0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    axi_s01_wready_i_2__0
       (.I0(s01_axi_wvalid),
        .I1(s01_axi_awvalid),
        .I2(s01_sq_wr_sel),
        .O(axi_s01_wready_i_2__0_n_0));
  FDRE axi_s01_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_s01_wready0),
        .Q(axi_s01_wready),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(s00_sq_wr_sel),
        .I3(aw_en_reg_n_0),
        .I4(axi_wready),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000100)) 
    irq_on_write_reg_i_1
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[4]),
        .I3(irq_on_write_reg_0),
        .I4(axi_awaddr[5]),
        .I5(irq_on_write_reg),
        .O(irq_on_write_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    irq_on_write_reg_i_2
       (.I0(s00_axi_wstrb[3]),
        .I1(s00_axi_wstrb[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(s00_axi_wstrb[2]),
        .O(irq_on_write_reg_0));
  FDRE irq_on_write_reg_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(irq_on_write_reg_i_1_n_0),
        .Q(irq_on_write_reg),
        .R(irq_reg_write_i_1_n_0));
  LUT5 #(
    .INIT(32'hE2000000)) 
    irq_reg_i_1
       (.I0(irq_on_write_reg),
        .I1(\slv_reg3_reg_n_0_[1] ),
        .I2(\slv_reg1_reg_n_0_[0] ),
        .I3(s00_axi_aresetn),
        .I4(\slv_reg3_reg_n_0_[0] ),
        .O(irq_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA00020000)) 
    irq_reg_read_i_1__0
       (.I0(slv_reg_s01_rden),
        .I1(axi_s01_araddr[3]),
        .I2(axi_s01_araddr[5]),
        .I3(axi_s01_araddr[4]),
        .I4(axi_s01_araddr[2]),
        .I5(irq_reg_read_reg_n_0),
        .O(irq_reg_read_i_1__0_n_0));
  FDRE irq_reg_read_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(irq_reg_read_i_1__0_n_0),
        .Q(irq_reg_read_reg_n_0),
        .R(SR));
  FDRE irq_reg_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(irq_reg_i_1_n_0),
        .Q(irq_sq),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    irq_reg_write_i_1
       (.I0(\slv_reg3_reg[0]_0 ),
        .I1(s00_axi_wvalid),
        .I2(s00_sq_wr_sel),
        .I3(axi_awready),
        .I4(axi_wready),
        .I5(s00_axi_awvalid),
        .O(irq_reg_write_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    irq_reg_write_i_2__0
       (.I0(slv_reg_wren),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[4]),
        .I3(axi_awaddr[5]),
        .I4(axi_awaddr[3]),
        .I5(irq_reg_write_reg_n_0),
        .O(irq_reg_write_i_2__0_n_0));
  FDRE irq_reg_write_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(irq_reg_write_i_2__0_n_0),
        .Q(irq_reg_write_reg_n_0),
        .R(irq_reg_write_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    s00_axi_arready_INST_0
       (.I0(axi_arready),
        .I1(s00_axi_arready_0),
        .I2(s00_sq_rd_sel),
        .O(s00_axi_arready));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    s00_axi_awready_INST_0
       (.I0(axi_awready),
        .I1(s00_axi_awready_0),
        .I2(s00_sq_wr_sel),
        .O(s00_axi_awready));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    s00_axi_bvalid_INST_0
       (.I0(axi_bvalid),
        .I1(s00_axi_bvalid_0),
        .I2(s00_sq_wr_sel),
        .O(s00_axi_bvalid));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[0]_INST_0 
       (.I0(axi_rdata[0]),
        .I1(\s00_axi_rdata[31] [0]),
        .I2(s00_sq_rd_sel),
        .O(s00_axi_rdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[10]_INST_0 
       (.I0(axi_rdata[10]),
        .I1(\s00_axi_rdata[31] [10]),
        .I2(s00_sq_rd_sel),
        .O(s00_axi_rdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[11]_INST_0 
       (.I0(axi_rdata[11]),
        .I1(\s00_axi_rdata[31] [11]),
        .I2(s00_sq_rd_sel),
        .O(s00_axi_rdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[12]_INST_0 
       (.I0(axi_rdata[12]),
        .I1(\s00_axi_rdata[31] [12]),
        .I2(s00_sq_rd_sel),
        .O(s00_axi_rdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[13]_INST_0 
       (.I0(axi_rdata[13]),
        .I1(\s00_axi_rdata[31] [13]),
        .I2(s00_sq_rd_sel),
        .O(s00_axi_rdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(axi_rdata[14]),
        .I1(\s00_axi_rdata[31] [14]),
        .I2(s00_sq_rd_sel),
        .O(s00_axi_rdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(axi_rdata[15]),
        .I1(\s00_axi_rdata[31] [15]),
        .I2(s00_sq_rd_sel),
        .O(s00_axi_rdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[16]_INST_0 
       (.I0(axi_rdata[16]),
        .I1(\s00_axi_rdata[31] [16]),
        .I2(s00_sq_rd_sel),
        .O(s00_axi_rdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[17]_INST_0 
       (.I0(axi_rdata[17]),
        .I1(\s00_axi_rdata[31] [17]),
        .I2(s00_sq_rd_sel),
        .O(s00_axi_rdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[18]_INST_0 
       (.I0(axi_rdata[18]),
        .I1(\s00_axi_rdata[31] [18]),
        .I2(s00_sq_rd_sel),
        .O(s00_axi_rdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[19]_INST_0 
       (.I0(axi_rdata[19]),
        .I1(\s00_axi_rdata[31] [19]),
        .I2(s00_sq_rd_sel),
        .O(s00_axi_rdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[1]_INST_0 
       (.I0(axi_rdata[1]),
        .I1(\s00_axi_rdata[31] [1]),
        .I2(s00_sq_rd_sel),
        .O(s00_axi_rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[20]_INST_0 
       (.I0(axi_rdata[20]),
        .I1(\s00_axi_rdata[31] [20]),
        .I2(s00_sq_rd_sel),
        .O(s00_axi_rdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[21]_INST_0 
       (.I0(axi_rdata[21]),
        .I1(\s00_axi_rdata[31] [21]),
        .I2(s00_sq_rd_sel),
        .O(s00_axi_rdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(axi_rdata[22]),
        .I1(\s00_axi_rdata[31] [22]),
        .I2(s00_sq_rd_sel),
        .O(s00_axi_rdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(axi_rdata[23]),
        .I1(\s00_axi_rdata[31] [23]),
        .I2(s00_sq_rd_sel),
        .O(s00_axi_rdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(axi_rdata[24]),
        .I1(\s00_axi_rdata[31] [24]),
        .I2(s00_sq_rd_sel),
        .O(s00_axi_rdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(axi_rdata[25]),
        .I1(\s00_axi_rdata[31] [25]),
        .I2(s00_sq_rd_sel),
        .O(s00_axi_rdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(axi_rdata[26]),
        .I1(\s00_axi_rdata[31] [26]),
        .I2(s00_sq_rd_sel),
        .O(s00_axi_rdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(axi_rdata[27]),
        .I1(\s00_axi_rdata[31] [27]),
        .I2(s00_sq_rd_sel),
        .O(s00_axi_rdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(axi_rdata[28]),
        .I1(\s00_axi_rdata[31] [28]),
        .I2(s00_sq_rd_sel),
        .O(s00_axi_rdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(axi_rdata[29]),
        .I1(\s00_axi_rdata[31] [29]),
        .I2(s00_sq_rd_sel),
        .O(s00_axi_rdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[2]_INST_0 
       (.I0(axi_rdata[2]),
        .I1(\s00_axi_rdata[31] [2]),
        .I2(s00_sq_rd_sel),
        .O(s00_axi_rdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(axi_rdata[30]),
        .I1(\s00_axi_rdata[31] [30]),
        .I2(s00_sq_rd_sel),
        .O(s00_axi_rdata[30]));
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(axi_rdata[31]),
        .I1(\s00_axi_rdata[31] [31]),
        .I2(s00_sq_rd_sel),
        .O(s00_axi_rdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[3]_INST_0 
       (.I0(axi_rdata[3]),
        .I1(\s00_axi_rdata[31] [3]),
        .I2(s00_sq_rd_sel),
        .O(s00_axi_rdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[4]_INST_0 
       (.I0(axi_rdata[4]),
        .I1(\s00_axi_rdata[31] [4]),
        .I2(s00_sq_rd_sel),
        .O(s00_axi_rdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[5]_INST_0 
       (.I0(axi_rdata[5]),
        .I1(\s00_axi_rdata[31] [5]),
        .I2(s00_sq_rd_sel),
        .O(s00_axi_rdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[6]_INST_0 
       (.I0(axi_rdata[6]),
        .I1(\s00_axi_rdata[31] [6]),
        .I2(s00_sq_rd_sel),
        .O(s00_axi_rdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[7]_INST_0 
       (.I0(axi_rdata[7]),
        .I1(\s00_axi_rdata[31] [7]),
        .I2(s00_sq_rd_sel),
        .O(s00_axi_rdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[8]_INST_0 
       (.I0(axi_rdata[8]),
        .I1(\s00_axi_rdata[31] [8]),
        .I2(s00_sq_rd_sel),
        .O(s00_axi_rdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[9]_INST_0 
       (.I0(axi_rdata[9]),
        .I1(\s00_axi_rdata[31] [9]),
        .I2(s00_sq_rd_sel),
        .O(s00_axi_rdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    s00_axi_rvalid_INST_0
       (.I0(axi_rvalid),
        .I1(s00_axi_rvalid_0),
        .I2(s00_sq_rd_sel),
        .O(s00_axi_rvalid));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    s00_axi_wready_INST_0
       (.I0(axi_wready),
        .I1(s00_axi_wready_0),
        .I2(s00_sq_wr_sel),
        .O(s00_axi_wready));
  LUT1 #(
    .INIT(2'h1)) 
    s00_sq_wr_sel_i_1
       (.I0(s00_axi_aresetn),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    s01_axi_arready_INST_0
       (.I0(axi_s01_arready),
        .I1(s01_axi_arready_0),
        .I2(s01_sq_rd_sel),
        .O(s01_axi_arready));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    s01_axi_awready_INST_0
       (.I0(axi_s01_awready),
        .I1(s01_axi_awready_0),
        .I2(s01_sq_wr_sel),
        .O(s01_axi_awready));
  LUT3 #(
    .INIT(8'hAC)) 
    s01_axi_bvalid_INST_0
       (.I0(axi_s01_bvalid),
        .I1(s01_axi_bvalid_0),
        .I2(s01_sq_wr_sel),
        .O(s01_axi_bvalid));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s01_axi_rdata[0]_INST_0 
       (.I0(\axi_s01_rdata_reg_n_0_[0] ),
        .I1(\s01_axi_rdata[31] [0]),
        .I2(s01_sq_rd_sel),
        .O(s01_axi_rdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s01_axi_rdata[10]_INST_0 
       (.I0(\axi_s01_rdata_reg_n_0_[10] ),
        .I1(\s01_axi_rdata[31] [10]),
        .I2(s01_sq_rd_sel),
        .O(s01_axi_rdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s01_axi_rdata[11]_INST_0 
       (.I0(\axi_s01_rdata_reg_n_0_[11] ),
        .I1(\s01_axi_rdata[31] [11]),
        .I2(s01_sq_rd_sel),
        .O(s01_axi_rdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s01_axi_rdata[12]_INST_0 
       (.I0(\axi_s01_rdata_reg_n_0_[12] ),
        .I1(\s01_axi_rdata[31] [12]),
        .I2(s01_sq_rd_sel),
        .O(s01_axi_rdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s01_axi_rdata[13]_INST_0 
       (.I0(\axi_s01_rdata_reg_n_0_[13] ),
        .I1(\s01_axi_rdata[31] [13]),
        .I2(s01_sq_rd_sel),
        .O(s01_axi_rdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s01_axi_rdata[14]_INST_0 
       (.I0(\axi_s01_rdata_reg_n_0_[14] ),
        .I1(\s01_axi_rdata[31] [14]),
        .I2(s01_sq_rd_sel),
        .O(s01_axi_rdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s01_axi_rdata[15]_INST_0 
       (.I0(\axi_s01_rdata_reg_n_0_[15] ),
        .I1(\s01_axi_rdata[31] [15]),
        .I2(s01_sq_rd_sel),
        .O(s01_axi_rdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s01_axi_rdata[16]_INST_0 
       (.I0(\axi_s01_rdata_reg_n_0_[16] ),
        .I1(\s01_axi_rdata[31] [16]),
        .I2(s01_sq_rd_sel),
        .O(s01_axi_rdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s01_axi_rdata[17]_INST_0 
       (.I0(\axi_s01_rdata_reg_n_0_[17] ),
        .I1(\s01_axi_rdata[31] [17]),
        .I2(s01_sq_rd_sel),
        .O(s01_axi_rdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s01_axi_rdata[18]_INST_0 
       (.I0(\axi_s01_rdata_reg_n_0_[18] ),
        .I1(\s01_axi_rdata[31] [18]),
        .I2(s01_sq_rd_sel),
        .O(s01_axi_rdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s01_axi_rdata[19]_INST_0 
       (.I0(\axi_s01_rdata_reg_n_0_[19] ),
        .I1(\s01_axi_rdata[31] [19]),
        .I2(s01_sq_rd_sel),
        .O(s01_axi_rdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s01_axi_rdata[1]_INST_0 
       (.I0(\axi_s01_rdata_reg_n_0_[1] ),
        .I1(\s01_axi_rdata[31] [1]),
        .I2(s01_sq_rd_sel),
        .O(s01_axi_rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s01_axi_rdata[20]_INST_0 
       (.I0(\axi_s01_rdata_reg_n_0_[20] ),
        .I1(\s01_axi_rdata[31] [20]),
        .I2(s01_sq_rd_sel),
        .O(s01_axi_rdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s01_axi_rdata[21]_INST_0 
       (.I0(\axi_s01_rdata_reg_n_0_[21] ),
        .I1(\s01_axi_rdata[31] [21]),
        .I2(s01_sq_rd_sel),
        .O(s01_axi_rdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s01_axi_rdata[22]_INST_0 
       (.I0(\axi_s01_rdata_reg_n_0_[22] ),
        .I1(\s01_axi_rdata[31] [22]),
        .I2(s01_sq_rd_sel),
        .O(s01_axi_rdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s01_axi_rdata[23]_INST_0 
       (.I0(\axi_s01_rdata_reg_n_0_[23] ),
        .I1(\s01_axi_rdata[31] [23]),
        .I2(s01_sq_rd_sel),
        .O(s01_axi_rdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s01_axi_rdata[24]_INST_0 
       (.I0(\axi_s01_rdata_reg_n_0_[24] ),
        .I1(\s01_axi_rdata[31] [24]),
        .I2(s01_sq_rd_sel),
        .O(s01_axi_rdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s01_axi_rdata[25]_INST_0 
       (.I0(\axi_s01_rdata_reg_n_0_[25] ),
        .I1(\s01_axi_rdata[31] [25]),
        .I2(s01_sq_rd_sel),
        .O(s01_axi_rdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s01_axi_rdata[26]_INST_0 
       (.I0(\axi_s01_rdata_reg_n_0_[26] ),
        .I1(\s01_axi_rdata[31] [26]),
        .I2(s01_sq_rd_sel),
        .O(s01_axi_rdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s01_axi_rdata[27]_INST_0 
       (.I0(\axi_s01_rdata_reg_n_0_[27] ),
        .I1(\s01_axi_rdata[31] [27]),
        .I2(s01_sq_rd_sel),
        .O(s01_axi_rdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s01_axi_rdata[28]_INST_0 
       (.I0(\axi_s01_rdata_reg_n_0_[28] ),
        .I1(\s01_axi_rdata[31] [28]),
        .I2(s01_sq_rd_sel),
        .O(s01_axi_rdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s01_axi_rdata[29]_INST_0 
       (.I0(\axi_s01_rdata_reg_n_0_[29] ),
        .I1(\s01_axi_rdata[31] [29]),
        .I2(s01_sq_rd_sel),
        .O(s01_axi_rdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s01_axi_rdata[2]_INST_0 
       (.I0(\axi_s01_rdata_reg_n_0_[2] ),
        .I1(\s01_axi_rdata[31] [2]),
        .I2(s01_sq_rd_sel),
        .O(s01_axi_rdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s01_axi_rdata[30]_INST_0 
       (.I0(\axi_s01_rdata_reg_n_0_[30] ),
        .I1(\s01_axi_rdata[31] [30]),
        .I2(s01_sq_rd_sel),
        .O(s01_axi_rdata[30]));
  LUT3 #(
    .INIT(8'hAC)) 
    \s01_axi_rdata[31]_INST_0 
       (.I0(\axi_s01_rdata_reg_n_0_[31] ),
        .I1(\s01_axi_rdata[31] [31]),
        .I2(s01_sq_rd_sel),
        .O(s01_axi_rdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s01_axi_rdata[3]_INST_0 
       (.I0(\axi_s01_rdata_reg_n_0_[3] ),
        .I1(\s01_axi_rdata[31] [3]),
        .I2(s01_sq_rd_sel),
        .O(s01_axi_rdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s01_axi_rdata[4]_INST_0 
       (.I0(\axi_s01_rdata_reg_n_0_[4] ),
        .I1(\s01_axi_rdata[31] [4]),
        .I2(s01_sq_rd_sel),
        .O(s01_axi_rdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s01_axi_rdata[5]_INST_0 
       (.I0(\axi_s01_rdata_reg_n_0_[5] ),
        .I1(\s01_axi_rdata[31] [5]),
        .I2(s01_sq_rd_sel),
        .O(s01_axi_rdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s01_axi_rdata[6]_INST_0 
       (.I0(\axi_s01_rdata_reg_n_0_[6] ),
        .I1(\s01_axi_rdata[31] [6]),
        .I2(s01_sq_rd_sel),
        .O(s01_axi_rdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s01_axi_rdata[7]_INST_0 
       (.I0(\axi_s01_rdata_reg_n_0_[7] ),
        .I1(\s01_axi_rdata[31] [7]),
        .I2(s01_sq_rd_sel),
        .O(s01_axi_rdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s01_axi_rdata[8]_INST_0 
       (.I0(\axi_s01_rdata_reg_n_0_[8] ),
        .I1(\s01_axi_rdata[31] [8]),
        .I2(s01_sq_rd_sel),
        .O(s01_axi_rdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s01_axi_rdata[9]_INST_0 
       (.I0(\axi_s01_rdata_reg_n_0_[9] ),
        .I1(\s01_axi_rdata[31] [9]),
        .I2(s01_sq_rd_sel),
        .O(s01_axi_rdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    s01_axi_rvalid_INST_0
       (.I0(axi_s01_rvalid),
        .I1(s01_axi_rvalid_0),
        .I2(s01_sq_rd_sel),
        .O(s01_axi_rvalid));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    s01_axi_wready_INST_0
       (.I0(axi_s01_wready),
        .I1(s01_axi_wready_0),
        .I2(s01_sq_wr_sel),
        .O(s01_axi_wready));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren),
        .I1(axi_awaddr[5]),
        .I2(s00_axi_wstrb[1]),
        .I3(axi_awaddr[4]),
        .I4(axi_awaddr[2]),
        .I5(axi_awaddr[3]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren),
        .I1(axi_awaddr[5]),
        .I2(s00_axi_wstrb[2]),
        .I3(axi_awaddr[4]),
        .I4(axi_awaddr[2]),
        .I5(axi_awaddr[3]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren),
        .I1(axi_awaddr[5]),
        .I2(s00_axi_wstrb[3]),
        .I3(axi_awaddr[4]),
        .I4(axi_awaddr[2]),
        .I5(axi_awaddr[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren),
        .I1(axi_awaddr[5]),
        .I2(s00_axi_wstrb[0]),
        .I3(axi_awaddr[4]),
        .I4(axi_awaddr[2]),
        .I5(axi_awaddr[3]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg0_reg_n_0_[0] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg0_reg_n_0_[1] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(\slv_reg3_reg[0]_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \slv_reg1[0]_i_1__0 
       (.I0(irq_reg_read_reg_n_0),
        .I1(\slv_reg1_reg_n_0_[0] ),
        .I2(irq_reg_write_reg_n_0),
        .O(\slv_reg1[0]_i_1__0_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg1[0]_i_1__0_n_0 ),
        .Q(\slv_reg1_reg_n_0_[0] ),
        .R(\slv_reg3_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \slv_reg2_high[15]_i_1 
       (.I0(slv_reg_wren),
        .I1(axi_awaddr[5]),
        .I2(s00_axi_wstrb[1]),
        .I3(axi_awaddr[4]),
        .I4(axi_awaddr[2]),
        .I5(axi_awaddr[3]),
        .O(\slv_reg2_high[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \slv_reg2_high[23]_i_1 
       (.I0(slv_reg_wren),
        .I1(axi_awaddr[5]),
        .I2(s00_axi_wstrb[2]),
        .I3(axi_awaddr[4]),
        .I4(axi_awaddr[2]),
        .I5(axi_awaddr[3]),
        .O(\slv_reg2_high[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \slv_reg2_high[31]_i_1 
       (.I0(slv_reg_wren),
        .I1(axi_awaddr[5]),
        .I2(s00_axi_wstrb[3]),
        .I3(axi_awaddr[4]),
        .I4(axi_awaddr[2]),
        .I5(axi_awaddr[3]),
        .O(\slv_reg2_high[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \slv_reg2_high[7]_i_1 
       (.I0(slv_reg_wren),
        .I1(axi_awaddr[5]),
        .I2(s00_axi_wstrb[0]),
        .I3(axi_awaddr[4]),
        .I4(axi_awaddr[2]),
        .I5(axi_awaddr[3]),
        .O(\slv_reg2_high[7]_i_1_n_0 ));
  FDRE \slv_reg2_high_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg2_high_reg_n_0_[0] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_high_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg2_high_reg_n_0_[10] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_high_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg2_high_reg_n_0_[11] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_high_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg2_high_reg_n_0_[12] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_high_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg2_high_reg_n_0_[13] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_high_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg2_high_reg_n_0_[14] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_high_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg2_high_reg_n_0_[15] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_high_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg2_high_reg_n_0_[16] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_high_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg2_high_reg_n_0_[17] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_high_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg2_high_reg_n_0_[18] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_high_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg2_high_reg_n_0_[19] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_high_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg2_high_reg_n_0_[1] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_high_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg2_high_reg_n_0_[20] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_high_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg2_high_reg_n_0_[21] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_high_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg2_high_reg_n_0_[22] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_high_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg2_high_reg_n_0_[23] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_high_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg2_high_reg_n_0_[24] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_high_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg2_high_reg_n_0_[25] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_high_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg2_high_reg_n_0_[26] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_high_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg2_high_reg_n_0_[27] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_high_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg2_high_reg_n_0_[28] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_high_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg2_high_reg_n_0_[29] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_high_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg2_high_reg_n_0_[2] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_high_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg2_high_reg_n_0_[30] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_high_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg2_high_reg_n_0_[31] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_high_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg2_high_reg_n_0_[3] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_high_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg2_high_reg_n_0_[4] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_high_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg2_high_reg_n_0_[5] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_high_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg2_high_reg_n_0_[6] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_high_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg2_high_reg_n_0_[7] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_high_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg2_high_reg_n_0_[8] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_high_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_high[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg2_high_reg_n_0_[9] ),
        .R(\slv_reg3_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \slv_reg2_low[15]_i_1 
       (.I0(slv_reg_wren),
        .I1(axi_awaddr[5]),
        .I2(axi_awaddr[3]),
        .I3(s00_axi_wstrb[1]),
        .I4(axi_awaddr[2]),
        .I5(axi_awaddr[4]),
        .O(\slv_reg2_low[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \slv_reg2_low[23]_i_1 
       (.I0(slv_reg_wren),
        .I1(axi_awaddr[5]),
        .I2(axi_awaddr[3]),
        .I3(s00_axi_wstrb[2]),
        .I4(axi_awaddr[2]),
        .I5(axi_awaddr[4]),
        .O(\slv_reg2_low[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \slv_reg2_low[31]_i_1 
       (.I0(slv_reg_wren),
        .I1(axi_awaddr[5]),
        .I2(axi_awaddr[3]),
        .I3(s00_axi_wstrb[3]),
        .I4(axi_awaddr[2]),
        .I5(axi_awaddr[4]),
        .O(\slv_reg2_low[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \slv_reg2_low[7]_i_1 
       (.I0(slv_reg_wren),
        .I1(axi_awaddr[5]),
        .I2(axi_awaddr[3]),
        .I3(s00_axi_wstrb[0]),
        .I4(axi_awaddr[2]),
        .I5(axi_awaddr[4]),
        .O(\slv_reg2_low[7]_i_1_n_0 ));
  FDRE \slv_reg2_low_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg2_low_reg_n_0_[0] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_low_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg2_low_reg_n_0_[10] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_low_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg2_low_reg_n_0_[11] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_low_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg2_low_reg_n_0_[12] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_low_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg2_low_reg_n_0_[13] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_low_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg2_low_reg_n_0_[14] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_low_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg2_low_reg_n_0_[15] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_low_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg2_low_reg_n_0_[16] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_low_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg2_low_reg_n_0_[17] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_low_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg2_low_reg_n_0_[18] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_low_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg2_low_reg_n_0_[19] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_low_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg2_low_reg_n_0_[1] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_low_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg2_low_reg_n_0_[20] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_low_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg2_low_reg_n_0_[21] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_low_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg2_low_reg_n_0_[22] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_low_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg2_low_reg_n_0_[23] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_low_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg2_low_reg_n_0_[24] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_low_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg2_low_reg_n_0_[25] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_low_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg2_low_reg_n_0_[26] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_low_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg2_low_reg_n_0_[27] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_low_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg2_low_reg_n_0_[28] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_low_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg2_low_reg_n_0_[29] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_low_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg2_low_reg_n_0_[2] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_low_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg2_low_reg_n_0_[30] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_low_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg2_low_reg_n_0_[31] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_low_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg2_low_reg_n_0_[3] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_low_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg2_low_reg_n_0_[4] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_low_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg2_low_reg_n_0_[5] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_low_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg2_low_reg_n_0_[6] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_low_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg2_low_reg_n_0_[7] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_low_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg2_low_reg_n_0_[8] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg2_low_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2_low[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg2_low_reg_n_0_[9] ),
        .R(\slv_reg3_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren),
        .I1(axi_awaddr[5]),
        .I2(s00_axi_wstrb[1]),
        .I3(axi_awaddr[2]),
        .I4(axi_awaddr[3]),
        .I5(axi_awaddr[4]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren),
        .I1(axi_awaddr[5]),
        .I2(s00_axi_wstrb[2]),
        .I3(axi_awaddr[2]),
        .I4(axi_awaddr[3]),
        .I5(axi_awaddr[4]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren),
        .I1(axi_awaddr[5]),
        .I2(s00_axi_wstrb[3]),
        .I3(axi_awaddr[2]),
        .I4(axi_awaddr[3]),
        .I5(axi_awaddr[4]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg3[31]_i_2 
       (.I0(s00_axi_awvalid),
        .I1(axi_wready),
        .I2(axi_awready),
        .I3(s00_sq_wr_sel),
        .I4(s00_axi_wvalid),
        .O(slv_reg_wren));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren),
        .I1(axi_awaddr[5]),
        .I2(s00_axi_wstrb[0]),
        .I3(axi_awaddr[2]),
        .I4(axi_awaddr[3]),
        .I5(axi_awaddr[4]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDSE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg3_reg_n_0_[0] ),
        .S(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg3_reg_n_0_[10] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg3_reg_n_0_[11] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg3_reg_n_0_[12] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg3_reg_n_0_[13] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg3_reg_n_0_[14] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg3_reg_n_0_[15] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg3_reg_n_0_[16] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg3_reg_n_0_[17] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg3_reg_n_0_[18] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg3_reg_n_0_[19] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg3_reg_n_0_[1] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg3_reg_n_0_[20] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg3_reg_n_0_[21] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg3_reg_n_0_[22] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg3_reg_n_0_[23] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg3_reg_n_0_[24] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg3_reg_n_0_[25] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg3_reg_n_0_[26] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg3_reg_n_0_[27] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg3_reg_n_0_[28] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg3_reg_n_0_[29] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg3_reg_n_0_[2] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg3_reg_n_0_[30] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg3_reg_n_0_[31] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg3_reg_n_0_[3] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg3_reg_n_0_[4] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg3_reg_n_0_[5] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg3_reg_n_0_[6] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg3_reg_n_0_[7] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg3_reg_n_0_[8] ),
        .R(\slv_reg3_reg[0]_0 ));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg3_reg_n_0_[9] ),
        .R(\slv_reg3_reg[0]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    soft_reset_i_1
       (.I0(\slv_reg3_reg_n_0_[31] ),
        .I1(Q),
        .O(\slv_reg3_reg[31]_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "top_gcq_u2a_0_0,cmd_queue_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "cmd_queue_v1_0_0,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (irq_sq,
    irq_cq,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s01_axi_awaddr,
    s01_axi_awprot,
    s01_axi_awvalid,
    s01_axi_awready,
    s01_axi_wdata,
    s01_axi_wstrb,
    s01_axi_wvalid,
    s01_axi_wready,
    s01_axi_bresp,
    s01_axi_bvalid,
    s01_axi_bready,
    s01_axi_araddr,
    s01_axi_arprot,
    s01_axi_arvalid,
    s01_axi_arready,
    s01_axi_rdata,
    s01_axi_rresp,
    s01_axi_rvalid,
    s01_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 irq_sq INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME irq_sq, SENSITIVITY EDGE_RISING, PortWidth 1" *) output irq_sq;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 irq_cq INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME irq_cq, SENSITIVITY EDGE_RISING, PortWidth 1" *) output irq_cq;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF S00_AXI:S01_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 99999992, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_4885_pspmc_0_0_pl0_ref_clk, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [8:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [8:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999992, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 32, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_4885_pspmc_0_0_pl0_ref_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWADDR" *) input [8:0]s01_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWPROT" *) input [2:0]s01_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWVALID" *) input s01_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWREADY" *) output s01_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WDATA" *) input [31:0]s01_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WSTRB" *) input [3:0]s01_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WVALID" *) input s01_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WREADY" *) output s01_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BRESP" *) output [1:0]s01_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BVALID" *) output s01_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BREADY" *) input s01_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARADDR" *) input [8:0]s01_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARPROT" *) input [2:0]s01_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARVALID" *) input s01_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARREADY" *) output s01_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RDATA" *) output [31:0]s01_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RRESP" *) output [1:0]s01_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RVALID" *) output s01_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S01_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999992, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_4885_pspmc_0_0_pl0_ref_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s01_axi_rready;

  wire \<const0> ;
  wire irq_cq;
  wire irq_sq;
  wire s00_axi_aclk;
  wire [8:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [8:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [8:0]s01_axi_araddr;
  wire s01_axi_arready;
  wire s01_axi_arvalid;
  wire [8:0]s01_axi_awaddr;
  wire s01_axi_awready;
  wire s01_axi_awvalid;
  wire s01_axi_bready;
  wire s01_axi_bvalid;
  wire [31:0]s01_axi_rdata;
  wire s01_axi_rready;
  wire s01_axi_rvalid;
  wire [31:0]s01_axi_wdata;
  wire s01_axi_wready;
  wire [3:0]s01_axi_wstrb;
  wire s01_axi_wvalid;
  wire [1:0]NLW_inst_s00_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_inst_s00_axi_rresp_UNCONNECTED;
  wire [1:0]NLW_inst_s01_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_inst_s01_axi_rresp_UNCONNECTED;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  assign s01_axi_bresp[1] = \<const0> ;
  assign s01_axi_bresp[0] = \<const0> ;
  assign s01_axi_rresp[1] = \<const0> ;
  assign s01_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_S00_AXI_ADDR_WIDTH = "9" *) 
  (* C_S00_AXI_BASEADDR = "0" *) 
  (* C_S00_AXI_DATA_WIDTH = "32" *) 
  (* C_S00_AXI_HIGHADDR = "4095" *) 
  (* C_S01_AXI_ADDR_WIDTH = "9" *) 
  (* C_S01_AXI_BASEADDR = "0" *) 
  (* C_S01_AXI_DATA_WIDTH = "32" *) 
  (* C_S01_AXI_HIGHADDR = "4095" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmd_queue_v1_0_0 inst
       (.irq_cq(irq_cq),
        .irq_sq(irq_sq),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr({s00_axi_araddr[8],1'b0,1'b0,s00_axi_araddr[5:2],1'b0,1'b0}),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arprot({1'b0,1'b0,1'b0}),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr({s00_axi_awaddr[8],1'b0,1'b0,s00_axi_awaddr[5:2],1'b0,1'b0}),
        .s00_axi_awprot({1'b0,1'b0,1'b0}),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bresp(NLW_inst_s00_axi_bresp_UNCONNECTED[1:0]),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rresp(NLW_inst_s00_axi_rresp_UNCONNECTED[1:0]),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .s01_axi_araddr({s01_axi_araddr[8],1'b0,1'b0,s01_axi_araddr[5:2],1'b0,1'b0}),
        .s01_axi_arprot({1'b0,1'b0,1'b0}),
        .s01_axi_arready(s01_axi_arready),
        .s01_axi_arvalid(s01_axi_arvalid),
        .s01_axi_awaddr({s01_axi_awaddr[8],1'b0,1'b0,s01_axi_awaddr[5:2],1'b0,1'b0}),
        .s01_axi_awprot({1'b0,1'b0,1'b0}),
        .s01_axi_awready(s01_axi_awready),
        .s01_axi_awvalid(s01_axi_awvalid),
        .s01_axi_bready(s01_axi_bready),
        .s01_axi_bresp(NLW_inst_s01_axi_bresp_UNCONNECTED[1:0]),
        .s01_axi_bvalid(s01_axi_bvalid),
        .s01_axi_rdata(s01_axi_rdata),
        .s01_axi_rready(s01_axi_rready),
        .s01_axi_rresp(NLW_inst_s01_axi_rresp_UNCONNECTED[1:0]),
        .s01_axi_rvalid(s01_axi_rvalid),
        .s01_axi_wdata(s01_axi_wdata),
        .s01_axi_wready(s01_axi_wready),
        .s01_axi_wstrb(s01_axi_wstrb),
        .s01_axi_wvalid(s01_axi_wvalid));
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
