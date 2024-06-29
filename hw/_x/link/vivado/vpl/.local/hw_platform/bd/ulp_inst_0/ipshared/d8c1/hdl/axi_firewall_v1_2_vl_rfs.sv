// (c) Copyright 2017 Xilinx, Inc. All rights reserved.
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
//*****************************************************************************

`timescale 1ps/1ps
`default_nettype none

(* DowngradeIPIdentifiedWarnings="yes" *) 
module axi_firewall_v1_2_2_checks_mi #(
  parameter integer MAXRBURSTS = 32,
  parameter integer MAXWBURSTS = 32,
  parameter integer C_NUM_RTHREADS       = 1                ,
  parameter integer C_NUM_WTHREADS       = 1                ,
  parameter integer C_ENABLE_PROTOCOL_CHECKS = 1,
  parameter integer C_ENABLE_TIMEOUT_CHECKS = 1
) (
  // AXI Monitor
   input wire                          ACLK,
   input wire                          ACLKEN,
   input wire                          R_ARESET,
   input wire                          W_ARESET,
   input wire                          WAIT_STROBE,
   input wire                          WAIT_DELAY,
   input wire [C_NUM_WTHREADS-1:0]     AWID,  // 1-hot index after remapping
   input wire                          AWVALID,
   input wire                          AWREADY,
   input wire                          WLAST,
   input wire                          WVALID,
   input wire                          WREADY,
   input wire [C_NUM_WTHREADS-1:0]     BID_CHECK,  // ID index used for error checking (disabled during flush)
   input wire [C_NUM_WTHREADS-1:0]     BID_COUNT,  // ID index used to pop command scoreboard
   input wire                          S_BVALID,  // Produced on SI; transfers advance the state of the CAM
   input wire                          M_BVALID,  // Received on MI; may get blocked
   input wire                          BREADY,
   input wire [C_NUM_RTHREADS-1:0]     ARID,  // 1-hot index after remapping
   input wire [7:0]                    ARLEN,
   input wire                          ARVALID,
   input wire                          ARREADY,
   input wire [C_NUM_RTHREADS-1:0]     RID_CHECK,  // ID index used for error checking (disabled during flush)
   input wire [C_NUM_RTHREADS-1:0]     RID_COUNT,  // ID index used to pop command scoreboard
   input wire                          RLAST,
   input wire                          S_RVALID,  // Produced on SI; transfers advance the state of the CAM
   input wire                          M_RVALID,  // Received on MI; may get blocked
   input wire                          RREADY,
   input wire [1:0]                    M_RRESP,
   input wire [1:0]                    M_BRESP,
   
  // Run-time check parameters
   input wire [15:0]                   MAX_AW_WAITS,
   input wire [15:0]                   MAX_AR_WAITS,
   input wire [15:0]                   MAX_W_WAITS,
   input wire [15:0]                   MAX_CONTINUOUS_RTRANSFERS_WAITS,
   input wire [15:0]                   MAX_WRITE_TO_BVALID_WAITS,
   input wire [31:0]                   soft_pause,
   
  // Check outputs
   output wire                         RECS_ARREADY_MAX_WAIT ,
   output wire                         RECS_CONTINUOUS_RTRANSFERS_MAX_WAIT ,
   output wire                         ERRS_RDATA_NUM ,
   output wire                         RECS_AWREADY_MAX_WAIT ,
   output wire                         RECS_WREADY_MAX_WAIT ,
   output wire                         RECS_WRITE_TO_BVALID_MAX_WAIT ,
   output wire                         ERRS_BRESP ,
   output wire                         ERRS_RVALID_STABLE ,
   output wire                         ERRS_BVALID_STABLE ,
   output wire                         XILINX_RD_SLVERR,
   output wire                         XILINX_RD_DECERR,
   output wire                         XILINX_WR_SLVERR,
   output wire                         XILINX_WR_DECERR,
   output wire                         r_check ,
   output wire                         w_check ,
   
  // Auto-response scoreboard outputs
   output wire [C_NUM_RTHREADS-1:0]    r_final ,   // Last beat of read burst (for each thread)
   output wire [C_NUM_RTHREADS-1:0]    rresp_pending,  // Any outstanding read commands (per thread)?
   output wire [C_NUM_WTHREADS-1:0]    bresp_pending,   // Any outstanding completed write bursts (per thread)?
   output wire                         write_activity,  //   // Any incomplete activity on AW or W?
   output wire                         w_stall  // Too many W bursts ahead of AW
  );

  localparam integer P_R_ACCEPTANCE_LOG = $clog2((MAXRBURSTS<2) ? 2 : MAXRBURSTS);
  localparam integer P_W_ACCEPTANCE_LOG = $clog2((MAXWBURSTS<2) ? 2 : MAXWBURSTS);
  localparam [15:0]  P_DEFLT_WAIT = 16'hFFFF;
  localparam [1:0] P_SLVERR = 2'b10;
  localparam [1:0] P_DECERR = 2'b11;
  localparam integer CH_AR = 0;
  localparam integer CH_AW = 1;
  localparam integer CH_W  = 2;
  localparam integer CH_R  = 3;
  localparam integer CH_B  = 4;

genvar gen_rthread;
genvar gen_wthread;
generate

