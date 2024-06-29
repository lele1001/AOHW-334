//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_0ad1.bd
//Design : bd_0ad1
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0ad1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0ad1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Global}" *) (* HW_HANDOFF = "ulp_inst_0_axi_noc_kernel0_0.hwdef" *) 
module bd_0ad1
   (M00_INI_internoc,
    M01_INI_internoc,
    M02_INI_internoc);
  (* X_INTERFACE_INFO = "xilinx.com:interface:inimm:1.0 M00_INI INTERNOC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_INI, ADDR_WIDTH 64, COMPUTED_STRATEGY load, INI_STRATEGY load, MY_CATEGORY pl, NOC_ID -1, WRITE_BUFFER_SIZE 80" *) output [0:0]M00_INI_internoc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:inimm:1.0 M01_INI INTERNOC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M01_INI, ADDR_WIDTH 64, COMPUTED_STRATEGY load, INI_STRATEGY load, MY_CATEGORY pl, NOC_ID -1, WRITE_BUFFER_SIZE 80" *) output [0:0]M01_INI_internoc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:inimm:1.0 M02_INI INTERNOC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M02_INI, ADDR_WIDTH 64, COMPUTED_STRATEGY load, INI_STRATEGY load, MY_CATEGORY pl, NOC_ID -1, WRITE_BUFFER_SIZE 80" *) output [0:0]M02_INI_internoc;

  wire [0:0]stub_clock_dout;

  (* DONT_TOUCH *) 
  bd_0ad1_M00_INI_stub_nmu_0 M00_INI_stub_nmu
       (.NMU_RD_DEST_MODE(1'b0),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(1'b0),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aclk(stub_clock_dout));
  (* DONT_TOUCH *) 
  bd_0ad1_M01_INI_stub_nmu_0 M01_INI_stub_nmu
       (.NMU_RD_DEST_MODE(1'b0),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(1'b0),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aclk(stub_clock_dout));
  (* DONT_TOUCH *) 
  bd_0ad1_M02_INI_stub_nmu_0 M02_INI_stub_nmu
       (.NMU_RD_DEST_MODE(1'b0),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(1'b0),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aclk(stub_clock_dout));
  (* DONT_TOUCH *) 
  bd_0ad1_no_black_box_0 no_black_box
       ();
  (* DONT_TOUCH *) 
  bd_0ad1_stub_clock_0 stub_clock
       (.dout(stub_clock_dout));
endmodule
