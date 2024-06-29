
module ai_pl_channel_v1_0_pl2ai # (
    parameter integer TDATA_WIDTH = 64,
    parameter integer PIPELINE = 0,
    parameter  C_CORE_NAME = "ai_pl_ch_0",
    parameter integer BLI_BYPASS = 0,
    parameter integer PL2AI_FIFO_BYPASS = 0
    ) ( 
    
    //From PL 
    input             clk,
    input             rst_n,    
    
    // PL to Wrapper 
    input                      s_axis_tvalid,
    output                     s_axis_tready, 
    input                      s_axis_tlast,
    input [(TDATA_WIDTH/8)-1:0] s_axis_tkeep,
    input [TDATA_WIDTH-1:0]     s_axis_tdata,    
    
    //Wrapper TO AIE
    output [1:0]               m_axis_tvalid,
    input  [1:0]               m_axis_tready,
    output [1:0]               m_axis_tlast,
    output [1:0]               m_axis_tkeep,
    output [TDATA_WIDTH-1:0]   m_axis_tdata 
    
    
    );


  // 128-bit data handling on data,tlast,tkeep
  logic                 s128_tlast_lower;
  logic                 s128_tlast_upper;
  logic [131:0]         s128_tdata;
  logic                 si_tvalid;
  // Stream0 signals
  logic                 s0i_tready;
  logic [65:0]          s0i_tdata;
  logic                 s0o_tvalid;
  logic                 s0o_tready;
  logic [65:0]          s0o_tdata;
  (* KEEP = "TRUE" *) (* BLI = "TRUE" *) logic        bli_s0o_tvalid_1;
  (* KEEP = "TRUE" *) (* BLI = "TRUE" *) logic        bli_s0o_tready_1;
  (* KEEP = "TRUE" *) (* BLI = "TRUE" *) logic [65:0] bli_s0o_tdata_1;

  // Stream1 signals
  logic                 s1i_tready;
  logic [65:0]          s1i_tdata;
  logic                 s1o_tvalid;
  logic                 s1o_tready;
  logic [65:0]          s1o_tdata;
  (* KEEP = "TRUE" *) (* BLI = "TRUE" *) logic        bli_s1o_tvalid_1;
  (* KEEP = "TRUE" *) (* BLI = "TRUE" *) logic        bli_s1o_tready_1;
  (* KEEP = "TRUE" *) (* BLI = "TRUE" *) logic [65:0] bli_s1o_tdata_1;

  localparam bli0_bypass = BLI_BYPASS;
  localparam mode_128 = (TDATA_WIDTH == 128)? 1:0;
  localparam mode_32 = (TDATA_WIDTH == 32)? 1:0;
  localparam DATA_WIDTH0 = (TDATA_WIDTH != 128)? TDATA_WIDTH: 64;
  localparam DATA_WIDTH1 = 64;


  
      //
      // Reg slice towards AIE for stream0
      //


      // TKEEP for 32-bit mode should be ignored
      // TKEEP for 64-bit mode is '1' when upper 32-bit are valid

  generate
    if (mode_32 == 1)
      begin:mode32_data
        assign s0i_tdata  = {(s_axis_tkeep[3:0] == 4'b1111), s_axis_tlast, s_axis_tdata};
      end 
    else if (mode_128 == 1) 
      begin:mode128_data
          // 128-bit Data handling
        // Detect for tlast which part we have tlast for (1-2 data => lower, 3-4 data => upper)
        assign s128_tlast_lower = (s_axis_tlast & (s_axis_tkeep[15:8] == 8'b0));
        assign s128_tlast_upper = (s_axis_tlast & (s_axis_tkeep[15:8] != 8'b0));      
        // Create the two 66-bit pair for the two reg_slices in 128-bit mode
        assign s128_tdata = {(s_axis_tkeep[15:12] != 4'b0) , s128_tlast_upper, s_axis_tdata[127:64], (s_axis_tkeep[7:4] != 4'b0) , s128_tlast_lower, s_axis_tdata[63:0] };
        assign s0i_tdata = s128_tdata[65:0];
      end 
    else 
      begin:mode64_data
        assign s0i_tdata  = {(s_axis_tkeep[7:4] == 4'b1111), s_axis_tlast, s_axis_tdata};
      end
  endgenerate


  generate
   if (PIPELINE == 0)
   begin
  ai_pl_channel_v1_0_reg_slice #(.SIZE(DATA_WIDTH0 + 2), .PL2AI_FIFO_BYPASS(PL2AI_FIFO_BYPASS)) mrs_s0
    (.clk(clk),
     .reset_n(rst_n),
     .s_axis_tvalid(si_tvalid),
     .s_axis_tready(s0i_tready),
     .s_axis_tdata(s0i_tdata),           
     .m_axis_tvalid(s0o_tvalid),
     .m_axis_tready(s0o_tready),
     .m_axis_tdata(s0o_tdata));
    end
  else 
   begin
    
     ai_pl_ch_0_axis_reg_slice0_0 axis_reg_slice0
	(.aclk(clk),
        .aresetn(rst_n),
        .m_axis_tdata(s0o_tdata[DATA_WIDTH0-1:0]),
        .m_axis_tkeep(s0o_tdata[DATA_WIDTH0+1]),
        .m_axis_tlast(s0o_tdata[DATA_WIDTH0]),
        .m_axis_tready(s0o_tready),
        .m_axis_tvalid(s0o_tvalid),
        .s_axis_tdata(s0i_tdata[DATA_WIDTH0-1:0]),
        .s_axis_tkeep(s0i_tdata[DATA_WIDTH0+1]),
        .s_axis_tlast(s0i_tdata[DATA_WIDTH0]),
        .s_axis_tready(s0i_tready),
        .s_axis_tvalid(si_tvalid));
   end
  endgenerate


  generate
    if (BLI_BYPASS == 0)
    begin:bli0  
      // BLI registers
      always_ff @(posedge clk)
      begin : stream0_BLI_reg
          bli_s0o_tvalid_1 <= s0o_tvalid;
          bli_s0o_tdata_1  <= s0o_tdata;
          bli_s0o_tready_1 <= m_axis_tready[0];
      end : stream0_BLI_reg


      // Bypass Not 
      assign m_axis_tvalid[0]               = (bli_s0o_tvalid_1);
      assign m_axis_tdata[DATA_WIDTH0-1:0]  = (bli_s0o_tdata_1[DATA_WIDTH0-1:0]) ;
      assign m_axis_tlast[0]                = (bli_s0o_tdata_1[DATA_WIDTH0]);
      assign m_axis_tkeep[0]                = (bli_s0o_tdata_1[DATA_WIDTH0+1]);
      assign s0o_tready                     = bli_s0o_tready_1;

    end else begin:bypassmode

      // Bypass
      assign m_axis_tvalid[0]                = (s0o_tvalid )     ;
      assign m_axis_tdata[DATA_WIDTH0-1:0]   = (s0o_tdata[DATA_WIDTH0-1:0]) ;
      assign m_axis_tlast[0]                 = (s0o_tdata[DATA_WIDTH0])   ;
      assign m_axis_tkeep[0]                 = (s0o_tdata[DATA_WIDTH0+1])   ;
      assign s0o_tready                      = m_axis_tready[0] ;

    end
  endgenerate

  // generate additional register slices only in 128 bit mode
  generate
  if (mode_128 == 1) 
  begin : bit128mode


      // TKEEP for 32-bit mode should be ignored
      // TKEEP for 64-bit mode is '1' when upper 32-bit are valid
      assign s1i_tdata  = s128_tdata[131:66];
      
      //
      // Reg slice towards AIE for stream1
      //
                         
   if (PIPELINE == 0)
   begin                   
      ai_pl_channel_v1_0_reg_slice #(.SIZE(DATA_WIDTH1+2), .PL2AI_FIFO_BYPASS(PL2AI_FIFO_BYPASS)) mrs_s1
        (.clk(clk),
         .reset_n(rst_n),
         .s_axis_tvalid(si_tvalid),
         .s_axis_tready(s1i_tready),
         .s_axis_tdata(s1i_tdata),           
         .m_axis_tvalid(s1o_tvalid),
         .m_axis_tready(s1o_tready),
         .m_axis_tdata(s1o_tdata));
   end
   else
    begin
    ai_pl_ch_0_axis_reg_slice1_1 axis_reg_slice1
	(.aclk(clk),
        .aresetn(rst_n),
        .m_axis_tdata(s1o_tdata[DATA_WIDTH1-1:0]),
        .m_axis_tkeep(s1o_tdata[DATA_WIDTH1+1]),
        .m_axis_tlast(s1o_tdata[DATA_WIDTH1]),
        .m_axis_tready(s1o_tready),
        .m_axis_tvalid(s1o_tvalid),
        .s_axis_tdata(s1i_tdata[DATA_WIDTH1-1:0]),
        .s_axis_tkeep(s1i_tdata[DATA_WIDTH1+1]),
        .s_axis_tlast(s1i_tdata[DATA_WIDTH1]),
        .s_axis_tready(s1i_tready),
        .s_axis_tvalid(si_tvalid));
   end

    if (BLI_BYPASS == 0)
    begin:bli1  
      // BLI registers
      always_ff @(posedge clk)
      begin : stream1_BLI_reg
          bli_s1o_tvalid_1 <= s1o_tvalid;
          bli_s1o_tdata_1  <= s1o_tdata;
          bli_s1o_tready_1 <= m_axis_tready[1];
      end : stream1_BLI_reg

      assign m_axis_tvalid[1]               = (bli_s1o_tvalid_1);
      assign m_axis_tdata[127:DATA_WIDTH1]  = (bli_s1o_tdata_1[DATA_WIDTH1-1:0]) ;
      assign m_axis_tlast[1]                = (bli_s1o_tdata_1[DATA_WIDTH1]);
      assign m_axis_tkeep[1]                = (bli_s1o_tdata_1[DATA_WIDTH1+1]);
      assign s1o_tready                     = bli_s1o_tready_1;
 
    
    end else begin


      // Bypass or not
      // If BLI_REG == 1, there are no BLI flops for this stream so force it into bypass mode
      assign m_axis_tvalid[1]               = (s1o_tvalid);
      assign m_axis_tdata[127:DATA_WIDTH1]  = (s1o_tdata[DATA_WIDTH1-1:0]) ;
      assign m_axis_tlast[1]                = (s1o_tdata[DATA_WIDTH1])   ;
      assign m_axis_tkeep[1]                = (s1o_tdata[DATA_WIDTH1+1])   ;
      assign s1o_tready                     = m_axis_tready[1]  ;
  

    end

      // 128-bit handling
      // In 128-bit mode, drive tready only when both can accept more data
      // Otherwise drive the tready from each reg_slice
      assign s_axis_tready = (s0i_tready & s1i_tready);
      // Need to qualify the tvalid signal with the proper tready in 128-bit mode, dont want one reg_slice accept data while the other is not
      assign si_tvalid = (s_axis_tvalid & s_axis_tready);   
      
  end else begin:bit64mode

    // Need to qualify the tvalid signal with the proper tready in 128-bit mode, dont want one reg_slice accept data while the other is not
    assign si_tvalid = s_axis_tvalid;   
    assign s_axis_tready = s0i_tready;
  end

endgenerate



endmodule
