`timescale 1ns/1ps

module util_ff_v1_0_1_util_ff
 #(
   parameter [0:0]         C_CLR_INVERTED  = 1'b0,
   parameter [0:0]         C_PRE_INVERTED  = 1'b0,
   parameter [0:0]         C_R_INVERTED    = 1'b0,
   parameter [0:0]         C_S_INVERTED    = 1'b0,
   parameter [0:0]         C_C_INVERTED    = 1'b0,
   parameter [0:0]         C_D_INVERTED    = 1'b0,
   parameter [0:0]         C_G_INVERTED    = 1'b0,
   parameter integer       C_WIDTH         = 1,
   parameter [C_WIDTH-1:0] C_INIT          = 'h0,
   parameter integer       C_FF_TYPE       = 1,
   parameter integer       C_FF_LEVELS     = 1
  )
  (
   input  [C_WIDTH-1:0] D,
   input                clk,
   input                set,
   input                clear,
   input                reset,
   input                preset,
   input                clk_enable,
   input                gate_enable,
   input                G,
   output [C_WIDTH-1:0] Q

  );

genvar i,j;
generate 
  if (C_FF_TYPE == 2)
  begin : FDCE
    for (i = 0; i < C_WIDTH; i = i + 1)
    begin : FDCElp
      // FDCE: D Flip-Flop with Clock Enable and Asynchronous Clear
      FDCE 
        #(
         .INIT            (C_INIT[i]),
         .IS_CLR_INVERTED (C_CLR_INVERTED),
         .IS_C_INVERTED   (C_C_INVERTED),
         .IS_D_INVERTED   (C_D_INVERTED)
         )
        FDCE_inst 
         (
         .Q               (Q[i]),
         .C               (clk),
         .CE              (clk_enable),
         .CLR             (clear),
         .D               (D[i])
         );
    end
  end
endgenerate

generate 
  if (C_FF_TYPE == 3)
  begin : FDSE
    for (i = 0; i < C_WIDTH; i = i + 1)
    begin : FDSElp
      // FDSE: D Flip-Flop with Clock Enable and Synchronous Set
      FDSE 
        #(
         .INIT            (C_INIT[i]),
         .IS_S_INVERTED   (C_S_INVERTED),
         .IS_C_INVERTED   (C_C_INVERTED),
         .IS_D_INVERTED   (C_D_INVERTED)
         )
        FDSE_inst 
         (
         .Q               (Q[i]),
         .C               (clk),
         .CE              (clk_enable),
         .S               (set),
         .D               (D[i])
         );
    end
  end
endgenerate

generate 
  if (C_FF_TYPE == 4)
  begin : FDPE
    for (i = 0; i < C_WIDTH; i = i + 1)
    begin : FDPElp
      // FDPE: D Flip-Flop with Clock Enable and Asynchronous Preset
      FDPE 
        #(
         .INIT            (C_INIT[i]),
         .IS_PRE_INVERTED (C_PRE_INVERTED),
         .IS_C_INVERTED   (C_C_INVERTED),
         .IS_D_INVERTED   (C_D_INVERTED)
         )
        FDPE_inst 
         (
         .Q               (Q[i]),
         .C               (clk),
         .CE              (clk_enable),
         .PRE               (preset),
         .D               (D[i])
         );
    end
  end
endgenerate

generate 
  if (C_FF_TYPE == 1)
  begin : FDRE
    for (i = 0; i < C_WIDTH; i = i + 1)
    begin : FDRElp
      // FDRE: D Flip-Flop with Clock Enable and Synchronous Reset
      FDRE 
        #(
         .INIT            (C_INIT[i]),
         .IS_R_INVERTED   (C_R_INVERTED),
         .IS_C_INVERTED   (C_C_INVERTED),
         .IS_D_INVERTED   (C_D_INVERTED)
         )
        FDRE_inst 
         (
         .Q               (Q[i]),
         .C               (clk),
         .CE              (clk_enable),
         .R               (reset),
         .D               (D[i])
         );
    end
  end
endgenerate

generate 
  if (C_FF_TYPE == 5)
  begin : LDCE
    for (i = 0; i < C_WIDTH; i = i + 1)
    begin : LDCElp
      // LDCE: Transparent Latch with Clock Enable and Asynchronous Clear
      LDCE 
        #(
         .INIT            (C_INIT[i]),
         .IS_CLR_INVERTED (C_CLR_INVERTED),
         .IS_G_INVERTED   (C_G_INVERTED)
         )
         LDCE_inst 
         (
         .Q              (Q[i]),
         .CLR            (clear),
         .D              (D[i]),
         .G              (G),
         .GE             (gate_enable)
         );
    end
  end
endgenerate

generate 
  if (C_FF_TYPE == 6)
  begin : LDPE
    for (i = 0; i < C_WIDTH; i = i + 1)
    begin : LDPElp
      // LDPE: Transparent Latch with Clock Enable and Asynchronous Preset
      LDPE 
        #(
         .INIT            (C_INIT[i]),
         .IS_PRE_INVERTED (C_PRE_INVERTED),
         .IS_G_INVERTED   (C_G_INVERTED)
         )
         LDPE_inst
         (
         .Q              (Q[i]),
         .PRE            (preset),
         .D              (D[i]),
         .G              (G),
         .GE             (gate_enable)
         );
    end
  end
endgenerate

endmodule 


