# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "STREAM_DATA_WIDTH"
  ipgui::add_param $IPINST -name "FAMILY"
  ipgui::add_param $IPINST -name "USE_BEAT_ALIGNMENT"
  ipgui::add_param $IPINST -name "MEMORY_ADDR_WIDTH"
  ipgui::add_param $IPINST -name "MEMORY_DATA_WIDTH"
  ipgui::add_param $IPINST -name "MEMORY_NUM_WRITE_OUTSTANDING"
  ipgui::add_param $IPINST -name "MEMORY_BURST_LENGTH"
  ipgui::add_param $IPINST -name "MEMORY_AWPROT"
  ipgui::add_param $IPINST -name "MEMORY_AWCACHE"
  ipgui::add_param $IPINST -name "MAX_TRANSFER_SIZE"
  ipgui::add_param $IPINST -name "USE_BURST_ALIGNMENT"

}

proc update_PARAM_VALUE.FAMILY { PARAM_VALUE.FAMILY } {
	# Procedure called to update FAMILY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FAMILY { PARAM_VALUE.FAMILY } {
	# Procedure called to validate FAMILY
	return true
}

proc update_PARAM_VALUE.MAX_TRANSFER_SIZE { PARAM_VALUE.MAX_TRANSFER_SIZE } {
	# Procedure called to update MAX_TRANSFER_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_TRANSFER_SIZE { PARAM_VALUE.MAX_TRANSFER_SIZE } {
	# Procedure called to validate MAX_TRANSFER_SIZE
	return true
}

proc update_PARAM_VALUE.MEMORY_ADDR_WIDTH { PARAM_VALUE.MEMORY_ADDR_WIDTH } {
	# Procedure called to update MEMORY_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MEMORY_ADDR_WIDTH { PARAM_VALUE.MEMORY_ADDR_WIDTH } {
	# Procedure called to validate MEMORY_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.MEMORY_AWCACHE { PARAM_VALUE.MEMORY_AWCACHE } {
	# Procedure called to update MEMORY_AWCACHE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MEMORY_AWCACHE { PARAM_VALUE.MEMORY_AWCACHE } {
	# Procedure called to validate MEMORY_AWCACHE
	return true
}

proc update_PARAM_VALUE.MEMORY_AWPROT { PARAM_VALUE.MEMORY_AWPROT } {
	# Procedure called to update MEMORY_AWPROT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MEMORY_AWPROT { PARAM_VALUE.MEMORY_AWPROT } {
	# Procedure called to validate MEMORY_AWPROT
	return true
}

proc update_PARAM_VALUE.MEMORY_BURST_LENGTH { PARAM_VALUE.MEMORY_BURST_LENGTH } {
	# Procedure called to update MEMORY_BURST_LENGTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MEMORY_BURST_LENGTH { PARAM_VALUE.MEMORY_BURST_LENGTH } {
	# Procedure called to validate MEMORY_BURST_LENGTH
	return true
}

proc update_PARAM_VALUE.MEMORY_CLK_DOMAIN { PARAM_VALUE.MEMORY_CLK_DOMAIN } {
	# Procedure called to update MEMORY_CLK_DOMAIN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MEMORY_CLK_DOMAIN { PARAM_VALUE.MEMORY_CLK_DOMAIN } {
	# Procedure called to validate MEMORY_CLK_DOMAIN
	return true
}

proc update_PARAM_VALUE.MEMORY_DATA_WIDTH { PARAM_VALUE.MEMORY_DATA_WIDTH } {
	# Procedure called to update MEMORY_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MEMORY_DATA_WIDTH { PARAM_VALUE.MEMORY_DATA_WIDTH } {
	# Procedure called to validate MEMORY_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.MEMORY_NUM_WRITE_OUTSTANDING { PARAM_VALUE.MEMORY_NUM_WRITE_OUTSTANDING } {
	# Procedure called to update MEMORY_NUM_WRITE_OUTSTANDING when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MEMORY_NUM_WRITE_OUTSTANDING { PARAM_VALUE.MEMORY_NUM_WRITE_OUTSTANDING } {
	# Procedure called to validate MEMORY_NUM_WRITE_OUTSTANDING
	return true
}

proc update_PARAM_VALUE.STREAM_CLK_DOMAIN { PARAM_VALUE.STREAM_CLK_DOMAIN } {
	# Procedure called to update STREAM_CLK_DOMAIN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STREAM_CLK_DOMAIN { PARAM_VALUE.STREAM_CLK_DOMAIN } {
	# Procedure called to validate STREAM_CLK_DOMAIN
	return true
}

