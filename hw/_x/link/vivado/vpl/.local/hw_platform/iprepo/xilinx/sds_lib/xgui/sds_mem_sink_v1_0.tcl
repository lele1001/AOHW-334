# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "BUFFER_LEN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FAMILY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MEMORY_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MEMORY_AWCACHE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MEMORY_AWPROT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MEMORY_CLK_ID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MEMORY_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MEMORY_MAX_BURST_LENGTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MEMORY_NUM_WRITE_OUTSTANDING" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STREAM_CLK_ID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STREAM_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "USE_ALIGNMENT" -parent ${Page_0}


}

proc update_PARAM_VALUE.BUFFER_LEN { PARAM_VALUE.BUFFER_LEN } {
	# Procedure called to update BUFFER_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BUFFER_LEN { PARAM_VALUE.BUFFER_LEN } {
	# Procedure called to validate BUFFER_LEN
	return true
}

proc update_PARAM_VALUE.FAMILY { PARAM_VALUE.FAMILY } {
	# Procedure called to update FAMILY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FAMILY { PARAM_VALUE.FAMILY } {
	# Procedure called to validate FAMILY
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

proc update_PARAM_VALUE.MEMORY_CLK_ID { PARAM_VALUE.MEMORY_CLK_ID } {
	# Procedure called to update MEMORY_CLK_ID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MEMORY_CLK_ID { PARAM_VALUE.MEMORY_CLK_ID } {
	# Procedure called to validate MEMORY_CLK_ID
	return true
}

proc update_PARAM_VALUE.MEMORY_DATA_WIDTH { PARAM_VALUE.MEMORY_DATA_WIDTH } {
	# Procedure called to update MEMORY_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MEMORY_DATA_WIDTH { PARAM_VALUE.MEMORY_DATA_WIDTH } {
	# Procedure called to validate MEMORY_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.MEMORY_MAX_BURST_LENGTH { PARAM_VALUE.MEMORY_MAX_BURST_LENGTH } {
	# Procedure called to update MEMORY_MAX_BURST_LENGTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MEMORY_MAX_BURST_LENGTH { PARAM_VALUE.MEMORY_MAX_BURST_LENGTH } {
	# Procedure called to validate MEMORY_MAX_BURST_LENGTH
	return true
}

proc update_PARAM_VALUE.MEMORY_NUM_WRITE_OUTSTANDING { PARAM_VALUE.MEMORY_NUM_WRITE_OUTSTANDING } {
	# Procedure called to update MEMORY_NUM_WRITE_OUTSTANDING when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MEMORY_NUM_WRITE_OUTSTANDING { PARAM_VALUE.MEMORY_NUM_WRITE_OUTSTANDING } {
	# Procedure called to validate MEMORY_NUM_WRITE_OUTSTANDING
	return true
}

proc update_PARAM_VALUE.STREAM_CLK_ID { PARAM_VALUE.STREAM_CLK_ID } {
	# Procedure called to update STREAM_CLK_ID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STREAM_CLK_ID { PARAM_VALUE.STREAM_CLK_ID } {
	# Procedure called to validate STREAM_CLK_ID
	return true
}

proc update_PARAM_VALUE.STREAM_DATA_WIDTH { PARAM_VALUE.STREAM_DATA_WIDTH } {
	# Procedure called to update STREAM_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STREAM_DATA_WIDTH { PARAM_VALUE.STREAM_DATA_WIDTH } {
	# Procedure called to validate STREAM_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.USE_ALIGNMENT { PARAM_VALUE.USE_ALIGNMENT } {
	# Procedure called to update USE_ALIGNMENT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.USE_ALIGNMENT { PARAM_VALUE.USE_ALIGNMENT } {
	# Procedure called to validate USE_ALIGNMENT
	return true
}


proc update_MODELPARAM_VALUE.MEMORY_CLK_ID { MODELPARAM_VALUE.MEMORY_CLK_ID PARAM_VALUE.MEMORY_CLK_ID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MEMORY_CLK_ID}] ${MODELPARAM_VALUE.MEMORY_CLK_ID}
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

proc update_MODELPARAM_VALUE.MEMORY_MAX_BURST_LENGTH { MODELPARAM_VALUE.MEMORY_MAX_BURST_LENGTH PARAM_VALUE.MEMORY_MAX_BURST_LENGTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MEMORY_MAX_BURST_LENGTH}] ${MODELPARAM_VALUE.MEMORY_MAX_BURST_LENGTH}
}

proc update_MODELPARAM_VALUE.MEMORY_AWPROT { MODELPARAM_VALUE.MEMORY_AWPROT PARAM_VALUE.MEMORY_AWPROT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MEMORY_AWPROT}] ${MODELPARAM_VALUE.MEMORY_AWPROT}
}

proc update_MODELPARAM_VALUE.MEMORY_AWCACHE { MODELPARAM_VALUE.MEMORY_AWCACHE PARAM_VALUE.MEMORY_AWCACHE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MEMORY_AWCACHE}] ${MODELPARAM_VALUE.MEMORY_AWCACHE}
}

proc update_MODELPARAM_VALUE.STREAM_CLK_ID { MODELPARAM_VALUE.STREAM_CLK_ID PARAM_VALUE.STREAM_CLK_ID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.STREAM_CLK_ID}] ${MODELPARAM_VALUE.STREAM_CLK_ID}
}

proc update_MODELPARAM_VALUE.STREAM_DATA_WIDTH { MODELPARAM_VALUE.STREAM_DATA_WIDTH PARAM_VALUE.STREAM_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.STREAM_DATA_WIDTH}] ${MODELPARAM_VALUE.STREAM_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.BUFFER_LEN { MODELPARAM_VALUE.BUFFER_LEN PARAM_VALUE.BUFFER_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BUFFER_LEN}] ${MODELPARAM_VALUE.BUFFER_LEN}
}

proc update_MODELPARAM_VALUE.USE_ALIGNMENT { MODELPARAM_VALUE.USE_ALIGNMENT PARAM_VALUE.USE_ALIGNMENT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.USE_ALIGNMENT}] ${MODELPARAM_VALUE.USE_ALIGNMENT}
}

proc update_MODELPARAM_VALUE.FAMILY { MODELPARAM_VALUE.FAMILY PARAM_VALUE.FAMILY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FAMILY}] ${MODELPARAM_VALUE.FAMILY}
}

