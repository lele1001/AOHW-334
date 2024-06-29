// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
`timescale 1ns / 1ps

module sgdma2axis_ic #(
    parameter DATA_TDATA_WIDTH = 64,
    parameter CTRL_TDATA_WIDTH = 32,
    parameter TDEST_WIDTH = 4
    )(
    input clk,
    input arstn,
    //DMA interfaces
    input [DATA_TDATA_WIDTH-1:0] data_tdata,
    input data_tvalid,
    input data_tlast,
    output data_tready,
    input [DATA_TDATA_WIDTH/8-1:0] data_tkeep,
    input [CTRL_TDATA_WIDTH-1:0] ctrl_tdata,
    input ctrl_tvalid,
    input ctrl_tlast,
    output ctrl_tready,
    input [CTRL_TDATA_WIDTH/8-1:0] ctrl_tkeep,
    //AXI Stream Router interface
    output [DATA_TDATA_WIDTH-1:0] axis_tdata,
    output axis_tvalid,
    output axis_tlast,
    input axis_tready,
    output [DATA_TDATA_WIDTH/8-1:0] axis_tkeep,
    output [TDEST_WIDTH-1:0] axis_tdest
    );
    
    localparam idle=1'd0, running=1'd1;
    
    reg state;
    reg [TDEST_WIDTH-1:0] tdest;
    reg [2:0] count;
    reg tready;
   
    assign ctrl_tready = tready;
    assign data_tready = axis_tready & (state == running);
        
    assign axis_tdata = data_tdata;
    assign axis_tvalid = data_tvalid & (state == running);
    assign axis_tkeep = data_tkeep;
    assign axis_tdest = tdest;
    assign axis_tlast = data_tlast;   
   
    always @(posedge clk) begin
        if(~arstn) begin
            state <= idle;
            tdest <= 0;
            count <= 0;
            tready <= 0;
        end
        else begin
            case(state)
                idle: begin
                    tready <= 1;
                    if(ctrl_tvalid && tready)
                        count <= count + 1;
                        
                    if(count == 2 && ctrl_tvalid)
                        tdest <= ctrl_tdata[TDEST_WIDTH-1:0];
                        
                    if(ctrl_tlast && ctrl_tvalid) begin
                        state <= running;
		        tready <= 0;
		    end		       
                end
                running: begin
                    count = 0;
		    if(data_tlast && axis_tready && data_tvalid)
                        state <= idle;
                end
            endcase
        end
    end
    
endmodule