proc update_PARAM_VALUE.STREAM_DATA_WIDTH { PARAM_VALUE.STREAM_DATA_WIDTH } {
	# Procedure called to update STREAM_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STREAM_DATA_WIDTH { PARAM_VALUE.STREAM_DATA_WIDTH } {
	# Procedure called to validate STREAM_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.USE_BEAT_ALIGNMENT { PARAM_VALUE.USE_BEAT_ALIGNMENT } {
	# Procedure called to update USE_BEAT_ALIGNMENT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.USE_BEAT_ALIGNMENT { PARAM_VALUE.USE_BEAT_ALIGNMENT } {
	# Procedure called to validate USE_BEAT_ALIGNMENT
	return true
}

proc update_PARAM_VALUE.USE_BURST_ALIGNMENT { PARAM_VALUE.USE_BURST_ALIGNMENT } {
	# Procedure called to update USE_BURST_ALIGNMENT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.USE_BURST_ALIGNMENT { PARAM_VALUE.USE_BURST_ALIGNMENT } {
	# Procedure called to validate USE_BURST_ALIGNMENT
	return true
}


proc update_MODELPARAM_VALUE.STREAM_DATA_WIDTH { MODELPARAM_VALUE.STREAM_DATA_WIDTH PARAM_VALUE.STREAM_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.STREAM_DATA_WIDTH}] ${MODELPARAM_VALUE.STREAM_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.FAMILY { MODELPARAM_VALUE.FAMILY PARAM_VALUE.FAMILY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FAMILY}] ${MODELPARAM_VALUE.FAMILY}
}

proc update_MODELPARAM_VALUE.USE_BEAT_ALIGNMENT { MODELPARAM_VALUE.USE_BEAT_ALIGNMENT PARAM_VALUE.USE_BEAT_ALIGNMENT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.USE_BEAT_ALIGNMENT}] ${MODELPARAM_VALUE.USE_BEAT_ALIGNMENT}
}

proc update_MODELPARAM_VALUE.STREAM_CLK_DOMAIN { MODELPARAM_VALUE.STREAM_CLK_DOMAIN PARAM_VALUE.STREAM_CLK_DOMAIN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.STREAM_CLK_DOMAIN}] ${MODELPARAM_VALUE.STREAM_CLK_DOMAIN}
}

proc update_MODELPARAM_VALUE.MEMORY_CLK_DOMAIN { MODELPARAM_VALUE.MEMORY_CLK_DOMAIN PARAM_VALUE.MEMORY_CLK_DOMAIN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MEMORY_CLK_DOMAIN}] ${MODELPARAM_VALUE.MEMORY_CLK_DOMAIN}
}

proc update_MODELPARAM_VALUE.MEMORY_ADDR_WIDTH { MODELPARAM_VALUE.MEMORY_ADDR_WIDTH PARAM_VALUE.MEMORY_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MEMORY_ADDR_WIDTH}] ${MODELPARAM_VALUE.MEMORY_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.MEMORY_DATA_WIDTH { MODELPARAM_VALUE.MEMORY_DATA_WIDTH PARAM_VALUE.MEMORY_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MEMORY_DATA_WIDTH}] ${MODELPARAM_VALUE.MEMORY_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.MEMORY_NUM_WRITE_OUTSTANDING { MODELPARAM_VALUE.MEMORY_NUM_WRITE_OUTSTANDING PARAM_VALUE.MEMORY_NUM_WRITE_OUTSTANDING } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MEMORY_NUM_WRITE_OUTSTANDING}] ${MODELPARAM_VALUE.MEMORY_NUM_WRITE_OUTSTANDING}
}

proc update_MODELPARAM_VALUE.MEMORY_BURST_LENGTH { MODELPARAM_VALUE.MEMORY_BURST_LENGTH PARAM_VALUE.MEMORY_BURST_LENGTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MEMORY_BURST_LENGTH}] ${MODELPARAM_VALUE.MEMORY_BURST_LENGTH}
}

proc update_MODELPARAM_VALUE.MEMORY_AWPROT { MODELPARAM_VALUE.MEMORY_AWPROT PARAM_VALUE.MEMORY_AWPROT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MEMORY_AWPROT}] ${MODELPARAM_VALUE.MEMORY_AWPROT}
}

proc update_MODELPARAM_VALUE.MEMORY_AWCACHE { MODELPARAM_VALUE.MEMORY_AWCACHE PARAM_VALUE.MEMORY_AWCACHE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MEMORY_AWCACHE}] ${MODELPARAM_VALUE.MEMORY_AWCACHE}
}

proc update_MODELPARAM_VALUE.MAX_TRANSFER_SIZE { MODELPARAM_VALUE.MAX_TRANSFER_SIZE PARAM_VALUE.MAX_TRANSFER_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_TRANSFER_SIZE}] ${MODELPARAM_VALUE.MAX_TRANSFER_SIZE}
}

proc update_MODELPARAM_VALUE.USE_BURST_ALIGNMENT { MODELPARAM_VALUE.USE_BURST_ALIGNMENT PARAM_VALUE.USE_BURST_ALIGNMENT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.USE_BURST_ALIGNMENT}] ${MODELPARAM_VALUE.USE_BURST_ALIGNMENT}
}

