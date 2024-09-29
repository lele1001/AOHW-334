// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
`timescale 1ns / 1ps

module axis_ic2sgdma #(
    parameter DATA_TDATA_WIDTH = 64,
    parameter STATUS_TDATA_WIDTH = 32
    )(
    input clk,
    input arstn,
    //DMA interfaces
    output [DATA_TDATA_WIDTH-1:0] data_tdata,
    output data_tvalid,
    output data_tlast,
    input data_tready,
    output [DATA_TDATA_WIDTH/8-1:0] data_tkeep,
    output [STATUS_TDATA_WIDTH-1:0] status_tdata,
    output status_tvalid,
    output status_tlast,
    input status_tready,
    output [STATUS_TDATA_WIDTH/8-1:0] status_tkeep,
    //AXI Stream Router interface
    input [DATA_TDATA_WIDTH-1:0] axis_tdata,
    input axis_tvalid,
    input axis_tlast,
    output axis_tready,
    input [DATA_TDATA_WIDTH/8-1:0] axis_tkeep
    );
    
    localparam idle=1'd0, running=1'd1;
    
    reg state;
    reg [2:0] count;
    reg tlast;
    reg tvalid;
    reg [31:0] tdata;
   
    assign axis_tready = data_tready & (state == running);
        
    assign data_tdata = axis_tdata;
    assign data_tvalid = axis_tvalid & (state == running);
    assign data_tkeep = axis_tkeep;
    assign data_tlast = axis_tlast;   

    assign status_tkeep = 4'hF;
    assign status_tdata = tdata;
    assign status_tlast = tlast;
    assign status_tvalid = tvalid;

    always @(posedge clk) begin
        if(~arstn) begin
            state <= idle;
            count <= 0;
	    tlast <= 0;
	    tvalid <= 0;
	    tdata <= 32'h50000000;
        end
        else begin
            case(state)
                idle: begin
		    tvalid <= 1;		   
	            if(status_tready && tvalid) begin
	                count <= count + 1;
		        tdata <= 0;
		    end
	            if(count == 4 && status_tready)
	                tlast <= 1;
	            if(count == 5 && status_tready) begin
	                state <= running;
	                tlast <= 0;
	                tvalid <= 0;
	            end
	        end
                running: begin
                    count = 0;
		    tdata <= 32'h50000000;
		    if(axis_tlast && data_tready && axis_tvalid)
                        state <= idle;
                end
            endcase
        end
    end
    
endmodule


