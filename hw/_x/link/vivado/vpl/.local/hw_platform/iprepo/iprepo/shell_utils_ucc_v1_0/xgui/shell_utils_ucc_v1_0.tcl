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
  set NUM_CLOCKS [ ipgui::add_param  $IPINST  -parent $IPINST -name NUM_CLOCKS ]
  set FREQ_CNT_REF_CLK_HZ [ ipgui::add_param  $IPINST  -parent $IPINST -name FREQ_CNT_REF_CLK_HZ ]
  set EXT_TOG_ENABLE [ ipgui::add_param  $IPINST  -parent $IPINST -name EXT_TOG_ENABLE ]

}

proc update_MODELPARAM_VALUE.C_NUM_CLOCKS { MODELPARAM_VALUE.C_NUM_CLOCKS PARAM_VALUE.NUM_CLOCKS } {
	set_property value [get_property value ${PARAM_VALUE.NUM_CLOCKS}] ${MODELPARAM_VALUE.C_NUM_CLOCKS}
}

proc update_MODELPARAM_VALUE.C_FREQ_CNT_REF_CLK_HZ { MODELPARAM_VALUE.C_FREQ_CNT_REF_CLK_HZ PARAM_VALUE.FREQ_CNT_REF_CLK_HZ } {
	set_property value [get_property value ${PARAM_VALUE.FREQ_CNT_REF_CLK_HZ}] ${MODELPARAM_VALUE.C_FREQ_CNT_REF_CLK_HZ}
}

proc update_MODELPARAM_VALUE.C_EXT_TOG_ENABLE { MODELPARAM_VALUE.C_EXT_TOG_ENABLE PARAM_VALUE.EXT_TOG_ENABLE } {
	set_property value [get_property value ${PARAM_VALUE.EXT_TOG_ENABLE}] ${MODELPARAM_VALUE.C_EXT_TOG_ENABLE}
}