////////////////////////////////////////////////////// READ ////////////////////////////////////////////////////////
  reg r_pending_d = 1'b0;
  wire [C_NUM_RTHREADS-1:0] rcmd_push;
  wire [C_NUM_RTHREADS-1:0] rxfer;
  wire [C_NUM_RTHREADS-1:0] rcmd_pop;
  wire [C_NUM_RTHREADS-1:0] rnum_fault;
  wire [C_NUM_RTHREADS-1:0] rcmd_valid;
  reg  [C_NUM_RTHREADS-1:0] r_final_i   = {C_NUM_RTHREADS{1'b1}};
  reg  [C_NUM_RTHREADS-1:0] rcmd_active = {C_NUM_RTHREADS{1'b0}};
  reg  [C_NUM_RTHREADS-1:0][8:0] RCount = {C_NUM_RTHREADS{9'b0}};
  wire [C_NUM_RTHREADS-1:0][7:0] rlen;
  
if (MAXRBURSTS>0) begin : gen_read_checks
  
  assign r_check = 
    RECS_ARREADY_MAX_WAIT                | 
    RECS_CONTINUOUS_RTRANSFERS_MAX_WAIT  |
    ERRS_RDATA_NUM                       |
    ERRS_RVALID_STABLE ;
  
  assign r_final = r_final_i;
  
  for (gen_rthread=0; gen_rthread<C_NUM_RTHREADS; gen_rthread=gen_rthread+1) begin : gen_rthread_loop
    assign rcmd_push[gen_rthread]  = ARID[gen_rthread] & ARREADY & ARVALID;
    assign rxfer[gen_rthread]      = RID_COUNT[gen_rthread] & S_RVALID & RREADY;
    assign rcmd_pop[gen_rthread]   = (rxfer[gen_rthread] & r_final_i[gen_rthread]) | ~rcmd_active[gen_rthread];
    assign rresp_pending[gen_rthread] = rcmd_valid[gen_rthread] | rcmd_active[gen_rthread];
    assign rnum_fault[gen_rthread] = RID_CHECK[gen_rthread] & ((~r_final_i[gen_rthread] & RLAST) | (r_final_i[gen_rthread] & ~RLAST));
    
    sc_util_v1_0_4_axic_reg_srl_fifo #(
       .C_FIFO_SIZE(P_R_ACCEPTANCE_LOG),
       .C_FIFO_WIDTH(8),
       .C_REG_CONFIG(1)  // Zero-latency
      ) 
      rlen_queue (
       .aclk    (ACLK),
       .aclken  (ACLKEN),
       .areset  (R_ARESET),
       .s_mesg  (ARLEN),
       .s_valid (rcmd_push[gen_rthread]),
       .s_ready (),  // Protected from overflow by threadcam module stalling
       .s_afull (),
       .m_mesg  (rlen[gen_rthread]),
       .m_valid (rcmd_valid[gen_rthread]),  // Exported to SLVERR module
       .m_ready (rcmd_pop[gen_rthread])
      );
  
    always @(posedge ACLK) begin
      if (R_ARESET) begin
        RCount[gen_rthread] <= 9'h0;
        rcmd_active[gen_rthread] <= 1'b0;
        r_final_i[gen_rthread] <= 1'b1;
      end else if (ACLKEN) begin
        if (rcmd_active[gen_rthread]) begin
          if (rxfer[gen_rthread]) begin
            if (r_final_i[gen_rthread]) begin
              if (rcmd_valid[gen_rthread]) begin
                RCount[gen_rthread] <= rlen[gen_rthread];
                r_final_i[gen_rthread] <= rlen[gen_rthread] == 0;
              end else begin
                rcmd_active[gen_rthread] <= 1'b0;
              end
            end else begin
              RCount[gen_rthread] <= RCount[gen_rthread] - 9'h1;
              r_final_i[gen_rthread] <= RCount[gen_rthread] == 1;
            end
          end
        end else begin  // Not active
          if (rcmd_valid[gen_rthread]) begin
            RCount[gen_rthread] <= rlen[gen_rthread];
            r_final_i[gen_rthread] <= rlen[gen_rthread] == 0;
            rcmd_active[gen_rthread] <= 1'b1;
          end
        end
      end
    end
    
  end : gen_rthread_loop
  
  //---------------
  // XILINX_RD_SLVERR, XILINX_RD_DECERR
  //---------------
  
  assign XILINX_RD_SLVERR = M_RVALID & (M_RRESP == P_SLVERR);
  assign XILINX_RD_DECERR = M_RVALID & (M_RRESP == P_DECERR);
  
end else begin : gen_no_read
    assign r_check = 1'b0;
    assign r_final = 1'b0;
    assign rresp_pending = 1'b0;
   assign XILINX_RD_SLVERR = 1'b0;
   assign XILINX_RD_DECERR = 1'b0;
end

if ((MAXRBURSTS>0) && (C_ENABLE_PROTOCOL_CHECKS != 0)) begin : gen_read_protocol

  //---------------
  // ERRS_RVALID_STABLE
  //---------------
    always @(posedge ACLK) begin
      if (R_ARESET) begin
        r_pending_d <= 1'b0;
      end else if (ACLKEN) begin
        r_pending_d <= M_RVALID & ~RREADY;
      end
    end
    
    assign ERRS_RVALID_STABLE = ~M_RVALID & r_pending_d;
  
  //---------------
  // ERRS_RDATA_NUM
  //---------------
  
  assign ERRS_RDATA_NUM = M_RVALID & |rnum_fault;
  
end else begin : gen_no_read_protocol
  assign ERRS_RDATA_NUM = 1'b0;
  assign ERRS_RVALID_STABLE = 1'b0;
end

if ((MAXRBURSTS>0) && (C_ENABLE_TIMEOUT_CHECKS != 0)) begin : gen_read_timeout
  
  //---------------
  // RECS_ARREADY_MAX_WAIT
  //---------------
  
  reg [15:0]  ar_cnt = P_DEFLT_WAIT;
      always @(posedge ACLK) begin
        if (R_ARESET) begin
          ar_cnt <= P_DEFLT_WAIT;
        end else if (ACLKEN) begin
          if (ARVALID & ! ARREADY ) begin
            if (WAIT_STROBE & ~WAIT_DELAY & ~soft_pause[CH_AR]) begin
              ar_cnt <= ar_cnt - 1;
            end
          end else begin
            ar_cnt <= MAX_AR_WAITS;
          end
        end
      end

  assign RECS_ARREADY_MAX_WAIT = (MAX_AR_WAITS != 0) && (ar_cnt == 0);
      
  //---------------
  // RECS_CONTINUOUS_RTRANSFERS_MAX_WAIT : Cycles waiting for RVALID, after AR command, exceeds MAX_CONTINUOUS_RTRANSFERS_WAITS
  //---------------

  reg [15:0]  ar_r_cnt = P_DEFLT_WAIT;  // Timer
  reg [P_R_ACCEPTANCE_LOG:0] ar_active = {P_R_ACCEPTANCE_LOG+1{1'b0}};  // Number of AR commands outstanding
  wire ar_push;
  wire r_pop;
  wire ar_r_any_active;
      assign ar_push = ARVALID & ARREADY;  // AR command
      assign r_pop = M_RVALID & RREADY & RLAST;  // R burst completion
      assign ar_r_any_active = |ar_active;  // Positive count value
      always @(posedge ACLK) begin
        if (R_ARESET) begin
          ar_r_cnt <= P_DEFLT_WAIT;
          ar_active <= {P_R_ACCEPTANCE_LOG+1{1'b0}};
        end else if (ACLKEN) begin
          if (ar_push & !r_pop) begin
            ar_active <= ar_active + 1;
          end else if (!ar_push & r_pop) begin
            ar_active <= ar_active - 1;
          end
          if (ar_r_any_active & ~M_RVALID) begin  // RVALID stall
            if (WAIT_STROBE & ~WAIT_DELAY & ~soft_pause[CH_R]) begin
              ar_r_cnt <= ar_r_cnt - 1;
            end
          end else begin
            ar_r_cnt <= MAX_CONTINUOUS_RTRANSFERS_WAITS;
          end
        end
      end

  assign RECS_CONTINUOUS_RTRANSFERS_MAX_WAIT = (MAX_CONTINUOUS_RTRANSFERS_WAITS != 0) && (ar_r_cnt == 0);
      
end else begin : gen_no_read_timeout
  assign RECS_ARREADY_MAX_WAIT = 1'b0;
  assign RECS_CONTINUOUS_RTRANSFERS_MAX_WAIT = 1'b0;
end

////////////////////////////////////////////////////// WRITE /////////////////////////////////////////////

  reg b_pending_d = 1'b0;
  wire [C_NUM_WTHREADS-1:0] wcmd_push;
  wire [C_NUM_WTHREADS-1:0] wcmd_pop;
  wire [C_NUM_WTHREADS-1:0] bresp_fault;
  wire [C_NUM_WTHREADS-1:0] awid_d;
  reg  [P_W_ACCEPTANCE_LOG+1:0] aw_w_active = {P_W_ACCEPTANCE_LOG+2{1'b0}};  // Number of AW commands exceeding W bursts 
  reg  [C_NUM_WTHREADS-1:0][P_W_ACCEPTANCE_LOG+1:0] WCount = {C_NUM_WTHREADS{{P_W_ACCEPTANCE_LOG+2{1'b0}}}};
  reg  wdata_activity  = 1'b0;
  reg  w_stall_i  = 1'b0;
  wire awid_pop;
  wire awid_valid;
  
  wire aw_push;
  wire w_push;
  wire b_pop;
  
if (MAXWBURSTS>0) begin : gen_write_checks
  
  assign w_check = 
    RECS_AWREADY_MAX_WAIT                |
    RECS_WREADY_MAX_WAIT                 |
    RECS_WRITE_TO_BVALID_MAX_WAIT        |
    ERRS_BRESP                           |
    ERRS_BVALID_STABLE ;
  
  assign aw_push = AWVALID & AWREADY;
  assign w_push = WVALID & WREADY & WLAST; 
  assign b_pop = S_BVALID & BREADY;

  assign w_stall = w_stall_i;
  assign write_activity    = aw_w_active[P_W_ACCEPTANCE_LOG+1] | awid_valid | wdata_activity | AWVALID;  // Any activity on AW or W?
  assign awid_pop  = aw_w_active[P_W_ACCEPTANCE_LOG+1] | w_push;  // Pre-assert pop when WLAST preceeds AW, otherwise wait for WLAST.
  
  sc_util_v1_0_4_axic_reg_srl_fifo #(
     .C_FIFO_SIZE(P_W_ACCEPTANCE_LOG),
     .C_FIFO_WIDTH(C_NUM_WTHREADS),
     .C_REG_CONFIG(1)  // Combinatorial SI-to-MI when empty
    ) 
    awid_queue (
     .aclk    (ACLK),
     .aclken  (ACLKEN),
     .areset  (W_ARESET),
     .s_mesg  (AWID),
     .s_valid (aw_push),
     .s_ready (),  // Protected from overflow by threadcam module stalling
     .s_afull (),
     .m_mesg  (awid_d),
     .m_valid (awid_valid), 
     .m_ready (awid_pop)
    );

    always @(posedge ACLK) begin
      if (W_ARESET) begin
        aw_w_active <= {P_W_ACCEPTANCE_LOG+2{1'b0}};
        wdata_activity  <= 1'b0;
        w_stall_i <=  1'b0;
      end else if (ACLKEN) begin
        if (aw_push & !w_push) begin
          aw_w_active <= aw_w_active + 1;
          w_stall_i <=  1'b0;
        end else if (!aw_push & w_push) begin
          aw_w_active <= aw_w_active - 1;
          w_stall_i <= aw_w_active[P_W_ACCEPTANCE_LOG+1 : P_W_ACCEPTANCE_LOG] == 2'b10;
        end
        if (w_push) begin
          wdata_activity  <= 1'b0;
        end else if (WVALID) begin
          wdata_activity  <= 1'b1;
        end
      end
    end

  for (gen_wthread=0; gen_wthread<C_NUM_WTHREADS; gen_wthread=gen_wthread+1) begin : gen_wthread_loop
    assign wcmd_push[gen_wthread]     = awid_d[gen_wthread] & awid_pop & awid_valid;
    assign bresp_pending[gen_wthread] = WCount[gen_wthread]!=0;
    assign wcmd_pop[gen_wthread]      = BID_COUNT[gen_wthread] & S_BVALID & BREADY & bresp_pending[gen_wthread];
    assign bresp_fault[gen_wthread]   = BID_CHECK[gen_wthread] & (WCount[gen_wthread]==0);
    
    always @(posedge ACLK) begin
      if (W_ARESET) begin
        WCount[gen_wthread] <= 0;
      end else if (ACLKEN) begin
        if (wcmd_push[gen_wthread] & !wcmd_pop[gen_wthread]) begin
          WCount[gen_wthread] <= WCount[gen_wthread] + 1;
        end else if (!wcmd_push[gen_wthread] & wcmd_pop[gen_wthread]) begin
          WCount[gen_wthread] <= WCount[gen_wthread] - 1;
        end
      end
    end
  end : gen_wthread_loop
  
  //---------------
  // XILINX_WR_SLVERR, XILINX_WR_DECERR
  //---------------
  
  assign XILINX_WR_SLVERR = M_BVALID & (M_BRESP == P_SLVERR);
  assign XILINX_WR_DECERR = M_BVALID & (M_BRESP == P_DECERR);
  
end else begin : gen_no_write
  assign w_check = 0;
  assign bresp_pending = 1'b0;
  assign write_activity = 1'b0;
  assign w_stall = 1'b0;
  assign XILINX_WR_SLVERR = 1'b0;
  assign XILINX_WR_DECERR = 1'b0;
end

if ((MAXWBURSTS>0) && (C_ENABLE_PROTOCOL_CHECKS != 0)) begin : gen_write_protocol
  
  //---------------
  // ERRS_BVALID_STABLE
  //---------------
    always @(posedge ACLK) begin
      if (W_ARESET) begin
        b_pending_d <= 1'b0;
      end else if (ACLKEN) begin
        b_pending_d <= M_BVALID & ~BREADY;
      end
    end
    
    assign ERRS_BVALID_STABLE = ~M_BVALID & b_pending_d;
  
  //---------------
  // ERRS_BRESP
  //---------------
  
  assign ERRS_BRESP = M_BVALID & |bresp_fault;

end else begin : gen_no_write_protocol
  assign ERRS_BRESP = 1'b0;
  assign ERRS_BVALID_STABLE = 1'b0;
end

if ((MAXWBURSTS>0) && (C_ENABLE_TIMEOUT_CHECKS != 0)) begin : gen_write_timeout
  
  //---------------
  // RECS_AWREADY_MAX_WAIT
  //---------------
  
  reg [15:0]  aw_cnt = P_DEFLT_WAIT;
      always @(posedge ACLK) begin
        if (W_ARESET) begin
          aw_cnt <= P_DEFLT_WAIT;
        end else if (ACLKEN) begin
          if (AWVALID & ! AWREADY) begin
            if (WAIT_STROBE & ~WAIT_DELAY & ~soft_pause[CH_AW]) begin
              aw_cnt <= aw_cnt - 1;
            end
          end else begin
            aw_cnt <= MAX_AW_WAITS;
          end
        end
      end

  assign RECS_AWREADY_MAX_WAIT = (MAX_AW_WAITS != 0) && (aw_cnt == 0);
      
  //---------------
  // RECS_WREADY_MAX_WAIT
  //---------------
  
  reg [15:0]  w_cnt = P_DEFLT_WAIT;
      always @(posedge ACLK) begin
        if (W_ARESET) begin
          w_cnt <= P_DEFLT_WAIT;
        end else if (ACLKEN) begin
          if (WVALID & ! WREADY) begin
            if (~w_stall_i) begin
              if (WAIT_STROBE & ~WAIT_DELAY & ~soft_pause[CH_W]) begin
                w_cnt <= w_cnt - 1;
              end
            end
          end else begin
            w_cnt <= MAX_W_WAITS;
          end
        end
      end

  assign RECS_WREADY_MAX_WAIT = (MAX_W_WAITS != 0) && (w_cnt == 0);
           
  //---------------
  // RECS_WRITE_TO_BVALID_MAX_WAIT : Cycles waiting for BVALID, after AW command or W burst completion, exceeds MAX_WRITE_TO_BVALID_WAITS
  //---------------

  reg [P_W_ACCEPTANCE_LOG:0] aw_active = {P_W_ACCEPTANCE_LOG+1{1'b0}};  // Number of AW commands outstanding
  reg [P_W_ACCEPTANCE_LOG:0] w_active = {P_W_ACCEPTANCE_LOG+1{1'b0}};  // Number of W bursts outstanding
  reg [15:0]  w_b_cnt = P_DEFLT_WAIT;  // Timer
  wire w_b_any_active;
      assign w_b_any_active = |aw_active & |w_active;  // Both AW and W outstanding counts >0
      
      always @(posedge ACLK) begin
        if (W_ARESET) begin
          w_b_cnt <= P_DEFLT_WAIT;
        end else if (ACLKEN) begin
          if (w_b_any_active & ~M_BVALID) begin  // BVALID stall
            if (WAIT_STROBE & ~WAIT_DELAY & ~soft_pause[CH_B]) begin
              w_b_cnt <= w_b_cnt - 1;
            end
          end else begin
            w_b_cnt <= MAX_WRITE_TO_BVALID_WAITS;
          end
        end
      end
  
      always @(posedge ACLK) begin
        if (W_ARESET) begin
          aw_active <= {P_W_ACCEPTANCE_LOG+1{1'b0}};
          w_active <= {P_W_ACCEPTANCE_LOG+1{1'b0}};
        end else if (ACLKEN) begin
          if (aw_push & !b_pop) begin
            aw_active <= aw_active + 1;
          end else if (!aw_push & b_pop) begin
            aw_active <= aw_active - 1;
          end
          if (w_push & !b_pop) begin
            w_active <= w_active + 1;
          end else if (!w_push & b_pop) begin
            w_active <= w_active - 1;
          end
        end
      end

  assign RECS_WRITE_TO_BVALID_MAX_WAIT = (MAX_WRITE_TO_BVALID_WAITS != 0) && (w_b_cnt == 0);
  
end else begin : gen_no_write_timeout
  assign RECS_AWREADY_MAX_WAIT = 1'b0;
  assign RECS_WREADY_MAX_WAIT = 1'b0;
  assign RECS_WRITE_TO_BVALID_MAX_WAIT = 1'b0;
end
endgenerate
endmodule
`default_nettype wire


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
//*****************************************************************************

`timescale 1ps/1ps
`default_nettype none

(* DowngradeIPIdentifiedWarnings="yes" *) 
module axi_firewall_v1_2_2_checks_si #(
  parameter integer MAXRBURSTS = 32,
  parameter integer MAXWBURSTS = 32,
  parameter integer C_ADDR_WIDTH            = 32,
  parameter integer C_NUM_RTHREADS       = 1 ,
  parameter integer C_NUM_WTHREADS       = 1 ,
  parameter [2:0] C_RDWIDTH_SIZE = 3'h2,
  parameter [2:0] C_WDWIDTH_SIZE = 3'h2,
  parameter integer C_ENABLE_PROTOCOL_CHECKS = 1,
  parameter integer C_ENABLE_TIMEOUT_CHECKS = 1
) (
  // AXI Monitor
   input wire                          ACLK,
   input wire                          ACLKEN,
   input wire                          R_ARESET,
   input wire                          W_ARESET,
   input wire                          WAIT_STROBE,
   input wire                          WAIT_DELAY,
   input wire [C_ADDR_WIDTH-1:0]       AWADDR,
   input wire [2:0]                    AWSIZE,
   input wire [7:0]                    AWLEN,
   input wire [1:0]                    AWBURST,
   input wire                          S_AWVALID,
   input wire                          M_AWVALID,
   input wire                          AWREADY,
   input wire                          WLAST,
   input wire                          S_WVALID,
   input wire                          M_WVALID,
   input wire                          WREADY,
   input wire                          M_WREADY,
   input wire                          BVALID, 
   input wire                          BREADY,
   input wire [C_ADDR_WIDTH-1:0]       ARADDR,
   input wire [2:0]                    ARSIZE,
   input wire [7:0]                    ARLEN,
   input wire [1:0]                    ARBURST,
   input wire                          S_ARVALID,
   input wire                          M_ARVALID,
   input wire                          M_ARREADY,
   input wire                          S_RVALID,
   input wire                          S_RREADY,
   input wire                          M_RVALID,
   input wire                          M_RREADY,
   input wire                          M_RLAST,
   input wire [1:0]                    M_RRESP,
   input wire [1:0]                    M_BRESP,
   input wire                          EXT_ARVALID,
   input wire                          EXT_ARREADY,
   input wire                          EXT_AWVALID,
   input wire                          EXT_AWREADY,
   input wire                          EXT_WVALID,
   input wire                          EXT_WREADY,
   input wire                          si_r_error,
   input wire                          si_w_error,
   
  // Run-time check parameters
   input wire [15:0]                   MAX_R_WAITS                         ,
   input wire [15:0]                   MAX_B_WAITS                         ,
   input wire [15:0]                   MAX_CONTINUOUS_WTRANSFERS_WAITS     ,
   input wire [15:0]                   MAX_W_TO_AWVALID_WAITS          ,
   input wire [31:0]                   soft_pause,
   
  // Check outputs
   output wire                         ERRM_ARVALID_STABLE                 ,          
   output wire                         ERRM_ARADDR_BOUNDARY                ,
   output wire                         ERRM_ARSIZE                         ,
   output wire                         RECM_RREADY_MAX_WAIT                ,
   output wire                         ERRM_WVALID_STABLE                  ,
   output wire                         ERRM_AWVALID_STABLE                 ,
   output wire                         ERRM_AWADDR_BOUNDARY                ,
   output wire                         ERRM_AWSIZE                         ,
   output wire                         ERRM_WDATA_NUM                      ,           
   output wire                         RECM_W_TO_AWVALID_MAX_WAIT      ,
   output wire                         RECM_CONTINUOUS_WTRANSFERS_MAX_WAIT ,
   output wire                         RECM_BREADY_MAX_WAIT                ,
   output wire                         XILINX_RD_SLVERR,
   output wire                         XILINX_RD_DECERR,
   output wire                         XILINX_WR_SLVERR,
   output wire                         XILINX_WR_DECERR,

   output wire                         r_check ,
   output wire                         w_check ,
   
  // Auto-response scoreboard outputs
   output wire                         r_final ,   // Last beat of read burst
   output wire                         w_final ,   // Last beat of write burst
   output wire                         ar_cmd_en,
   output wire                         aw_cmd_en,
   output wire                         wcmd_active,
   output wire                         wxfer_en,
   output wire                         rresp_pending,  // Any outstanding read commands?
   output wire                         bresp_pending   // Any outstanding completed write bursts?
  );

  localparam integer P_R_ACCEPTANCE_LOG = $clog2((MAXRBURSTS<2) ? 2 : MAXRBURSTS);
  localparam integer P_W_ACCEPTANCE_LOG = $clog2((MAXWBURSTS<2) ? 2 : MAXWBURSTS);
  localparam [15:0]  P_DEFLT_WAIT = 16'hFFFF;
  localparam [1:0] P_SLVERR = 2'b10;
  localparam [1:0] P_DECERR = 2'b11;
  localparam integer CH_AR = 0;
  localparam integer CH_AW = 1;
  localparam integer CH_W  = 2;
  localparam integer CH_R  = 3;
  localparam integer CH_B  = 4;

generate

//////////////////////////////////////// READ //////////////////////////////////////////
  reg ar_pending_d = 1'b0;
  wire [11:0] araddr_i;
  wire  rcmd_push;
  wire  rxfer;
  wire  rcmd_pop;
  reg   r_final_i   = 1'b1;
  reg   rcmd_active = 1'b0;
  reg  [P_R_ACCEPTANCE_LOG:0] rcmd_Count = 0;
  wire r_cmd_check;
  
if (MAXRBURSTS>0) begin : gen_read_checks

  assign r_check = 
            ERRM_ARVALID_STABLE  |
            ERRM_ARADDR_BOUNDARY |
            ERRM_ARSIZE          |
            RECM_RREADY_MAX_WAIT ;
  
  assign r_cmd_check = 
            ERRM_ARADDR_BOUNDARY |
            ERRM_ARSIZE          ;
  
  assign ar_cmd_en = 1'b1;
  
  //---------------
  // XILINX_RD_SLVERR, XILINX_RD_DECERR
  //---------------
  
  assign XILINX_RD_SLVERR = M_RVALID & (M_RRESP == P_SLVERR);
  assign XILINX_RD_DECERR = M_RVALID & (M_RRESP == P_DECERR);
  
  //---------------
  // Outstanding Reads
  //---------------
  
  assign r_final = r_final_i;
  
    assign rcmd_push  = M_ARREADY & M_ARVALID & ~r_cmd_check;
    assign rxfer      = M_RVALID & M_RREADY;
    assign rcmd_pop   = rxfer & M_RLAST;
    assign rresp_pending = rcmd_active;
    
    always @(posedge ACLK) begin
      if (R_ARESET) begin
        rcmd_Count <= 0;
        rcmd_active <= 1'b0;
        r_final_i <= 1'b1;
      end else if (ACLKEN) begin
        if (rcmd_active) begin
          if (rxfer) begin
            r_final_i <= M_RLAST;
            if (M_RLAST & ~rcmd_push) begin
              rcmd_active <= |(rcmd_Count>>1) ;  // rcmd_Count >= 2
              rcmd_Count <= rcmd_Count - 1;
            end
          end
        end
        if (rcmd_push) begin
          if (~rcmd_pop) begin
            rcmd_active <= 1'b1;
            rcmd_Count <= rcmd_Count + 1;
          end
        end
      end
    end
    
end else begin : gen_no_read
    assign r_check = 1'b0;
    assign r_final = 1'b0;
    assign rresp_pending = 1'b0;
    assign ar_cmd_en = 1'b1;
    assign XILINX_RD_SLVERR = 1'b0;
    assign XILINX_RD_DECERR = 1'b0;
end

if ((MAXRBURSTS>0) && (C_ENABLE_PROTOCOL_CHECKS != 0)) begin : gen_read_protocol
  //---------------
  // ERRM_ARVALID_STABLE
  //---------------
    always @(posedge ACLK) begin
      if (R_ARESET) begin
        ar_pending_d <= 1'b0;
      end else if (ACLKEN) begin
        ar_pending_d <= EXT_ARVALID & ~EXT_ARREADY;
      end
    end
    
    assign ERRM_ARVALID_STABLE = ~EXT_ARVALID & ar_pending_d;
  
  //---------------
  // ERRM_ARADDR_BOUNDARY
  //---------------
  assign araddr_i = ARADDR;
  assign ERRM_ARADDR_BOUNDARY = S_ARVALID & (ARBURST==2'b01) & |(({16'b0, araddr_i} + (ARLEN << ARSIZE)) >> 12);
  
  //---------------
  // ERRM_ARSIZE
  //---------------
  
  assign ERRM_ARSIZE = S_ARVALID & ({1'b0, ARSIZE} > {1'b0, C_RDWIDTH_SIZE});
      
end else begin : gen_no_read_protocol
  assign ERRM_ARVALID_STABLE     = 1'b0;
  assign ERRM_ARADDR_BOUNDARY  = 1'b0;
  assign ERRM_ARSIZE  = 1'b0;
end
  
if ((MAXRBURSTS>0) && (C_ENABLE_TIMEOUT_CHECKS != 0)) begin : gen_read_timeout
  
  //---------------
  // RECM_RREADY_MAX_WAIT
  //---------------
  
  reg [15:0]  r_cnt = P_DEFLT_WAIT;
      always @(posedge ACLK) begin
        if (R_ARESET) begin
          r_cnt <= P_DEFLT_WAIT;
        end else if (ACLKEN) begin
          if (S_RVALID & ! S_RREADY & |r_cnt ) begin
            if (WAIT_STROBE & ~WAIT_DELAY & ~soft_pause[CH_R]) begin
              r_cnt <= r_cnt - 1;
            end
          end else begin
            r_cnt <= MAX_R_WAITS;
          end
        end
      end

  assign RECM_RREADY_MAX_WAIT = (MAX_R_WAITS != 0) && (r_cnt == 0);
      
end else begin : gen_no_read_timeout
  assign RECM_RREADY_MAX_WAIT  = 1'b0;
end

//////////////////////////////////////////////////// WRITE //////////////////////////////////////////////////
  reg aw_pending_d = 1'b0;
  reg w_pending_d = 1'b0;
  wire [11:0] awaddr_i;
  wire aw_xfer;
  wire w_complete;
  wire  wxfer;
  wire  wcmd_pop;
  wire  wnum_fault;
  wire wcmd_valid;
  wire [7:0] wlen;
  reg   w_final_i   = 1'b1;
  reg   wcmd_active_i = 1'b0;
  reg  [8:0] WCount = 9'h0;
  wire w_cmd_check;
  wire b_pop;
  reg [15:0]  aw_w_cnt = P_DEFLT_WAIT;  // Timer
  reg [P_W_ACCEPTANCE_LOG:0] aw_active = {P_W_ACCEPTANCE_LOG+1{1'b0}};  // Number of AW commands outstanding
  reg [15:0]  w_aw_cnt = P_DEFLT_WAIT;  // Timer
  reg [15:0]  b_cnt = P_DEFLT_WAIT;
  reg [P_W_ACCEPTANCE_LOG:0] write_active = {P_W_ACCEPTANCE_LOG+1{1'b0}};  // Number of write transactions outstanding
  
if (MAXWBURSTS>0) begin : gen_write_checks
  
  assign w_check = 
            ERRM_WVALID_STABLE                  |
            ERRM_AWVALID_STABLE                 |
            ERRM_AWADDR_BOUNDARY                |
            ERRM_AWSIZE                         |
            ERRM_WDATA_NUM                      |
            RECM_W_TO_AWVALID_MAX_WAIT      |
            RECM_CONTINUOUS_WTRANSFERS_MAX_WAIT |
            RECM_BREADY_MAX_WAIT                ;
  
  assign w_cmd_check = 
            ERRM_AWADDR_BOUNDARY                |
            ERRM_AWSIZE                         ;
  
  assign wcmd_active = wcmd_active_i;
  assign aw_xfer = M_AWVALID & AWREADY & ~w_cmd_check;
  assign w_complete = M_WVALID & WREADY & WLAST; 
  assign b_pop = BVALID & BREADY;
  assign bresp_pending = |write_active;
    
  always @(posedge ACLK) begin
    if (W_ARESET) begin
      write_active <= {P_W_ACCEPTANCE_LOG+1{1'b0}};
    end else if (ACLKEN) begin
      if (aw_xfer & !b_pop) begin
        write_active <= write_active + 1;
      end else if (!aw_xfer & b_pop) begin
        write_active <= write_active - 1;
      end
    end
  end

  assign w_final = w_final_i;
  assign wxfer      = (si_w_error | wnum_fault) ? (M_WVALID & M_WREADY) : (S_WVALID & WREADY);
  assign wcmd_pop   = (wxfer & w_final_i) | ~wcmd_active_i;
    
  sc_util_v1_0_4_axic_reg_srl_fifo #(
     .C_FIFO_SIZE(P_W_ACCEPTANCE_LOG),
     .C_FIFO_WIDTH(8),
     .C_REG_CONFIG(1)  // Zero-latency
    ) 
    wlen_queue (
     .aclk    (ACLK),
     .aclken  (ACLKEN),
     .areset  (W_ARESET),
     .s_mesg  (AWLEN),
     .s_valid (aw_xfer),
     .s_ready (aw_cmd_en),
     .s_afull (),
     .m_mesg  (wlen),
     .m_valid (wcmd_valid),
     .m_ready (wcmd_pop)
    );

  always @(posedge ACLK) begin
    if (W_ARESET) begin
      WCount <= 9'h0;
      wcmd_active_i <= 1'b0;
      w_final_i <= 1'b1;
    end else if (ACLKEN) begin
      if (wcmd_active_i) begin
        if (wxfer) begin
          if (w_final_i) begin
            if (wcmd_valid) begin
              WCount <= wlen;
              w_final_i <= wlen == 0;
            end else begin
              wcmd_active_i <= 1'b0;
            end
          end else begin
            WCount <= WCount - 9'h1;
            w_final_i <= WCount == 1;
          end
        end
      end else begin 
        if (wcmd_valid) begin
          WCount <= wlen;
          w_final_i <= wlen == 0;
          wcmd_active_i <= 1'b1;
        end
      end
    end
  end

  always @(posedge ACLK) begin
    if (W_ARESET) begin
      aw_active <= {P_W_ACCEPTANCE_LOG+1{1'b0}};
    end else if (ACLKEN) begin
      if (aw_xfer & !w_complete) begin
        aw_active <= aw_active + 1;
      end else if (!aw_xfer & w_complete & |aw_active) begin
        aw_active <= aw_active - 1;
      end
    end
  end
  assign wxfer_en = |aw_active;  // W-transfers may not propagate through SI firewall before their corresponding AW

  //---------------
  // XILINX_WR_SLVERR, XILINX_WR_DECERR
  //---------------
  
  assign XILINX_WR_SLVERR = BVALID & (M_BRESP == P_SLVERR);
  assign XILINX_WR_DECERR = BVALID & (M_BRESP == P_DECERR);
  
end else begin : gen_no_write
  assign w_check = 0;
  assign bresp_pending = 1'b0;
  assign XILINX_WR_SLVERR = 1'b0;
  assign XILINX_WR_DECERR = 1'b0;
  assign aw_cmd_en = 1'b1;
  assign w_final = 1'b0;
  assign wxfer_en =  1'b0;
  assign wcmd_active =  1'b0;
end

if ((MAXWBURSTS>0) && (C_ENABLE_PROTOCOL_CHECKS != 0)) begin : gen_write_protocol
  
  //---------------
  // ERRM_AWVALID_STABLE
  //---------------
  
    always @(posedge ACLK) begin
      if (W_ARESET) begin
        aw_pending_d <= 1'b0;
      end else if (ACLKEN) begin
        aw_pending_d <= EXT_AWVALID & ~EXT_AWREADY;
      end
    end
    
    assign ERRM_AWVALID_STABLE = ~EXT_AWVALID & aw_pending_d;
  
  //---------------
  // ERRM_WVALID_STABLE
  //---------------
    always @(posedge ACLK) begin
      if (W_ARESET) begin
        w_pending_d <= 1'b0;
      end else if (ACLKEN) begin
        w_pending_d <= EXT_WVALID & ~EXT_WREADY;
      end
    end
    
    assign ERRM_WVALID_STABLE = ~EXT_WVALID & w_pending_d;
  
  //---------------
  // ERRM_AWADDR_BOUNDARY
  //---------------
  
  assign awaddr_i = AWADDR;
  assign ERRM_AWADDR_BOUNDARY = S_AWVALID & (AWBURST==2'b01) & |(({16'b0, awaddr_i} + (AWLEN << AWSIZE)) >> 12);
  
  //---------------
  // ERRM_AWSIZE
  //---------------
  
  assign ERRM_AWSIZE = S_AWVALID & ({1'b0, AWSIZE} > {1'b0, C_WDWIDTH_SIZE});
  
  //---------------
  // ERRM_WDATA_NUM
  //---------------
  
  assign wnum_fault = (~w_final_i & WLAST) | (w_final_i & ~WLAST);
  assign ERRM_WDATA_NUM = S_WVALID & wxfer_en & wnum_fault;
  
end else begin : gen_no_write_protocol
  assign ERRM_WVALID_STABLE  = 1'b0;
  assign ERRM_AWVALID_STABLE  = 1'b0;
  assign ERRM_AWADDR_BOUNDARY  = 1'b0;
  assign ERRM_WDATA_NUM  = 1'b0;
  assign ERRM_AWSIZE  = 1'b0;
  assign wnum_fault = 1'b0;
end

if ((MAXWBURSTS>0) && (C_ENABLE_TIMEOUT_CHECKS != 0)) begin : gen_write_timeout
  
  //---------------
  // RECM_CONTINUOUS_WTRANSFERS_MAX_WAIT : Cycles waiting for WVALID, after AW command, exceeds MAX_CONTINUOUS_WTRANSFERS_WAITS
  //---------------

  wire aw_w_any_active;
  assign aw_w_any_active = |aw_active;  // Positive count value
  
  always @(posedge ACLK) begin
    if (W_ARESET) begin
      aw_w_cnt <= P_DEFLT_WAIT;
    end else if (ACLKEN) begin
      if (aw_w_any_active & ~S_WVALID) begin  // WVALID stall
        if (WAIT_STROBE & ~WAIT_DELAY & ~soft_pause[CH_W]) begin
          aw_w_cnt <= aw_w_cnt - 1;
        end
      end else begin
        aw_w_cnt <= MAX_CONTINUOUS_WTRANSFERS_WAITS;
      end
    end
  end

  assign RECM_CONTINUOUS_WTRANSFERS_MAX_WAIT = (MAX_CONTINUOUS_WTRANSFERS_WAITS != 0) && (aw_w_cnt == 0);
      
  //---------------
  // RECM_W_TO_AWVALID_MAX_WAIT
  //---------------
  
  always @(posedge ACLK) begin
    if (W_ARESET) begin
      w_aw_cnt <= P_DEFLT_WAIT;
    end else if (ACLKEN) begin
      if (S_WVALID & ~wxfer_en & ~S_AWVALID) begin  // W-transfer received on SI before corresponding AW
        if (WAIT_STROBE & ~WAIT_DELAY & ~soft_pause[CH_AW]) begin
          w_aw_cnt <= w_aw_cnt - 1;
        end
      end else begin
        w_aw_cnt <= MAX_W_TO_AWVALID_WAITS;
      end
    end
  end

  assign RECM_W_TO_AWVALID_MAX_WAIT = (MAX_W_TO_AWVALID_WAITS != 0) && (w_aw_cnt == 0);
      
  //---------------
  // RECM_BREADY_MAX_WAIT
  //---------------
  
  always @(posedge ACLK) begin
    if (W_ARESET) begin
      b_cnt <= P_DEFLT_WAIT;
    end else if (ACLKEN) begin
      if (BVALID & ! BREADY & |b_cnt ) begin
        if (WAIT_STROBE & ~WAIT_DELAY & ~soft_pause[CH_B]) begin
          b_cnt <= b_cnt - 1;
        end
      end else begin
        b_cnt <= MAX_B_WAITS;
      end
    end
  end

  assign RECM_BREADY_MAX_WAIT = (MAX_B_WAITS != 0) && (b_cnt == 0);
      
end else begin : gen_no_write_timeout
  assign RECM_W_TO_AWVALID_MAX_WAIT  = 1'b0;
  assign RECM_CONTINUOUS_WTRANSFERS_MAX_WAIT  = 1'b0;
  assign RECM_BREADY_MAX_WAIT  = 1'b0;
end

endgenerate
endmodule
`default_nettype wire


//  (c) Copyright 2017 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES.
//-----------------------------------------------------------------------------
//
// Verilog-standard:  System Verilog 2012
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none

`include "sc_util_v1_0_4_constants.vh"
  
(* DowngradeIPIdentifiedWarnings="yes" *) 
module axi_firewall_v1_2_2_threadcam # (
  parameter integer C_NUM_THREADS       = 1                ,
  parameter integer C_ID_WIDTH          = 0                ,
  parameter integer C_NUM_OUTSTANDING   = 32
) (
  input  wire                                        aclk,
  input  wire                                        aclken,
  input  wire                                        areset,

// Generic address channel SI
  input  wire [(C_ID_WIDTH==0?1:C_ID_WIDTH)-1:0]     s_aid,
  input  wire                                        s_avalid,
  input  wire                                        s_aready,

// Response monitor ports
  input  wire [(C_ID_WIDTH==0?1:C_ID_WIDTH)-1:0]     m_rid,
  input  wire                                        m_rlast,
  input  wire                                        m_rvalid,
  input  wire                                        m_rready,
  
// CAM results
  output wire [C_NUM_THREADS-1:0]                    aid_hot,
  output wire [C_NUM_THREADS-1:0]                    rid_hot,
  output wire                                        rid_mismatch,
  output wire                                        cmd_en,  // Throttle forward A-channel propagation during initialization or CAM allocation
  
// Reverse ID lookup
  input  wire [C_NUM_THREADS-1:0]                    reverse_hot,
  output wire [(C_ID_WIDTH==0?1:C_ID_WIDTH)-1:0]     reverse_id,
  input  wire                                        flush
);

import sc_util_v1_0_4_pkg::*;

localparam integer P_INDEX_WIDTH = (C_NUM_THREADS<2) ? 1 : $clog2(C_NUM_THREADS);
localparam integer P_ACCEPTANCE_SIZE = $clog2(C_NUM_OUTSTANDING<2?2:C_NUM_OUTSTANDING);
localparam integer P_BYPASS = 0;
localparam integer P_FULLY_PIPELINED = 1;
localparam integer P_PIPELINED_REG_STALL = 2;
localparam integer P_ID_WIDTH = (C_ID_WIDTH==0) ? 1 : C_ID_WIDTH;

function [P_ID_WIDTH-1:0] f_mux_id
  (
   input [C_NUM_THREADS*P_ID_WIDTH-1:0] id_array,
   input [C_NUM_THREADS-1:0] sel
   );
  integer i;
  reg [C_NUM_THREADS*P_ID_WIDTH-1:0] carry;
  begin
    carry[P_ID_WIDTH-1:0] = {P_ID_WIDTH{((sel>>1)==0)?1'b1:1'b0}} & id_array[P_ID_WIDTH-1:0];
    if (C_NUM_THREADS>1) begin
      for (i=1;i<C_NUM_THREADS;i=i+1) begin
        carry[i*P_ID_WIDTH +: P_ID_WIDTH] = 
          carry[(i-1)*P_ID_WIDTH +: P_ID_WIDTH] |
          ({P_ID_WIDTH{sel[i]}} & id_array[i*P_ID_WIDTH +: P_ID_WIDTH]);
      end
    end
    f_mux_id = carry[P_ID_WIDTH*C_NUM_THREADS-1 : P_ID_WIDTH*(C_NUM_THREADS-1)];
  end
endfunction

genvar gen_thread;
generate
  
  if (C_ID_WIDTH==0) begin : gen_no_cam
    logic [P_ACCEPTANCE_SIZE:0]                                       trans_count = {P_ACCEPTANCE_SIZE+1{1'b0}} ;
    logic                                                             max_count = 1'b0;
    logic                                                             any_push;
    logic                                                             any_pop;
    
    assign any_push      = s_avalid & s_aready & ~max_count;
    assign any_pop       = m_rvalid & m_rready & m_rlast;
    assign rid_mismatch  = trans_count == 0;
    assign cmd_en        = ~max_count;
    assign aid_hot       = 1'b1;
    assign rid_hot       = 1'b1;
    assign reverse_id    = 0;
    
    always @(posedge aclk) begin
      if (areset) begin
        trans_count <= 0;
        max_count <= 1'b0;
      end else if (aclken) begin
        if (any_push & ~any_pop) begin
          max_count <= trans_count == (C_NUM_OUTSTANDING<1?1:C_NUM_OUTSTANDING)-1;
          trans_count <= trans_count + 1;
        end else if (~any_push & any_pop & |trans_count) begin
          max_count <= 1'b0;
          trans_count <= trans_count - 1;
        end
      end
    end
    
  end else begin : gen_cam
  
    logic                                          s_a_xfer;
    logic                                          match_thread;
    logic                                          cmd_en_i;
    logic                                          push_si_thread;
    logic                                          use_saved_thread;
    logic                                          push_saved_thread;
    logic                                          use_new_thread;
    logic                                          push_new_thread;
    logic                                          save_aid;
    logic                                          free_push;
    logic                                          free_ready;
    logic                                          init_push;
    logic                                          allocate_available;
    logic                                          max_count = 1'b0;
    logic                                          any_push;
    logic                                          any_pop;
    logic [C_NUM_THREADS-1:0]                      thread_last = {C_NUM_THREADS{1'b0}};
    logic [C_NUM_THREADS-1:0]                      thread_valid = {C_NUM_THREADS{1'b0}};
    logic [C_NUM_THREADS-1:0]                      thread_complete;
    logic [C_NUM_THREADS-1:0]                      thread_complete_d = {C_NUM_THREADS{1'b0}};
    logic [C_NUM_THREADS-1:0]                      thread_init;
    logic [C_NUM_THREADS-1:0]                      thread_push;
    logic [C_NUM_THREADS-1:0]                      thread_pop;
    logic [C_NUM_THREADS-1:0]                      aid_match;
    logic [C_NUM_THREADS-1:0]                      aid_match_d;
    logic [C_NUM_THREADS-1:0]                      rid_hot_i;
    logic [C_NUM_THREADS-1:0]                      allocate_next;
    logic [C_NUM_THREADS-1:0]                      free_thread;
    logic [C_NUM_THREADS-1:0]                      allocate_cntr = 1'b1;
    logic [P_ID_WIDTH-1:0]                         s_aid_d;
    logic [C_NUM_THREADS*P_ID_WIDTH-1:0]           active_id ;
    logic [C_NUM_THREADS-1:0][P_ACCEPTANCE_SIZE:0] active_cnt = {C_NUM_THREADS{{P_ACCEPTANCE_SIZE+1{1'b0}}}} ;
    logic [P_ACCEPTANCE_SIZE:0]                    trans_count = {P_ACCEPTANCE_SIZE+1{1'b0}} ;
    
    typedef enum {INIT, IDLE, ALLOCATE, OVERFLOW, PENDING} t_state;
      t_state state = INIT;
      t_state next;
    
    always @ * begin
      next = state;  // Default: hold state unless re-assigned
      match_thread = 1'b0;  // default
      push_si_thread = 1'b0;  // default
      use_saved_thread = 1'b0;  // default
      push_saved_thread = 1'b0;  // default
      use_new_thread = 1'b0;  // default
      push_new_thread = 1'b0;  // default
      init_push = 1'b0;  // default
      save_aid = 1'b0;  // default
      cmd_en_i = 1'b0;  // default
      
      case (state)
        INIT: begin  // Pre-load thread allocation queue
          cmd_en_i = 1'b0;  // Disable all command transfers between SI and MI (Stall the pipeline)
          init_push = 1'b1;  // Push next thread index into free-thread queue
          if (free_ready & allocate_cntr[C_NUM_THREADS-1]) begin  // Max thread value reached?
            next = IDLE;
          end
        end  // INIT
        
        IDLE: begin  // Waiting for SI transfer
          if (s_avalid) begin
            if (|aid_match) begin  // a*id matches an active thread
              match_thread = 1'b1;  // Currently matching thread index will be used (save it in case of stall)
              if (max_count) begin  // Active transaction counter at maximum?
                next = OVERFLOW;
                cmd_en_i = 1'b0;  // Stall the pipeline
                use_saved_thread = 1'b1;  // Don't let saved thread get de-allocated
              end else begin  // Successful thread match
                cmd_en_i = 1'b1;  // Allow VALID to propagate
                if (s_aready) begin
                  push_si_thread = 1'b1;
                  next = IDLE;
                end else begin  // Wait for completed handshake
                  next = PENDING;
                end
              end
            end else begin  // SI mismatched all threads
              next = ALLOCATE;  // Wait for thread to allocate
              save_aid = 1'b1;
              cmd_en_i = 1'b0;  // Stall
            end
          end
        end  // IDLE
        
        PENDING: begin  // Waiting for completed handshake
          cmd_en_i = 1'b1;  // Allow VALID and READY to propagate
          match_thread = 1'b0;  // Save matching thread index (in case thread pops to 0 before aready)
          use_saved_thread = 1'b1;  // Don't let saved thread get de-allocated
          if (s_aready) begin
            push_saved_thread = 1'b1;
            next = IDLE;
          end
        end  // PENDING
                  
        ALLOCATE: begin  // Waiting to allocate (SI mismatched all threads)
          if (allocate_available) begin
            use_new_thread = 1'b1;  // Propagate index of new thread
            if (max_count) begin
              cmd_en_i = 1'b0;  // Stall until trans count drops
            end else begin
              cmd_en_i = 1'b1;  // Allow VALID and READY to propagate
              if (s_aready) begin  // Wait for completed handshake (continue to loop to this test)
                next = IDLE;
                push_new_thread = 1'b1;  // Initialize new thread in CAM
              end
            end
          end else begin
            cmd_en_i = 1'b0;  // Continue stall waiting for vacant thread
          end
        end  // ALLOCATE
        
        OVERFLOW: begin  // SI transfer hit max transaction count (SI matched a thread)
          use_saved_thread = 1'b1;  // Propagate saved thread index, and don't let saved thread get de-allocated
          if (max_count) begin
            cmd_en_i = 1'b0;  // Continue stall
          end else begin
            cmd_en_i = 1'b1;  // Allow VALID and READY to propagate
            if (s_aready) begin  // Wait for completed handshake (continue to loop to this test)
              next = IDLE;
              push_saved_thread = 1'b1;
            end
          end
        end  // OVERFLOW
      endcase
    end
    
    always @(posedge aclk) begin
      if (areset) begin
        state <= INIT;
      end else begin
        if (aclken) begin
          state <= next;
        end
      end
    end
    
    always @(posedge aclk) begin
      if (areset) begin
        allocate_cntr <= 1'b1;  // 1-hot counter (shifter)
      end else begin
        if (aclken) begin
          if (free_ready & ~allocate_cntr[C_NUM_THREADS-1]) begin
            allocate_cntr <= allocate_cntr << 1;  // Used only to pre-load thread allocation queue during INIT
          end
        end
      end
    end
    
    assign s_a_xfer      = s_avalid & s_aready;
    assign free_push     = init_push | (|thread_complete_d);
    assign free_thread   = init_push ? allocate_cntr : thread_complete_d;
    assign aid_hot       = use_new_thread ? allocate_next : use_saved_thread ? aid_match_d : aid_match;  // Thread index to propagate
    assign rid_hot       = rid_hot_i;
    assign rid_mismatch  = ~|rid_hot_i;
    assign cmd_en        = cmd_en_i;
    assign any_push      = push_new_thread | push_si_thread | push_saved_thread;
    assign any_pop       = m_rvalid & m_rready & m_rlast;
    assign reverse_id    = f_mux_id(active_id, reverse_hot);
    
    for (gen_thread=0; gen_thread<C_NUM_THREADS; gen_thread=gen_thread+1) begin : gen_thread_loop
      assign aid_match[gen_thread]       = thread_valid[gen_thread] && (s_aid == active_id[gen_thread*P_ID_WIDTH +: P_ID_WIDTH]);  // Current command ID matches this thread
      assign rid_hot_i[gen_thread]       = (thread_valid[gen_thread] && (m_rid == active_id[gen_thread*P_ID_WIDTH +: P_ID_WIDTH]));  // Response ID matches this thread
      assign thread_init[gen_thread]     = push_new_thread & allocate_next[gen_thread];  // Initialize thread
      assign thread_push[gen_thread]     = (push_si_thread & aid_match[gen_thread]) | (push_saved_thread & aid_match_d[gen_thread]);  // Increment existing thread
      assign thread_pop[gen_thread]      = any_pop & (flush ? reverse_hot[gen_thread] : rid_hot_i[gen_thread]);  // Decrement response thread
      assign thread_complete[gen_thread] = ~thread_push[gen_thread] & thread_pop[gen_thread] & thread_last[gen_thread];
    
      always @(posedge aclk) begin
        if (areset) begin
          thread_valid[gen_thread] <= 1'b0;
          active_cnt[gen_thread] <= 0; 
          thread_last[gen_thread] <= 1'b0;
          thread_complete_d[gen_thread] <= 1'b0;
        end else if (aclken) begin
          thread_complete_d[gen_thread] <= thread_complete[gen_thread] &   // Last pop
            ~((match_thread & aid_match[gen_thread]) | (use_saved_thread & aid_match_d[gen_thread]));  // But don't de-allocate a pending thread push
          if (thread_init[gen_thread]) begin
            thread_valid[gen_thread] <= 1'b1;
            thread_last[gen_thread] <= 1'b1;
            active_cnt[gen_thread] <= 1;
          end else begin
            if (thread_push[gen_thread] & ~thread_pop[gen_thread]) begin
              thread_valid[gen_thread] <= 1'b1;
              thread_last[gen_thread] <= (active_cnt[gen_thread]==0);
              active_cnt[gen_thread] <= active_cnt[gen_thread] + 1;
            end else if (~thread_push[gen_thread] & thread_pop[gen_thread]) begin
              thread_valid[gen_thread] <= ~thread_last[gen_thread];
              thread_last[gen_thread] <= (active_cnt[gen_thread]==2);
              active_cnt[gen_thread] <= active_cnt[gen_thread] - 1;
            end
          end
        end 
      end
    
      always @(posedge aclk) begin
        if (aclken) begin
          if (thread_init[gen_thread]) begin
            active_id[gen_thread*P_ID_WIDTH +: P_ID_WIDTH] <= s_aid_d;
          end
        end 
      end 
    end  // gen_thread loop ///////////
    
    always @(posedge aclk) begin
      if (areset) begin
        trans_count <= 0;
        max_count <= 1'b0;
      end else if (aclken) begin
        if (any_push & ~any_pop) begin
          max_count <= trans_count == (C_NUM_OUTSTANDING<1?1:C_NUM_OUTSTANDING)-1;
          trans_count <= trans_count + 1;
        end else if (~any_push & any_pop & |trans_count) begin
          max_count <= 1'b0;
          trans_count <= trans_count - 1;
        end
      end
    end
    
    always @(posedge aclk) begin
      if (aclken) begin
        if (match_thread) begin
          aid_match_d <= aid_match;  // Save currently matching thread until stall, if any, is resolved
        end
        if (save_aid) begin
          s_aid_d <= s_aid;  // Save in-bound s_aid until ready to allocate new thread
        end
      end
    end
    
    sc_util_v1_0_4_axic_reg_srl_fifo #(
       .C_FIFO_SIZE(P_INDEX_WIDTH),
       .C_FIFO_WIDTH(C_NUM_THREADS),
       .C_REG_CONFIG(2)  // Fully pipelined
      ) 
      allocate_queue (
       .aclk    (aclk),
       .aclken  (aclken),
       .areset  (areset),
       .s_mesg  (free_thread),
       .s_valid (free_push),
       .s_ready (free_ready),
       .s_afull (),
       .m_mesg  (allocate_next),
       .m_valid (allocate_available),
       .m_ready (push_new_thread)
      );
      
  end : gen_cam      
endgenerate
endmodule : axi_firewall_v1_2_2_threadcam


`default_nettype wire



//  (c) Copyright 2017 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------
//
// AXI Protocol Firewall
//
//--------------------------------------------------------------------------
//
// Structure:
//   axi_firewall_v1_2_2_top
//
//--------------------------------------------------------------------------


`timescale 1ps/1ps

(* DowngradeIPIdentifiedWarnings="yes" *) 
module axi_firewall_v1_2_2_top #
  (
   parameter         C_FAMILY                 = "rtl",
   parameter integer C_PROTOCOL               = 0,
   parameter integer C_ID_WIDTH               = 0,
   parameter integer C_ADDR_WIDTH             = 32,
   parameter integer C_RDATA_WIDTH            = 32,
   parameter integer C_WDATA_WIDTH            = 32,
   parameter integer C_AWUSER_WIDTH           = 0,
   parameter integer C_ARUSER_WIDTH           = 0,
   parameter integer C_WUSER_WIDTH            = 0,
   parameter integer C_RUSER_WIDTH            = 0,
   parameter integer C_BUSER_WIDTH            = 0,
   parameter integer C_NUM_READ_THREADS       = 1,
   parameter integer C_NUM_WRITE_THREADS      = 1,
   parameter integer C_NUM_READ_OUTSTANDING   = 32,
   parameter integer C_NUM_WRITE_OUTSTANDING  = 32,
   parameter integer C_ENABLE_PIPELINING      = 1,
   parameter integer C_MASK_ERR_RESP          = 0,
   parameter integer C_ENABLE_CTL_CLOCK       = 0,
   parameter integer C_ENABLE_PROTOCOL_CHECKS = 1,
   parameter integer C_ENABLE_TIMEOUT_CHECKS  = 1,
   parameter integer C_ENABLE_PRESCALER       = 1,
   parameter integer C_ENABLE_INITIAL_DELAY   = 1,
   parameter integer C_FIREWALL_MODE          = 0
   )
  (
   // System Signals
   input wire aclk,
   input wire aclk_ctl,
   input wire aresetn,
   input wire aclken,
   
   // Firewall Slave Interface
   input  wire [((C_ID_WIDTH==0)?1:C_ID_WIDTH)-1:0]           s_axi_awid,
   input  wire [C_ADDR_WIDTH-1:0]                             s_axi_awaddr,
   input  wire [((C_PROTOCOL == 1) ? 4 : 8)-1:0]              s_axi_awlen,
   input  wire [3-1:0]                                        s_axi_awsize,
   input  wire [2-1:0]                                        s_axi_awburst,
   input  wire [((C_PROTOCOL == 1) ? 2 : 1)-1:0]              s_axi_awlock,
   input  wire [4-1:0]                                        s_axi_awcache,
   input  wire [3-1:0]                                        s_axi_awprot,
   input  wire [4-1:0]                                        s_axi_awqos,
   input  wire [4-1:0]                                        s_axi_awregion,
   input  wire [(C_AWUSER_WIDTH==0?1:C_AWUSER_WIDTH)-1:0]     s_axi_awuser,
   input  wire                                                s_axi_awvalid,
   output wire                                                s_axi_awready,
   input  wire [((C_ID_WIDTH==0)?1:C_ID_WIDTH)-1:0]           s_axi_wid,
   input  wire [C_WDATA_WIDTH-1:0]                            s_axi_wdata,
   input  wire [C_WDATA_WIDTH/8-1:0]                          s_axi_wstrb,
   input  wire                                                s_axi_wlast,
   input  wire [(C_WUSER_WIDTH==0?1:C_WUSER_WIDTH)-1:0]       s_axi_wuser,
   input  wire                                                s_axi_wvalid,
   output wire                                                s_axi_wready,
   output wire [((C_ID_WIDTH==0)?1:C_ID_WIDTH)-1:0]           s_axi_bid,
   output wire [2-1:0]                                        s_axi_bresp,
   output wire [(C_BUSER_WIDTH==0?1:C_BUSER_WIDTH)-1:0]       s_axi_buser,
   output wire                                                s_axi_bvalid,
   input  wire                                                s_axi_bready,
   input  wire [((C_ID_WIDTH==0)?1:C_ID_WIDTH)-1:0]           s_axi_arid,
   input  wire [C_ADDR_WIDTH-1:0]                             s_axi_araddr,
   input  wire [((C_PROTOCOL == 1) ? 4 : 8)-1:0]              s_axi_arlen,
   input  wire [3-1:0]                                        s_axi_arsize,
   input  wire [2-1:0]                                        s_axi_arburst,
   input  wire [((C_PROTOCOL == 1) ? 2 : 1)-1:0]              s_axi_arlock,
   input  wire [4-1:0]                                        s_axi_arcache,
   input  wire [3-1:0]                                        s_axi_arprot,
   input  wire [4-1:0]                                        s_axi_arqos,
   input  wire [4-1:0]                                        s_axi_arregion,
   input  wire [(C_ARUSER_WIDTH==0?1:C_ARUSER_WIDTH)-1:0]     s_axi_aruser,
   input  wire                                                s_axi_arvalid,
   output wire                                                s_axi_arready,
   output wire [((C_ID_WIDTH==0)?1:C_ID_WIDTH)-1:0]           s_axi_rid,
   output wire [C_RDATA_WIDTH-1:0]                            s_axi_rdata,
   output wire [2-1:0]                                        s_axi_rresp,
   output wire                                                s_axi_rlast,
   output wire [(C_RUSER_WIDTH==0?1:C_RUSER_WIDTH)-1:0]       s_axi_ruser,
   output wire                                                s_axi_rvalid,
   input  wire                                                s_axi_rready,
   
   // Firewall Master Interface
   output wire [((C_ID_WIDTH==0)?1:C_ID_WIDTH)-1:0]           m_axi_awid,
   output wire [C_ADDR_WIDTH-1:0]                             m_axi_awaddr,
   output wire [((C_PROTOCOL == 1) ? 4 : 8)-1:0]              m_axi_awlen,
   output wire [3-1:0]                                        m_axi_awsize,
   output wire [2-1:0]                                        m_axi_awburst,
   output wire [((C_PROTOCOL == 1) ? 2 : 1)-1:0]              m_axi_awlock,
   output wire [4-1:0]                                        m_axi_awcache,
   output wire [3-1:0]                                        m_axi_awprot,
   output wire [4-1:0]                                        m_axi_awqos,
   output wire [4-1:0]                                        m_axi_awregion,
   output wire [(C_AWUSER_WIDTH==0?1:C_AWUSER_WIDTH)-1:0]     m_axi_awuser,
   output wire                                                m_axi_awvalid,
   input  wire                                                m_axi_awready,
   output wire [((C_ID_WIDTH==0)?1:C_ID_WIDTH)-1:0]           m_axi_wid,
   output wire [C_WDATA_WIDTH-1:0]                            m_axi_wdata,
   output wire [C_WDATA_WIDTH/8-1:0]                          m_axi_wstrb,
   output wire                                                m_axi_wlast,
   output wire [(C_WUSER_WIDTH==0?1:C_WUSER_WIDTH)-1:0]       m_axi_wuser,
   output wire                                                m_axi_wvalid,
   input  wire                                                m_axi_wready,
   input  wire [((C_ID_WIDTH==0)?1:C_ID_WIDTH)-1:0]           m_axi_bid,
   input  wire [2-1:0]                                        m_axi_bresp,
   input  wire [(C_BUSER_WIDTH==0?1:C_BUSER_WIDTH)-1:0]       m_axi_buser,
   input  wire                                                m_axi_bvalid,
   output wire                                                m_axi_bready,
   output wire [((C_ID_WIDTH==0)?1:C_ID_WIDTH)-1:0]           m_axi_arid,
   output wire [C_ADDR_WIDTH-1:0]                             m_axi_araddr,
   output wire [((C_PROTOCOL == 1) ? 4 : 8)-1:0]              m_axi_arlen,
   output wire [3-1:0]                                        m_axi_arsize,
   output wire [2-1:0]                                        m_axi_arburst,
   output wire [((C_PROTOCOL == 1) ? 2 : 1)-1:0]              m_axi_arlock,
   output wire [4-1:0]                                        m_axi_arcache,
   output wire [3-1:0]                                        m_axi_arprot,
   output wire [4-1:0]                                        m_axi_arqos,
   output wire [4-1:0]                                        m_axi_arregion,
   output wire [(C_ARUSER_WIDTH==0?1:C_ARUSER_WIDTH)-1:0]     m_axi_aruser,
   output wire                                                m_axi_arvalid,
   input  wire                                                m_axi_arready,
   input  wire [((C_ID_WIDTH==0)?1:C_ID_WIDTH)-1:0]           m_axi_rid,
   input  wire [C_RDATA_WIDTH-1:0]                            m_axi_rdata,
   input  wire [2-1:0]                                        m_axi_rresp,
   input  wire                                                m_axi_rlast,
   input  wire [(C_RUSER_WIDTH==0?1:C_RUSER_WIDTH)-1:0]       m_axi_ruser,
   input  wire                                                m_axi_rvalid,
   output wire                                                m_axi_rready,
   
   // Control Slave Interface
   input  wire [12-1:0]                                       s_axi_ctl_awaddr,
   input  wire                                                s_axi_ctl_awvalid,
   output wire                                                s_axi_ctl_awready,
   input  wire [32-1:0]                                       s_axi_ctl_wdata,
   input  wire [4-1:0]                                        s_axi_ctl_wstrb,
   input  wire                                                s_axi_ctl_wvalid,
   output wire                                                s_axi_ctl_wready,
   output wire [2-1:0]                                        s_axi_ctl_bresp,
   output wire                                                s_axi_ctl_bvalid,
   input  wire                                                s_axi_ctl_bready,
   input  wire [12-1:0]                                       s_axi_ctl_araddr,
   input  wire                                                s_axi_ctl_arvalid,
   output wire                                                s_axi_ctl_arready,
   output wire [32-1:0]                                       s_axi_ctl_rdata,
   output wire [2-1:0]                                        s_axi_ctl_rresp,
   output wire                                                s_axi_ctl_rvalid,
   input  wire                                                s_axi_ctl_rready,
   
   // Status Output Signals
   output wire                                                mi_w_error,
   output wire                                                mi_r_error,
   output wire                                                si_w_error,
   output wire                                                si_r_error,
   output wire                                                ip2intc_irpt
  );

  import sc_util_v1_0_4_pkg::*;
  
  localparam [31:0] P_VERSION = 32'h2;  // Firewall v1.2
  localparam integer P_MI_SIDE = 0;
  localparam integer P_SI_SIDE = 1;
  localparam integer P_NUM_R_CHECK_MI = 8;
  localparam integer P_NUM_W_CHECK_MI = 8;
  localparam integer P_NUM_R_CHECK_SI = 7;
  localparam integer P_NUM_W_CHECK_SI = 11;
  localparam integer P_R_OFFSET = 0;
  localparam integer P_W_OFFSET = 16;
  localparam integer P_IRQ_MI_RD_SLVERR = 6;
  localparam integer P_IRQ_MI_RD_DECERR = 7;
  localparam integer P_IRQ_MI_WR_SLVERR = 22;
  localparam integer P_IRQ_MI_WR_DECERR = 23;
  localparam integer P_IRQ_SI_RD_SLVERR = 5;
  localparam integer P_IRQ_SI_RD_DECERR = 6;
  localparam integer P_IRQ_SI_WR_SLVERR = 25;
  localparam integer P_IRQ_SI_WR_DECERR = 26;
  localparam integer P_BLOCK_RD_SLVERR = 14;
  localparam integer P_BLOCK_RD_DECERR = 15;
  localparam integer P_BLOCK_WR_SLVERR = 30;
  localparam integer P_BLOCK_WR_DECERR = 31;
  localparam integer P_MAX_THREADS = (C_NUM_READ_THREADS > C_NUM_WRITE_THREADS) ? C_NUM_READ_THREADS : C_NUM_WRITE_THREADS;
  localparam integer P_WRITE_THREAD_SIZE = (C_NUM_WRITE_THREADS<2) ? 1 : $clog2(C_NUM_WRITE_THREADS);
  localparam integer P_READ_THREAD_SIZE = (C_NUM_READ_THREADS<2) ? 1 : $clog2(C_NUM_READ_THREADS);
  localparam integer P_FULLY_PIPELINED = 2;
  localparam integer P_BYPASS = 0;
  localparam [1:0] P_OKAY = 2'b00;
  localparam [1:0] P_SLVERR = 2'b10;
  localparam [1:0] P_DECERR = 2'b11;
  localparam [15:0] P_DEFLT_WAIT = 16'hFFFF;
  localparam integer P_NUM_READ_OUTSTANDING = C_NUM_READ_OUTSTANDING==0 ? 0 : C_NUM_READ_OUTSTANDING<=32 ? 32 : 2**$clog2(C_NUM_READ_OUTSTANDING);
  localparam integer P_NUM_WRITE_OUTSTANDING = C_NUM_WRITE_OUTSTANDING==0 ? 0 : C_NUM_WRITE_OUTSTANDING<=32 ? 32 : 2**$clog2(C_NUM_WRITE_OUTSTANDING);
  localparam [2:0] P_RDWIDTH_SIZE = $clog2(C_RDATA_WIDTH/8);
  localparam [2:0] P_WDWIDTH_SIZE = $clog2(C_WDATA_WIDTH/8);
  localparam integer P_CTL_READ_WIDTH = 6 * 32;
  localparam integer P_CTL_WRITE_WIDTH = 1+1+32+16+16+16+16+16+32+32;
  localparam integer P_CTL_STATUS_WIDTH = 32 + 2;
  localparam integer CH_AR = 0;
  localparam integer CH_AW = 1;
  localparam integer CH_W  = 2;
  localparam integer CH_R  = 3;
  localparam integer CH_B  = 4;
  localparam integer P_USER_BLOCK = (C_FIREWALL_MODE == P_MI_SIDE) ? 8 : 7;
  
  function [P_MAX_THREADS-1:0] f_prio  // Return one-hot vector propagating only the least-significant one-bit of input vector
    (
     input [P_MAX_THREADS-1:0] in_vect
     );
    integer j;
    reg [P_MAX_THREADS-1:0] carry;
    begin
      f_prio[0] = in_vect[0];
      carry[0] = in_vect[0];
      if (P_MAX_THREADS>1) begin
        for (j=1;j<P_MAX_THREADS;j=j+1) begin
          carry[j] = carry[j-1] | in_vect[j];
          f_prio[j] = in_vect[j] & ~carry[j-1];
        end
      end
    end
  endfunction

  typedef logic [ ((C_ID_WIDTH==0)?1:C_ID_WIDTH)-1:0  ]            t_axi_id;
  typedef logic [ C_ADDR_WIDTH-1:0  ]                              t_axi_addr;
  typedef logic [ C_RDATA_WIDTH-1:0  ]                             t_axi_rdata;
  typedef logic [ C_WDATA_WIDTH-1:0  ]                             t_axi_wdata;
  typedef logic [ C_WDATA_WIDTH/8-1:0  ]                           t_axi_wstrb;
  typedef logic [ ((C_ARUSER_WIDTH==0)?1:C_ARUSER_WIDTH)-1:0  ]    t_axi_aruser;
  typedef logic [ ((C_AWUSER_WIDTH==0)?1:C_AWUSER_WIDTH)-1:0  ]    t_axi_awuser;
  typedef logic [ ((C_RUSER_WIDTH==0)?1:C_RUSER_WIDTH)-1:0  ]      t_axi_ruser;
  typedef logic [ ((C_WUSER_WIDTH==0)?1:C_WUSER_WIDTH)-1:0  ]      t_axi_wuser;
  typedef logic [ ((C_BUSER_WIDTH==0)?1:C_BUSER_WIDTH)-1:0  ]      t_axi_buser;
  typedef logic [ 4-1:0  ]                                         t_axi_region;
  
  typedef struct packed {
    t_axi_id          id     ; 
    t_axi_addr        addr   ;
    t_axi_len         len    ;
    t_axi_size        size   ;
    t_axi_burst       burst  ;
    t_axi_lock        lock   ;
    t_axi_cache       cache  ;
    t_axi_prot        prot   ;
    t_axi_qos         qos    ;
    t_axi_region      region ;
    t_axi_aruser      user   ;
  } t_armesg;

  typedef struct packed {
    t_axi_id          id     ;
    t_axi_addr        addr   ;
    t_axi_len         len    ;
    t_axi_size        size   ;
    t_axi_burst       burst  ;
    t_axi_lock        lock   ;
    t_axi_cache       cache  ;
    t_axi_prot        prot   ;
    t_axi_qos         qos    ;
    t_axi_region      region ;
    t_axi_awuser      user   ;
  } t_awmesg;

  typedef struct packed {
    t_axi_id          id   ; 
    t_axi_wdata       data ;
    t_axi_wstrb       strb ;
    t_axi_last        last ;
    t_axi_wuser       user ;
  } t_wmesg;

  typedef struct packed {
    t_axi_id          id   ; 
    t_axi_rdata       data ;
    t_axi_resp        resp ;
    t_axi_last        last ;
    t_axi_ruser       user ;
  } t_rmesg;

  typedef struct packed {
    t_axi_id          id   ; 
    t_axi_resp        resp ;
    t_axi_buser       user ;
  } t_bmesg;
  
  typedef enum {W_IDLE, W_PENDING, W_BLOCK, W_UNBLOCK_WAIT} t_w_state;
  typedef enum {R_IDLE, R_PENDING, R_BLOCK, R_UNBLOCK_WAIT} t_r_state;
  
  t_w_state w_state = W_IDLE;
  t_w_state w_next;
  t_r_state r_state = R_IDLE;
  t_r_state r_next;
  
  t_armesg           s_armesg;
  t_armesg           sr_armesg;
  t_armesg           m_armesg;
  t_awmesg           s_awmesg;
  t_awmesg           sr_awmesg;
  t_awmesg           m_awmesg;
  t_wmesg            s_wmesg;
  t_wmesg            sr_wmesg;
  t_wmesg            mr_wmesg;
  t_wmesg            m_wmesg;
  t_rmesg            s_rmesg;
  t_rmesg            sr_rmesg;
  t_rmesg            mr_rmesg;
  t_rmesg            m_rmesg;
  t_bmesg            s_bmesg;
  t_bmesg            sr_bmesg;
  t_bmesg            mr_bmesg;
  t_bmesg            m_bmesg;
  
  logic [K_MAX_VECTOR_WIDTH-1:0]  s_arvector ;
  logic [K_MAX_VECTOR_WIDTH-1:0] sr_arvector ;
  logic [K_MAX_VECTOR_WIDTH-1:0] mr_arvector ;
  logic [K_MAX_VECTOR_WIDTH-1:0]  m_arvector ;
  logic [K_MAX_VECTOR_WIDTH-1:0]  s_awvector ;
  logic [K_MAX_VECTOR_WIDTH-1:0] sr_awvector ;
  logic [K_MAX_VECTOR_WIDTH-1:0] mr_awvector ;
  logic [K_MAX_VECTOR_WIDTH-1:0]  m_awvector ;
  logic [K_MAX_VECTOR_WIDTH-1:0]  s_wvector  ;
  logic [K_MAX_VECTOR_WIDTH-1:0] sr_wvector  ;
  logic [K_MAX_VECTOR_WIDTH-1:0] mr_wvector  ;
  logic [K_MAX_VECTOR_WIDTH-1:0]  m_wvector  ;
  logic [K_MAX_VECTOR_WIDTH-1:0]  s_rvector  ;
  logic [K_MAX_VECTOR_WIDTH-1:0] sr_rvector  ;
  logic [K_MAX_VECTOR_WIDTH-1:0] mr_rvector  ;
  logic [K_MAX_VECTOR_WIDTH-1:0]  m_rvector  ;
  logic [K_MAX_VECTOR_WIDTH-1:0]  s_bvector  ;
  logic [K_MAX_VECTOR_WIDTH-1:0] sr_bvector  ;
  logic [K_MAX_VECTOR_WIDTH-1:0] mr_bvector  ;
  logic [K_MAX_VECTOR_WIDTH-1:0]  m_bvector  ;
  
  logic sr_arvalid ;
  logic sr_awvalid ;
  logic  sr_wvalid  ;
  logic  sr_rvalid  ;
  logic  sr_bvalid  ;
  logic mr_arvalid ;
  logic mr_awvalid ;
  logic  mr_wvalid  ;
  logic  mr_rvalid  ;
  logic  mr_bvalid  ;
  logic sr_arready ;
  logic sr_awready ;
  logic  sr_wready  ;
  logic  sr_rready  ;
  logic  sr_bready  ;
  logic mr_arready ;
  logic mr_awready ;
  logic  mr_wready  ;
  logic  mr_rready  ;
  logic  mr_bready  ;
  logic cam_awready;
  logic cam_arready;
  logic check_arvalid;
  logic check_awvalid;
  logic check_rvalid;
  logic check_bvalid;
  logic w_flush = 1'b0;
  logic r_flush = 1'b0;
  logic w_flush_en = 1'b0;
  logic r_flush_en = 1'b0;
  logic sticky_bvalid = 1'b0;
  logic sticky_rvalid = 1'b0;
  logic sticky_arvalid = 1'b0;
  logic sticky_awvalid = 1'b0;
  logic sticky_wvalid = 1'b0;
  
  logic aw_cmd_en;
  logic ar_cmd_en;
  logic w_error_set;
  logic r_error_set;
  logic w_error_reset;
  logic r_error_reset;
  logic w_error_ctl;
  logic w_error_ctl_d = 1'b0;
  logic r_error_ctl;
  logic r_error_ctl_d = 1'b0;
  logic w_any_pending;
  logic r_any_pending;
  logic w_busy;
  logic r_busy;
  logic write_activity;
  logic expected_rlast;
  logic unblock;
  logic unblock_ctl = 1'b0;
  logic unblock_ctl_d = 1'b0;
  logic w_check;
  logic r_check;
  logic w_soft;
  logic r_soft;
  logic bid_mismatch;
  logic rid_mismatch;
  logic w_check_reset;
  logic r_check_reset;
  logic w_stall;
  
  logic [(C_ID_WIDTH==0?1:C_ID_WIDTH)-1:0] w_reverse_id;
  logic [(C_ID_WIDTH==0?1:C_ID_WIDTH)-1:0] r_reverse_id;
  logic [P_MAX_THREADS-1:0] err_wprio = {P_MAX_THREADS{1'b0}};
  logic [P_MAX_THREADS-1:0] err_rprio = {P_MAX_THREADS{1'b0}};
  logic [C_NUM_WRITE_THREADS-1:0] awid_hot;
  logic [C_NUM_WRITE_THREADS-1:0] bid_hot;
  logic [C_NUM_WRITE_THREADS-1:0] bid_check;
  logic [C_NUM_WRITE_THREADS-1:0] bid_count;
  logic [C_NUM_WRITE_THREADS-1:0] w_pending_hot;
  logic [C_NUM_READ_THREADS-1:0] arid_hot;
  logic [C_NUM_READ_THREADS-1:0] rid_hot;
  logic [C_NUM_READ_THREADS-1:0] rid_check;
  logic [C_NUM_READ_THREADS-1:0] rid_count;
  logic [C_NUM_READ_THREADS-1:0] r_pending_hot;
  logic [C_NUM_READ_THREADS-1:0] r_final;
  logic [C_NUM_READ_THREADS-1:0] w_final;
  
  logic        XILINX_RD_SLVERR ;
  logic        XILINX_RD_DECERR ;
  logic        XILINX_WR_SLVERR ;
  logic        XILINX_WR_DECERR ;
  logic        ARM_XILINX_RD_SLVERR;
  logic        ARM_XILINX_RD_DECERR;
  logic        ARM_XILINX_WR_SLVERR;
  logic        ARM_XILINX_WR_DECERR;
  logic        REPORT_XILINX_RD_SLVERR;
  logic        REPORT_XILINX_RD_DECERR;
  logic        REPORT_XILINX_WR_SLVERR;
  logic        REPORT_XILINX_WR_DECERR;
  logic [31:0] araddr_err_low = 0;
  logic [31:0] araddr_err_high = 0;
  logic [31:0] awaddr_err_low = 0;
  logic [31:0] awaddr_err_high = 0;
  logic [31:0] aruser_err = 0;
  logic [31:0] awuser_err = 0;
  logic [31:0] araddr_err_low_ctl;
  logic [31:0] araddr_err_high_ctl;
  logic [31:0] awaddr_err_low_ctl;
  logic [31:0] awaddr_err_high_ctl;
  logic [31:0] aruser_err_ctl;
  logic [31:0] awuser_err_ctl;
  logic [31:0] araddr_last_low = 0;
  logic [31:0] araddr_last_high = 0;
  logic [31:0] awaddr_last_low = 0;
  logic [31:0] awaddr_last_high = 0;
  logic [31:0] aruser_last = 0;
  logic [31:0] awuser_last = 0;
  logic [31:0] araddr_si_low = 0;
  logic [31:0] araddr_si_high = 0;
  logic [31:0] awaddr_si_low = 0;
  logic [31:0] awaddr_si_high = 0;
  logic [31:0] aruser_si = 0;
  logic [31:0] awuser_si = 0;
  logic [31:0] prescaler;
  logic [31:0] init_delay;
  logic [31:0] prescaler_ctl = 0;
  logic [31:0] init_delay_ctl = 0;
  logic wait_strobe;
  logic wait_delay;
  logic [31:0]   strobe_timer = 0;
  logic [31:0]   delay_timer = 0;
  logic    prescaler_load;
  logic    delay_load;
  logic    prescaler_ack = 1'b0;
  logic    delay_ack = 1'b0;
  logic    prescaler_load_ctl = 1'b0;
  logic    delay_load_ctl = 1'b0;
  logic    prescaler_ack_ctl;
  logic    delay_ack_ctl;
  logic    prescaler_event_ctl = 1'b0;
  logic    delay_event_ctl = 1'b0;
  
  logic aclk_ctl_i;
  logic aclken_ctl;
  logic areset = 1'b0;
  logic areset_ctl = 1'b0;
  logic aresetn_ctl;
  logic aresetn_ctl_d = 1'b0;
  logic aresetn_delay;
  logic aresetn_delay_ctl = 1'b0;
  logic write_send_ctl = 1'b0;
  logic write_ack_ctl;
  logic write_req;
  logic write_ack = 1'b0;
  logic write_event_ctl = 1'b0;
  logic read_send = 1'b0;
  logic read_ack;
  logic read_req_ctl;
  logic read_ack_ctl = 1'b0;
  logic read_event = 1'b0;
  logic [P_CTL_WRITE_WIDTH-1:0] write_mesg_ctl;
  logic [P_CTL_WRITE_WIDTH-1:0] write_mesg;
  logic [P_CTL_READ_WIDTH-1:0] read_mesg;
  logic [P_CTL_READ_WIDTH-1:0] read_mesg_ctl;
  logic [P_CTL_STATUS_WIDTH-1:0] status_mesg;
  logic [P_CTL_STATUS_WIDTH-1:0] status_mesg_ctl;

  always @(posedge aclk) begin 
    areset <= ~aresetn | ~aresetn_delay;
  end
  
  always @(posedge aclk_ctl_i) begin 
    areset_ctl <= ~aresetn_ctl | ~aresetn_delay_ctl;
  end
  
  assign w_check_reset = areset | w_error_reset;
  assign r_check_reset = areset | r_error_reset;
  
  generate
  
  if (C_ENABLE_CTL_CLOCK==1) begin : gen_ctl_cdc
    assign aclk_ctl_i = aclk_ctl;
    assign aclken_ctl = 1'b1;
    
    xpm_cdc_async_rst #(
      .RST_ACTIVE_HIGH (0)
    ) cdc_aresetn_inst (
      .src_arst  (aresetn),
      .dest_arst (aresetn_ctl),
      .dest_clk  (aclk_ctl)
    );
    
    xpm_cdc_async_rst #(
      .RST_ACTIVE_HIGH (0)
    ) cdc_areset_delay_inst (
      .src_arst  (aresetn_delay_ctl),
      .dest_arst (aresetn_delay),
      .dest_clk  (aclk)
    );
    
    xpm_cdc_handshake #(
      .WIDTH          (P_CTL_READ_WIDTH)
    ) cdc_read_inst (
      .src_clk  (aclk),
      .src_in   (read_mesg),
      .src_send (read_send),
      .src_rcv  (read_ack),
      .dest_clk (aclk_ctl),
      .dest_out (read_mesg_ctl),
      .dest_req (read_req_ctl),
      .dest_ack (read_ack_ctl)
    );
    
    xpm_cdc_handshake #(
      .WIDTH          (P_CTL_WRITE_WIDTH)
    ) cdc_write_inst (
      .src_clk  (aclk_ctl),
      .src_in   (write_mesg_ctl),
      .src_send (write_send_ctl),
      .src_rcv  (write_ack_ctl),
      .dest_clk (aclk),
      .dest_out (write_mesg),
      .dest_req (write_req),
      .dest_ack (write_ack)
    );

    xpm_cdc_handshake #(
      .WIDTH          (32)
    ) cdc_prescaler_inst (
      .src_clk  (aclk_ctl),
      .src_in   (prescaler_ctl),
      .src_send (prescaler_load_ctl),
      .src_rcv  (prescaler_ack_ctl),
      .dest_clk (aclk),
      .dest_out (prescaler),
      .dest_req (prescaler_load),
      .dest_ack (prescaler_ack)
    );

    xpm_cdc_handshake #(
      .WIDTH          (32)
    ) cdc_delay_inst (
      .src_clk  (aclk_ctl),
      .src_in   (init_delay_ctl),
      .src_send (delay_load_ctl),
      .src_rcv  (delay_ack_ctl),
      .dest_clk (aclk),
      .dest_out (init_delay),
      .dest_req (delay_load),
      .dest_ack (delay_ack)
    );

    xpm_cdc_array_single #(
      .WIDTH          (P_CTL_STATUS_WIDTH)
    ) cdc_status_inst (
      .src_clk  (aclk),
      .src_in   (status_mesg),
      .dest_clk (aclk_ctl),
      .dest_out (status_mesg_ctl)
    );
    
  end else begin : gen_no_cdc
    
    assign aclk_ctl_i = aclk;
    assign aclken_ctl = aclken;
    assign aresetn_ctl = aresetn;
    assign aresetn_delay = aresetn_delay_ctl;
    assign write_mesg = write_mesg_ctl;
    assign read_mesg_ctl = read_mesg;
    assign status_mesg_ctl = status_mesg;
    assign prescaler = prescaler_ctl;
    assign init_delay = init_delay_ctl;
    assign write_req = write_send_ctl;
    assign write_ack_ctl = write_ack;
    assign read_req_ctl = read_send;
    assign read_ack = read_ack_ctl;
    assign prescaler_load = prescaler_load_ctl;
    assign prescaler_ack_ctl = prescaler_ack;
    assign delay_load = delay_load_ctl;
    assign delay_ack_ctl = delay_ack;
    
  end
  
  if (C_FIREWALL_MODE == P_MI_SIDE) begin : gen_mi

    logic mi_w_error_i = 1'b0;
    logic mi_r_error_i = 1'b0;
    logic mi_w_error_d = 1'b0;
    logic mi_r_error_d = 1'b0;
    logic mi_w_reset;
    logic mi_r_reset;
    logic        RECS_ARREADY_MAX_WAIT               ;
    logic        RECS_CONTINUOUS_RTRANSFERS_MAX_WAIT ;
    logic        ERRS_RDATA_NUM                 ;
    logic        ERRS_RVALID_STABLE ;
    logic        RECS_AWREADY_MAX_WAIT          ;
    logic        RECS_WREADY_MAX_WAIT           ;
    logic        RECS_WRITE_TO_BVALID_MAX_WAIT  ;
    logic        ERRS_BRESP                     ;
    logic        ERRS_BVALID_STABLE ;
    
    logic        s_axi_ctl_arready_i = 1'b0;
    logic        s_axi_ctl_rvalid_i  = 1'b0;
    logic        s_axi_ctl_awready_i = 1'b0;
    logic        s_axi_ctl_bvalid_i  = 1'b0;
    logic [31:0] s_axi_ctl_rdata_i;
    logic [15:0] r_check_vec = 16'b0;
    logic [15:0] w_check_vec = 16'b0;
    logic [31:0] soft_vec;
    logic [31:0] soft_vec_ctl = 32'b0;
    logic [31:0] soft_pause;
    logic [31:0] soft_pause_d = 32'b0;
    logic [31:0] soft_pause_ctl = 32'b0;
    logic [31:0] soft_resume;
    logic [15:0] r_soft_vec;
    logic [15:0] w_soft_vec;
    logic [15:0] MAX_CONTINUOUS_RTRANSFERS_WAITS;
    logic [15:0] MAX_WRITE_TO_BVALID_WAITS;
    logic [15:0] MAX_AR_WAITS;
    logic [15:0] MAX_AW_WAITS;
    logic [15:0] MAX_W_WAITS;
    logic [15:0] MAX_CONTINUOUS_RTRANSFERS_WAITS_ctl = P_DEFLT_WAIT;
    logic [15:0] MAX_WRITE_TO_BVALID_WAITS_ctl       = P_DEFLT_WAIT;
    logic [15:0] MAX_AR_WAITS_ctl                    = P_DEFLT_WAIT;
    logic [15:0] MAX_AW_WAITS_ctl                    = P_DEFLT_WAIT;
    logic [15:0] MAX_W_WAITS_ctl                     = P_DEFLT_WAIT;
    logic        ip2intc_irpt_i = 1'b0;
    logic        glob_irpt_en;
    logic        glob_irpt_en_ctl = 1'b0;
    logic [15:0] mi_r_irpt_en;
    logic [15:0] mi_w_irpt_en;
    logic [31:0] irpt_en;
    logic [31:0] irpt_en_ctl = 32'b0;
    
    assign  si_w_error = 1'b0;
    assign  si_r_error = 1'b0;
    
    assign mi_w_reset = areset | mi_w_error_i;
    assign mi_r_reset = areset | mi_r_error_i;
    
    assign check_awvalid = sr_awvalid & aw_cmd_en;
    assign mr_awvalid    = sr_awvalid & aw_cmd_en & ~mi_w_error_i;  // Ok to violate valid sticky on MI after check triggered
    assign cam_awready = mr_awready | mi_w_error_i;
    assign sr_awready  = (mr_awready | mi_w_error_i) & aw_cmd_en;
    assign mr_awvector = sr_awvector;
    
    assign check_arvalid = sr_arvalid & ar_cmd_en;
    assign mr_arvalid    = sr_arvalid & ar_cmd_en & ~mi_r_error_i;  // Ok to violate valid sticky on MI after check triggered
    assign cam_arready = mr_arready | mi_r_error_i;
    assign sr_arready  = (mr_arready | mi_r_error_i) & ar_cmd_en;
    assign mr_arvector = sr_arvector;
    
    assign mr_wvalid = sr_wvalid &  ~mi_w_error_i & ~w_stall;
    assign sr_wready = (mr_wready | mi_w_error_i) & ~w_stall;
    assign mr_wvector = sr_wvector;
    
    assign sr_bvalid = mi_w_error_i ? 
      (w_flush ? w_flush_en : (sticky_bvalid & ~sr_bready))  // Obey valid sticky until flushing begins, then assert for duration of flush
      : (mr_bvalid & ~ERRS_BRESP & ~bid_mismatch);           // Suppress bvalid propagation only if ID is not allowed to respond
    assign check_bvalid = mi_w_error_i ? 
      (w_flush ? w_flush_en : (sticky_bvalid & ~sr_bready))  // Trigger scoreboard for each flush transfer
      : mr_bvalid;                                           // ... or real xfer
    assign mr_bready = sr_bready | w_flush;
    assign sr_bmesg.id = w_flush ? w_reverse_id : mr_bmesg.id;  // During flush, retrieve ID value of lowest-order active thread from CAM
    assign sr_bmesg.resp = w_flush ? (C_MASK_ERR_RESP ? P_OKAY:P_SLVERR) : (C_MASK_ERR_RESP ? ((mr_bmesg.resp==P_SLVERR || mr_bmesg.resp==P_DECERR) ? P_OKAY : mr_bmesg.resp) : mr_bmesg.resp);
    assign sr_bmesg.user = w_flush ? 0 : mr_bmesg.user;
    
    assign sr_rvalid = mi_r_error_i ? 
      (r_flush ? r_flush_en : (sticky_rvalid & ~sr_rready))  // Obey valid sticky until flushing begins, then assert for duration of flush
      : (mr_rvalid & ~rid_mismatch);                         // Suppress rvalid propagation only if ID has no outstanding
    assign check_rvalid = mi_r_error_i ? 
      (r_flush ? r_flush_en : (sticky_rvalid & ~sr_rready))  // Trigger scoreboard for each flush transfer
      : mr_rvalid;                                           // ... or real xfer    
    assign mr_rready = sr_rready | r_flush;
    assign sr_rmesg.id = r_flush ? r_reverse_id : mr_rmesg.id;  // During flush, retrieve ID value of lowest-order active thread from CAM
    assign sr_rmesg.resp = (r_flush | ERRS_RDATA_NUM) ? (C_MASK_ERR_RESP ? P_OKAY:P_SLVERR) : (C_MASK_ERR_RESP ? ((mr_rmesg.resp==P_SLVERR || mr_rmesg.resp==P_DECERR) ? P_OKAY : mr_rmesg.resp) : mr_rmesg.resp);
      // ERRS_RDATA_NUM transfers are allowed to propagate, but with correct rlast
    assign sr_rmesg.last = |(r_final & (r_flush ? err_rprio : rid_hot));  // Always output the correct expected rlast
    assign sr_rmesg.data = (r_flush | ERRS_RDATA_NUM) ? {C_RDATA_WIDTH/32{32'hDEAD_FA11}} : mr_rmesg.data;
    assign sr_rmesg.user = (r_flush | ERRS_RDATA_NUM) ? 1'b0 : mr_rmesg.user;
    
    assign bid_check = w_flush ? 1'b0 : bid_hot;  // Disable checking during flush
    assign bid_count = w_flush ? err_wprio : bid_hot;  // Select index used to pop command scoreboard
    assign rid_check = r_flush ? 1'b0 : rid_hot;  // Disable checking during flush
    assign rid_count = r_flush ? err_rprio : rid_hot;  // Select index used to pop command scoreboard
    
    assign mi_w_error = mi_w_error_i;
    assign mi_r_error = mi_r_error_i;
    
    assign w_any_pending = |w_pending_hot;
    assign r_any_pending = |r_pending_hot;
    
    assign w_busy = w_any_pending | write_activity;  // write_activity includes s_axi_awvalid, s_axi_wvalid or any W-transfers preceeding AW
    assign r_busy = r_any_pending | s_axi_arvalid;
    
    always @(posedge aclk) begin
      if (areset) begin
        w_state <= W_IDLE;
        r_state <= R_IDLE;
        mi_w_error_i <= 1'b0;
        mi_r_error_i <= 1'b0;
        mi_w_error_d <= 1'b0;
        mi_r_error_d <= 1'b0;
        awaddr_err_low  <= 0;
        awaddr_err_high <= 0;
        awuser_err      <= 0;
        araddr_err_low  <= 0;
        araddr_err_high <= 0;
        aruser_err      <= 0;
        read_send <= 1'b0;
        read_event <= 1'b0;
      end else if (aclken) begin
        w_state <= w_next;
        r_state <= r_next;
        mi_w_error_d <= mi_w_error_i;
        mi_r_error_d <= mi_r_error_i;

        if (read_ack) begin
          read_send <= 1'b0;
        end else if (read_event) begin
          read_send <= 1'b1;
          read_event <= 1'b0;
        end
        
        if (~mi_w_error_i) begin
          awaddr_err_low  <= 0;
          awaddr_err_high <= 0;
          awuser_err      <= 0;
        end else if (~mi_w_error_d) begin
          awaddr_err_low  <= awaddr_last_low;
          awaddr_err_high <= awaddr_last_high;
          awuser_err      <= awuser_last;
          read_event <= 1'b1;
        end
        
        if (~mi_r_error_i) begin
          araddr_err_low  <= 0;
          araddr_err_high <= 0;
          aruser_err      <= 0;
        end else if (~mi_r_error_d) begin
          araddr_err_low  <= araddr_last_low;
          araddr_err_high <= araddr_last_high;
          aruser_err      <= aruser_last;
          read_event <= 1'b1;
        end
        
        if (w_error_set) begin
          mi_w_error_i <= 1'b1;
        end else if (w_error_reset) begin
          mi_w_error_i <= 1'b0;
        end

        if (r_error_set) begin
          mi_r_error_i <= 1'b1;
        end else if (r_error_reset) begin
          mi_r_error_i <= 1'b0;
        end
      end
    end
    
    always @(posedge aclk) begin
      if (areset) begin
        awaddr_last_low <= 0;
        awaddr_last_high <= 0;
        awuser_last <= 0;
        araddr_last_low <= 0;
        araddr_last_high <= 0;
        aruser_last <= 0;
      end else if (aclken) begin
        if (sr_awvalid) begin
          awaddr_last_low  <= sr_awmesg.addr;
          awaddr_last_high <= sr_awmesg.addr >> 32;
          awuser_last      <= sr_awmesg.user;
        end
        if (sr_arvalid) begin
          araddr_last_low  <= sr_armesg.addr;
          araddr_last_high <= sr_armesg.addr >> 32;
          aruser_last      <= sr_armesg.user;
        end
      end 
    end

    always @(posedge aclk) begin
      if (~aresetn) begin
        wait_strobe <= 1'b0;
        wait_delay <= 1'b0;
        strobe_timer <= 0;
        delay_timer <= 0;
        prescaler_ack <= 1'b0;
        delay_ack <= 1'b0;
        write_ack <= 1'b0;
        soft_pause_d <= 0;
      end else if (aclken) begin
        prescaler_ack <= prescaler_load;
        delay_ack <= delay_load;
        write_ack <= write_req;
        soft_pause_d <= soft_pause;
        
        if (C_ENABLE_PRESCALER != 0) begin
          wait_strobe <= strobe_timer == 0;
          if (unblock | prescaler_load | (strobe_timer == 0)) begin
            strobe_timer <= prescaler;
          end else begin
            strobe_timer <= strobe_timer - 1;
          end
        end else begin
          wait_strobe <= 1'b1;
        end
        
        if (C_ENABLE_INITIAL_DELAY != 0) begin
          if (unblock | delay_load) begin
            delay_timer <= init_delay;
            wait_delay <= init_delay != 0;
          end else if (wait_delay & wait_strobe) begin
            delay_timer <= delay_timer - 1;
            wait_delay <= delay_timer != 1;
          end
        end else begin
          wait_delay <= 1'b0;
        end
      end
    end
    
    assign soft_resume = ~soft_pause & soft_pause_d;

    always @(posedge aclk) begin
      if (w_check_reset) begin
        err_wprio  <= 1'b0;
        w_flush <= 1'b0;
        w_flush_en <= 1'b0;
        sticky_bvalid <= 1'b0;
      end else if (aclken) begin
        if (sr_bready & sr_bvalid) begin
          w_flush_en <= 1'b0;
          err_wprio  <= 1'b0;
        end else if (w_any_pending) begin
          w_flush_en <= 1'b1;
          err_wprio <= f_prio(w_pending_hot);  // One-hot index of lowest-order active thread in CAM
        end
        if (sr_bready | ~mr_bvalid) begin
          w_flush <= mi_w_error_i;  // Obey payload sticky before starting flush
        end
        if (sr_bready) begin
          sticky_bvalid <= 1'b0;
        end else if (mr_bvalid & ~(w_error_set | mi_w_error_i)) begin
          sticky_bvalid <= 1'b1;
        end
      end
    end
    
    always @(posedge aclk) begin
      if (r_check_reset) begin
        err_rprio  <= 1'b0;
        r_flush <= 1'b0;
        r_flush_en <= 1'b0;
        sticky_rvalid <= 1'b0;
      end else if (aclken) begin
        if (sr_rready & sr_rvalid) begin
          r_flush_en <= 1'b0;
          err_rprio  <= 1'b0;
        end else if (r_any_pending) begin
          r_flush_en <= 1'b1;
          err_rprio <= f_prio(r_pending_hot);  // One-hot index of lowest-order active thread in CAM
        end
        if (sr_rready | ~mr_rvalid) begin
          r_flush <= mi_r_error_i;  // Obey payload sticky before starting flush
        end
        if (sr_rready) begin
          sticky_rvalid <= 1'b0;
        end else if (mr_rvalid & ~(r_error_set | mi_r_error_i)) begin
          sticky_rvalid <= 1'b1;
        end
      end
    end
    
    always @* begin
      w_next = w_state;  // default hold state
      w_error_set = 1'b0;
      w_error_reset = 1'b0;
      case (w_state)
        W_BLOCK: begin
          if (unblock) begin
            if (w_busy) begin
              w_next = W_PENDING;
            end else begin
              w_next = W_UNBLOCK_WAIT;
            end
          end
        end
          
        W_PENDING: begin  // Waiting for all outstanding transactions to complete
          if (~w_busy) begin
            w_next = W_UNBLOCK_WAIT;
          end
        end
        
        W_UNBLOCK_WAIT: begin
          if (~unblock) begin
            w_error_reset = 1'b1;
            w_next = W_IDLE;
          end
        end
        
        default: begin  // W_IDLE
          if (w_check | w_soft | (mr_bvalid & bid_mismatch) | (XILINX_WR_SLVERR & ARM_XILINX_WR_SLVERR) | (XILINX_WR_DECERR & ARM_XILINX_WR_DECERR)) begin
            w_next = W_BLOCK;
            w_error_set = 1'b1;
          end
        end
      endcase
    end
        
    always @* begin
      r_next = r_state;  // default hold state
      r_error_set = 1'b0;
      r_error_reset = 1'b0;
      case (r_state)
        R_BLOCK: begin
          if (unblock) begin
            if (r_busy) begin
              r_next = R_PENDING;
            end else begin
              r_next = R_UNBLOCK_WAIT;
            end
          end
        end
          
        R_PENDING: begin  // Waiting for all outstanding transactions to complete
          if (~r_busy) begin
            r_next = R_UNBLOCK_WAIT;
          end
        end
        
        R_UNBLOCK_WAIT: begin
          if (~unblock) begin
            r_error_reset = 1'b1;
            r_next = R_IDLE;
          end
        end
        
        default: begin  // R_IDLE
          if (r_check | r_soft | (mr_rvalid & rid_mismatch) | (XILINX_RD_SLVERR & ARM_XILINX_RD_SLVERR) | (XILINX_RD_DECERR & ARM_XILINX_RD_DECERR)) begin
            r_next = R_BLOCK;
            r_error_set = 1'b1;
          end
        end
      endcase
    end
        
  // AXI Status Interface
    
    assign s_axi_ctl_arready = s_axi_ctl_arready_i;
    assign s_axi_ctl_rvalid  = s_axi_ctl_rvalid_i;
    assign s_axi_ctl_rdata   = s_axi_ctl_rdata_i;
    assign s_axi_ctl_rresp   = 2'b0;
    assign s_axi_ctl_awready = s_axi_ctl_awready_i;
    assign s_axi_ctl_wready  = s_axi_ctl_awready_i;  // Both aw and w ready driven in common
    assign s_axi_ctl_bvalid  = s_axi_ctl_bvalid_i;
    assign s_axi_ctl_bresp   = 2'b0;
    assign r_soft        = |r_soft_vec;
    assign w_soft        = |w_soft_vec;
    assign ip2intc_irpt  = ip2intc_irpt_i;
    
    always @(posedge aclk) begin
      if (r_check_reset) begin
        r_check_vec <= 16'b0;
      end else if ((C_NUM_READ_OUTSTANDING>0) && aclken) begin
        if (~mi_r_error_i) begin
          r_check_vec <= r_check_vec | {
            (XILINX_RD_DECERR && (REPORT_XILINX_RD_DECERR || ARM_XILINX_RD_DECERR)) ,
            (XILINX_RD_SLVERR && (REPORT_XILINX_RD_SLVERR || ARM_XILINX_RD_SLVERR)) ,
            ERRS_RVALID_STABLE,
            (mr_rvalid & rid_mismatch) ,
            (ERRS_RDATA_NUM  & ~rid_mismatch) ,  // Don't false-trigger when RID mismatches
            RECS_CONTINUOUS_RTRANSFERS_MAX_WAIT ,
            RECS_ARREADY_MAX_WAIT } |
            r_soft_vec ;
        end
      end
    end
    
    always @(posedge aclk) begin
      if (w_check_reset) begin
        w_check_vec <= 16'b0;
      end else if ((C_NUM_WRITE_OUTSTANDING>0) && aclken) begin
        if (~mi_w_error_i) begin
          w_check_vec <= w_check_vec | {
            (XILINX_WR_DECERR && (REPORT_XILINX_WR_DECERR || ARM_XILINX_WR_DECERR)) ,
            (XILINX_WR_SLVERR && (REPORT_XILINX_WR_SLVERR || ARM_XILINX_WR_SLVERR)) ,
            ERRS_BVALID_STABLE ,
            (ERRS_BRESP | (mr_bvalid & bid_mismatch)) ,
            RECS_WRITE_TO_BVALID_MAX_WAIT ,
            RECS_WREADY_MAX_WAIT ,
            RECS_AWREADY_MAX_WAIT } |
            w_soft_vec ;
        end
      end
    end
    
    always @(posedge aclk) begin
      if (areset) begin
        ip2intc_irpt_i <= 1'b0;
      end else if (glob_irpt_en) begin
        ip2intc_irpt_i <= (|(r_check_vec & mi_r_irpt_en)) | (|(w_check_vec & mi_w_irpt_en));
      end else begin
        ip2intc_irpt_i <= 1'b0;
      end
    end
    
    always @(posedge aclk_ctl_i) begin
      if (areset_ctl) begin
        s_axi_ctl_arready_i <= 1'b0;
        s_axi_ctl_rvalid_i <= 1'b0;
        read_ack_ctl <= 1'b0;
      end else if (aclken_ctl) begin
        read_ack_ctl <= read_req_ctl;
        if (s_axi_ctl_rready & s_axi_ctl_rvalid_i) begin
          s_axi_ctl_rvalid_i <= 1'b0;
        end else if (s_axi_ctl_arready_i & s_axi_ctl_arvalid) begin
          s_axi_ctl_arready_i <= 1'b0;
          s_axi_ctl_rvalid_i <= 1'b1;
        end else if (~s_axi_ctl_rvalid_i) begin
          s_axi_ctl_arready_i <= 1'b1;
        end
      end
    end

    always @(posedge aclk_ctl_i) begin
      if (aclken_ctl & s_axi_ctl_arvalid & ~s_axi_ctl_rvalid_i) begin
        casex (s_axi_ctl_araddr[11:0])
          12'b0000_0001_00xx: s_axi_ctl_rdata_i <= P_VERSION;
          12'b0000_0000_00xx: s_axi_ctl_rdata_i <= status_mesg_ctl; 
          12'b0000_0000_01xx: s_axi_ctl_rdata_i <= soft_vec_ctl;
          12'b0000_0000_10xx: s_axi_ctl_rdata_i <= 32'b0;
          12'b0000_0001_01xx: s_axi_ctl_rdata_i <= soft_pause_ctl;
          12'b0000_0011_00xx: s_axi_ctl_rdata_i <= MAX_CONTINUOUS_RTRANSFERS_WAITS_ctl;
          12'b0000_0011_01xx: s_axi_ctl_rdata_i <= MAX_WRITE_TO_BVALID_WAITS_ctl;
          12'b0000_0011_10xx: s_axi_ctl_rdata_i <= MAX_AR_WAITS_ctl;
          12'b0000_0011_11xx: s_axi_ctl_rdata_i <= MAX_AW_WAITS_ctl;
          12'b0000_0100_00xx: s_axi_ctl_rdata_i <= MAX_W_WAITS_ctl;
          12'b0010_0000_00xx: s_axi_ctl_rdata_i <= glob_irpt_en_ctl;
          12'b0010_0000_01xx: s_axi_ctl_rdata_i <= irpt_en_ctl;
          12'b0010_0001_00xx: s_axi_ctl_rdata_i <= araddr_err_low_ctl;
          12'b0010_0001_01xx: s_axi_ctl_rdata_i <= araddr_err_high_ctl;
          12'b0010_0001_10xx: s_axi_ctl_rdata_i <= awaddr_err_low_ctl;
          12'b0010_0001_11xx: s_axi_ctl_rdata_i <= awaddr_err_high_ctl;
          12'b0010_0010_00xx: s_axi_ctl_rdata_i <= aruser_err_ctl;
          12'b0010_0010_01xx: s_axi_ctl_rdata_i <= awuser_err_ctl;
          12'b0010_0011_00xx: s_axi_ctl_rdata_i <= prescaler_ctl;
          12'b0010_0011_01xx: s_axi_ctl_rdata_i <= init_delay_ctl;
          default:      s_axi_ctl_rdata_i <= 32'b0;
        endcase
      end
    end
    
    assign {awuser_err_ctl, aruser_err_ctl, awaddr_err_high_ctl, awaddr_err_low_ctl, araddr_err_high_ctl, araddr_err_low_ctl} = read_mesg_ctl;
    assign read_mesg = {awuser_err, aruser_err, awaddr_err_high, awaddr_err_low, araddr_err_high, araddr_err_low};

    always @(posedge aclk_ctl_i) begin
      aresetn_ctl_d <= aresetn_ctl;
      if (~aresetn_ctl) begin
        aresetn_delay_ctl <= 1'b0;
        prescaler_load_ctl <= 1'b0;
        delay_load_ctl <= 1'b0;
        prescaler_event_ctl <= 1'b0;
        delay_event_ctl <= 1'b0;
        write_send_ctl <= 1'b0;
        write_event_ctl <= 1'b0;
        unblock_ctl_d <= 1'b0;
      end else begin
        if (~aresetn_ctl_d) begin
          prescaler_event_ctl <= 1'b1;
          delay_event_ctl <= 1'b1;
          write_event_ctl <= 1'b1;
        end
        
        if (aclken_ctl) begin
          if (write_ack_ctl) begin
            write_send_ctl <= 1'b0;
            aresetn_delay_ctl <= 1'b1;
            if (unblock_ctl_d) begin
              unblock_ctl <= 1'b0;
            end
          end else if (write_event_ctl | unblock_ctl_d) begin
            if (~write_send_ctl) begin
              write_event_ctl <= 1'b0;
            end
            write_send_ctl <= 1'b1;
            unblock_ctl_d <= unblock_ctl;
          end
          
          if (prescaler_ack_ctl) begin
            prescaler_load_ctl <= 1'b0;
          end else if (prescaler_event_ctl) begin
            if (~prescaler_load_ctl) begin
              prescaler_event_ctl <= 1'b0;
            end
            prescaler_load_ctl <= 1'b1;
          end
          
          if (delay_ack_ctl) begin
            delay_load_ctl <= 1'b0;
          end else if (delay_event_ctl) begin
            if (~delay_load_ctl) begin
              delay_event_ctl <= 1'b0;
            end
            delay_load_ctl <= 1'b1;
          end
        end
      end

      if (areset_ctl) begin
        s_axi_ctl_awready_i <= 1'b0;
        s_axi_ctl_bvalid_i <= 1'b0;
        unblock_ctl <= 1'b0;
        soft_vec_ctl  <= 0;
        soft_pause_ctl  <= 0;
        irpt_en_ctl  <= 0;
        MAX_CONTINUOUS_RTRANSFERS_WAITS_ctl <= P_DEFLT_WAIT;
        MAX_WRITE_TO_BVALID_WAITS_ctl       <= P_DEFLT_WAIT;
        MAX_AR_WAITS_ctl                    <= P_DEFLT_WAIT;
        MAX_AW_WAITS_ctl                    <= P_DEFLT_WAIT;
        MAX_W_WAITS_ctl                     <= P_DEFLT_WAIT;
        prescaler_ctl <= 0;
        init_delay_ctl <= 0;
        w_error_ctl_d <= 1'b0;
        r_error_ctl_d <= 1'b0;
      end else begin
        if (aclken_ctl) begin
          w_error_ctl_d <= w_error_ctl;
          r_error_ctl_d <= r_error_ctl;
          
          if (w_error_ctl & ~w_error_ctl_d) begin
            soft_vec_ctl[P_W_OFFSET +: 16]  <= 0;
            write_event_ctl <= 1'b1;
          end
          if (r_error_ctl & ~r_error_ctl_d) begin
            soft_vec_ctl[P_R_OFFSET +: 16]  <= 0;
            write_event_ctl <= 1'b1;
          end
          
          if (s_axi_ctl_bready & s_axi_ctl_bvalid_i) begin
            s_axi_ctl_bvalid_i <= 1'b0;
          end else if (s_axi_ctl_awready_i) begin
            s_axi_ctl_awready_i <= 1'b0;
            s_axi_ctl_bvalid_i <= 1'b1;
          end else if (s_axi_ctl_awvalid & s_axi_ctl_wvalid) begin
            s_axi_ctl_awready_i <= 1'b1;
            write_event_ctl <= 1'b1;
            casex (s_axi_ctl_awaddr[11:0])
              12'b0000_0000_01xx: soft_vec_ctl                        <= s_axi_ctl_wdata;
              12'b0000_0000_10xx: unblock_ctl                         <= s_axi_ctl_wdata[0];
              12'b0000_0001_01xx: soft_pause_ctl                      <= s_axi_ctl_wdata;
              12'b0000_0011_00xx: MAX_CONTINUOUS_RTRANSFERS_WAITS_ctl <= s_axi_ctl_wdata ;
              12'b0000_0011_01xx: MAX_WRITE_TO_BVALID_WAITS_ctl       <= s_axi_ctl_wdata ;
              12'b0000_0011_10xx: MAX_AR_WAITS_ctl                    <= s_axi_ctl_wdata ;
              12'b0000_0011_11xx: MAX_AW_WAITS_ctl                    <= s_axi_ctl_wdata ;
              12'b0000_0100_00xx: MAX_W_WAITS_ctl                     <= s_axi_ctl_wdata ;
              12'b0010_0000_00xx: glob_irpt_en_ctl                    <= s_axi_ctl_wdata[0];
              12'b0010_0000_01xx: irpt_en_ctl                         <= s_axi_ctl_wdata;
              12'b0010_0011_00xx: 
                begin
                  prescaler_ctl <= s_axi_ctl_wdata;
                  prescaler_event_ctl <= 1'b1;
                end
              12'b0010_0011_01xx: 
                begin
                  init_delay_ctl <= s_axi_ctl_wdata;
                  delay_event_ctl <= 1'b1;
                end
            endcase
          end
        end
      end
    end
    
    always @ * begin
      status_mesg = 32'b0;
      status_mesg[P_W_OFFSET+1 +: P_NUM_W_CHECK_MI] = w_check_vec;
      status_mesg[P_W_OFFSET]                       = w_busy;
      status_mesg[P_R_OFFSET+1 +: P_NUM_R_CHECK_MI] = r_check_vec;
      status_mesg[P_R_OFFSET]                       = r_busy;
      status_mesg[33] = mi_w_error;
      status_mesg[32] = mi_r_error;
    end
    
    assign w_error_ctl = status_mesg_ctl[33];
    assign r_error_ctl = status_mesg_ctl[32];
    assign write_mesg_ctl = {glob_irpt_en_ctl, unblock_ctl, irpt_en_ctl, MAX_W_WAITS_ctl, MAX_AW_WAITS_ctl, MAX_AR_WAITS_ctl, MAX_WRITE_TO_BVALID_WAITS_ctl, MAX_CONTINUOUS_RTRANSFERS_WAITS_ctl, soft_vec_ctl, soft_pause_ctl} ;
    assign {glob_irpt_en, unblock, irpt_en, MAX_W_WAITS, MAX_AW_WAITS, MAX_AR_WAITS, MAX_WRITE_TO_BVALID_WAITS, MAX_CONTINUOUS_RTRANSFERS_WAITS, soft_vec, soft_pause} = write_mesg ;
    assign r_soft_vec              = soft_vec[P_R_OFFSET+1 +: P_NUM_R_CHECK_MI];
    assign w_soft_vec              = soft_vec[P_W_OFFSET+1 +: P_NUM_W_CHECK_MI];
    assign mi_r_irpt_en            = irpt_en[P_R_OFFSET+1 +: P_NUM_R_CHECK_MI];
    assign mi_w_irpt_en            = irpt_en[P_W_OFFSET+1 +: P_NUM_W_CHECK_MI];
    assign ARM_XILINX_RD_SLVERR    = irpt_en[P_BLOCK_RD_SLVERR];
    assign ARM_XILINX_RD_DECERR    = irpt_en[P_BLOCK_RD_DECERR];
    assign ARM_XILINX_WR_SLVERR    = irpt_en[P_BLOCK_WR_SLVERR];
    assign ARM_XILINX_WR_DECERR    = irpt_en[P_BLOCK_WR_DECERR];
    assign REPORT_XILINX_RD_SLVERR = irpt_en[P_IRQ_MI_RD_SLVERR];
    assign REPORT_XILINX_RD_DECERR = irpt_en[P_IRQ_MI_RD_DECERR];
    assign REPORT_XILINX_WR_SLVERR = irpt_en[P_IRQ_MI_WR_SLVERR];
    assign REPORT_XILINX_WR_DECERR = irpt_en[P_IRQ_MI_WR_DECERR];
    
    if (C_NUM_WRITE_OUTSTANDING>0) begin : gen_write
      
      axi_firewall_v1_2_2_threadcam #( 
        .C_NUM_THREADS   (C_NUM_WRITE_THREADS      ) ,
        .C_ID_WIDTH      (C_ID_WIDTH       ) ,
        .C_NUM_OUTSTANDING (P_NUM_WRITE_OUTSTANDING       ) 
      )
      w_threadcam ( 
        .aclk       (aclk  ),
        .aclken     (aclken ),
        .areset     (areset ),
        .s_aid      ( sr_awmesg.id ) ,
        .s_avalid   ( sr_awvalid   ) ,
        .s_aready   ( cam_awready   ) ,
        .m_rid      ( mr_bmesg.id ) ,
        .m_rlast    ( 1'b1    ) ,
        .m_rvalid   ( sr_bvalid ) ,
        .m_rready   ( sr_bready ) ,
        .aid_hot    (awid_hot),
        .rid_hot    (bid_hot ),
        .rid_mismatch (bid_mismatch),
        .cmd_en       (aw_cmd_en ),
        .reverse_hot  (err_wprio[C_NUM_WRITE_THREADS-1:0]),
        .reverse_id   (w_reverse_id),
        .flush        (w_flush)
      );
      
    end else begin : gen_no_write
      
      assign bid_mismatch = 1'b0;
      assign aw_cmd_en = 1'b0;
      
    end

    if (C_NUM_READ_OUTSTANDING>0) begin : gen_read
      
      axi_firewall_v1_2_2_threadcam #( 
        .C_NUM_THREADS   (C_NUM_READ_THREADS      ) ,
        .C_ID_WIDTH      (C_ID_WIDTH       ) ,
        .C_NUM_OUTSTANDING (P_NUM_READ_OUTSTANDING       ) 
      )
      r_threadcam ( 
        .aclk       (aclk  ),
        .aclken     (aclken ),
        .areset     (areset ),
        .s_aid      ( sr_armesg.id ) ,
        .s_avalid   ( sr_arvalid   ) ,
        .s_aready   ( cam_arready   ) ,
        .m_rid      ( mr_rmesg.id ) ,
        .m_rlast    ( sr_rmesg.last  ) ,
        .m_rvalid   ( sr_rvalid ) ,
        .m_rready   ( sr_rready ) ,
        .aid_hot    (arid_hot),
        .rid_hot    (rid_hot),
        .rid_mismatch (rid_mismatch),
        .cmd_en       (ar_cmd_en ),
        .reverse_hot  (err_rprio[C_NUM_READ_THREADS-1:0]),
        .reverse_id   (r_reverse_id),
        .flush        (r_flush)
      );

    end else begin : gen_no_read
      
      assign rid_mismatch = 1'b0;
      assign ar_cmd_en = 1'b0;
      
    end

    axi_firewall_v1_2_2_checks_mi #(
      .MAXRBURSTS                 (P_NUM_READ_OUTSTANDING),
      .MAXWBURSTS                 (P_NUM_WRITE_OUTSTANDING),
      .C_NUM_RTHREADS             (C_NUM_READ_THREADS      ) ,
      .C_NUM_WTHREADS             (C_NUM_WRITE_THREADS      ) ,
      .C_ENABLE_PROTOCOL_CHECKS   (C_ENABLE_PROTOCOL_CHECKS),
      .C_ENABLE_TIMEOUT_CHECKS   (C_ENABLE_TIMEOUT_CHECKS)
      ) checks (
        .ACLK                                 ( aclk),
        .ACLKEN                               ( aclken),
        .W_ARESET                             ( w_check_reset   ),
        .R_ARESET                             ( r_check_reset   ),
        .WAIT_STROBE                          ( wait_strobe ),
        .WAIT_DELAY                           ( wait_delay ),
        .AWID                                 ( awid_hot     ),
        .AWVALID                              ( check_awvalid  ),
        .AWREADY                              ( sr_awready  ),
        .WLAST                                ( sr_wmesg.last    ),
        .WVALID                               ( sr_wvalid   ),
        .WREADY                               ( sr_wready   ),
        .BID_CHECK                            ( bid_check      ),
        .BID_COUNT                            ( bid_count      ),
        .S_BVALID                             ( check_bvalid   ),
        .M_BVALID                             ( mr_bvalid   ),
        .BREADY                               ( sr_bready   ),
        .ARID                                 ( arid_hot     ),
        .ARLEN                                ( sr_armesg.len    ),
        .ARVALID                              ( check_arvalid  ),
        .ARREADY                              ( sr_arready  ),
        .RID_CHECK                            ( rid_check      ),
        .RID_COUNT                            ( rid_count      ),
        .S_RVALID                             ( check_rvalid   ),
        .M_RVALID                             ( mr_rvalid   ),
        .RREADY                               ( sr_rready   ),
        .RLAST                                ( mr_rmesg.last    ),
        .M_RRESP                              ( mr_rmesg.resp    ),
        .M_BRESP                              ( mr_bmesg.resp    ),
        .MAX_AW_WAITS                         (MAX_AW_WAITS                       ),
        .MAX_AR_WAITS                         (MAX_AR_WAITS                       ),
        .MAX_W_WAITS                          (MAX_W_WAITS                        ),
        .MAX_CONTINUOUS_RTRANSFERS_WAITS      (MAX_CONTINUOUS_RTRANSFERS_WAITS    ),
        .MAX_WRITE_TO_BVALID_WAITS            (MAX_WRITE_TO_BVALID_WAITS          ),
        .RECS_ARREADY_MAX_WAIT                (RECS_ARREADY_MAX_WAIT              ),
        .RECS_CONTINUOUS_RTRANSFERS_MAX_WAIT  (RECS_CONTINUOUS_RTRANSFERS_MAX_WAIT),
        .ERRS_RDATA_NUM                       (ERRS_RDATA_NUM                     ),
        .ERRS_RVALID_STABLE                   (ERRS_RVALID_STABLE                 ),
        .RECS_AWREADY_MAX_WAIT                (RECS_AWREADY_MAX_WAIT              ),
        .RECS_WREADY_MAX_WAIT                 (RECS_WREADY_MAX_WAIT               ),
        .RECS_WRITE_TO_BVALID_MAX_WAIT        (RECS_WRITE_TO_BVALID_MAX_WAIT      ),
        .ERRS_BRESP                           (ERRS_BRESP                         ),
        .ERRS_BVALID_STABLE                   (ERRS_BVALID_STABLE                 ),
        .XILINX_RD_SLVERR                     ( XILINX_RD_SLVERR                  ),
        .XILINX_RD_DECERR                     ( XILINX_RD_DECERR                  ),
        .XILINX_WR_SLVERR                     ( XILINX_WR_SLVERR                  ),
        .XILINX_WR_DECERR                     ( XILINX_WR_DECERR                  ),
        .soft_pause                           ( soft_pause ),
        .r_check                              ( r_check ),
        .w_check                              ( w_check ),
        .r_final                              ( r_final  ),
        .rresp_pending                        ( r_pending_hot),
        .bresp_pending                        ( w_pending_hot),
        .write_activity                       ( write_activity ),
        .w_stall                              ( w_stall )
    );

    assign s_awmesg.id      = s_axi_awid     ;
    assign s_awmesg.addr    = s_axi_awaddr   ;
    assign s_awmesg.len     = s_axi_awlen    ;
    assign s_awmesg.size    = (C_PROTOCOL!=2 ? s_axi_awsize : C_WDATA_WIDTH == 32 ? 3'b010 : 3'b011)   ;
    assign s_awmesg.burst   = (C_PROTOCOL==2?2'b01:s_axi_awburst)  ;
    assign s_awmesg.lock    = s_axi_awlock   ;
    assign s_awmesg.cache   = s_axi_awcache  ;
    assign s_awmesg.prot    = s_axi_awprot   ;
    assign s_awmesg.qos     = s_axi_awqos    ;
    assign s_awmesg.region  = s_axi_awregion ;
    assign s_awmesg.user    = s_axi_awuser   ;
    
    assign s_armesg.id      = s_axi_arid     ;
    assign s_armesg.addr    = s_axi_araddr   ;
    assign s_armesg.len     = s_axi_arlen    ;
    assign s_armesg.size    = (C_PROTOCOL!=2 ? s_axi_arsize : C_RDATA_WIDTH == 32 ? 3'b010 : 3'b011)   ;
    assign s_armesg.burst   = (C_PROTOCOL==2?2'b01:s_axi_arburst)  ;
    assign s_armesg.lock    = s_axi_arlock   ;
    assign s_armesg.cache   = s_axi_arcache  ;
    assign s_armesg.prot    = s_axi_arprot   ;
    assign s_armesg.qos     = s_axi_arqos    ;
    assign s_armesg.region  = s_axi_arregion ;
    assign s_armesg.user    = s_axi_aruser   ;
    
    assign s_wmesg.id       = s_axi_wid     ;
    assign s_wmesg.data     = s_axi_wdata   ;
    assign s_wmesg.strb     = s_axi_wstrb   ;
    assign s_wmesg.last     = (C_PROTOCOL==2?1'b1:s_axi_wlast)   ;
    assign s_wmesg.user     = s_axi_wuser   ;
    
    assign s_axi_rid        = s_rmesg.id     ;
    assign s_axi_rdata      = s_rmesg.data   ;
    assign s_axi_rresp      = s_rmesg.resp   ;
    assign s_axi_rlast      = s_rmesg.last   ;
    assign s_axi_ruser      = s_rmesg.user   ;
                            
    assign s_axi_bid        = s_bmesg.id     ;
    assign s_axi_bresp      = s_bmesg.resp   ;
    assign s_axi_buser      = s_bmesg.user   ;
    
    assign m_axi_awid       = m_awmesg.id     ;
    assign m_axi_awaddr     = m_awmesg.addr   ;
    assign m_axi_awlen      = m_awmesg.len    ;
    assign m_axi_awsize     = m_awmesg.size   ;
    assign m_axi_awburst    = m_awmesg.burst  ;
    assign m_axi_awlock     = m_awmesg.lock   ;
    assign m_axi_awcache    = m_awmesg.cache  ;
    assign m_axi_awprot     = m_awmesg.prot   ;
    assign m_axi_awqos      = m_awmesg.qos    ;
    assign m_axi_awregion   = m_awmesg.region ;
    assign m_axi_awuser     = m_awmesg.user   ;
    
    assign m_axi_arid       = m_armesg.id     ;
    assign m_axi_araddr     = m_armesg.addr   ;
    assign m_axi_arlen      = m_armesg.len    ;
    assign m_axi_arsize     = m_armesg.size   ;
    assign m_axi_arburst    = m_armesg.burst  ;
    assign m_axi_arlock     = m_armesg.lock   ;
    assign m_axi_arcache    = m_armesg.cache  ;
    assign m_axi_arprot     = m_armesg.prot   ;
    assign m_axi_arqos      = m_armesg.qos    ;
    assign m_axi_arregion   = m_armesg.region ;
    assign m_axi_aruser     = m_armesg.user   ;
    
    assign m_axi_wid        = m_wmesg.id   ;
    assign m_axi_wdata      = m_wmesg.data ;
    assign m_axi_wstrb      = m_wmesg.strb ;
    assign m_axi_wlast      = m_wmesg.last ;
    assign m_axi_wuser      = m_wmesg.user ;
    
    assign m_rmesg.id       = m_axi_rid     ;
    assign m_rmesg.data     = m_axi_rdata   ;
    assign m_rmesg.resp     = m_axi_rresp   ;
    assign m_rmesg.last     = (C_PROTOCOL==2?1'b1:m_axi_rlast)   ;
    assign m_rmesg.user     = m_axi_ruser   ;
    
    assign m_bmesg.id       = m_axi_bid     ;
    assign m_bmesg.resp     = m_axi_bresp   ;
    assign m_bmesg.user     = m_axi_buser   ;
    
    assign s_awvector       = s_awmesg      ;
    assign s_arvector       = s_armesg      ;
    assign s_wvector        = s_wmesg      ;
    assign s_rmesg          = s_rvector    ;
    assign s_bmesg          = s_bvector    ;
    
    assign m_awmesg         = m_awvector   ;
    assign m_armesg         = m_arvector   ;
    assign m_wmesg          = m_wvector    ;
    assign m_rvector        = m_rmesg     ;
    assign m_bvector        = m_bmesg     ;
    
    assign sr_awmesg        = sr_awvector   ;
    assign sr_armesg        = sr_arvector   ;
    assign sr_wmesg         = sr_wvector    ;
    assign mr_rmesg         = mr_rvector    ;
    assign mr_bmesg         = mr_bvector    ;
    assign sr_rvector       = sr_rmesg     ;
    assign sr_bvector       = sr_bmesg     ;
    
    sc_util_v1_0_4_axi_reg_stall # (
      .C_REG_CONFIG ( C_NUM_READ_OUTSTANDING>0 ? P_FULLY_PIPELINED : P_BYPASS ) 
    )
    s_ar_reg (
      .aclk     (aclk),
      .aclken   (aclken),
      .areset   (areset),
      .s_vector (s_arvector),
      .s_valid  (s_axi_arvalid),
      .s_ready  (s_axi_arready),
      .m_vector (sr_arvector),
      .m_valid  (sr_arvalid),
      .m_ready  (sr_arready),
      .s_stall  (soft_pause[CH_AR]),
      .resume   (soft_resume[CH_AR])
    );
          
    sc_util_v1_0_4_axi_reg_stall # (
      .C_REG_CONFIG ( C_NUM_WRITE_OUTSTANDING>0 ? P_FULLY_PIPELINED : P_BYPASS ) 
    )
    s_aw_reg (
      .aclk     (aclk),
      .aclken   (aclken),
      .areset   (areset),
      .s_vector (s_awvector),
      .s_valid  (s_axi_awvalid),
      .s_ready  (s_axi_awready),
      .m_vector (sr_awvector),
      .m_valid  (sr_awvalid),
      .m_ready  (sr_awready),
      .s_stall  (soft_pause[CH_AW]),
      .resume   (soft_resume[CH_AW])
    );
          
    sc_util_v1_0_4_axi_reg_stall # (
      .C_REG_CONFIG ( (C_NUM_WRITE_OUTSTANDING>0) ? P_FULLY_PIPELINED : P_BYPASS ) 
    )
    s_w_reg (
      .aclk     (aclk),
      .aclken   (aclken),
      .areset   (areset),
      .s_vector (s_wvector),
      .s_valid  (s_axi_wvalid),
      .s_ready  (s_axi_wready),
      .m_vector (sr_wvector),
      .m_valid  (sr_wvalid),
      .m_ready  (sr_wready),
      .s_stall  (soft_pause[CH_W]),
      .resume   (soft_resume[CH_W])
    );
          
    sc_util_v1_0_4_axi_reg_stall # (
      .C_REG_CONFIG ( C_NUM_READ_OUTSTANDING>0 ? P_FULLY_PIPELINED : P_BYPASS ) 
    )
    s_r_reg (
      .aclk     (aclk),
      .aclken   (aclken),
      .areset   (areset),
      .s_vector (sr_rvector),
      .s_valid  (sr_rvalid),
      .s_ready  (sr_rready),
      .m_vector (s_rvector),
      .m_valid  (s_axi_rvalid),
      .m_ready  (s_axi_rready),
      .s_stall  (soft_pause[CH_R]),
      .resume   (soft_resume[CH_R])
    );
          
    sc_util_v1_0_4_axi_reg_stall # (
      .C_REG_CONFIG ( C_NUM_WRITE_OUTSTANDING>0 ? P_FULLY_PIPELINED : P_BYPASS ) 
    )
    s_b_reg (
      .aclk     (aclk),
      .aclken   (aclken),
      .areset   (areset),
      .s_vector (sr_bvector),
      .s_valid  (sr_bvalid),
      .s_ready  (sr_bready),
      .m_vector (s_bvector),
      .m_valid  (s_axi_bvalid),
      .m_ready  (s_axi_bready),
      .s_stall  (soft_pause[CH_B]),
      .resume   (soft_resume[CH_B])
    );
          
    sc_util_v1_0_4_axi_reg_stall # (
      .C_REG_CONFIG ( P_BYPASS ) 
    )
    m_ar_reg (
      .aclk     (aclk),
      .aclken   (aclken),
      .areset   (mi_r_reset),
      .s_vector (mr_arvector),
      .s_valid  (mr_arvalid),
      .s_ready  (mr_arready),
      .m_vector (m_arvector),
      .m_valid  (m_axi_arvalid),
      .m_ready  (m_axi_arready),
      .s_stall  (1'b0),
      .resume   (1'b0)
    );
          
    sc_util_v1_0_4_axi_reg_stall # (
      .C_REG_CONFIG ( P_BYPASS ) 
    )
    m_aw_reg (
      .aclk     (aclk),
      .aclken   (aclken),
      .areset   (mi_w_reset),
      .s_vector (mr_awvector),
      .s_valid  (mr_awvalid),
      .s_ready  (mr_awready),
      .m_vector (m_awvector),
      .m_valid  (m_axi_awvalid),
      .m_ready  (m_axi_awready),
      .s_stall  (1'b0),
      .resume   (1'b0)
    );
          
    sc_util_v1_0_4_axi_reg_stall # (
      .C_REG_CONFIG ( P_BYPASS ) 
    )
    m_w_reg (
      .aclk     (aclk),
      .aclken   (aclken),
      .areset   (mi_w_reset),
      .s_vector (mr_wvector),
      .s_valid  (mr_wvalid),
      .s_ready  (mr_wready),
      .m_vector (m_wvector),
      .m_valid  (m_axi_wvalid),
      .m_ready  (m_axi_wready),
      .s_stall  (1'b0),
      .resume   (1'b0)
    );
          
    sc_util_v1_0_4_axi_reg_stall # (
      .C_REG_CONFIG ( (C_ENABLE_PIPELINING && (C_NUM_READ_OUTSTANDING>0)) ? P_FULLY_PIPELINED : P_BYPASS ) 
    )
    m_r_reg (
      .aclk     (aclk),
      .aclken   (aclken),
      .areset   (mi_r_reset),
      .s_vector (m_rvector),
      .s_valid  (m_axi_rvalid),
      .s_ready  (m_axi_rready),
      .m_vector (mr_rvector),
      .m_valid  (mr_rvalid),
      .m_ready  (mr_rready),
      .s_stall  (1'b0),
      .resume   (1'b0)
    );
          
    sc_util_v1_0_4_axi_reg_stall # (
      .C_REG_CONFIG ( (C_ENABLE_PIPELINING && (C_NUM_WRITE_OUTSTANDING>0)) ? P_FULLY_PIPELINED : P_BYPASS ) 
    )
    m_b_reg (
      .aclk     (aclk),
      .aclken   (aclken),
      .areset   (mi_w_reset),
      .s_vector (m_bvector),
      .s_valid  (m_axi_bvalid),
      .s_ready  (m_axi_bready),
      .m_vector (mr_bvector),
      .m_valid  (mr_bvalid),
      .m_ready  (mr_bready),
      .s_stall  (1'b0),
      .resume   (1'b0)
    );
    
  end else begin : gen_si

    logic si_w_error_i = 1'b0;
    logic si_r_error_i = 1'b0;
    logic si_w_error_d = 1'b0;
    logic si_r_error_d = 1'b0;
    logic si_w_reset;
    logic si_r_reset;
    logic        RECM_RREADY_MAX_WAIT               ;
    logic        ERRM_ARSIZE ;
    logic        ERRM_ARADDR_BOUNDARY                 ;
    logic        ERRM_ARVALID_STABLE ;
    logic        RECM_BREADY_MAX_WAIT          ;
    logic        RECM_CONTINUOUS_WTRANSFERS_MAX_WAIT           ;
    logic        RECM_W_TO_AWVALID_MAX_WAIT  ;
    logic        ERRM_AWSIZE                     ;
    logic        ERRM_WDATA_NUM ;
    logic        ERRM_AWADDR_BOUNDARY  ;
    logic        ERRM_AWVALID_STABLE                     ;
    logic        ERRM_WVALID_STABLE ;
    logic wxfer_en;
    logic w_command_check;
    logic r_command_check;
    // logic check_wvalid;
    logic wcmd_active;
    
    logic        s_axi_ctl_arready_i = 1'b0;
    logic        s_axi_ctl_rvalid_i  = 1'b0;
    logic        s_axi_ctl_awready_i = 1'b0;
    logic        s_axi_ctl_bvalid_i  = 1'b0;
    logic [31:0] s_axi_ctl_rdata_i;
    logic [15:0] r_check_vec = 16'b0;
    logic [15:0] w_check_vec = 16'b0;
    logic [31:0] soft_vec;
    logic [31:0] soft_vec_ctl = 32'b0;
    logic [31:0] soft_pause;
    logic [31:0] soft_pause_d = 32'b0;
    logic [31:0] soft_pause_ctl = 32'b0;
    logic [31:0] soft_resume;
    logic [15:0] r_soft_vec;
    logic [15:0] w_soft_vec;
    logic [15:0] MAX_CONTINUOUS_WTRANSFERS_WAITS;
    logic [15:0] MAX_W_TO_AWVALID_WAITS;
    logic [15:0] MAX_R_WAITS;
    logic [15:0] MAX_B_WAITS;
    logic [15:0] MAX_CONTINUOUS_WTRANSFERS_WAITS_ctl = P_DEFLT_WAIT;
    logic [15:0] MAX_W_TO_AWVALID_WAITS_ctl  = P_DEFLT_WAIT;
    logic [15:0] MAX_R_WAITS_ctl                     = P_DEFLT_WAIT;
    logic [15:0] MAX_B_WAITS_ctl                     = P_DEFLT_WAIT;
    logic        ip2intc_irpt_i = 1'b0;
    logic        glob_irpt_en;
    logic        glob_irpt_en_ctl = 1'b0;
    logic [15:0] si_r_irpt_en;
    logic [15:0] si_w_irpt_en;
    logic [31:0] irpt_en;
    logic [31:0] irpt_en_ctl = 32'b0;
    logic        si_user_irpt_en;
    
    assign  mi_w_error = 1'b0;
    assign  mi_r_error = 1'b0;
    
    assign si_w_reset = areset | si_w_error_i;
    assign si_r_reset = areset | si_r_error_i;
    
    assign w_command_check = ERRM_AWSIZE | ERRM_AWADDR_BOUNDARY | ERRM_AWVALID_STABLE;
    assign r_command_check = ERRM_ARSIZE | ERRM_ARADDR_BOUNDARY | ERRM_ARVALID_STABLE;
    
    assign check_bvalid = mr_bvalid;
    assign sr_bvalid    = mr_bvalid & ~si_w_error_i;  // Ok to violate valid sticky on SI after check triggered
    assign mr_bready  = (sr_bready | si_w_error_i);
    assign sr_bmesg.resp = C_MASK_ERR_RESP ? ((mr_bmesg.resp==P_SLVERR || mr_bmesg.resp==P_DECERR) ? P_OKAY : mr_bmesg.resp) : mr_bmesg.resp;
    assign sr_bmesg.id = mr_bmesg.id;
    assign sr_bmesg.user = mr_bmesg.user;
    
    assign check_rvalid = mr_rvalid;
    assign sr_rvalid    = mr_rvalid & ~si_r_error_i;  // Ok to violate valid sticky on SI after check triggered
    assign mr_rready  = (sr_rready | si_r_error_i);
    assign sr_rmesg.resp = C_MASK_ERR_RESP ? ((mr_rmesg.resp==P_SLVERR || mr_rmesg.resp==P_DECERR) ? P_OKAY : mr_rmesg.resp) : mr_rmesg.resp;
    assign sr_rmesg.id = mr_rmesg.id;
    assign sr_rmesg.last = mr_rmesg.last;
    assign sr_rmesg.data = mr_rmesg.data;
    assign sr_rmesg.user = mr_rmesg.user;
    
    assign mr_wvalid = si_w_error_i ? 
      (w_flush ? w_flush_en : sticky_wvalid & ~mr_wready)  // Obey valid sticky until flushing begins, then assert for duration of flush
      : (sr_wvalid & ~ERRM_WDATA_NUM & wxfer_en);           // Suppress wvalid propagation if WDATA_NUM error
    // assign check_wvalid = si_w_error_i ? 
    //   (w_flush ? w_flush_en : sticky_wvalid & ~mr_wready)  // Trigger scoreboard for each flush transfer
    //   : (sr_wvalid & wxfer_en);                                           // ... or real xfer
    assign sr_wready = (mr_wready & wxfer_en) | w_flush;
    assign mr_wmesg.last = w_final;  // Always output the correct expected wlast
    assign mr_wmesg.data = (w_flush | ERRM_WDATA_NUM) ? {C_WDATA_WIDTH/32{32'hDEAD_FA11}} : sr_wmesg.data;
    assign mr_wmesg.strb = (w_flush | ERRM_WDATA_NUM) ? {C_WDATA_WIDTH/8{1'b0}} : sr_wmesg.strb;
    assign mr_wmesg.user = (w_flush | ERRM_WDATA_NUM) ? 1'b0 : sr_wmesg.user;
    
    assign mr_awvalid = si_w_error_i ? (sticky_awvalid & ~mr_awready)
      : (sr_awvalid & ~w_command_check & aw_cmd_en);  // Suppress awvalid propagation if write command error (don't violate valid sticky)
    assign check_awvalid = si_w_error_i ? (sticky_awvalid & ~mr_awready)
      : (sr_awvalid & aw_cmd_en);
    assign sr_awready = (mr_awready & aw_cmd_en) | w_flush;
    assign mr_awvector = sr_awvector;
    
    assign mr_arvalid = si_r_error_i ? (sticky_arvalid & ~mr_arready)
      : (sr_arvalid & ~r_command_check & ar_cmd_en);  // Suppress arvalid propagation if read command error (don't violate valid sticky)
    assign check_arvalid = si_r_error_i ? (sticky_arvalid & ~mr_arready)
      : (sr_arvalid & ar_cmd_en);
    assign sr_arready = (mr_arready & ar_cmd_en) | si_r_error_i;
    assign mr_arvector = sr_arvector;
    
    assign si_w_error = si_w_error_i;
    assign si_r_error = si_r_error_i;
    
    assign w_busy = w_any_pending;
    assign r_busy = r_any_pending;
    
    always @(posedge aclk) begin
      if (areset) begin
        w_state <= W_IDLE;
        r_state <= R_IDLE;
        si_w_error_i <= 1'b0;
        si_r_error_i <= 1'b0;
        si_w_error_d <= 1'b0;
        si_r_error_d <= 1'b0;
        awaddr_err_low  <= 0;
        awaddr_err_high <= 0;
        awuser_err      <= 0;
        araddr_err_low  <= 0;
        araddr_err_high <= 0;
        aruser_err      <= 0;
        read_send <= 1'b0;
        read_event <= 1'b0;
      end else if (aclken) begin
        w_state <= w_next;
        r_state <= r_next;
        si_w_error_d <= si_w_error_i;
        si_r_error_d <= si_r_error_i;

        if (read_ack) begin
          read_send <= 1'b0;
        end else if (read_event) begin
          read_send <= 1'b1;
          read_event <= 1'b0;
        end
        
        if (~si_w_error_i) begin
          awaddr_err_low  <= 0;
          awaddr_err_high <= 0;
          awuser_err      <= 0;
        end else if (~si_w_error_d) begin
          awaddr_err_low  <= awaddr_last_low;
          awaddr_err_high <= awaddr_last_high;
          awuser_err      <= awuser_last;
          read_event <= 1'b1;
        end
        
        if (~si_r_error_i) begin
          araddr_err_low  <= 0;
          araddr_err_high <= 0;
          aruser_err      <= 0;
        end else if (~si_r_error_d) begin
          araddr_err_low  <= araddr_last_low;
          araddr_err_high <= araddr_last_high;
          aruser_err      <= aruser_last;
          read_event <= 1'b1;
        end
        
        if (w_error_set) begin
          si_w_error_i <= 1'b1;
        end else if (w_error_reset) begin
          si_w_error_i <= 1'b0;
        end

        if (r_error_set) begin
          si_r_error_i <= 1'b1;
        end else if (r_error_reset) begin
          si_r_error_i <= 1'b0;
        end
      end
    end
    
    always @(posedge aclk) begin
      if (areset) begin
        awaddr_last_low <= 0;
        awaddr_last_high <= 0;
        awuser_last <= 0;
        araddr_last_low <= 0;
        araddr_last_high <= 0;
        aruser_last <= 0;
        awaddr_si_low <= 0;
        awaddr_si_high <= 0;
        awuser_si <= 0;
        araddr_si_low <= 0;
        araddr_si_high <= 0;
        aruser_si <= 0;
      end else if (aclken) begin
        if (ERRM_AWVALID_STABLE | ERRM_WVALID_STABLE) begin
          awaddr_last_low  <= awaddr_si_low  ;
          awaddr_last_high <= awaddr_si_high ;
          awuser_last      <= awuser_si      ;
        end else if (sr_awvalid) begin
          awaddr_last_low  <= sr_awmesg.addr;
          awaddr_last_high <= sr_awmesg.addr >> 32;
          awuser_last      <= sr_awmesg.user;
        end
        if (ERRM_ARVALID_STABLE) begin
          araddr_last_low  <= araddr_si_low  ;
          araddr_last_high <= araddr_si_high ;
          aruser_last      <= aruser_si      ;
        end else if (sr_arvalid) begin
          araddr_last_low  <= sr_armesg.addr;
          araddr_last_high <= sr_armesg.addr >> 32;
          aruser_last      <= sr_armesg.user;
        end
        if (s_axi_awvalid) begin
          awaddr_si_low  <= s_axi_awaddr;
          awaddr_si_high <= s_axi_awaddr >> 32;
          awuser_si      <= s_axi_awuser;
        end
        if (s_axi_arvalid) begin
          araddr_si_low  <= s_axi_araddr;
          araddr_si_high <= s_axi_araddr >> 32;
          aruser_si      <= s_axi_aruser;
        end
      end 
    end

    always @(posedge aclk) begin
      if (~aresetn) begin
        wait_strobe <= 1'b0;
        wait_delay <= 1'b0;
        strobe_timer <= 0;
        delay_timer <= 0;
        prescaler_ack <= 1'b0;
        delay_ack <= 1'b0;
        write_ack <= 1'b0;
        soft_pause_d <= 0;
      end else if (aclken) begin
        prescaler_ack <= prescaler_load;
        delay_ack <= delay_load;
        write_ack <= write_req;
        soft_pause_d <= soft_pause;
        
        if (C_ENABLE_PRESCALER != 0) begin
          wait_strobe <= strobe_timer == 0;
          if (unblock | prescaler_load | (strobe_timer == 0)) begin
            strobe_timer <= prescaler;
          end else begin
            strobe_timer <= strobe_timer - 1;
          end
        end else begin
          wait_strobe <= 1'b1;
        end
        
        if (C_ENABLE_INITIAL_DELAY != 0) begin
          if (unblock | delay_load) begin
            delay_timer <= init_delay;
            wait_delay <= init_delay != 0;
          end else if (wait_delay & wait_strobe) begin
            delay_timer <= delay_timer - 1;
            wait_delay <= delay_timer != 1;
          end
        end else begin
          wait_delay <= 1'b0;
        end
      end
    end

    assign soft_resume = ~soft_pause & soft_pause_d;

    always @(posedge aclk) begin
      if (w_check_reset) begin
        w_flush <= 1'b0;
        w_flush_en <= 1'b0;
        sticky_wvalid <= 1'b0;
        sticky_awvalid <= 1'b0;
      end else if (aclken) begin
        if (mr_wready & mr_wvalid) begin
          w_flush_en <= 1'b0;
        end else if (wcmd_active) begin
          w_flush_en <= 1'b1;
        end
        if (mr_wready | ~sr_wvalid) begin
          w_flush <= si_w_error_i;  // Obey payload sticky before starting flush
        end
        if (mr_wready) begin
          sticky_wvalid <= 1'b0;
        end else if (sr_wvalid & ~(w_error_set | si_w_error_i)) begin
          sticky_wvalid <= 1'b1;
        end
        if (mr_awready) begin
          sticky_awvalid <= 1'b0;
        end else if (sr_awvalid & ~(w_error_set | si_w_error_i)) begin
          sticky_awvalid <= 1'b1;
        end
      end
    end
    
    always @(posedge aclk) begin
      if (r_check_reset) begin
        sticky_arvalid <= 1'b0;
      end else if (aclken) begin
        if (mr_arready) begin
          sticky_arvalid <= 1'b0;
        end else if (sr_arvalid & ~(r_error_set | si_r_error_i)) begin
          sticky_arvalid <= 1'b1;
        end
      end
    end
    
    always @* begin
      w_next = w_state;  // default hold state
      w_error_set = 1'b0;
      w_error_reset = 1'b0;
      case (w_state)
        W_BLOCK: begin
          if (unblock) begin
            if (w_busy) begin
              w_next = W_PENDING;
            end else begin
              w_next = W_UNBLOCK_WAIT;
            end
          end
        end
          
        W_PENDING: begin  // Waiting for all outstanding transactions to complete
          if (~w_busy) begin
            w_next = W_UNBLOCK_WAIT;
          end
        end
        
        W_UNBLOCK_WAIT: begin
          if (~unblock) begin
            w_error_reset = 1'b1;
            w_next = W_IDLE;
          end
        end
        
        default: begin  // W_IDLE
          if (w_check | w_soft | (XILINX_WR_SLVERR & ARM_XILINX_WR_SLVERR) | (XILINX_WR_DECERR & ARM_XILINX_WR_DECERR)) begin
            w_next = W_BLOCK;
            w_error_set = 1'b1;
          end
        end
      endcase
    end
        
    always @* begin
      r_next = r_state;  // default hold state
      r_error_set = 1'b0;
      r_error_reset = 1'b0;
      case (r_state)
        R_BLOCK: begin
          if (unblock) begin
            if (r_busy) begin
              r_next = R_PENDING;
            end else begin
              r_next = R_UNBLOCK_WAIT;
            end
          end
        end
          
        R_PENDING: begin  // Waiting for all outstanding transactions to complete
          if (~r_busy) begin
            r_next = R_UNBLOCK_WAIT;
          end
        end
        
        R_UNBLOCK_WAIT: begin
          if (~unblock) begin
            r_error_reset = 1'b1;
            r_next = R_IDLE;
          end
        end
        
        default: begin  // R_IDLE
          if (r_check | r_soft | (XILINX_RD_SLVERR & ARM_XILINX_RD_SLVERR) | (XILINX_RD_DECERR & ARM_XILINX_RD_DECERR)) begin
            r_next = R_BLOCK;
            r_error_set = 1'b1;
          end
        end
      endcase
    end
        
  // AXI Status Interface
    
    assign s_axi_ctl_arready = s_axi_ctl_arready_i;
    assign s_axi_ctl_rvalid  = s_axi_ctl_rvalid_i;
    assign s_axi_ctl_rdata   = s_axi_ctl_rdata_i;
    assign s_axi_ctl_rresp   = 2'b0;
    assign s_axi_ctl_awready = s_axi_ctl_awready_i;
    assign s_axi_ctl_wready  = s_axi_ctl_awready_i;  // Both aw and w ready driven in common
    assign s_axi_ctl_bvalid  = s_axi_ctl_bvalid_i;
    assign s_axi_ctl_bresp   = 2'b0;
    assign r_soft        = |r_soft_vec;
    assign w_soft        = |w_soft_vec;
    assign ip2intc_irpt  = ip2intc_irpt_i;
    
    always @(posedge aclk) begin
      if (r_check_reset) begin
        r_check_vec <= 16'b0;
      end else if ((C_NUM_READ_OUTSTANDING>0) && aclken) begin
        if (~si_r_error_i) begin
          r_check_vec <= r_check_vec | {
            (XILINX_RD_DECERR && (REPORT_XILINX_RD_DECERR || ARM_XILINX_RD_DECERR)) ,
            (XILINX_RD_SLVERR && (REPORT_XILINX_RD_SLVERR || ARM_XILINX_RD_SLVERR)) ,
            ERRM_ARVALID_STABLE ,
            ERRM_ARADDR_BOUNDARY ,
            ERRM_ARSIZE ,
            RECM_RREADY_MAX_WAIT 
            } |r_soft_vec ;
        end
      end
    end
    
    always @(posedge aclk) begin
      if (w_check_reset) begin
        w_check_vec <= 16'b0;
      end else if ((C_NUM_WRITE_OUTSTANDING>0) && aclken) begin
        if (~si_w_error_i) begin
          w_check_vec <= w_check_vec | {
            (XILINX_WR_DECERR && (REPORT_XILINX_WR_DECERR || ARM_XILINX_WR_DECERR)) ,
            (XILINX_WR_SLVERR && (REPORT_XILINX_WR_SLVERR || ARM_XILINX_WR_SLVERR)) ,
            ERRM_WVALID_STABLE ,
            ERRM_AWVALID_STABLE ,
            ERRM_AWADDR_BOUNDARY ,
            ERRM_WDATA_NUM ,
            ERRM_AWSIZE ,
            RECM_W_TO_AWVALID_MAX_WAIT ,
            RECM_CONTINUOUS_WTRANSFERS_MAX_WAIT ,
            RECM_BREADY_MAX_WAIT 
            } | w_soft_vec ;
        end
      end
    end
    
    always @(posedge aclk) begin
      if (areset) begin
        ip2intc_irpt_i <= 1'b0;
      end else if (glob_irpt_en) begin
        ip2intc_irpt_i <= (|(r_check_vec & si_r_irpt_en)) | (|(w_check_vec & si_w_irpt_en));
      end else begin
        ip2intc_irpt_i <= 1'b0;
      end
    end
    
    always @(posedge aclk_ctl_i) begin
      if (areset_ctl) begin
        s_axi_ctl_arready_i <= 1'b0;
        s_axi_ctl_rvalid_i <= 1'b0;
        read_ack_ctl <= 1'b0;
      end else if (aclken_ctl) begin
        read_ack_ctl <= read_req_ctl;
        if (s_axi_ctl_rready & s_axi_ctl_rvalid_i) begin
          s_axi_ctl_rvalid_i <= 1'b0;
        end else if (s_axi_ctl_arready_i & s_axi_ctl_arvalid) begin
          s_axi_ctl_arready_i <= 1'b0;
          s_axi_ctl_rvalid_i <= 1'b1;
        end else if (~s_axi_ctl_rvalid_i) begin
          s_axi_ctl_arready_i <= 1'b1;
        end
      end
    end

    always @(posedge aclk_ctl_i) begin
      if (aclken_ctl & s_axi_ctl_arvalid & ~s_axi_ctl_rvalid_i) begin
        casex (s_axi_ctl_araddr[11:0])
          12'b0000_0001_00xx: s_axi_ctl_rdata_i <= P_VERSION;
          12'b0001_0000_00xx: s_axi_ctl_rdata_i <= status_mesg_ctl;
          12'b0001_0000_01xx: s_axi_ctl_rdata_i <= soft_vec_ctl;
          12'b0001_0000_10xx: s_axi_ctl_rdata_i <= 32'b0;
          12'b0000_0001_01xx: s_axi_ctl_rdata_i <= soft_pause_ctl;
          12'b0001_0011_00xx: s_axi_ctl_rdata_i <= MAX_CONTINUOUS_WTRANSFERS_WAITS_ctl;
          12'b0001_0011_01xx: s_axi_ctl_rdata_i <= MAX_W_TO_AWVALID_WAITS_ctl;
          12'b0001_0011_10xx: s_axi_ctl_rdata_i <= MAX_R_WAITS_ctl;
          12'b0001_0011_11xx: s_axi_ctl_rdata_i <= MAX_B_WAITS_ctl;
          12'b0010_0000_00xx: s_axi_ctl_rdata_i <= glob_irpt_en_ctl;
          12'b0010_0000_10xx: s_axi_ctl_rdata_i <= irpt_en_ctl;
          12'b0010_0001_00xx: s_axi_ctl_rdata_i <= araddr_err_low_ctl;
          12'b0010_0001_01xx: s_axi_ctl_rdata_i <= araddr_err_high_ctl;
          12'b0010_0001_10xx: s_axi_ctl_rdata_i <= awaddr_err_low_ctl;
          12'b0010_0001_11xx: s_axi_ctl_rdata_i <= awaddr_err_high_ctl;
          12'b0010_0010_00xx: s_axi_ctl_rdata_i <= aruser_err_ctl;
          12'b0010_0010_01xx: s_axi_ctl_rdata_i <= awuser_err_ctl;
          12'b0010_0011_00xx: s_axi_ctl_rdata_i <= prescaler_ctl;
          12'b0010_0011_01xx: s_axi_ctl_rdata_i <= init_delay_ctl;
          default:      s_axi_ctl_rdata_i <= 32'b0;
        endcase
      end
    end

    assign {awuser_err_ctl, aruser_err_ctl, awaddr_err_high_ctl, awaddr_err_low_ctl, araddr_err_high_ctl, araddr_err_low_ctl} = read_mesg_ctl;
    assign read_mesg = {awuser_err, aruser_err, awaddr_err_high, awaddr_err_low, araddr_err_high, araddr_err_low};

    always @(posedge aclk_ctl_i) begin
      aresetn_ctl_d <= aresetn_ctl;
      if (~aresetn_ctl) begin
        aresetn_delay_ctl <= 1'b0;
        prescaler_load_ctl <= 1'b0;
        delay_load_ctl <= 1'b0;
        prescaler_event_ctl <= 1'b0;
        delay_event_ctl <= 1'b0;
        write_send_ctl <= 1'b0;
        write_event_ctl <= 1'b0;
        unblock_ctl_d <= 1'b0;
      end else begin
        if (~aresetn_ctl_d) begin
          prescaler_event_ctl <= 1'b1;
          delay_event_ctl <= 1'b1;
          write_event_ctl <= 1'b1;
        end
        
        if (aclken_ctl) begin
          if (write_ack_ctl) begin
            write_send_ctl <= 1'b0;
            aresetn_delay_ctl <= 1'b1;
            if (unblock_ctl_d) begin
              unblock_ctl <= 1'b0;
            end
          end else if (write_event_ctl | unblock_ctl_d) begin
            if (~write_send_ctl) begin
              write_event_ctl <= 1'b0;
            end
            write_send_ctl <= 1'b1;
            unblock_ctl_d <= unblock_ctl;
          end
          
          if (prescaler_ack_ctl) begin
            prescaler_load_ctl <= 1'b0;
          end else if (prescaler_event_ctl) begin
            if (~prescaler_load_ctl) begin
              prescaler_event_ctl <= 1'b0;
            end
            prescaler_load_ctl <= 1'b1;
          end
          
          if (delay_ack_ctl) begin
            delay_load_ctl <= 1'b0;
          end else if (delay_event_ctl) begin
            if (~delay_load_ctl) begin
              delay_event_ctl <= 1'b0;
            end
            delay_load_ctl <= 1'b1;
          end
        end
      end
          
      if (areset_ctl) begin
        s_axi_ctl_awready_i <= 1'b0;
        s_axi_ctl_bvalid_i <= 1'b0;
        unblock_ctl <= 1'b0;
        soft_vec_ctl  <= 0;
        soft_pause_ctl  <= 0;
        irpt_en_ctl  <= 0;
        MAX_CONTINUOUS_WTRANSFERS_WAITS_ctl <= P_DEFLT_WAIT;
        MAX_W_TO_AWVALID_WAITS_ctl       <= P_DEFLT_WAIT;
        MAX_R_WAITS_ctl                    <= P_DEFLT_WAIT;
        MAX_B_WAITS_ctl                    <= P_DEFLT_WAIT;
        prescaler_ctl <= 0;
        init_delay_ctl <= 0;
        w_error_ctl_d <= 1'b0;
        r_error_ctl_d <= 1'b0;
      end else begin
        if (aclken_ctl) begin
          w_error_ctl_d <= w_error_ctl;
          r_error_ctl_d <= r_error_ctl;
          
          if (w_error_ctl & ~w_error_ctl_d) begin
            soft_vec_ctl[P_W_OFFSET +: 16]  <= 0;
            write_event_ctl <= 1'b1;
          end
          if (r_error_ctl & ~r_error_ctl_d) begin
            soft_vec_ctl[P_R_OFFSET +: 16]  <= 0;
            write_event_ctl <= 1'b1;
          end
          
          if (s_axi_ctl_bready & s_axi_ctl_bvalid_i) begin
            s_axi_ctl_bvalid_i <= 1'b0;
          end else if (s_axi_ctl_awready_i) begin
            s_axi_ctl_awready_i <= 1'b0;
            s_axi_ctl_bvalid_i <= 1'b1;
          end else if (s_axi_ctl_awvalid & s_axi_ctl_wvalid) begin
            s_axi_ctl_awready_i <= 1'b1;
            write_event_ctl <= 1'b1;
            casex (s_axi_ctl_awaddr[11:0])
              12'b0001_0000_01xx: soft_vec_ctl                    <= s_axi_ctl_wdata;
              12'b0001_0000_10xx: unblock_ctl                     <= s_axi_ctl_wdata[0];
              12'b0000_0001_01xx: soft_pause_ctl                      <= s_axi_ctl_wdata;
              12'b0001_0011_00xx: MAX_CONTINUOUS_WTRANSFERS_WAITS_ctl <= s_axi_ctl_wdata ;
              12'b0001_0011_01xx: MAX_W_TO_AWVALID_WAITS_ctl          <= s_axi_ctl_wdata ;
              12'b0001_0011_10xx: MAX_R_WAITS_ctl                     <= s_axi_ctl_wdata ;
              12'b0001_0011_11xx: MAX_B_WAITS_ctl                     <= s_axi_ctl_wdata ;
              12'b0010_0000_00xx: glob_irpt_en_ctl                    <= s_axi_ctl_wdata[0];
              12'b0010_0000_10xx: irpt_en_ctl                         <= s_axi_ctl_wdata;
              12'b0010_0011_00xx: 
                begin
                  prescaler_ctl <= s_axi_ctl_wdata;
                  prescaler_load_ctl <= 1'b1;
                end
              12'b0010_0011_01xx: 
                begin
                  init_delay_ctl <= s_axi_ctl_wdata;
                  delay_load_ctl <= 1'b1;
                end
            endcase
          end
        end
      end
    end
    
    always @ * begin
      status_mesg = 32'b0;
      status_mesg[P_W_OFFSET+1 +: P_NUM_W_CHECK_SI] = w_check_vec;
      status_mesg[P_W_OFFSET]                       = w_busy;
      status_mesg[P_R_OFFSET+1 +: P_NUM_R_CHECK_SI] = r_check_vec;
      status_mesg[P_R_OFFSET]                       = r_busy;
      status_mesg[33] = si_w_error;
      status_mesg[32] = si_r_error;
    end
    
    assign w_error_ctl = status_mesg_ctl[33];
    assign r_error_ctl = status_mesg_ctl[32];
    assign write_mesg_ctl = {glob_irpt_en_ctl, unblock_ctl, irpt_en_ctl, MAX_CONTINUOUS_WTRANSFERS_WAITS_ctl, MAX_W_TO_AWVALID_WAITS_ctl, MAX_R_WAITS_ctl, MAX_B_WAITS_ctl, soft_vec_ctl, soft_pause_ctl} ;
    assign {glob_irpt_en, unblock, irpt_en, MAX_CONTINUOUS_WTRANSFERS_WAITS, MAX_W_TO_AWVALID_WAITS, MAX_R_WAITS, MAX_B_WAITS, soft_vec, soft_pause} = write_mesg ;
    assign r_soft_vec              = soft_vec[P_R_OFFSET+1 +: P_NUM_R_CHECK_SI];
    assign w_soft_vec              = soft_vec[P_W_OFFSET+1 +: P_NUM_W_CHECK_SI];
    assign si_r_irpt_en            = irpt_en[P_R_OFFSET+1 +: P_NUM_R_CHECK_SI];
    assign si_w_irpt_en            = irpt_en[P_W_OFFSET+1 +: P_NUM_W_CHECK_SI];
    assign ARM_XILINX_RD_SLVERR    = irpt_en[P_BLOCK_RD_SLVERR];
    assign ARM_XILINX_RD_DECERR    = irpt_en[P_BLOCK_RD_DECERR];
    assign ARM_XILINX_WR_SLVERR    = irpt_en[P_BLOCK_WR_SLVERR];
    assign ARM_XILINX_WR_DECERR    = irpt_en[P_BLOCK_WR_DECERR];
    assign REPORT_XILINX_RD_SLVERR = irpt_en[P_IRQ_SI_RD_SLVERR];
    assign REPORT_XILINX_RD_DECERR = irpt_en[P_IRQ_SI_RD_DECERR];
    assign REPORT_XILINX_WR_SLVERR = irpt_en[P_IRQ_SI_WR_SLVERR];
    assign REPORT_XILINX_WR_DECERR = irpt_en[P_IRQ_SI_WR_DECERR];
    
    axi_firewall_v1_2_2_checks_si #(
      .MAXRBURSTS                 (P_NUM_READ_OUTSTANDING),
      .MAXWBURSTS                 (P_NUM_WRITE_OUTSTANDING),
      .C_ADDR_WIDTH               (C_ADDR_WIDTH),
      .C_RDWIDTH_SIZE             (P_RDWIDTH_SIZE),
      .C_WDWIDTH_SIZE             (P_WDWIDTH_SIZE),
      .C_NUM_RTHREADS             (1      ) ,
      .C_NUM_WTHREADS             (1      ) ,
      .C_ENABLE_PROTOCOL_CHECKS   (C_ENABLE_PROTOCOL_CHECKS),
      .C_ENABLE_TIMEOUT_CHECKS   (C_ENABLE_TIMEOUT_CHECKS)
      ) checks (
        .ACLK                                 ( aclk),
        .ACLKEN                               ( aclken),
        .W_ARESET                             ( w_check_reset   ),
        .R_ARESET                             ( r_check_reset   ),
        .WAIT_STROBE                          ( wait_strobe ),
        .WAIT_DELAY                           ( wait_delay ),
        .AWADDR                               ( sr_awmesg.addr     ),
        .AWSIZE                               ( sr_awmesg.size     ),
        .AWLEN                                ( sr_awmesg.len     ),
        .AWBURST                              ( sr_awmesg.burst     ),
        .S_AWVALID                            ( sr_awvalid     ),
        .M_AWVALID                            ( check_awvalid  ),
        .AWREADY                              ( mr_awready  ),
        .WLAST                                ( sr_wmesg.last    ),
        .S_WVALID                             ( sr_wvalid   ),
        .M_WVALID                             ( mr_wvalid  ),
        .WREADY                               ( sr_wready   ),
        .M_WREADY                             ( mr_wready   ),
        .BVALID                               ( check_bvalid   ),
        .BREADY                               ( mr_bready   ),
        .ARADDR                               ( sr_armesg.addr     ),
        .ARSIZE                               ( sr_armesg.size     ),
        .ARLEN                                ( sr_armesg.len    ),
        .ARBURST                              ( sr_armesg.burst     ),
        .S_ARVALID                            ( sr_arvalid     ),
        .M_ARVALID                            ( check_arvalid     ),
        .M_ARREADY                            ( mr_arready  ),
        .S_RVALID                             ( check_rvalid   ),
        .S_RREADY                             ( sr_rready   ),
        .M_RVALID                             ( mr_rvalid   ),
        .M_RREADY                             ( mr_rready   ),
        .M_RLAST                              ( mr_rmesg.last    ),
        .M_RRESP                              ( mr_rmesg.resp    ),
        .M_BRESP                              ( mr_bmesg.resp    ),
        .EXT_ARVALID                          ( s_axi_arvalid     ),
        .EXT_ARREADY                          ( s_axi_arready  ),
        .EXT_AWVALID                          ( s_axi_awvalid     ),
        .EXT_AWREADY                          ( s_axi_awready  ),
        .EXT_WVALID                           ( s_axi_wvalid     ),
        .EXT_WREADY                           ( s_axi_wready  ),
        .MAX_R_WAITS                          ( MAX_R_WAITS                         ),
        .MAX_B_WAITS                          ( MAX_B_WAITS                         ),
        .MAX_CONTINUOUS_WTRANSFERS_WAITS      ( MAX_CONTINUOUS_WTRANSFERS_WAITS     ),
        .MAX_W_TO_AWVALID_WAITS               ( MAX_W_TO_AWVALID_WAITS          ),
        .ERRM_ARVALID_STABLE                  ( ERRM_ARVALID_STABLE                 ),          
        .ERRM_ARADDR_BOUNDARY                 ( ERRM_ARADDR_BOUNDARY                ),
        .ERRM_ARSIZE                          ( ERRM_ARSIZE                         ),
        .RECM_RREADY_MAX_WAIT                 ( RECM_RREADY_MAX_WAIT                ),
        .ERRM_WVALID_STABLE                   ( ERRM_WVALID_STABLE                  ),
        .ERRM_AWVALID_STABLE                  ( ERRM_AWVALID_STABLE                 ),
        .ERRM_AWADDR_BOUNDARY                 ( ERRM_AWADDR_BOUNDARY                ),
        .ERRM_AWSIZE                          ( ERRM_AWSIZE                         ),
        .ERRM_WDATA_NUM                       ( ERRM_WDATA_NUM                      ),           
        .RECM_W_TO_AWVALID_MAX_WAIT           ( RECM_W_TO_AWVALID_MAX_WAIT      ),
        .RECM_CONTINUOUS_WTRANSFERS_MAX_WAIT  ( RECM_CONTINUOUS_WTRANSFERS_MAX_WAIT ),
        .RECM_BREADY_MAX_WAIT                 ( RECM_BREADY_MAX_WAIT                ),
        .XILINX_RD_SLVERR                     ( XILINX_RD_SLVERR                    ),
        .XILINX_RD_DECERR                     ( XILINX_RD_DECERR                    ),
        .XILINX_WR_SLVERR                     ( XILINX_WR_SLVERR                    ),
        .XILINX_WR_DECERR                     ( XILINX_WR_DECERR                    ),
        .soft_pause                           ( soft_pause ),
        .r_check                              ( r_check ),
        .w_check                              ( w_check ),
        .r_final                              ( r_final  ),
        .w_final                              ( w_final  ),
        .rresp_pending                        ( r_any_pending),
        .bresp_pending                        ( w_any_pending),
        .ar_cmd_en                            ( ar_cmd_en ),
        .aw_cmd_en                            ( aw_cmd_en ),
        .wcmd_active                          ( wcmd_active ),
        .si_r_error                           ( si_r_error_i ),
        .si_w_error                           ( si_w_error_i ),
        .wxfer_en                             ( wxfer_en )
    );

    assign s_awmesg.id      = s_axi_awid     ;
    assign s_awmesg.addr    = s_axi_awaddr   ;
    assign s_awmesg.len     = s_axi_awlen    ;
    assign s_awmesg.size    = (C_PROTOCOL!=2 ? s_axi_awsize : C_WDATA_WIDTH == 32 ? 3'b010 : 3'b011)   ;
    assign s_awmesg.burst   = (C_PROTOCOL==2?2'b01:s_axi_awburst)  ;
    assign s_awmesg.lock    = s_axi_awlock   ;
    assign s_awmesg.cache   = s_axi_awcache  ;
    assign s_awmesg.prot    = s_axi_awprot   ;
    assign s_awmesg.qos     = s_axi_awqos    ;
    assign s_awmesg.region  = s_axi_awregion ;
    assign s_awmesg.user    = s_axi_awuser   ;
    
    assign s_armesg.id      = s_axi_arid     ;
    assign s_armesg.addr    = s_axi_araddr   ;
    assign s_armesg.len     = s_axi_arlen    ;
    assign s_armesg.size    = (C_PROTOCOL!=2 ? s_axi_arsize : C_RDATA_WIDTH == 32 ? 3'b010 : 3'b011)   ;
    assign s_armesg.burst   = (C_PROTOCOL==2?2'b01:s_axi_arburst)  ;
    assign s_armesg.lock    = s_axi_arlock   ;
    assign s_armesg.cache   = s_axi_arcache  ;
    assign s_armesg.prot    = s_axi_arprot   ;
    assign s_armesg.qos     = s_axi_arqos    ;
    assign s_armesg.region  = s_axi_arregion ;
    assign s_armesg.user    = s_axi_aruser   ;
    
    assign s_wmesg.id       = s_axi_wid     ;
    assign s_wmesg.data     = s_axi_wdata   ;
    assign s_wmesg.strb     = s_axi_wstrb   ;
    assign s_wmesg.last     = (C_PROTOCOL==2?1'b1:s_axi_wlast)   ;
    assign s_wmesg.user     = s_axi_wuser   ;
    
    assign s_axi_rid        = s_rmesg.id     ;
    assign s_axi_rdata      = s_rmesg.data   ;
    assign s_axi_rresp      = s_rmesg.resp   ;
    assign s_axi_rlast      = s_rmesg.last   ;
    assign s_axi_ruser      = s_rmesg.user   ;
                            
    assign s_axi_bid        = s_bmesg.id     ;
    assign s_axi_bresp      = s_bmesg.resp   ;
    assign s_axi_buser      = s_bmesg.user   ;
    
    assign m_axi_awid       = m_awmesg.id     ;
    assign m_axi_awaddr     = m_awmesg.addr   ;
    assign m_axi_awlen      = m_awmesg.len    ;
    assign m_axi_awsize     = m_awmesg.size   ;
    assign m_axi_awburst    = m_awmesg.burst  ;
    assign m_axi_awlock     = m_awmesg.lock   ;
    assign m_axi_awcache    = m_awmesg.cache  ;
    assign m_axi_awprot     = m_awmesg.prot   ;
    assign m_axi_awqos      = m_awmesg.qos    ;
    assign m_axi_awregion   = m_awmesg.region ;
    assign m_axi_awuser     = m_awmesg.user   ;
    
    assign m_axi_arid       = m_armesg.id     ;
    assign m_axi_araddr     = m_armesg.addr   ;
    assign m_axi_arlen      = m_armesg.len    ;
    assign m_axi_arsize     = m_armesg.size   ;
    assign m_axi_arburst    = m_armesg.burst  ;
    assign m_axi_arlock     = m_armesg.lock   ;
    assign m_axi_arcache    = m_armesg.cache  ;
    assign m_axi_arprot     = m_armesg.prot   ;
    assign m_axi_arqos      = m_armesg.qos    ;
    assign m_axi_arregion   = m_armesg.region ;
    assign m_axi_aruser     = m_armesg.user   ;
    
    assign m_axi_wid        = m_wmesg.id   ;
    assign m_axi_wdata      = m_wmesg.data ;
    assign m_axi_wstrb      = m_wmesg.strb ;
    assign m_axi_wlast      = m_wmesg.last ;
    assign m_axi_wuser      = m_wmesg.user ;
    
    assign m_rmesg.id       = m_axi_rid     ;
    assign m_rmesg.data     = m_axi_rdata   ;
    assign m_rmesg.resp     = m_axi_rresp   ;
    assign m_rmesg.last     = (C_PROTOCOL==2?1'b1:m_axi_rlast)   ;
    assign m_rmesg.user     = m_axi_ruser   ;
    
    assign m_bmesg.id       = m_axi_bid     ;
    assign m_bmesg.resp     = m_axi_bresp   ;
    assign m_bmesg.user     = m_axi_buser   ;
    
    assign s_awvector       = s_awmesg      ;
    assign s_arvector       = s_armesg      ;
    assign s_wvector        = s_wmesg      ;
    assign s_rmesg          = s_rvector    ;
    assign s_bmesg          = s_bvector    ;
    
    assign m_awmesg         = m_awvector   ;
    assign m_armesg         = m_arvector   ;
    assign m_wmesg          = m_wvector    ;
    assign m_rvector        = m_rmesg     ;
    assign m_bvector        = m_bmesg     ;
    
    assign sr_awmesg        = sr_awvector   ;
    assign sr_armesg        = sr_arvector   ;
    assign sr_wmesg         = sr_wvector    ;
    assign mr_wvector       = mr_wmesg    ;
    assign mr_rmesg         = mr_rvector    ;
    assign mr_bmesg         = mr_bvector    ;
    assign sr_rvector       = sr_rmesg     ;
    assign sr_bvector       = sr_bmesg     ;
    
    sc_util_v1_0_4_axi_reg_stall # (
      .C_REG_CONFIG ( (C_ENABLE_PIPELINING && (C_NUM_READ_OUTSTANDING>0)) ? P_FULLY_PIPELINED : P_BYPASS ) 
    )
    s_ar_reg (
      .aclk     (aclk),
      .aclken   (aclken),
      .areset   (si_r_reset),
      .s_vector (s_arvector),
      .s_valid  (s_axi_arvalid),
      .s_ready  (s_axi_arready),
      .m_vector (sr_arvector),
      .m_valid  (sr_arvalid),
      .m_ready  (sr_arready),
      .s_stall  (1'b0),
      .resume   (1'b0)
    );
          
    sc_util_v1_0_4_axi_reg_stall # (
      .C_REG_CONFIG ( (C_ENABLE_PIPELINING && (C_NUM_WRITE_OUTSTANDING>0)) ? P_FULLY_PIPELINED : P_BYPASS ) 
    )
    s_aw_reg (
      .aclk     (aclk),
      .aclken   (aclken),
      .areset   (si_w_reset),
      .s_vector (s_awvector),
      .s_valid  (s_axi_awvalid),
      .s_ready  (s_axi_awready),
      .m_vector (sr_awvector),
      .m_valid  (sr_awvalid),
      .m_ready  (sr_awready),
      .s_stall  (1'b0),
      .resume   (1'b0)
    );
          
    sc_util_v1_0_4_axi_reg_stall # (
      .C_REG_CONFIG ( (C_ENABLE_PIPELINING && (C_NUM_WRITE_OUTSTANDING>0)) ? P_FULLY_PIPELINED : P_BYPASS ) 
    )
    s_w_reg (
      .aclk     (aclk),
      .aclken   (aclken),
      .areset   (si_w_reset),
      .s_vector (s_wvector),
      .s_valid  (s_axi_wvalid),
      .s_ready  (s_axi_wready),
      .m_vector (sr_wvector),
      .m_valid  (sr_wvalid),
      .m_ready  (sr_wready),
      .s_stall  (1'b0),
      .resume   (1'b0)
    );
          
    sc_util_v1_0_4_axi_reg_stall # (
      .C_REG_CONFIG ( C_NUM_READ_OUTSTANDING>0 ? P_FULLY_PIPELINED : P_BYPASS ) 
    )
    s_r_reg (
      .aclk     (aclk),
      .aclken   (aclken),
      .areset   (si_r_reset),
      .s_vector (sr_rvector),
      .s_valid  (sr_rvalid),
      .s_ready  (sr_rready),
      .m_vector (s_rvector),
      .m_valid  (s_axi_rvalid),
      .m_ready  (s_axi_rready),
      .s_stall  (soft_pause[CH_R]),
      .resume   (soft_resume[CH_R])
    );
          
    sc_util_v1_0_4_axi_reg_stall # (
      .C_REG_CONFIG ( C_NUM_WRITE_OUTSTANDING>0 ? P_FULLY_PIPELINED : P_BYPASS ) 
    )
    s_b_reg (
      .aclk     (aclk),
      .aclken   (aclken),
      .areset   (si_w_reset),
      .s_vector (sr_bvector),
      .s_valid  (sr_bvalid),
      .s_ready  (sr_bready),
      .m_vector (s_bvector),
      .m_valid  (s_axi_bvalid),
      .m_ready  (s_axi_bready),
      .s_stall  (soft_pause[CH_B]),
      .resume   (soft_resume[CH_B])
    );
          
    sc_util_v1_0_4_axi_reg_stall # (
      .C_REG_CONFIG ( (C_NUM_READ_OUTSTANDING>0) ? P_FULLY_PIPELINED : P_BYPASS ) 
    )
    m_ar_reg (
      .aclk     (aclk),
      .aclken   (aclken),
      .areset   (areset),
      .s_vector (mr_arvector),
      .s_valid  (mr_arvalid),
      .s_ready  (mr_arready),
      .m_vector (m_arvector),
      .m_valid  (m_axi_arvalid),
      .m_ready  (m_axi_arready),
      .s_stall  (soft_pause[CH_AR]),
      .resume   (soft_resume[CH_AR])
    );
          
    sc_util_v1_0_4_axi_reg_stall # (
      .C_REG_CONFIG ( (C_NUM_WRITE_OUTSTANDING>0) ? P_FULLY_PIPELINED : P_BYPASS ) 
    )
    m_aw_reg (
      .aclk     (aclk),
      .aclken   (aclken),
      .areset   (areset),
      .s_vector (mr_awvector),
      .s_valid  (mr_awvalid),
      .s_ready  (mr_awready),
      .m_vector (m_awvector),
      .m_valid  (m_axi_awvalid),
      .m_ready  (m_axi_awready),
      .s_stall  (soft_pause[CH_AW]),
      .resume   (soft_resume[CH_AW])
    );
          
    sc_util_v1_0_4_axi_reg_stall # (
      .C_REG_CONFIG ( (C_NUM_WRITE_OUTSTANDING>0) ? P_FULLY_PIPELINED : P_BYPASS ) 
    )
    m_w_reg (
      .aclk     (aclk),
      .aclken   (aclken),
      .areset   (areset),
      .s_vector (mr_wvector),
      .s_valid  (mr_wvalid),
      .s_ready  (mr_wready),
      .m_vector (m_wvector),
      .m_valid  (m_axi_wvalid),
      .m_ready  (m_axi_wready),
      .s_stall  (soft_pause[CH_W]),
      .resume   (soft_resume[CH_W])
    );
          
    sc_util_v1_0_4_axi_reg_stall # (
      .C_REG_CONFIG ( P_BYPASS ) 
    )
    m_r_reg (
      .aclk     (aclk),
      .aclken   (aclken),
      .areset   (areset),
      .s_vector (m_rvector),
      .s_valid  (m_axi_rvalid),
      .s_ready  (m_axi_rready),
      .m_vector (mr_rvector),
      .m_valid  (mr_rvalid),
      .m_ready  (mr_rready),
      .s_stall  (1'b0),
      .resume   (1'b0)
    );
          
    sc_util_v1_0_4_axi_reg_stall # (
      .C_REG_CONFIG ( P_BYPASS ) 
    )
    m_b_reg (
      .aclk     (aclk),
      .aclken   (aclken),
      .areset   (areset),
      .s_vector (m_bvector),
      .s_valid  (m_axi_bvalid),
      .s_ready  (m_axi_bready),
      .m_vector (mr_bvector),
      .m_valid  (mr_bvalid),
      .m_ready  (mr_bready),
      .s_stall  (1'b0),
      .resume   (1'b0)
    );
    
  end  // gen_si
        
endgenerate

endmodule


