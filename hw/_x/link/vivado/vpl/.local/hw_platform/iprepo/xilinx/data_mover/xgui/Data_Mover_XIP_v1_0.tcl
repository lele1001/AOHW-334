# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "Host_ARUser_Width" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Host_AWUser_Width" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Host_Addr_Width" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Host_BUser_Width" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Host_Data_Width" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Host_Id_Value" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Host_Id_Width" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Host_Num_Read_Outstanding" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Host_Num_Write_Outstanding" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Host_RUser_Width" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Host_WUser_Width" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IRQ_Num_Outstanding" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IRQ_TData_Num_Bytes" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IStream0_Num_Outstanding" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IStream0_TData_Num_Bytes" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IStream1_Num_Outstanding" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IStream1_TData_Num_Bytes" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Memory_ARUser_Width" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Memory_AWUser_Width" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Memory_Addr_Width" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Memory_BUser_Width" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Memory_Burst_Length" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Memory_Data_Width" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Memory_Id_Value" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Memory_Id_Width" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Memory_Num_Read_Outstanding" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Memory_Num_Write_Outstanding" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Memory_RUser_Width" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Memory_WUser_Width" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Num_Ports" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OStream0_Num_Outstanding" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OStream0_TData_Num_Bytes" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OStream1_Num_Outstanding" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OStream1_TData_Num_Bytes" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Page_Addr" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Page_Size" -parent ${Page_0}


}

proc update_PARAM_VALUE.Host_ARUser_Width { PARAM_VALUE.Host_ARUser_Width } {
	# Procedure called to update Host_ARUser_Width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Host_ARUser_Width { PARAM_VALUE.Host_ARUser_Width } {
	# Procedure called to validate Host_ARUser_Width
	return true
}

proc update_PARAM_VALUE.Host_AWUser_Width { PARAM_VALUE.Host_AWUser_Width } {
	# Procedure called to update Host_AWUser_Width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Host_AWUser_Width { PARAM_VALUE.Host_AWUser_Width } {
	# Procedure called to validate Host_AWUser_Width
	return true
}

proc update_PARAM_VALUE.Host_Addr_Width { PARAM_VALUE.Host_Addr_Width } {
	# Procedure called to update Host_Addr_Width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Host_Addr_Width { PARAM_VALUE.Host_Addr_Width } {
	# Procedure called to validate Host_Addr_Width
	return true
}

proc update_PARAM_VALUE.Host_BUser_Width { PARAM_VALUE.Host_BUser_Width } {
	# Procedure called to update Host_BUser_Width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Host_BUser_Width { PARAM_VALUE.Host_BUser_Width } {
	# Procedure called to validate Host_BUser_Width
	return true
}

proc update_PARAM_VALUE.Host_Data_Width { PARAM_VALUE.Host_Data_Width } {
	# Procedure called to update Host_Data_Width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Host_Data_Width { PARAM_VALUE.Host_Data_Width } {
	# Procedure called to validate Host_Data_Width
	return true
}

proc update_PARAM_VALUE.Host_Id_Value { PARAM_VALUE.Host_Id_Value } {
	# Procedure called to update Host_Id_Value when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Host_Id_Value { PARAM_VALUE.Host_Id_Value } {
	# Procedure called to validate Host_Id_Value
	return true
}

proc update_PARAM_VALUE.Host_Id_Width { PARAM_VALUE.Host_Id_Width } {
	# Procedure called to update Host_Id_Width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Host_Id_Width { PARAM_VALUE.Host_Id_Width } {
	# Procedure called to validate Host_Id_Width
	return true
}

proc update_PARAM_VALUE.Host_Num_Read_Outstanding { PARAM_VALUE.Host_Num_Read_Outstanding } {
	# Procedure called to update Host_Num_Read_Outstanding when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Host_Num_Read_Outstanding { PARAM_VALUE.Host_Num_Read_Outstanding } {
	# Procedure called to validate Host_Num_Read_Outstanding
	return true
}

