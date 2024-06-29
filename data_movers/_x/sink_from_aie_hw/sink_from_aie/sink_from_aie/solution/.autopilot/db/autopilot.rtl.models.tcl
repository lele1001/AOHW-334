set SynModuleInfo {
  {SRCNAME sink_from_aie_Pipeline_VITIS_LOOP_24_1 MODELNAME sink_from_aie_Pipeline_VITIS_LOOP_24_1 RTLNAME sink_from_aie_sink_from_aie_Pipeline_VITIS_LOOP_24_1
    SUBMODULES {
      {MODELNAME sink_from_aie_flow_control_loop_pipe_sequential_init RTLNAME sink_from_aie_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME sink_from_aie_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME sink_from_aie MODELNAME sink_from_aie RTLNAME sink_from_aie IS_TOP 1
    SUBMODULES {
      {MODELNAME sink_from_aie_gmem1_m_axi RTLNAME sink_from_aie_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME sink_from_aie_control_s_axi RTLNAME sink_from_aie_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME sink_from_aie_regslice_both RTLNAME sink_from_aie_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME sink_from_aie_regslice_both_U}
    }
  }
}
