
module ai_pl_channel_v1_0_ai2pl # (
    parameter integer TDATA_WIDTH = 64,
    parameter integer BLI_BYPASS = 0,
    parameter  C_CORE_NAME = "ai_pl_ch_0",
    parameter integer PIPELINE = 0,
    parameter integer AI2PL_FIFO_TYPE = 0
) (

    input               clk,
    input               rst_n,

    //To PL 
    output                          m_axis_tvalid,
    input                           m_axis_tready, 
    output                          m_axis_tlast,
    output [(TDATA_WIDTH/8)-1:0]    m_axis_tkeep,
    output [TDATA_WIDTH-1:0]        m_axis_tdata,

    //From AIE
    input  [1:0]                    s_axis_tvalid,
    output [1:0]                    s_axis_tready,
    input  [1:0]                    s_axis_tlast,
    input  [1:0]                    s_axis_tkeep,
    input  [TDATA_WIDTH-1:0]        s_axis_tdata

    );

  localparam mode_128 = (TDATA_WIDTH == 128)? 1:0;
  localparam mode_64  = (TDATA_WIDTH == 64)? 1:0;
  localparam mode_32  = (TDATA_WIDTH == 32)? 1:0;
  localparam DATA_WIDTH0 = (TDATA_WIDTH != 128)? TDATA_WIDTH: 64;
  localparam DATA_WIDTH1 = 64;


  // Stream0 signals
  logic                  s0i_tvalid;
  logic                  s0i_tready;
  logic [DATA_WIDTH0+1:0]           s0i_tdata;
  (* KEEP = "TRUE" *) (* BLI = "TRUE" *) logic        bli_s0i_tvalid_1;
  (* KEEP = "TRUE" *) (* BLI = "TRUE" *) logic [63:0] bli_s0i_tdata_1;
  (* KEEP = "TRUE" *) (* BLI = "TRUE" *) logic        bli_s0i_tready_1;
  (* KEEP = "TRUE" *) (* BLI = "TRUE" *) logic        bli_s0i_tlast_1;
  (* KEEP = "TRUE" *) (* BLI = "TRUE" *) logic        bli_s0i_tkeep_1;
  logic                           s0o_tvalid;
  logic                           s0o_tready;
  logic [DATA_WIDTH0+1:0]         s0o_tdata;
  logic                           s0fo_tvalid;
  logic                           s0fo_tready;
  logic [DATA_WIDTH0+1:0]         s0fo_tdata;


  // Stream1 signals
  logic                  s1i_tvalid;
  logic                  s1i_tready;
  logic [65:0]           s1i_tdata;
  (* KEEP = "TRUE" *) (* BLI = "TRUE" *) logic        bli_s1i_tvalid_1;
  (* KEEP = "TRUE" *) (* BLI = "TRUE" *) logic [63:0] bli_s1i_tdata_1;
  (* KEEP = "TRUE" *) (* BLI = "TRUE" *) logic        bli_s1i_tready_1;
  (* KEEP = "TRUE" *) (* BLI = "TRUE" *) logic        bli_s1i_tlast_1;
  (* KEEP = "TRUE" *) (* BLI = "TRUE" *) logic        bli_s1i_tkeep_1;
  logic                  s1o_tvalid;
  logic                  s1o_tready;
  logic [65:0]           s1o_tdata;
  logic                  s1fo_tvalid;
  logic                  s1fo_tready;
  logic [65:0]           s1fo_tdata;



  logic [7:0]            s128_lower_tkeep;
  logic [7:0]            s128_upper_tkeep;

  
  generate
  if (BLI_BYPASS == 0)
    begin:bli0  
      
      //
      // Reg slice from AIE for stream0
      //

      // BLI registers
      //always_ff @(posedge s0_clk or negedge s0_rst_n)
      always_ff @(posedge clk)
      begin : stream0_BLI_reg
          bli_s0i_tvalid_1 <= s_axis_tvalid[0];
          bli_s0i_tdata_1  <= s_axis_tdata[DATA_WIDTH0-1:0];
          bli_s0i_tlast_1  <= s_axis_tlast[0];
          bli_s0i_tkeep_1  <= s_axis_tkeep[0];
          bli_s0i_tready_1 <= s0i_tready;
      end : stream0_BLI_reg

      // Bypass not
      assign s0i_tvalid         = bli_s0i_tvalid_1;
      assign s0i_tdata[DATA_WIDTH0-1:0]    = bli_s0i_tdata_1;
      assign s0i_tdata[DATA_WIDTH0]      = bli_s0i_tlast_1;
      assign s0i_tdata[DATA_WIDTH0+1]      = bli_s0i_tkeep_1;
      assign s_axis_tready[0] = (bli_s0i_tready_1);

    end else begin:BypassMode 
      assign s0i_tvalid         = s_axis_tvalid[0] ;
      assign s0i_tdata[DATA_WIDTH0-1:0]    = s_axis_tdata[DATA_WIDTH0-1:0]  ;
      assign s0i_tdata[DATA_WIDTH0]      = s_axis_tlast[0]  ;
      assign s0i_tdata[DATA_WIDTH0+1]      = s_axis_tkeep[0]  ;
      assign s_axis_tready[0] = s0i_tready;


    end
  endgenerate
  // Special reg slices that handles clocked AXI Streams (configurable to be normal reg_slice)