proc update_PARAM_VALUE.Host_Num_Write_Outstanding { PARAM_VALUE.Host_Num_Write_Outstanding } {
	# Procedure called to update Host_Num_Write_Outstanding when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Host_Num_Write_Outstanding { PARAM_VALUE.Host_Num_Write_Outstanding } {
	# Procedure called to validate Host_Num_Write_Outstanding
	return true
}

proc update_PARAM_VALUE.Host_RUser_Width { PARAM_VALUE.Host_RUser_Width } {
	# Procedure called to update Host_RUser_Width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Host_RUser_Width { PARAM_VALUE.Host_RUser_Width } {
	# Procedure called to validate Host_RUser_Width
	return true
}

proc update_PARAM_VALUE.Host_WUser_Width { PARAM_VALUE.Host_WUser_Width } {
	# Procedure called to update Host_WUser_Width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Host_WUser_Width { PARAM_VALUE.Host_WUser_Width } {
	# Procedure called to validate Host_WUser_Width
	return true
}

proc update_PARAM_VALUE.IRQ_Num_Outstanding { PARAM_VALUE.IRQ_Num_Outstanding } {
	# Procedure called to update IRQ_Num_Outstanding when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IRQ_Num_Outstanding { PARAM_VALUE.IRQ_Num_Outstanding } {
	# Procedure called to validate IRQ_Num_Outstanding
	return true
}

proc update_PARAM_VALUE.IRQ_TData_Num_Bytes { PARAM_VALUE.IRQ_TData_Num_Bytes } {
	# Procedure called to update IRQ_TData_Num_Bytes when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IRQ_TData_Num_Bytes { PARAM_VALUE.IRQ_TData_Num_Bytes } {
	# Procedure called to validate IRQ_TData_Num_Bytes
	return true
}

proc update_PARAM_VALUE.IStream0_Num_Outstanding { PARAM_VALUE.IStream0_Num_Outstanding } {
	# Procedure called to update IStream0_Num_Outstanding when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IStream0_Num_Outstanding { PARAM_VALUE.IStream0_Num_Outstanding } {
	# Procedure called to validate IStream0_Num_Outstanding
	return true
}

proc update_PARAM_VALUE.IStream0_TData_Num_Bytes { PARAM_VALUE.IStream0_TData_Num_Bytes } {
	# Procedure called to update IStream0_TData_Num_Bytes when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IStream0_TData_Num_Bytes { PARAM_VALUE.IStream0_TData_Num_Bytes } {
	# Procedure called to validate IStream0_TData_Num_Bytes
	return true
}

proc update_PARAM_VALUE.IStream1_Num_Outstanding { PARAM_VALUE.IStream1_Num_Outstanding } {
	# Procedure called to update IStream1_Num_Outstanding when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IStream1_Num_Outstanding { PARAM_VALUE.IStream1_Num_Outstanding } {
	# Procedure called to validate IStream1_Num_Outstanding
	return true
}

proc update_PARAM_VALUE.IStream1_TData_Num_Bytes { PARAM_VALUE.IStream1_TData_Num_Bytes } {
	# Procedure called to update IStream1_TData_Num_Bytes when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IStream1_TData_Num_Bytes { PARAM_VALUE.IStream1_TData_Num_Bytes } {
	# Procedure called to validate IStream1_TData_Num_Bytes
	return true
}

proc update_PARAM_VALUE.Memory_ARUser_Width { PARAM_VALUE.Memory_ARUser_Width } {
	# Procedure called to update Memory_ARUser_Width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Memory_ARUser_Width { PARAM_VALUE.Memory_ARUser_Width } {
	# Procedure called to validate Memory_ARUser_Width
	return true
}

proc update_PARAM_VALUE.Memory_AWUser_Width { PARAM_VALUE.Memory_AWUser_Width } {
	# Procedure called to update Memory_AWUser_Width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Memory_AWUser_Width { PARAM_VALUE.Memory_AWUser_Width } {
	# Procedure called to validate Memory_AWUser_Width
	return true
}

