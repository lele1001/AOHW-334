# (c) Copyright 2022, Advanced Micro Devices, Inc.
# 
# Permission is hereby granted, free of charge, to any person obtaining a 
# copy of this software and associated documentation files (the "Software"), 
# to deal in the Software without restriction, including without limitation 
# the rights to use, copy, modify, merge, publish, distribute, sublicense, 
# and/or sell copies of the Software, and to permit persons to whom the 
# Software is furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in 
# all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL 
# THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING 
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER 
# DEALINGS IN THE SOFTWARE.
############################################################

proc init_gui { IPINST } {

  set Component_Name [ ipgui::add_param  $IPINST  -parent $IPINST -name Component_Name ]

  #---> Adding Page -----------------------------------------------------------------------------------------------------------------------#

  set General_Config [ipgui::add_page $IPINST -name "General Config"]
  
  set C_TRANSPARENT_BITS [ipgui::add_param $IPINST -name C_TRANSPARENT_BITS -parent $General_Config]
  set_property tooltip  "Set the number of lower pass-thru bits"  $C_TRANSPARENT_BITS

  set C_MASTER_ADDR [ipgui::add_param $IPINST -name C_MASTER_ADDR -parent $General_Config]
  set_property tooltip  "Set the address for the upper master bits"  $C_MASTER_ADDR

  set C_S_AXI_DATA_WIDTH [ipgui::add_param $IPINST -name C_S_AXI_DATA_WIDTH -parent $General_Config]
  set_property tooltip  "Set the data bus width"  $C_S_AXI_DATA_WIDTH
}

#==========================================================================================================================================#
# Model Parameter Update Procedures
#==========================================================================================================================================#


proc update_MODELPARAM_VALUE.C_TRANSPARENT_BITS { MODELPARAM_VALUE.C_TRANSPARENT_BITS PARAM_VALUE.C_TRANSPARENT_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
  # Pass the integer value to the Model Parameter
	set_property value [get_property value ${PARAM_VALUE.C_TRANSPARENT_BITS}] ${MODELPARAM_VALUE.C_TRANSPARENT_BITS}
  
}

proc update_MODELPARAM_VALUE.C_MASTER_ADDR { MODELPARAM_VALUE.C_MASTER_ADDR PARAM_VALUE.C_MASTER_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
  set_property bitstring_length 32 ${MODELPARAM_VALUE.C_MASTER_ADDR}
  set_property value [get_param_hexvalue ${PARAM_VALUE.C_MASTER_ADDR} 64] ${MODELPARAM_VALUE.C_MASTER_ADDR}
}

proc update_MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
  # Pass the integer value to the Model Parameter
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH}
  
}

#==========================================================================================================================================#
# Helper Procedures
#==========================================================================================================================================#

# Convert to bitstring: valid syntax is 8'b11111111 X"FF" 0xFF "11111111" 11111111
proc to_bitstring {value} {
  if {[regexp {([0-9]*)\'b([0-1]*)} $value match bitlen bitvalue]} {
    set len [string length $bitvalue]
    set bitvalue [format "%0${bitlen}s" [string range $bitvalue [expr ($len > $bitlen) ? $len - $bitlen : 0] end]]
  } elseif {[regexp {X\"([0-9A-Fa-f]*)\"} $value match hexvalue] || [regexp {0x([0-9A-Fa-f]*)} $value match hexvalue]} {
    binary scan [binary format H* $hexvalue] B* bitvalue
  } else {
    set bitvalue 0
    regexp {\"*([0-1]*)\"*} $value match bitvalue
  }
  return $bitvalue
}

# Convert to hex of given length: truncate if longer, prepend zeros if shorter
proc to_hex {value {length 64}} {
  set bitvalue [to_bitstring $value]
  set bitlen   [string length $bitvalue]
  set bitvalue [format "%0${length}s" [string range $bitvalue [expr ($bitlen > $length) ? $bitlen - $length : 0] end]]
  binary scan [binary format B* $bitvalue] H* hexvalue
  return "0x${hexvalue}"
}

proc get_param_hexvalue {parameter {length 32}} {
  return [to_hex [get_property value $parameter] $length]
}
