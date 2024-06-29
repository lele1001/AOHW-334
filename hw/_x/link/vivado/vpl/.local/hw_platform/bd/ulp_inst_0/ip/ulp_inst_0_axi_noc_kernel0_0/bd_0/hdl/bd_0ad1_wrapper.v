//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_0ad1_wrapper.bd
//Design : bd_0ad1_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0ad1_wrapper
   (M00_INI_internoc,
    M01_INI_internoc,
    M02_INI_internoc);
  output [0:0]M00_INI_internoc;
  output [0:0]M01_INI_internoc;
  output [0:0]M02_INI_internoc;

  wire [0:0]M00_INI_internoc;
  wire [0:0]M01_INI_internoc;
  wire [0:0]M02_INI_internoc;

  bd_0ad1 bd_0ad1_i
       (.M00_INI_internoc(M00_INI_internoc),
        .M01_INI_internoc(M01_INI_internoc),
        .M02_INI_internoc(M02_INI_internoc));
endmodule
