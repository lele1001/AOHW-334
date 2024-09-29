# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  set C_INCLUDE_BRAM [ipgui::add_param $IPINST -name "C_INCLUDE_BRAM"]

  ipgui::add_param $IPINST -name "C_S02_AXI_MEM_DATA_WIDTH" -parent ${Page_0} -widget comboBox

  set_property tooltip {Use dedicated BRAM for the queue} ${C_INCLUDE_BRAM}

}

proc update_PARAM_VALUE.C_INCLUDE_BRAM { PARAM_VALUE.C_INCLUDE_BRAM } {
	# Procedure called to update C_INCLUDE_BRAM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_INCLUDE_BRAM { PARAM_VALUE.C_INCLUDE_BRAM } {
	# Procedure called to validate C_INCLUDE_BRAM
	return true
}

proc update_PARAM_VALUE.C_S02_AXI_MEM_ADDR_WIDTH { PARAM_VALUE.C_S02_AXI_MEM_ADDR_WIDTH } {
	# Procedure called to update C_S02_AXI_MEM_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S02_AXI_MEM_ADDR_WIDTH { PARAM_VALUE.C_S02_AXI_MEM_ADDR_WIDTH } {
	# Procedure called to validate C_S02_AXI_MEM_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S02_AXI_MEM_ARUSER_WIDTH { PARAM_VALUE.C_S02_AXI_MEM_ARUSER_WIDTH } {
	# Procedure called to update C_S02_AXI_MEM_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S02_AXI_MEM_ARUSER_WIDTH { PARAM_VALUE.C_S02_AXI_MEM_ARUSER_WIDTH } {
	# Procedure called to validate C_S02_AXI_MEM_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S02_AXI_MEM_AWUSER_WIDTH { PARAM_VALUE.C_S02_AXI_MEM_AWUSER_WIDTH } {
	# Procedure called to update C_S02_AXI_MEM_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S02_AXI_MEM_AWUSER_WIDTH { PARAM_VALUE.C_S02_AXI_MEM_AWUSER_WIDTH } {
	# Procedure called to validate C_S02_AXI_MEM_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S02_AXI_MEM_BUSER_WIDTH { PARAM_VALUE.C_S02_AXI_MEM_BUSER_WIDTH } {
	# Procedure called to update C_S02_AXI_MEM_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S02_AXI_MEM_BUSER_WIDTH { PARAM_VALUE.C_S02_AXI_MEM_BUSER_WIDTH } {
	# Procedure called to validate C_S02_AXI_MEM_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S02_AXI_MEM_DATA_WIDTH { PARAM_VALUE.C_S02_AXI_MEM_DATA_WIDTH } {
	# Procedure called to update C_S02_AXI_MEM_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S02_AXI_MEM_DATA_WIDTH { PARAM_VALUE.C_S02_AXI_MEM_DATA_WIDTH } {
	# Procedure called to validate C_S02_AXI_MEM_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S02_AXI_MEM_ID_WIDTH { PARAM_VALUE.C_S02_AXI_MEM_ID_WIDTH } {
	# Procedure called to update C_S02_AXI_MEM_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S02_AXI_MEM_ID_WIDTH { PARAM_VALUE.C_S02_AXI_MEM_ID_WIDTH } {
	# Procedure called to validate C_S02_AXI_MEM_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S02_AXI_MEM_RUSER_WIDTH { PARAM_VALUE.C_S02_AXI_MEM_RUSER_WIDTH } {
	# Procedure called to update C_S02_AXI_MEM_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S02_AXI_MEM_RUSER_WIDTH { PARAM_VALUE.C_S02_AXI_MEM_RUSER_WIDTH } {
	# Procedure called to validate C_S02_AXI_MEM_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S02_AXI_MEM_WUSER_WIDTH { PARAM_VALUE.C_S02_AXI_MEM_WUSER_WIDTH } {
	# Procedure called to update C_S02_AXI_MEM_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S02_AXI_MEM_WUSER_WIDTH { PARAM_VALUE.C_S02_AXI_MEM_WUSER_WIDTH } {
	# Procedure called to validate C_S02_AXI_MEM_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to update C_S00_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S00_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S00_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S00_AXI_ADDR_WIDTH
	return true
}

proc update_MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_INCLUDE_BRAM { MODELPARAM_VALUE.C_INCLUDE_BRAM PARAM_VALUE.C_INCLUDE_BRAM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_INCLUDE_BRAM}] ${MODELPARAM_VALUE.C_INCLUDE_BRAM}
}

proc update_MODELPARAM_VALUE.C_S02_AXI_MEM_ID_WIDTH { MODELPARAM_VALUE.C_S02_AXI_MEM_ID_WIDTH PARAM_VALUE.C_S02_AXI_MEM_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S02_AXI_MEM_ID_WIDTH}] ${MODELPARAM_VALUE.C_S02_AXI_MEM_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S02_AXI_MEM_DATA_WIDTH { MODELPARAM_VALUE.C_S02_AXI_MEM_DATA_WIDTH PARAM_VALUE.C_S02_AXI_MEM_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S02_AXI_MEM_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S02_AXI_MEM_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S02_AXI_MEM_ADDR_WIDTH { MODELPARAM_VALUE.C_S02_AXI_MEM_ADDR_WIDTH PARAM_VALUE.C_S02_AXI_MEM_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S02_AXI_MEM_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S02_AXI_MEM_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S02_AXI_MEM_AWUSER_WIDTH { MODELPARAM_VALUE.C_S02_AXI_MEM_AWUSER_WIDTH PARAM_VALUE.C_S02_AXI_MEM_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S02_AXI_MEM_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_S02_AXI_MEM_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S02_AXI_MEM_ARUSER_WIDTH { MODELPARAM_VALUE.C_S02_AXI_MEM_ARUSER_WIDTH PARAM_VALUE.C_S02_AXI_MEM_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S02_AXI_MEM_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_S02_AXI_MEM_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S02_AXI_MEM_WUSER_WIDTH { MODELPARAM_VALUE.C_S02_AXI_MEM_WUSER_WIDTH PARAM_VALUE.C_S02_AXI_MEM_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S02_AXI_MEM_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_S02_AXI_MEM_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S02_AXI_MEM_RUSER_WIDTH { MODELPARAM_VALUE.C_S02_AXI_MEM_RUSER_WIDTH PARAM_VALUE.C_S02_AXI_MEM_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S02_AXI_MEM_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_S02_AXI_MEM_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S02_AXI_MEM_BUSER_WIDTH { MODELPARAM_VALUE.C_S02_AXI_MEM_BUSER_WIDTH PARAM_VALUE.C_S02_AXI_MEM_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S02_AXI_MEM_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_S02_AXI_MEM_BUSER_WIDTH}
}