proc update_PARAM_VALUE.Memory_Addr_Width { PARAM_VALUE.Memory_Addr_Width } {
	# Procedure called to update Memory_Addr_Width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Memory_Addr_Width { PARAM_VALUE.Memory_Addr_Width } {
	# Procedure called to validate Memory_Addr_Width
	return true
}

proc update_PARAM_VALUE.Memory_BUser_Width { PARAM_VALUE.Memory_BUser_Width } {
	# Procedure called to update Memory_BUser_Width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Memory_BUser_Width { PARAM_VALUE.Memory_BUser_Width } {
	# Procedure called to validate Memory_BUser_Width
	return true
}

proc update_PARAM_VALUE.Memory_Burst_Length { PARAM_VALUE.Memory_Burst_Length } {
	# Procedure called to update Memory_Burst_Length when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Memory_Burst_Length { PARAM_VALUE.Memory_Burst_Length } {
	# Procedure called to validate Memory_Burst_Length
	return true
}

proc update_PARAM_VALUE.Memory_Data_Width { PARAM_VALUE.Memory_Data_Width } {
	# Procedure called to update Memory_Data_Width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Memory_Data_Width { PARAM_VALUE.Memory_Data_Width } {
	# Procedure called to validate Memory_Data_Width
	return true
}

proc update_PARAM_VALUE.Memory_Id_Value { PARAM_VALUE.Memory_Id_Value } {
	# Procedure called to update Memory_Id_Value when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Memory_Id_Value { PARAM_VALUE.Memory_Id_Value } {
	# Procedure called to validate Memory_Id_Value
	return true
}

proc update_PARAM_VALUE.Memory_Id_Width { PARAM_VALUE.Memory_Id_Width } {
	# Procedure called to update Memory_Id_Width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Memory_Id_Width { PARAM_VALUE.Memory_Id_Width } {
	# Procedure called to validate Memory_Id_Width
	return true
}

proc update_PARAM_VALUE.Memory_Num_Read_Outstanding { PARAM_VALUE.Memory_Num_Read_Outstanding } {
	# Procedure called to update Memory_Num_Read_Outstanding when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Memory_Num_Read_Outstanding { PARAM_VALUE.Memory_Num_Read_Outstanding } {
	# Procedure called to validate Memory_Num_Read_Outstanding
	return true
}

proc update_PARAM_VALUE.Memory_Num_Write_Outstanding { PARAM_VALUE.Memory_Num_Write_Outstanding } {
	# Procedure called to update Memory_Num_Write_Outstanding when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Memory_Num_Write_Outstanding { PARAM_VALUE.Memory_Num_Write_Outstanding } {
	# Procedure called to validate Memory_Num_Write_Outstanding
	return true
}

proc update_PARAM_VALUE.Memory_RUser_Width { PARAM_VALUE.Memory_RUser_Width } {
	# Procedure called to update Memory_RUser_Width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Memory_RUser_Width { PARAM_VALUE.Memory_RUser_Width } {
	# Procedure called to validate Memory_RUser_Width
	return true
}

proc update_PARAM_VALUE.Memory_WUser_Width { PARAM_VALUE.Memory_WUser_Width } {
	# Procedure called to update Memory_WUser_Width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Memory_WUser_Width { PARAM_VALUE.Memory_WUser_Width } {
	# Procedure called to validate Memory_WUser_Width
	return true
}

proc update_PARAM_VALUE.Num_Ports { PARAM_VALUE.Num_Ports } {
	# Procedure called to update Num_Ports when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Num_Ports { PARAM_VALUE.Num_Ports } {
	# Procedure called to validate Num_Ports
	return true
}

proc update_PARAM_VALUE.OStream0_Num_Outstanding { PARAM_VALUE.OStream0_Num_Outstanding } {
	# Procedure called to update OStream0_Num_Outstanding when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OStream0_Num_Outstanding { PARAM_VALUE.OStream0_Num_Outstanding } {
	# Procedure called to validate OStream0_Num_Outstanding
	return true
}

proc update_PARAM_VALUE.OStream0_TData_Num_Bytes { PARAM_VALUE.OStream0_TData_Num_Bytes } {
	# Procedure called to update OStream0_TData_Num_Bytes when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OStream0_TData_Num_Bytes { PARAM_VALUE.OStream0_TData_Num_Bytes } {
	# Procedure called to validate OStream0_TData_Num_Bytes
	return true
}