generate
 if(PIPELINE == 0)
  begin
    ai_pl_channel_v1_0_shim_reg_slice #(
     .SIZE(DATA_WIDTH0 + 2),
     .BLI_BYPASS (BLI_BYPASS),
     .AI2PL_FIFO_TYPE (AI2PL_FIFO_TYPE))
     mrs_s0
     (.clk(clk),
     .reset_n(rst_n),
     .s_axis_tvalid(s0i_tvalid),
     .s_axis_tready(s0i_tready),
     .s_axis_tdata(s0i_tdata),           
     .m_axis_tvalid(s0o_tvalid),
     .m_axis_tready(s0o_tready),
     .m_axis_tdata(s0o_tdata));
   end  
  else if (PIPELINE == 1 && BLI_BYPASS == 0) 
   begin
      ai_pl_channel_v1_0_shim_reg_slice #(
     .SIZE(DATA_WIDTH0 + 2),
     .BLI_BYPASS (BLI_BYPASS),
     .AI2PL_FIFO_TYPE (4))
     bli_pipe_fifo_0
     (.clk(clk),
     .reset_n(rst_n),
     .s_axis_tvalid(s0i_tvalid),
     .s_axis_tready(s0i_tready),
     .s_axis_tdata(s0i_tdata),           
     .m_axis_tvalid(s0fo_tvalid),
     .m_axis_tready(s0fo_tready),
     .m_axis_tdata(s0fo_tdata));

     ai_pl_ch_0_axis_reg_slice2_2 axis_reg_slice2
	(.aclk(clk),
        .aresetn(rst_n),
        .m_axis_tdata(s0o_tdata[DATA_WIDTH0-1:0]),
        .m_axis_tkeep(s0o_tdata[DATA_WIDTH0+1]),
        .m_axis_tlast(s0o_tdata[DATA_WIDTH0]),
        .m_axis_tready(s0o_tready),
        .m_axis_tvalid(s0o_tvalid),
        .s_axis_tdata(s0fo_tdata[DATA_WIDTH0-1:0]),
        .s_axis_tkeep(s0fo_tdata[DATA_WIDTH0+1]),
        .s_axis_tlast(s0fo_tdata[DATA_WIDTH0]),
        .s_axis_tready(s0fo_tready),
        .s_axis_tvalid(s0fo_tvalid));
   end
  else  
   begin
    
     ai_pl_ch_0_axis_reg_slice2_2 axis_reg_slice2
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
        .s_axis_tvalid(s0i_tvalid));
   end

  endgenerate
   

  // generate additional register slices only in 128 bit mode
  generate
  if (mode_128 == 1) 
  begin : bit128mode
    if (BLI_BYPASS == 0)
    begin:bli1  


      //
      // Reg slice from AIE for stream1
      //

      // BLI registers
      //always_ff @(posedge s1_clk or negedge s1_rst_n)
      always_ff @(posedge clk)
      begin : stream1_BLI_reg
          bli_s1i_tvalid_1 <= s_axis_tvalid[1];
          bli_s1i_tdata_1  <= s_axis_tdata[127:64];
          bli_s1i_tlast_1  <= s_axis_tlast[1];
          bli_s1i_tkeep_1  <= s_axis_tkeep[1];
          bli_s1i_tready_1 <= s1i_tready;
      end : stream1_BLI_reg

      // Bypass not
      assign s1i_tvalid                 = bli_s1i_tvalid_1;
      assign s1i_tdata[DATA_WIDTH1-1:0] = bli_s1i_tdata_1;
      assign s1i_tdata[DATA_WIDTH1]     = bli_s1i_tlast_1;
      assign s1i_tdata[DATA_WIDTH1+1]   = bli_s1i_tkeep_1;
      assign s_axis_tready[1]           = bli_s1i_tready_1;

    end else begin:BypassMode128 
      assign s1i_tvalid                 = s_axis_tvalid[1];
      assign s1i_tdata[DATA_WIDTH1-1:0] = s_axis_tdata[127:DATA_WIDTH1] ;
      assign s1i_tdata[DATA_WIDTH1]     = s_axis_tlast[1] ;
      assign s1i_tdata[DATA_WIDTH1+1]   = s_axis_tkeep[1] ;
      assign s_axis_tready[1]           = s1i_tready;
    end

    // Special reg slices that handles clocked AXI Streams (configurable to be normal reg_slice)
 if (PIPELINE == 0)
  begin
    ai_pl_channel_v1_0_shim_reg_slice #(
     .SIZE(DATA_WIDTH1 + 2),
     .BLI_BYPASS (BLI_BYPASS),
     .AI2PL_FIFO_TYPE(AI2PL_FIFO_TYPE)) 
     mrs_s1
     (.clk(clk),
     .reset_n(rst_n),
     .s_axis_tvalid(s1i_tvalid),
     .s_axis_tready(s1i_tready),
     .s_axis_tdata(s1i_tdata),           
     .m_axis_tvalid(s1o_tvalid),
     .m_axis_tready(s1o_tready),
     .m_axis_tdata(s1o_tdata));
  end
 else if (PIPELINE ==1 && BLI_BYPASS == 0)
    begin

     ai_pl_channel_v1_0_shim_reg_slice #(
     .SIZE(DATA_WIDTH1 + 2),
     .BLI_BYPASS (BLI_BYPASS),
     .AI2PL_FIFO_TYPE(4)) 
     bli_pipe_fifo_1
     (.clk(clk),
     .reset_n(rst_n),
     .s_axis_tvalid(s1i_tvalid),
     .s_axis_tready(s1i_tready),
     .s_axis_tdata(s1i_tdata),           
     .m_axis_tvalid(s1fo_tvalid),
     .m_axis_tready(s1fo_tready),
     .m_axis_tdata(s1fo_tdata));



    ai_pl_ch_0_axis_reg_slice3_3 axis_reg_slice3
	(.aclk(clk),
        .aresetn(rst_n),
        .m_axis_tdata(s1o_tdata[DATA_WIDTH1-1:0]),
        .m_axis_tkeep(s1o_tdata[DATA_WIDTH1+1]),
        .m_axis_tlast(s1o_tdata[DATA_WIDTH1]),
        .m_axis_tready(s1o_tready),
        .m_axis_tvalid(s1o_tvalid),
        .s_axis_tdata(s1fo_tdata[DATA_WIDTH1-1:0]),
        .s_axis_tkeep(s1fo_tdata[DATA_WIDTH1+1]),
        .s_axis_tlast(s1fo_tdata[DATA_WIDTH1]),
        .s_axis_tready(s1fo_tready),
        .s_axis_tvalid(s1fo_tvalid));
   end
  else 
    begin   
    ai_pl_ch_0_axis_reg_slice3_3 axis_reg_slice3
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
        .s_axis_tvalid(s1i_tvalid));
   end

    assign m_axis_tvalid = s0o_tvalid & s1o_tvalid;
    assign m_axis_tdata = {s1o_tdata[63:0], s0o_tdata[63:0]};
    assign m_axis_tlast = s1o_tdata[64]  | s0o_tdata[64];
  
    // Upper 8 is forced to 0 if lower 64-bit has tlast, otherwise it just upper tkeep value
    // Lower 8 is forced to 1 if upper 64-bit has tlast, otherwise it just upper tkeep value     
    assign s128_upper_tkeep = {8{~s0o_tdata[64]}} & { {4{s1o_tdata[65]}}, 4'b1111};
    assign s128_lower_tkeep = {8{ s1o_tdata[64]}} | { {4{s0o_tdata[65]}}, 4'b1111};
    assign m_axis_tkeep  = {s128_upper_tkeep, s128_lower_tkeep};
    
    // TReady handling
    // In 128-bit mode only allow data movement when both reg_slices has data and the 128-bit slave accept more data

    assign s0o_tready = (m_axis_tready & m_axis_tvalid);
    assign s1o_tready = (m_axis_tready & m_axis_tvalid);

  end else begin:bit64mode

    // Handling the streams towards PL after reg_slice
    // Stream0 64-bit
    assign m_axis_tdata = s0o_tdata[DATA_WIDTH0-1:0];
    assign m_axis_tlast = s0o_tdata[DATA_WIDTH0];
    assign m_axis_tkeep = mode_32 ? {4'b1111} : {{4{s0o_tdata[DATA_WIDTH0+1]}}, 4'b1111}; 
    assign m_axis_tvalid = s0o_tvalid;
    
    // TReady handling
    // In not 128-bit mode, just connect the tready signal for each stream

    assign s0o_tready = m_axis_tready;

  end
  endgenerate

endmodule
