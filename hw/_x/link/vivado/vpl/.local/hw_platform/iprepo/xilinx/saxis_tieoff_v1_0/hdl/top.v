// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
`timescale 1ns / 1ps

module saxis_tieoff (
	    output [WIDTH-1:0] M_AXIS_TDATA,
	    output M_AXIS_TVALID,
	    input M_AXIS_TREADY,
	    output M_AXIS_TLAST,
            output [WIDTH/8-1:0] M_AXIS_TKEEP,
	    output [WIDTH/8-1:0] M_AXIS_TSTRB
	    );

   parameter WIDTH=32;   

   assign M_AXIS_TDATA = {WIDTH{1'b0}};
   assign M_AXIS_TVALID = 0;
   assign M_AXIS_TLAST = 0;
   assign M_AXIS_TKEEP = {WIDTH/8{1'b0}};
   assign M_AXIS_TSTRB = {WIDTH/8{1'b0}};
  
endmodule