proc update_PARAM_VALUE.OStream1_Num_Outstanding { PARAM_VALUE.OStream1_Num_Outstanding } {
	# Procedure called to update OStream1_Num_Outstanding when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OStream1_Num_Outstanding { PARAM_VALUE.OStream1_Num_Outstanding } {
	# Procedure called to validate OStream1_Num_Outstanding
	return true
}

proc update_PARAM_VALUE.OStream1_TData_Num_Bytes { PARAM_VALUE.OStream1_TData_Num_Bytes } {
	# Procedure called to update OStream1_TData_Num_Bytes when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OStream1_TData_Num_Bytes { PARAM_VALUE.OStream1_TData_Num_Bytes } {
	# Procedure called to validate OStream1_TData_Num_Bytes
	return true
}

proc update_PARAM_VALUE.Page_Addr { PARAM_VALUE.Page_Addr } {
	# Procedure called to update Page_Addr when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Page_Addr { PARAM_VALUE.Page_Addr } {
	# Procedure called to validate Page_Addr
	return true
}

proc update_PARAM_VALUE.Page_Size { PARAM_VALUE.Page_Size } {
	# Procedure called to update Page_Size when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Page_Size { PARAM_VALUE.Page_Size } {
	# Procedure called to validate Page_Size
	return true
}


proc update_MODELPARAM_VALUE.Host_Addr_Width { MODELPARAM_VALUE.Host_Addr_Width PARAM_VALUE.Host_Addr_Width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Host_Addr_Width}] ${MODELPARAM_VALUE.Host_Addr_Width}
}

proc update_MODELPARAM_VALUE.Host_Data_Width { MODELPARAM_VALUE.Host_Data_Width PARAM_VALUE.Host_Data_Width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Host_Data_Width}] ${MODELPARAM_VALUE.Host_Data_Width}
}

proc update_MODELPARAM_VALUE.Host_Id_Width { MODELPARAM_VALUE.Host_Id_Width PARAM_VALUE.Host_Id_Width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Host_Id_Width}] ${MODELPARAM_VALUE.Host_Id_Width}
}

proc update_MODELPARAM_VALUE.Host_AWUser_Width { MODELPARAM_VALUE.Host_AWUser_Width PARAM_VALUE.Host_AWUser_Width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Host_AWUser_Width}] ${MODELPARAM_VALUE.Host_AWUser_Width}
}

proc update_MODELPARAM_VALUE.Host_WUser_Width { MODELPARAM_VALUE.Host_WUser_Width PARAM_VALUE.Host_WUser_Width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Host_WUser_Width}] ${MODELPARAM_VALUE.Host_WUser_Width}
}

proc update_MODELPARAM_VALUE.Host_BUser_Width { MODELPARAM_VALUE.Host_BUser_Width PARAM_VALUE.Host_BUser_Width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Host_BUser_Width}] ${MODELPARAM_VALUE.Host_BUser_Width}
}

proc update_MODELPARAM_VALUE.Host_ARUser_Width { MODELPARAM_VALUE.Host_ARUser_Width PARAM_VALUE.Host_ARUser_Width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Host_ARUser_Width}] ${MODELPARAM_VALUE.Host_ARUser_Width}
}

proc update_MODELPARAM_VALUE.Host_RUser_Width { MODELPARAM_VALUE.Host_RUser_Width PARAM_VALUE.Host_RUser_Width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Host_RUser_Width}] ${MODELPARAM_VALUE.Host_RUser_Width}
}

proc update_MODELPARAM_VALUE.Host_Num_Write_Outstanding { MODELPARAM_VALUE.Host_Num_Write_Outstanding PARAM_VALUE.Host_Num_Write_Outstanding } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Host_Num_Write_Outstanding}] ${MODELPARAM_VALUE.Host_Num_Write_Outstanding}
}

