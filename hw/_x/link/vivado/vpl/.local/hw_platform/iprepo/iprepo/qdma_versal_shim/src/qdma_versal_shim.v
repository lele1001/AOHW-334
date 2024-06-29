// (c) Copyright 2022, Advanced Micro Devices, Inc.
// 
// Permission is hereby granted, free of charge, to any person obtaining a 
// copy of this software and associated documentation files (the "Software"), 
// to deal in the Software without restriction, including without limitation 
// the rights to use, copy, modify, merge, publish, distribute, sublicense, 
// and/or sell copies of the Software, and to permit persons to whom the 
// Software is furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in 
// all copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL 
// THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING 
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER 
// DEALINGS IN THE SOFTWARE.
////////////////////////////////////////////////////////////
// This code is intended for use with the CPM in XDMA configuration.
// This code converts the usr_irq interface of the CPM hardblock into
// the one-hot interrupt interface used on the PL-based XDMA IP. This
// is used to maintain consistency between the CPM hardblock and
// PL-based XDMA IP configurations.

// This conversion does not allow you to assert multiple interrupts
// to be asserted at a time. To properly use this interface only 1
// interrupt can be asserted until the ack is recieved. Once the
// ack is received a second interrupt can be asserted.

// This is different from the PL-based XDMA IP where all of the 
// interrupts can be asserted on the same clock cycle.

`timescale 1ps/1ps

module qdma_versal_shim (
   input             clk,
   input             rstn,
   input [15:0]      usr_irq_req,
   output reg [15:0] usr_irq_ack,
   output reg        usr_irq_in_vld,
   output reg [4:0] usr_irq_in_vec,
   output reg [7:0]  usr_irq_in_fnc,
   input             usr_irq_out_ack
);


wire [15:0] usr_irq_req_cdc;
reg [1:0] state;
reg [15:0] usr_irq_ack_cpy;
integer i;

        xpm_cdc_array_single #(
            //Common module parameters
            .DEST_SYNC_FF   (4), // integer; range: 2-10
            .SIM_ASSERT_CHK (0), // integer; 0=disable simulation messages, 1=enable simulation messages
            .SRC_INPUT_REG  (0), // integer; 0=do not register input, 1=register input
            .WIDTH          (16)  // integer; range: 2-1024
        ) usr_irq_xpm_cdc (
            .src_clk  (1'b0),  // optional; required when SRC_INPUT_REG = 1
            .src_in   (usr_irq_req),
            .dest_clk (clk),
            .dest_out (usr_irq_req_cdc)
        );

always @(posedge clk) begin
  if(!rstn) begin
      state <= 2'd0 ;
      usr_irq_ack <= 16'b0;
      usr_irq_in_vld <= 1'b0;
      usr_irq_in_vec <= 5'b0;
      usr_irq_in_fnc <= 'b0;
      usr_irq_ack_cpy <= 'b0;
  end
  else begin
  case( state )
    2'd0 : begin   
    usr_irq_ack_cpy <= 'b0;          // Initial wait state
    if(|usr_irq_req_cdc) begin
        state <= 2'd1;
    end
    else begin
        state <= 2'd0;
    end
    end
    
    2'd1 : begin            // Send Interrupt request
    for (i = 0; i < 16; i=i+1) begin
      if (usr_irq_req_cdc[i]) begin
    	usr_irq_in_vld <= 1'b1  ;
    	state <= 2'd2;
        if (i > 7) begin
    	   usr_irq_in_vec <= i;
    	   usr_irq_in_fnc <= 'd1;
    	end
    	else begin
    	   usr_irq_in_vec <= i;
    	   usr_irq_in_fnc <= 'd0;
    	end
      end
    end
    end
    2'd2 : begin   // Send ack back once received from QDMA
    if  (usr_irq_out_ack) begin
        state <= 2'd3;
            usr_irq_ack <=  16'b1 << (usr_irq_in_vec) ; 
            usr_irq_ack_cpy <= usr_irq_in_vec ;
    end
    
    end
    2'd3 : begin  // Wait for req to drop
        usr_irq_ack <=  'b0;
        if (usr_irq_req_cdc[usr_irq_ack_cpy] == 1'b0) begin
        state <= 2'd0;
        usr_irq_in_vec <= 'd0 ;
    	usr_irq_in_fnc <= 'd0 ;
    	usr_irq_in_vld <= 'b0  ;
        end
    end 
    default : begin
            state <= 2'd0;
            usr_irq_ack <= 16'b0;
            usr_irq_in_vld <= 1'b0;
            usr_irq_in_vec <= 5'b0;
            usr_irq_in_fnc <= 'b0;
            usr_irq_ack_cpy <= 'b0;
    end   
  endcase
  end  
 end          
endmodule 
