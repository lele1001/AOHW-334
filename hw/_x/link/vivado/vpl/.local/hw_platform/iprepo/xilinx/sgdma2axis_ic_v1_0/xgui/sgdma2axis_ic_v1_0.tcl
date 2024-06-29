# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CTRL_TDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DATA_TDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TDEST_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.CTRL_TDATA_WIDTH { PARAM_VALUE.CTRL_TDATA_WIDTH } {
	# Procedure called to update CTRL_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CTRL_TDATA_WIDTH { PARAM_VALUE.CTRL_TDATA_WIDTH } {
	# Procedure called to validate CTRL_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.DATA_TDATA_WIDTH { PARAM_VALUE.DATA_TDATA_WIDTH } {
	# Procedure called to update DATA_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_TDATA_WIDTH { PARAM_VALUE.DATA_TDATA_WIDTH } {
	# Procedure called to validate DATA_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.TDEST_WIDTH { PARAM_VALUE.TDEST_WIDTH } {
	# Procedure called to update TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TDEST_WIDTH { PARAM_VALUE.TDEST_WIDTH } {
	# Procedure called to validate TDEST_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.DATA_TDATA_WIDTH { MODELPARAM_VALUE.DATA_TDATA_WIDTH PARAM_VALUE.DATA_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_TDATA_WIDTH}] ${MODELPARAM_VALUE.DATA_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.CTRL_TDATA_WIDTH { MODELPARAM_VALUE.CTRL_TDATA_WIDTH PARAM_VALUE.CTRL_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CTRL_TDATA_WIDTH}] ${MODELPARAM_VALUE.CTRL_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.TDEST_WIDTH { MODELPARAM_VALUE.TDEST_WIDTH PARAM_VALUE.TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TDEST_WIDTH}] ${MODELPARAM_VALUE.TDEST_WIDTH}
}