proc update_MODELPARAM_VALUE.Host_Num_Read_Outstanding { MODELPARAM_VALUE.Host_Num_Read_Outstanding PARAM_VALUE.Host_Num_Read_Outstanding } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Host_Num_Read_Outstanding}] ${MODELPARAM_VALUE.Host_Num_Read_Outstanding}
}

proc update_MODELPARAM_VALUE.Host_Id_Value { MODELPARAM_VALUE.Host_Id_Value PARAM_VALUE.Host_Id_Value } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Host_Id_Value}] ${MODELPARAM_VALUE.Host_Id_Value}
}

proc update_MODELPARAM_VALUE.IRQ_TData_Num_Bytes { MODELPARAM_VALUE.IRQ_TData_Num_Bytes PARAM_VALUE.IRQ_TData_Num_Bytes } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IRQ_TData_Num_Bytes}] ${MODELPARAM_VALUE.IRQ_TData_Num_Bytes}
}

proc update_MODELPARAM_VALUE.IRQ_Num_Outstanding { MODELPARAM_VALUE.IRQ_Num_Outstanding PARAM_VALUE.IRQ_Num_Outstanding } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IRQ_Num_Outstanding}] ${MODELPARAM_VALUE.IRQ_Num_Outstanding}
}

proc update_MODELPARAM_VALUE.Memory_Addr_Width { MODELPARAM_VALUE.Memory_Addr_Width PARAM_VALUE.Memory_Addr_Width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Memory_Addr_Width}] ${MODELPARAM_VALUE.Memory_Addr_Width}
}

proc update_MODELPARAM_VALUE.Memory_Data_Width { MODELPARAM_VALUE.Memory_Data_Width PARAM_VALUE.Memory_Data_Width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Memory_Data_Width}] ${MODELPARAM_VALUE.Memory_Data_Width}
}

proc update_MODELPARAM_VALUE.Memory_Id_Width { MODELPARAM_VALUE.Memory_Id_Width PARAM_VALUE.Memory_Id_Width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Memory_Id_Width}] ${MODELPARAM_VALUE.Memory_Id_Width}
}

proc update_MODELPARAM_VALUE.Memory_AWUser_Width { MODELPARAM_VALUE.Memory_AWUser_Width PARAM_VALUE.Memory_AWUser_Width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Memory_AWUser_Width}] ${MODELPARAM_VALUE.Memory_AWUser_Width}
}

proc update_MODELPARAM_VALUE.Memory_WUser_Width { MODELPARAM_VALUE.Memory_WUser_Width PARAM_VALUE.Memory_WUser_Width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Memory_WUser_Width}] ${MODELPARAM_VALUE.Memory_WUser_Width}
}

proc update_MODELPARAM_VALUE.Memory_BUser_Width { MODELPARAM_VALUE.Memory_BUser_Width PARAM_VALUE.Memory_BUser_Width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Memory_BUser_Width}] ${MODELPARAM_VALUE.Memory_BUser_Width}
}

proc update_MODELPARAM_VALUE.Memory_ARUser_Width { MODELPARAM_VALUE.Memory_ARUser_Width PARAM_VALUE.Memory_ARUser_Width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Memory_ARUser_Width}] ${MODELPARAM_VALUE.Memory_ARUser_Width}
}

proc update_MODELPARAM_VALUE.Memory_RUser_Width { MODELPARAM_VALUE.Memory_RUser_Width PARAM_VALUE.Memory_RUser_Width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Memory_RUser_Width}] ${MODELPARAM_VALUE.Memory_RUser_Width}
}

proc update_MODELPARAM_VALUE.Memory_Num_Write_Outstanding { MODELPARAM_VALUE.Memory_Num_Write_Outstanding PARAM_VALUE.Memory_Num_Write_Outstanding } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Memory_Num_Write_Outstanding}] ${MODELPARAM_VALUE.Memory_Num_Write_Outstanding}
}

proc update_MODELPARAM_VALUE.Memory_Num_Read_Outstanding { MODELPARAM_VALUE.Memory_Num_Read_Outstanding PARAM_VALUE.Memory_Num_Read_Outstanding } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Memory_Num_Read_Outstanding}] ${MODELPARAM_VALUE.Memory_Num_Read_Outstanding}
}

