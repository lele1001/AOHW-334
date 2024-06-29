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

proc init { cell_name undefined_params } {
  set cell [get_bd_cells $cell_name]
  set_property CONFIG.ASSOCIATED_BUSIF {S_AXI_CTRL_MGMT} [get_bd_pins $cell_name/aclk_ctrl]
  set_property CONFIG.ASSOCIATED_RESET {aresetn_ctrl} [get_bd_pins $cell_name/aclk_ctrl]
}

proc propagate { cell_name args } {
  set cell [get_bd_cells $cell_name]
  set_property CONFIG.FREQ_HZ [get_property CONFIG.FREQ_HZ [get_bd_pins $cell_name/clk_in_kernel_00]] [get_bd_pins $cell_name/aclk_kernel_cont_00]
  if {[get_property CONFIG.NUM_CLOCKS $cell] > 1} {set_property CONFIG.FREQ_HZ [get_property CONFIG.FREQ_HZ [get_bd_pins $cell_name/clk_in_kernel_01]] [get_bd_pins $cell_name/aclk_kernel_cont_01]  }
  if {[get_property CONFIG.NUM_CLOCKS $cell] > 2} {set_property CONFIG.FREQ_HZ [get_property CONFIG.FREQ_HZ [get_bd_pins $cell_name/clk_in_kernel_02]] [get_bd_pins $cell_name/aclk_kernel_cont_02]  }
  if {[get_property CONFIG.NUM_CLOCKS $cell] > 3} {set_property CONFIG.FREQ_HZ [get_property CONFIG.FREQ_HZ [get_bd_pins $cell_name/clk_in_kernel_03]] [get_bd_pins $cell_name/aclk_kernel_cont_03]  }
  if {[get_property CONFIG.NUM_CLOCKS $cell] > 4} {set_property CONFIG.FREQ_HZ [get_property CONFIG.FREQ_HZ [get_bd_pins $cell_name/clk_in_kernel_04]] [get_bd_pins $cell_name/aclk_kernel_cont_04]  }
  if {[get_property CONFIG.NUM_CLOCKS $cell] > 5} {set_property CONFIG.FREQ_HZ [get_property CONFIG.FREQ_HZ [get_bd_pins $cell_name/clk_in_kernel_05]] [get_bd_pins $cell_name/aclk_kernel_cont_05]  }
  set_property CONFIG.FREQ_HZ [get_property CONFIG.FREQ_HZ [get_bd_pins $cell_name/clk_in_kernel_00]] [get_bd_pins $cell_name/aclk_kernel_00]
  if {[get_property CONFIG.NUM_CLOCKS $cell] > 1} {set_property CONFIG.FREQ_HZ [get_property CONFIG.FREQ_HZ [get_bd_pins $cell_name/clk_in_kernel_01]] [get_bd_pins $cell_name/aclk_kernel_01]  }
  if {[get_property CONFIG.NUM_CLOCKS $cell] > 2} {set_property CONFIG.FREQ_HZ [get_property CONFIG.FREQ_HZ [get_bd_pins $cell_name/clk_in_kernel_02]] [get_bd_pins $cell_name/aclk_kernel_02]  }
  if {[get_property CONFIG.NUM_CLOCKS $cell] > 3} {set_property CONFIG.FREQ_HZ [get_property CONFIG.FREQ_HZ [get_bd_pins $cell_name/clk_in_kernel_03]] [get_bd_pins $cell_name/aclk_kernel_03]  }
  if {[get_property CONFIG.NUM_CLOCKS $cell] > 4} {set_property CONFIG.FREQ_HZ [get_property CONFIG.FREQ_HZ [get_bd_pins $cell_name/clk_in_kernel_04]] [get_bd_pins $cell_name/aclk_kernel_04]  }
  if {[get_property CONFIG.NUM_CLOCKS $cell] > 5} {set_property CONFIG.FREQ_HZ [get_property CONFIG.FREQ_HZ [get_bd_pins $cell_name/clk_in_kernel_05]] [get_bd_pins $cell_name/aclk_kernel_05]  }
  
  if {[get_property CONFIG.EXT_TOG_ENABLE $cell] > 0} {
    set_property CONFIG.FREQ_HZ [get_property CONFIG.FREQ_HZ [get_bd_pins $cell_name/clk_in_kernel_00]] [get_bd_pins $cell_name/aclk_ext_tog_kernel_00]
    if {[get_property CONFIG.NUM_CLOCKS $cell] > 1} {set_property CONFIG.FREQ_HZ [get_property CONFIG.FREQ_HZ [get_bd_pins $cell_name/clk_in_kernel_01]] [get_bd_pins $cell_name/aclk_ext_tog_kernel_01]  }
    if {[get_property CONFIG.NUM_CLOCKS $cell] > 2} {set_property CONFIG.FREQ_HZ [get_property CONFIG.FREQ_HZ [get_bd_pins $cell_name/clk_in_kernel_02]] [get_bd_pins $cell_name/aclk_ext_tog_kernel_02]  }
    if {[get_property CONFIG.NUM_CLOCKS $cell] > 3} {set_property CONFIG.FREQ_HZ [get_property CONFIG.FREQ_HZ [get_bd_pins $cell_name/clk_in_kernel_03]] [get_bd_pins $cell_name/aclk_ext_tog_kernel_03]  }
    if {[get_property CONFIG.NUM_CLOCKS $cell] > 4} {set_property CONFIG.FREQ_HZ [get_property CONFIG.FREQ_HZ [get_bd_pins $cell_name/clk_in_kernel_04]] [get_bd_pins $cell_name/aclk_ext_tog_kernel_04]  }
    if {[get_property CONFIG.NUM_CLOCKS $cell] > 5} {set_property CONFIG.FREQ_HZ [get_property CONFIG.FREQ_HZ [get_bd_pins $cell_name/clk_in_kernel_05]] [get_bd_pins $cell_name/aclk_ext_tog_kernel_05]  }
  }
}

