set trace_signals(kernel_group) {
  ai_engine_0 { \
    S00_AXIS*TDATA \
    S00_AXIS*TLAST \
    S00_AXIS*TVALID \
    S00_AXIS*TREADY \
    M00_AXIS*TDATA \
    M00_AXIS*TLAST \
    M00_AXIS*TVALID \
    M00_AXIS*TREADY \
  } {}

  setup_aie_0 { \
    s_axi_control*ARADDR \
    s_axi_control*RDATA \
    s_axi_control*RVALID \
    s_axi_control*RREADY \
    s_axi_control*AWADDR \
    s_axi_control*WDATA \
    s_axi_control*WVALID \
    s_axi_control*WREADY \
    m_axi_gmem0*ARADDR \
    m_axi_gmem0*RDATA \
    m_axi_gmem0*RVALID \
    m_axi_gmem0*RREADY \
    m_axi_gmem0*AWADDR \
    m_axi_gmem0*WDATA \
    m_axi_gmem0*WVALID \
    m_axi_gmem0*WREADY \
    s*TDATA \
    s*TLAST \
    s*TVALID \
    s*TREADY \
  } {}

  sink_from_aie_0 { \
    s_axi_control*ARADDR \
    s_axi_control*RDATA \
    s_axi_control*RVALID \
    s_axi_control*RREADY \
    s_axi_control*AWADDR \
    s_axi_control*WDATA \
    s_axi_control*WVALID \
    s_axi_control*WREADY \
    input_stream*TDATA \
    input_stream*TLAST \
    input_stream*TVALID \
    input_stream*TREADY \
    m_axi_gmem1*ARADDR \
    m_axi_gmem1*RDATA \
    m_axi_gmem1*RVALID \
    m_axi_gmem1*RREADY \
    m_axi_gmem1*AWADDR \
    m_axi_gmem1*WDATA \
    m_axi_gmem1*WVALID \
    m_axi_gmem1*WREADY \
  } {}

}

set trace_signals(kernel) {
  ap_start ap_ready ap_done
}

set trace_signals(adapter) {
  *axis_*tdata *axis_*tvalid *axis_*tready S*WADDR S*WDATA S*ARADDR S*RDATA
}

set trace_signals(datamover) {
  stream_t* reg_bus_awaddr reg_bus_wdata
}
