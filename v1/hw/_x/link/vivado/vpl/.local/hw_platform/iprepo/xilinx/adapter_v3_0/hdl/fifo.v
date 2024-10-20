// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
// d52cbaca0ef8cf4fd3d6354deb5066970fb6511d02d18d15835e6014ed847fb0
// (c) Copyright 2018 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module fifo #(
    parameter DEPTH=16,
    parameter WIDTH=32,
    parameter IS_ASYNC=0,
    parameter ADDR_WIDTH = log2(DEPTH),
    parameter FIFO_TYPE = (DEPTH*WIDTH > 1024*36) ? "ultra" : ((DEPTH*WIDTH > 32*256) ? "block" : "distributed")
    ) (
    input wr_clk,
    input [WIDTH-1:0] din,
    input write,
    output full, 
    output [WIDTH-1:0] dout,
    input read,
    output empty,
    input rd_clk,
    input rst
    );
    
    function integer log2(input integer x);
        integer i;
        if (x == 0)
            log2 = 0;
        else begin
            i = 0;
            while (x > (2**i)) begin
        i = i+1;
            end
            log2 = i;
        end
    endfunction
    
    xpm_fifo_sync # (    
      .FIFO_MEMORY_TYPE          (FIFO_TYPE),        //string; "auto", "block", or "distributed";
      .ECC_MODE                  ("no_ecc"),         //string; "no_ecc" or "en_ecc";
 //     .RELATED_CLOCKS            (IS_ASYNC),         //positive integer; 0 or 1
      .FIFO_WRITE_DEPTH          (DEPTH),            //positive integer
      .WRITE_DATA_WIDTH          (WIDTH),            //positive integer
      .WR_DATA_COUNT_WIDTH       (ADDR_WIDTH),       //positive integer
      .PROG_FULL_THRESH          (10),               //positive integer
      .FULL_RESET_VALUE          (0),                //positive integer; 0 or 1
      .READ_MODE                 ("fwft"),           //string; "std" or "fwft";
      .FIFO_READ_LATENCY         (1),                //positive integer;
      .READ_DATA_WIDTH           (WIDTH),            //positive integer
      .RD_DATA_COUNT_WIDTH       (ADDR_WIDTH),       //positive integer
      .PROG_EMPTY_THRESH         (10),               //positive integer
      .DOUT_RESET_VALUE          ("0"),              //string
//      .CDC_SYNC_STAGES           (2),                //positive integer
      .WAKEUP_TIME               (0)                 //positive integer; 0 or 2;
    ) xpm_fifo_sync_inst (
       .rst              (rst),
      .wr_clk           (wr_clk),
      .wr_en            (write),
      .din              (din),
      .full             (full),
//    .overflow         (overflow),
//    .wr_rst_busy      (wr_rst_busy),
      .rd_en            (read),
      .dout             (dout),
      .empty            (empty),
//    .underflow        (underflow),
//    .rd_rst_busy      (rd_rst_busy),
//    .prog_full        (prog_full),
//    .wr_data_count    (wr_data_count),
//    .prog_empty       (prog_empty),
//    .rd_data_count    (rd_data_count),
      .sleep            (1'b0),
      .injectsbiterr    (1'b0),
      .injectdbiterr    (1'b0),
      .sbiterr          (),
      .dbiterr          ()
    );
            
endmodule


