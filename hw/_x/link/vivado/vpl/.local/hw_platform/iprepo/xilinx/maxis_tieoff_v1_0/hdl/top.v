// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
`timescale 1ns / 1ps

module maxis_tieoff (
	    input [WIDTH-1:0] S_AXIS_TDATA,
	    input S_AXIS_TVALID,
	    output S_AXIS_TREADY,
	    input S_AXIS_TLAST,
	    input [WIDTH/8-1:0] S_AXIS_TKEEP,
	    input [WIDTH/8-1:0] S_AXIS_TSTRB
	    );

   parameter WIDTH=32;   

   assign S_AXIS_TREADY = 0;
   
   
endmodule