proc update_MODELPARAM_VALUE.Memory_Id_Value { MODELPARAM_VALUE.Memory_Id_Value PARAM_VALUE.Memory_Id_Value } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Memory_Id_Value}] ${MODELPARAM_VALUE.Memory_Id_Value}
}

proc update_MODELPARAM_VALUE.Memory_Burst_Length { MODELPARAM_VALUE.Memory_Burst_Length PARAM_VALUE.Memory_Burst_Length } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Memory_Burst_Length}] ${MODELPARAM_VALUE.Memory_Burst_Length}
}

proc update_MODELPARAM_VALUE.OStream0_TData_Num_Bytes { MODELPARAM_VALUE.OStream0_TData_Num_Bytes PARAM_VALUE.OStream0_TData_Num_Bytes } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OStream0_TData_Num_Bytes}] ${MODELPARAM_VALUE.OStream0_TData_Num_Bytes}
}

proc update_MODELPARAM_VALUE.OStream0_Num_Outstanding { MODELPARAM_VALUE.OStream0_Num_Outstanding PARAM_VALUE.OStream0_Num_Outstanding } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OStream0_Num_Outstanding}] ${MODELPARAM_VALUE.OStream0_Num_Outstanding}
}

proc update_MODELPARAM_VALUE.OStream1_TData_Num_Bytes { MODELPARAM_VALUE.OStream1_TData_Num_Bytes PARAM_VALUE.OStream1_TData_Num_Bytes } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OStream1_TData_Num_Bytes}] ${MODELPARAM_VALUE.OStream1_TData_Num_Bytes}
}

proc update_MODELPARAM_VALUE.OStream1_Num_Outstanding { MODELPARAM_VALUE.OStream1_Num_Outstanding PARAM_VALUE.OStream1_Num_Outstanding } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OStream1_Num_Outstanding}] ${MODELPARAM_VALUE.OStream1_Num_Outstanding}
}

proc update_MODELPARAM_VALUE.IStream0_TData_Num_Bytes { MODELPARAM_VALUE.IStream0_TData_Num_Bytes PARAM_VALUE.IStream0_TData_Num_Bytes } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IStream0_TData_Num_Bytes}] ${MODELPARAM_VALUE.IStream0_TData_Num_Bytes}
}

proc update_MODELPARAM_VALUE.IStream0_Num_Outstanding { MODELPARAM_VALUE.IStream0_Num_Outstanding PARAM_VALUE.IStream0_Num_Outstanding } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IStream0_Num_Outstanding}] ${MODELPARAM_VALUE.IStream0_Num_Outstanding}
}

proc update_MODELPARAM_VALUE.IStream1_TData_Num_Bytes { MODELPARAM_VALUE.IStream1_TData_Num_Bytes PARAM_VALUE.IStream1_TData_Num_Bytes } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IStream1_TData_Num_Bytes}] ${MODELPARAM_VALUE.IStream1_TData_Num_Bytes}
}

proc update_MODELPARAM_VALUE.IStream1_Num_Outstanding { MODELPARAM_VALUE.IStream1_Num_Outstanding PARAM_VALUE.IStream1_Num_Outstanding } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IStream1_Num_Outstanding}] ${MODELPARAM_VALUE.IStream1_Num_Outstanding}
}

proc update_MODELPARAM_VALUE.Num_Ports { MODELPARAM_VALUE.Num_Ports PARAM_VALUE.Num_Ports } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Num_Ports}] ${MODELPARAM_VALUE.Num_Ports}
}

proc update_MODELPARAM_VALUE.Page_Addr { MODELPARAM_VALUE.Page_Addr PARAM_VALUE.Page_Addr } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Page_Addr}] ${MODELPARAM_VALUE.Page_Addr}
}

proc update_MODELPARAM_VALUE.Page_Size { MODELPARAM_VALUE.Page_Size PARAM_VALUE.Page_Size } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Page_Size}] ${MODELPARAM_VALUE.Page_Size}
}

