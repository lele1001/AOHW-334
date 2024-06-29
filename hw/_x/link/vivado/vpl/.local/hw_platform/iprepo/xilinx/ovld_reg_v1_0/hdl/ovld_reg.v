// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx
// Engineer: Sam Skalicky
//
// Create Date: 11/2/2015 10:05:03 AM
// Design Name: Output Valid Scalar Register
// Module Name: ovld_reg
// Project Name: SDSoC Framework
// Target Devices: Zynq
// Tool Versions: 2015.4
// Description: This module stores values as signaled by the valid signal and 
//      overwrites again and again until done signal, then produces an output
//      valid signal.
//
// Dependencies: None
//
// Revision: 1.0
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////

module ovld_reg (
    //Input data signals from Acc
    input [DATA_WIDTH-1:0] data_in,
    input vld_in,
    //AP_CTRL bus
    input ap_start,
    input ap_done,
    //Same clock as Acc
    input clk,
    //Output data signals to adapter
    output reg [DATA_WIDTH-1:0] data_out,
    output reg vld_out
    );
        
parameter DATA_WIDTH=32;
    
    reg [DATA_WIDTH-1:0] data_reg;
    reg ever_valid;	//tracks whether the input data was ever valid
    wire rising_start;
    wire rising_done;

    always @(rising_done or rising_start or vld_in or data_in or data_reg or ever_valid) begin
        vld_out <= 0;
        data_out <= data_reg;
        
        if(rising_done & rising_start & vld_in) begin   //if done & just started & currently valid
            data_out <= data_in;
            vld_out <= 1;
        end
        else if(rising_done & ~rising_start) begin  //if done & already started
            if(vld_in) begin      //and is currently valid
                data_out <= data_in;
                vld_out <= 1;
            end
            else if(ever_valid) begin //and has ever been valid
                data_out <= data_reg;
                vld_out <= 1;
            end
        end
    end 
   
    //Capture rising done signal
    Event_Pulse ep0 (
        .in(ap_done),
        .clk(clk),
        .rising_edge(rising_done),
        .falling_edge(),
        .both_edges()
    );
    
    //Capture rising start signal
    Event_Pulse ep1 (
        .in(ap_start),
        .clk(clk),
        .rising_edge(rising_start),
        .falling_edge(),
        .both_edges()
    );

    //latch in new data as it is produced (overwriting old intermediary values)
    always @(posedge clk) begin
	   //latch in data when valid
        if(vld_in)
            data_reg <= data_in;

        //clear on start
        ever_valid <= (vld_in | ever_valid) & ~(rising_start & ~vld_in);
    end
    
endmodule
