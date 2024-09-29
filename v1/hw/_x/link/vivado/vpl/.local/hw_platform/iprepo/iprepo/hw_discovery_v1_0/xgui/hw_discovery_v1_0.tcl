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

# Definitional proc to organize widgets for parameters.

proc init_gui { IPINST } {
	
  set Component_Name [ ipgui::add_param  $IPINST  -parent $IPINST -name Component_Name ]	
  
  #---> Adding Page -----------------------------------------------------------------------------------------------------------------------#

  set General_Config [ipgui::add_page $IPINST -name "General Config"]
  
  set C_NUM_PFS [ipgui::add_param $IPINST -name C_NUM_PFS -parent $General_Config]
  set_property tooltip  "Set the number of PFs"  $C_NUM_PFS      
  
  set C_CAP_BASE_ADDR [ipgui::add_param $IPINST -name C_CAP_BASE_ADDR -parent $General_Config]
  set_property tooltip  "Set the PCIe Extended Capability Base Address"  $C_CAP_BASE_ADDR   

  set C_NEXT_CAP_ADDR [ipgui::add_param $IPINST -name C_NEXT_CAP_ADDR -parent $General_Config]
  set_property tooltip  "Set the Next Capability Pointer. Leave at 0x000 if this is the last capability. Valid range is from (C_CAP_BASE_ADDR + 0x010) - 0xFFF"  $C_NEXT_CAP_ADDR   

  #---> Adding Page -----------------------------------------------------------------------------------------------------------------------#

  set PF0_Config [ipgui::add_page $IPINST -name "PF0 Configuration"]
  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF0_Group [ipgui::add_group $IPINST -name "PF0 - General Configuration" -parent $PF0_Config]  
  
		  set C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE [ipgui::add_param $IPINST -name C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE -parent $PF0_Group]
		  set_property tooltip  "Set the number of Table Entries to be implemented for PF0, excluding the End of Table identifier. i.e. when 1 only Table Entry 0 is implemented"  $C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE
		  
		  set C_PF0_BAR_INDEX [ipgui::add_param $IPINST -name C_PF0_BAR_INDEX -parent $PF0_Group]
		  set_property tooltip  "Set the BAR Index for PF0"  $C_PF0_BAR_INDEX
		
		  set C_PF0_LOW_OFFSET [ipgui::add_param $IPINST -name C_PF0_LOW_OFFSET -parent $PF0_Group]
		  set_property tooltip  "Set the Low Address Offset for PF0"  $C_PF0_LOW_OFFSET
		
		  set C_PF0_HIGH_OFFSET [ipgui::add_param $IPINST -name C_PF0_HIGH_OFFSET -parent $PF0_Group]
		  set_property tooltip  "Set the High Address Offset for PF0"  $C_PF0_HIGH_OFFSET  
		  
		  set C_PF0_HAS_UUID_ROM [ipgui::add_param $IPINST -name C_PF0_HAS_UUID_ROM -parent $PF0_Group]
		  set_property tooltip  "Set the Low Address Offset for PF0"  $C_PF0_HAS_UUID_ROM
		
			set C_PF0_UUID_ROM_INITIAL_VAL [ipgui::add_param $IPINST -name C_PF0_UUID_ROM_INITIAL_VAL -parent $PF0_Group]
			set_property tooltip  "Set a default 128-bit UUID to be initialized in the ROM during synthesis" $C_PF0_UUID_ROM_INITIAL_VAL
			
		  set C_PF0_S_AXI_DATA_WIDTH [ipgui::add_param $IPINST -name C_PF0_S_AXI_DATA_WIDTH -parent $PF0_Group]
		  set_property tooltip  "Set the AXI data width for PF0 AXI inteface"  $C_PF0_S_AXI_DATA_WIDTH
		
			set C_PF0_S_AXI_ADDR_WIDTH [ipgui::add_param $IPINST -name C_PF0_S_AXI_ADDR_WIDTH -parent $PF0_Group]
			set_property tooltip  "Set the AXI address width for PF0 AXI inteface" $C_PF0_S_AXI_ADDR_WIDTH			
		
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF0_Table_0_Group [ipgui::add_group $IPINST -name "PF0 - Table Entry 0 Configuration" -parent $PF0_Config]  
 
		  set C_PF0_ENTRY_TYPE_0 [ipgui::add_param $IPINST -name C_PF0_ENTRY_TYPE_0 -parent $PF0_Table_0_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF0_ENTRY_TYPE_0
		
		  set C_PF0_ENTRY_BAR_0 [ipgui::add_param $IPINST -name C_PF0_ENTRY_BAR_0 -parent $PF0_Table_0_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF0_ENTRY_BAR_0
		
		  set C_PF0_ENTRY_ADDR_0 [ipgui::add_param $IPINST -name C_PF0_ENTRY_ADDR_0 -parent $PF0_Table_0_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF0_ENTRY_ADDR_0
		
		  set C_PF0_ENTRY_VERSION_TYPE_0 [ipgui::add_param $IPINST -name C_PF0_ENTRY_VERSION_TYPE_0 -parent $PF0_Table_0_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF0_ENTRY_VERSION_TYPE_0
		
		  set C_PF0_ENTRY_MAJOR_VERSION_0 [ipgui::add_param $IPINST -name C_PF0_ENTRY_MAJOR_VERSION_0 -parent $PF0_Table_0_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF0_ENTRY_MAJOR_VERSION_0
		
		  set C_PF0_ENTRY_MINOR_VERSION_0 [ipgui::add_param $IPINST -name C_PF0_ENTRY_MINOR_VERSION_0 -parent $PF0_Table_0_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF0_ENTRY_MINOR_VERSION_0
		
		  set C_PF0_ENTRY_RSVD0_0 [ipgui::add_param $IPINST -name C_PF0_ENTRY_RSVD0_0 -parent $PF0_Table_0_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF0_ENTRY_RSVD0_0
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF0_Table_1_Group [ipgui::add_group $IPINST -name "PF0 - Table Entry 1 Configuration" -parent $PF0_Config]  
 
		  set C_PF0_ENTRY_TYPE_1 [ipgui::add_param $IPINST -name C_PF0_ENTRY_TYPE_1 -parent $PF0_Table_1_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF0_ENTRY_TYPE_1
		
		  set C_PF0_ENTRY_BAR_1 [ipgui::add_param $IPINST -name C_PF0_ENTRY_BAR_1 -parent $PF0_Table_1_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF0_ENTRY_BAR_1
		
		  set C_PF0_ENTRY_ADDR_1 [ipgui::add_param $IPINST -name C_PF0_ENTRY_ADDR_1 -parent $PF0_Table_1_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF0_ENTRY_ADDR_1
		
		  set C_PF0_ENTRY_VERSION_TYPE_1 [ipgui::add_param $IPINST -name C_PF0_ENTRY_VERSION_TYPE_1 -parent $PF0_Table_1_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF0_ENTRY_VERSION_TYPE_1
		
		  set C_PF0_ENTRY_MAJOR_VERSION_1 [ipgui::add_param $IPINST -name C_PF0_ENTRY_MAJOR_VERSION_1 -parent $PF0_Table_1_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF0_ENTRY_MAJOR_VERSION_1
		
		  set C_PF0_ENTRY_MINOR_VERSION_1 [ipgui::add_param $IPINST -name C_PF0_ENTRY_MINOR_VERSION_1 -parent $PF0_Table_1_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF0_ENTRY_MINOR_VERSION_1
		
		  set C_PF0_ENTRY_RSVD0_1 [ipgui::add_param $IPINST -name C_PF0_ENTRY_RSVD0_1 -parent $PF0_Table_1_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF0_ENTRY_RSVD0_1
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF0_Table_2_Group [ipgui::add_group $IPINST -name "PF0 - Table Entry 2 Configuration" -parent $PF0_Config]  
 
		  set C_PF0_ENTRY_TYPE_2 [ipgui::add_param $IPINST -name C_PF0_ENTRY_TYPE_2 -parent $PF0_Table_2_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF0_ENTRY_TYPE_2
		
		  set C_PF0_ENTRY_BAR_2 [ipgui::add_param $IPINST -name C_PF0_ENTRY_BAR_2 -parent $PF0_Table_2_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF0_ENTRY_BAR_2
		
		  set C_PF0_ENTRY_ADDR_2 [ipgui::add_param $IPINST -name C_PF0_ENTRY_ADDR_2 -parent $PF0_Table_2_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF0_ENTRY_ADDR_2
		
		  set C_PF0_ENTRY_VERSION_TYPE_2 [ipgui::add_param $IPINST -name C_PF0_ENTRY_VERSION_TYPE_2 -parent $PF0_Table_2_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF0_ENTRY_VERSION_TYPE_2
		
		  set C_PF0_ENTRY_MAJOR_VERSION_2 [ipgui::add_param $IPINST -name C_PF0_ENTRY_MAJOR_VERSION_2 -parent $PF0_Table_2_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF0_ENTRY_MAJOR_VERSION_2
		
		  set C_PF0_ENTRY_MINOR_VERSION_2 [ipgui::add_param $IPINST -name C_PF0_ENTRY_MINOR_VERSION_2 -parent $PF0_Table_2_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF0_ENTRY_MINOR_VERSION_2
		
		  set C_PF0_ENTRY_RSVD0_2 [ipgui::add_param $IPINST -name C_PF0_ENTRY_RSVD0_2 -parent $PF0_Table_2_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF0_ENTRY_RSVD0_2
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF0_Table_3_Group [ipgui::add_group $IPINST -name "PF0 - Table Entry 3 Configuration" -parent $PF0_Config]  
 
		  set C_PF0_ENTRY_TYPE_3 [ipgui::add_param $IPINST -name C_PF0_ENTRY_TYPE_3 -parent $PF0_Table_3_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF0_ENTRY_TYPE_3
		
		  set C_PF0_ENTRY_BAR_3 [ipgui::add_param $IPINST -name C_PF0_ENTRY_BAR_3 -parent $PF0_Table_3_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF0_ENTRY_BAR_3
		
		  set C_PF0_ENTRY_ADDR_3 [ipgui::add_param $IPINST -name C_PF0_ENTRY_ADDR_3 -parent $PF0_Table_3_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF0_ENTRY_ADDR_3
		
		  set C_PF0_ENTRY_VERSION_TYPE_3 [ipgui::add_param $IPINST -name C_PF0_ENTRY_VERSION_TYPE_3 -parent $PF0_Table_3_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF0_ENTRY_VERSION_TYPE_3
		
		  set C_PF0_ENTRY_MAJOR_VERSION_3 [ipgui::add_param $IPINST -name C_PF0_ENTRY_MAJOR_VERSION_3 -parent $PF0_Table_3_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF0_ENTRY_MAJOR_VERSION_3
		
		  set C_PF0_ENTRY_MINOR_VERSION_3 [ipgui::add_param $IPINST -name C_PF0_ENTRY_MINOR_VERSION_3 -parent $PF0_Table_3_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF0_ENTRY_MINOR_VERSION_3
		
		  set C_PF0_ENTRY_RSVD0_3 [ipgui::add_param $IPINST -name C_PF0_ENTRY_RSVD0_3 -parent $PF0_Table_3_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF0_ENTRY_RSVD0_3
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF0_Table_4_Group [ipgui::add_group $IPINST -name "PF0 - Table Entry 4 Configuration" -parent $PF0_Config]  
 
		  set C_PF0_ENTRY_TYPE_4 [ipgui::add_param $IPINST -name C_PF0_ENTRY_TYPE_4 -parent $PF0_Table_4_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF0_ENTRY_TYPE_4
		
		  set C_PF0_ENTRY_BAR_4 [ipgui::add_param $IPINST -name C_PF0_ENTRY_BAR_4 -parent $PF0_Table_4_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF0_ENTRY_BAR_4
		
		  set C_PF0_ENTRY_ADDR_4 [ipgui::add_param $IPINST -name C_PF0_ENTRY_ADDR_4 -parent $PF0_Table_4_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF0_ENTRY_ADDR_4
		
		  set C_PF0_ENTRY_VERSION_TYPE_4 [ipgui::add_param $IPINST -name C_PF0_ENTRY_VERSION_TYPE_4 -parent $PF0_Table_4_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF0_ENTRY_VERSION_TYPE_4
		
		  set C_PF0_ENTRY_MAJOR_VERSION_4 [ipgui::add_param $IPINST -name C_PF0_ENTRY_MAJOR_VERSION_4 -parent $PF0_Table_4_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF0_ENTRY_MAJOR_VERSION_4
		
		  set C_PF0_ENTRY_MINOR_VERSION_4 [ipgui::add_param $IPINST -name C_PF0_ENTRY_MINOR_VERSION_4 -parent $PF0_Table_4_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF0_ENTRY_MINOR_VERSION_4
		
		  set C_PF0_ENTRY_RSVD0_4 [ipgui::add_param $IPINST -name C_PF0_ENTRY_RSVD0_4 -parent $PF0_Table_4_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF0_ENTRY_RSVD0_4
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF0_Table_5_Group [ipgui::add_group $IPINST -name "PF0 - Table Entry 5 Configuration" -parent $PF0_Config]  
 
		  set C_PF0_ENTRY_TYPE_5 [ipgui::add_param $IPINST -name C_PF0_ENTRY_TYPE_5 -parent $PF0_Table_5_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF0_ENTRY_TYPE_5
		
		  set C_PF0_ENTRY_BAR_5 [ipgui::add_param $IPINST -name C_PF0_ENTRY_BAR_5 -parent $PF0_Table_5_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF0_ENTRY_BAR_5
		
		  set C_PF0_ENTRY_ADDR_5 [ipgui::add_param $IPINST -name C_PF0_ENTRY_ADDR_5 -parent $PF0_Table_5_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF0_ENTRY_ADDR_5
		
		  set C_PF0_ENTRY_VERSION_TYPE_5 [ipgui::add_param $IPINST -name C_PF0_ENTRY_VERSION_TYPE_5 -parent $PF0_Table_5_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF0_ENTRY_VERSION_TYPE_5
		
		  set C_PF0_ENTRY_MAJOR_VERSION_5 [ipgui::add_param $IPINST -name C_PF0_ENTRY_MAJOR_VERSION_5 -parent $PF0_Table_5_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF0_ENTRY_MAJOR_VERSION_5
		
		  set C_PF0_ENTRY_MINOR_VERSION_5 [ipgui::add_param $IPINST -name C_PF0_ENTRY_MINOR_VERSION_5 -parent $PF0_Table_5_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF0_ENTRY_MINOR_VERSION_5
		
		  set C_PF0_ENTRY_RSVD0_5 [ipgui::add_param $IPINST -name C_PF0_ENTRY_RSVD0_5 -parent $PF0_Table_5_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF0_ENTRY_RSVD0_5
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF0_Table_6_Group [ipgui::add_group $IPINST -name "PF0 - Table Entry 6 Configuration" -parent $PF0_Config]  
 
		  set C_PF0_ENTRY_TYPE_6 [ipgui::add_param $IPINST -name C_PF0_ENTRY_TYPE_6 -parent $PF0_Table_6_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF0_ENTRY_TYPE_6
		
		  set C_PF0_ENTRY_BAR_6 [ipgui::add_param $IPINST -name C_PF0_ENTRY_BAR_6 -parent $PF0_Table_6_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF0_ENTRY_BAR_6
		
		  set C_PF0_ENTRY_ADDR_6 [ipgui::add_param $IPINST -name C_PF0_ENTRY_ADDR_6 -parent $PF0_Table_6_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF0_ENTRY_ADDR_6
		
		  set C_PF0_ENTRY_VERSION_TYPE_6 [ipgui::add_param $IPINST -name C_PF0_ENTRY_VERSION_TYPE_6 -parent $PF0_Table_6_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF0_ENTRY_VERSION_TYPE_6
		
		  set C_PF0_ENTRY_MAJOR_VERSION_6 [ipgui::add_param $IPINST -name C_PF0_ENTRY_MAJOR_VERSION_6 -parent $PF0_Table_6_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF0_ENTRY_MAJOR_VERSION_6
		
		  set C_PF0_ENTRY_MINOR_VERSION_6 [ipgui::add_param $IPINST -name C_PF0_ENTRY_MINOR_VERSION_6 -parent $PF0_Table_6_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF0_ENTRY_MINOR_VERSION_6
		
		  set C_PF0_ENTRY_RSVD0_6 [ipgui::add_param $IPINST -name C_PF0_ENTRY_RSVD0_6 -parent $PF0_Table_6_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF0_ENTRY_RSVD0_6
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF0_Table_7_Group [ipgui::add_group $IPINST -name "PF0 - Table Entry 7 Configuration" -parent $PF0_Config]  
 
		  set C_PF0_ENTRY_TYPE_7 [ipgui::add_param $IPINST -name C_PF0_ENTRY_TYPE_7 -parent $PF0_Table_7_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF0_ENTRY_TYPE_7
		
		  set C_PF0_ENTRY_BAR_7 [ipgui::add_param $IPINST -name C_PF0_ENTRY_BAR_7 -parent $PF0_Table_7_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF0_ENTRY_BAR_7
		
		  set C_PF0_ENTRY_ADDR_7 [ipgui::add_param $IPINST -name C_PF0_ENTRY_ADDR_7 -parent $PF0_Table_7_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF0_ENTRY_ADDR_7
		
		  set C_PF0_ENTRY_VERSION_TYPE_7 [ipgui::add_param $IPINST -name C_PF0_ENTRY_VERSION_TYPE_7 -parent $PF0_Table_7_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF0_ENTRY_VERSION_TYPE_7
		
		  set C_PF0_ENTRY_MAJOR_VERSION_7 [ipgui::add_param $IPINST -name C_PF0_ENTRY_MAJOR_VERSION_7 -parent $PF0_Table_7_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF0_ENTRY_MAJOR_VERSION_7
		
		  set C_PF0_ENTRY_MINOR_VERSION_7 [ipgui::add_param $IPINST -name C_PF0_ENTRY_MINOR_VERSION_7 -parent $PF0_Table_7_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF0_ENTRY_MINOR_VERSION_7
		
		  set C_PF0_ENTRY_RSVD0_7 [ipgui::add_param $IPINST -name C_PF0_ENTRY_RSVD0_7 -parent $PF0_Table_7_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF0_ENTRY_RSVD0_7
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF0_Table_8_Group [ipgui::add_group $IPINST -name "PF0 - Table Entry 8 Configuration" -parent $PF0_Config]  
 
		  set C_PF0_ENTRY_TYPE_8 [ipgui::add_param $IPINST -name C_PF0_ENTRY_TYPE_8 -parent $PF0_Table_8_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF0_ENTRY_TYPE_8
		
		  set C_PF0_ENTRY_BAR_8 [ipgui::add_param $IPINST -name C_PF0_ENTRY_BAR_8 -parent $PF0_Table_8_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF0_ENTRY_BAR_8
		
		  set C_PF0_ENTRY_ADDR_8 [ipgui::add_param $IPINST -name C_PF0_ENTRY_ADDR_8 -parent $PF0_Table_8_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF0_ENTRY_ADDR_8
		
		  set C_PF0_ENTRY_VERSION_TYPE_8 [ipgui::add_param $IPINST -name C_PF0_ENTRY_VERSION_TYPE_8 -parent $PF0_Table_8_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF0_ENTRY_VERSION_TYPE_8
		
		  set C_PF0_ENTRY_MAJOR_VERSION_8 [ipgui::add_param $IPINST -name C_PF0_ENTRY_MAJOR_VERSION_8 -parent $PF0_Table_8_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF0_ENTRY_MAJOR_VERSION_8
		
		  set C_PF0_ENTRY_MINOR_VERSION_8 [ipgui::add_param $IPINST -name C_PF0_ENTRY_MINOR_VERSION_8 -parent $PF0_Table_8_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF0_ENTRY_MINOR_VERSION_8
		
		  set C_PF0_ENTRY_RSVD0_8 [ipgui::add_param $IPINST -name C_PF0_ENTRY_RSVD0_8 -parent $PF0_Table_8_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF0_ENTRY_RSVD0_8
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF0_Table_9_Group [ipgui::add_group $IPINST -name "PF0 - Table Entry 9 Configuration" -parent $PF0_Config]  
 
		  set C_PF0_ENTRY_TYPE_9 [ipgui::add_param $IPINST -name C_PF0_ENTRY_TYPE_9 -parent $PF0_Table_9_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF0_ENTRY_TYPE_9
		
		  set C_PF0_ENTRY_BAR_9 [ipgui::add_param $IPINST -name C_PF0_ENTRY_BAR_9 -parent $PF0_Table_9_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF0_ENTRY_BAR_9
		
		  set C_PF0_ENTRY_ADDR_9 [ipgui::add_param $IPINST -name C_PF0_ENTRY_ADDR_9 -parent $PF0_Table_9_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF0_ENTRY_ADDR_9
		
		  set C_PF0_ENTRY_VERSION_TYPE_9 [ipgui::add_param $IPINST -name C_PF0_ENTRY_VERSION_TYPE_9 -parent $PF0_Table_9_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF0_ENTRY_VERSION_TYPE_9
		
		  set C_PF0_ENTRY_MAJOR_VERSION_9 [ipgui::add_param $IPINST -name C_PF0_ENTRY_MAJOR_VERSION_9 -parent $PF0_Table_9_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF0_ENTRY_MAJOR_VERSION_9
		
		  set C_PF0_ENTRY_MINOR_VERSION_9 [ipgui::add_param $IPINST -name C_PF0_ENTRY_MINOR_VERSION_9 -parent $PF0_Table_9_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF0_ENTRY_MINOR_VERSION_9
		
		  set C_PF0_ENTRY_RSVD0_9 [ipgui::add_param $IPINST -name C_PF0_ENTRY_RSVD0_9 -parent $PF0_Table_9_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF0_ENTRY_RSVD0_9
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF0_Table_10_Group [ipgui::add_group $IPINST -name "PF0 - Table Entry 10 Configuration" -parent $PF0_Config]  
 
		  set C_PF0_ENTRY_TYPE_10 [ipgui::add_param $IPINST -name C_PF0_ENTRY_TYPE_10 -parent $PF0_Table_10_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF0_ENTRY_TYPE_10
		
		  set C_PF0_ENTRY_BAR_10 [ipgui::add_param $IPINST -name C_PF0_ENTRY_BAR_10 -parent $PF0_Table_10_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF0_ENTRY_BAR_10
		
		  set C_PF0_ENTRY_ADDR_10 [ipgui::add_param $IPINST -name C_PF0_ENTRY_ADDR_10 -parent $PF0_Table_10_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF0_ENTRY_ADDR_10
		
		  set C_PF0_ENTRY_VERSION_TYPE_10 [ipgui::add_param $IPINST -name C_PF0_ENTRY_VERSION_TYPE_10 -parent $PF0_Table_10_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF0_ENTRY_VERSION_TYPE_10
		
		  set C_PF0_ENTRY_MAJOR_VERSION_10 [ipgui::add_param $IPINST -name C_PF0_ENTRY_MAJOR_VERSION_10 -parent $PF0_Table_10_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF0_ENTRY_MAJOR_VERSION_10
		
		  set C_PF0_ENTRY_MINOR_VERSION_10 [ipgui::add_param $IPINST -name C_PF0_ENTRY_MINOR_VERSION_10 -parent $PF0_Table_10_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF0_ENTRY_MINOR_VERSION_10
		
		  set C_PF0_ENTRY_RSVD0_10 [ipgui::add_param $IPINST -name C_PF0_ENTRY_RSVD0_10 -parent $PF0_Table_10_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF0_ENTRY_RSVD0_10
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF0_Table_11_Group [ipgui::add_group $IPINST -name "PF0 - Table Entry 11 Configuration" -parent $PF0_Config]  
 
		  set C_PF0_ENTRY_TYPE_11 [ipgui::add_param $IPINST -name C_PF0_ENTRY_TYPE_11 -parent $PF0_Table_11_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF0_ENTRY_TYPE_11
		
		  set C_PF0_ENTRY_BAR_11 [ipgui::add_param $IPINST -name C_PF0_ENTRY_BAR_11 -parent $PF0_Table_11_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF0_ENTRY_BAR_11
		
		  set C_PF0_ENTRY_ADDR_11 [ipgui::add_param $IPINST -name C_PF0_ENTRY_ADDR_11 -parent $PF0_Table_11_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF0_ENTRY_ADDR_11
		
		  set C_PF0_ENTRY_VERSION_TYPE_11 [ipgui::add_param $IPINST -name C_PF0_ENTRY_VERSION_TYPE_11 -parent $PF0_Table_11_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF0_ENTRY_VERSION_TYPE_11
		
		  set C_PF0_ENTRY_MAJOR_VERSION_11 [ipgui::add_param $IPINST -name C_PF0_ENTRY_MAJOR_VERSION_11 -parent $PF0_Table_11_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF0_ENTRY_MAJOR_VERSION_11
		
		  set C_PF0_ENTRY_MINOR_VERSION_11 [ipgui::add_param $IPINST -name C_PF0_ENTRY_MINOR_VERSION_11 -parent $PF0_Table_11_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF0_ENTRY_MINOR_VERSION_11
		
		  set C_PF0_ENTRY_RSVD0_11 [ipgui::add_param $IPINST -name C_PF0_ENTRY_RSVD0_11 -parent $PF0_Table_11_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF0_ENTRY_RSVD0_11
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF0_Table_12_Group [ipgui::add_group $IPINST -name "PF0 - Table Entry 12 Configuration" -parent $PF0_Config]  
 
		  set C_PF0_ENTRY_TYPE_12 [ipgui::add_param $IPINST -name C_PF0_ENTRY_TYPE_12 -parent $PF0_Table_12_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF0_ENTRY_TYPE_12
		
		  set C_PF0_ENTRY_BAR_12 [ipgui::add_param $IPINST -name C_PF0_ENTRY_BAR_12 -parent $PF0_Table_12_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF0_ENTRY_BAR_12
		
		  set C_PF0_ENTRY_ADDR_12 [ipgui::add_param $IPINST -name C_PF0_ENTRY_ADDR_12 -parent $PF0_Table_12_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF0_ENTRY_ADDR_12
		
		  set C_PF0_ENTRY_VERSION_TYPE_12 [ipgui::add_param $IPINST -name C_PF0_ENTRY_VERSION_TYPE_12 -parent $PF0_Table_12_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF0_ENTRY_VERSION_TYPE_12
		
		  set C_PF0_ENTRY_MAJOR_VERSION_12 [ipgui::add_param $IPINST -name C_PF0_ENTRY_MAJOR_VERSION_12 -parent $PF0_Table_12_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF0_ENTRY_MAJOR_VERSION_12
		
		  set C_PF0_ENTRY_MINOR_VERSION_12 [ipgui::add_param $IPINST -name C_PF0_ENTRY_MINOR_VERSION_12 -parent $PF0_Table_12_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF0_ENTRY_MINOR_VERSION_12
		
		  set C_PF0_ENTRY_RSVD0_12 [ipgui::add_param $IPINST -name C_PF0_ENTRY_RSVD0_12 -parent $PF0_Table_12_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF0_ENTRY_RSVD0_12
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF0_Table_13_Group [ipgui::add_group $IPINST -name "PF0 - Table Entry 13 Configuration" -parent $PF0_Config]  
 
		  set C_PF0_ENTRY_TYPE_13 [ipgui::add_param $IPINST -name C_PF0_ENTRY_TYPE_13 -parent $PF0_Table_13_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF0_ENTRY_TYPE_13
		
		  set C_PF0_ENTRY_BAR_13 [ipgui::add_param $IPINST -name C_PF0_ENTRY_BAR_13 -parent $PF0_Table_13_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF0_ENTRY_BAR_13
		
		  set C_PF0_ENTRY_ADDR_13 [ipgui::add_param $IPINST -name C_PF0_ENTRY_ADDR_13 -parent $PF0_Table_13_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF0_ENTRY_ADDR_13
		
		  set C_PF0_ENTRY_VERSION_TYPE_13 [ipgui::add_param $IPINST -name C_PF0_ENTRY_VERSION_TYPE_13 -parent $PF0_Table_13_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF0_ENTRY_VERSION_TYPE_13
		
		  set C_PF0_ENTRY_MAJOR_VERSION_13 [ipgui::add_param $IPINST -name C_PF0_ENTRY_MAJOR_VERSION_13 -parent $PF0_Table_13_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF0_ENTRY_MAJOR_VERSION_13
		
		  set C_PF0_ENTRY_MINOR_VERSION_13 [ipgui::add_param $IPINST -name C_PF0_ENTRY_MINOR_VERSION_13 -parent $PF0_Table_13_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF0_ENTRY_MINOR_VERSION_13
		
		  set C_PF0_ENTRY_RSVD0_13 [ipgui::add_param $IPINST -name C_PF0_ENTRY_RSVD0_13 -parent $PF0_Table_13_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF0_ENTRY_RSVD0_13
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF0_Table_14_Group [ipgui::add_group $IPINST -name "PF0 - Table Entry 14 Configuration" -parent $PF0_Config]  
 
		  set C_PF0_ENTRY_TYPE_14 [ipgui::add_param $IPINST -name C_PF0_ENTRY_TYPE_14 -parent $PF0_Table_14_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF0_ENTRY_TYPE_14
		
		  set C_PF0_ENTRY_BAR_14 [ipgui::add_param $IPINST -name C_PF0_ENTRY_BAR_14 -parent $PF0_Table_14_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF0_ENTRY_BAR_14
		
		  set C_PF0_ENTRY_ADDR_14 [ipgui::add_param $IPINST -name C_PF0_ENTRY_ADDR_14 -parent $PF0_Table_14_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF0_ENTRY_ADDR_14
		
		  set C_PF0_ENTRY_VERSION_TYPE_14 [ipgui::add_param $IPINST -name C_PF0_ENTRY_VERSION_TYPE_14 -parent $PF0_Table_14_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF0_ENTRY_VERSION_TYPE_14
		
		  set C_PF0_ENTRY_MAJOR_VERSION_14 [ipgui::add_param $IPINST -name C_PF0_ENTRY_MAJOR_VERSION_14 -parent $PF0_Table_14_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF0_ENTRY_MAJOR_VERSION_14
		
		  set C_PF0_ENTRY_MINOR_VERSION_14 [ipgui::add_param $IPINST -name C_PF0_ENTRY_MINOR_VERSION_14 -parent $PF0_Table_14_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF0_ENTRY_MINOR_VERSION_14
		
		  set C_PF0_ENTRY_RSVD0_14 [ipgui::add_param $IPINST -name C_PF0_ENTRY_RSVD0_14 -parent $PF0_Table_14_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF0_ENTRY_RSVD0_14
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF0_Table_15_Group [ipgui::add_group $IPINST -name "PF0 - Table Entry 15 Configuration" -parent $PF0_Config]  
 
		  set C_PF0_ENTRY_TYPE_15 [ipgui::add_param $IPINST -name C_PF0_ENTRY_TYPE_15 -parent $PF0_Table_15_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF0_ENTRY_TYPE_15
		
		  set C_PF0_ENTRY_BAR_15 [ipgui::add_param $IPINST -name C_PF0_ENTRY_BAR_15 -parent $PF0_Table_15_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF0_ENTRY_BAR_15
		
		  set C_PF0_ENTRY_ADDR_15 [ipgui::add_param $IPINST -name C_PF0_ENTRY_ADDR_15 -parent $PF0_Table_15_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF0_ENTRY_ADDR_15
		
		  set C_PF0_ENTRY_VERSION_TYPE_15 [ipgui::add_param $IPINST -name C_PF0_ENTRY_VERSION_TYPE_15 -parent $PF0_Table_15_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF0_ENTRY_VERSION_TYPE_15
		
		  set C_PF0_ENTRY_MAJOR_VERSION_15 [ipgui::add_param $IPINST -name C_PF0_ENTRY_MAJOR_VERSION_15 -parent $PF0_Table_15_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF0_ENTRY_MAJOR_VERSION_15
		
		  set C_PF0_ENTRY_MINOR_VERSION_15 [ipgui::add_param $IPINST -name C_PF0_ENTRY_MINOR_VERSION_15 -parent $PF0_Table_15_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF0_ENTRY_MINOR_VERSION_15
		
		  set C_PF0_ENTRY_RSVD0_15 [ipgui::add_param $IPINST -name C_PF0_ENTRY_RSVD0_15 -parent $PF0_Table_15_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF0_ENTRY_RSVD0_15
		  
  #---> Adding Page -----------------------------------------------------------------------------------------------------------------------#

  set PF1_Config [ipgui::add_page $IPINST -name "PF1 Configuration"]
  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF1_Group [ipgui::add_group $IPINST -name "PF1 - General Configuration" -parent $PF1_Config]  
  
		  set C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE [ipgui::add_param $IPINST -name C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE -parent $PF1_Group]
		  set_property tooltip  "Set the number of Table Entries to be implemented for PF1, excluding the End of Table identifier. i.e. when 1 only Table Entry 0 is implemented"  $C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE
		  
		  set C_PF1_BAR_INDEX [ipgui::add_param $IPINST -name C_PF1_BAR_INDEX -parent $PF1_Group]
		  set_property tooltip  "Set the BAR Index for PF1"  $C_PF1_BAR_INDEX
		
		  set C_PF1_LOW_OFFSET [ipgui::add_param $IPINST -name C_PF1_LOW_OFFSET -parent $PF1_Group]
		  set_property tooltip  "Set the Low Address Offset for PF1"  $C_PF1_LOW_OFFSET
		
		  set C_PF1_HIGH_OFFSET [ipgui::add_param $IPINST -name C_PF1_HIGH_OFFSET -parent $PF1_Group]
		  set_property tooltip  "Set the High Address Offset for PF1"  $C_PF1_HIGH_OFFSET  
		  
		  set C_PF1_HAS_UUID_ROM [ipgui::add_param $IPINST -name C_PF1_HAS_UUID_ROM -parent $PF1_Group]
		  set_property tooltip  "Set the Low Address Offset for PF1"  $C_PF1_HAS_UUID_ROM
		
			set C_PF1_UUID_ROM_INITIAL_VAL [ipgui::add_param $IPINST -name C_PF1_UUID_ROM_INITIAL_VAL -parent $PF1_Group]
			set_property tooltip  "Set a default 128-bit UUID to be initialized in the ROM during synthesis" $C_PF1_UUID_ROM_INITIAL_VAL
			
		  set C_PF1_S_AXI_DATA_WIDTH [ipgui::add_param $IPINST -name C_PF1_S_AXI_DATA_WIDTH -parent $PF1_Group]
		  set_property tooltip  "Set the AXI data width for PF1 AXI inteface"  $C_PF1_S_AXI_DATA_WIDTH
		
			set C_PF1_S_AXI_ADDR_WIDTH [ipgui::add_param $IPINST -name C_PF1_S_AXI_ADDR_WIDTH -parent $PF1_Group]
			set_property tooltip  "Set the AXI address width for PF1 AXI inteface" $C_PF1_S_AXI_ADDR_WIDTH			
		
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF1_Table_0_Group [ipgui::add_group $IPINST -name "PF1 - Table Entry 0 Configuration" -parent $PF1_Config]  
 
		  set C_PF1_ENTRY_TYPE_0 [ipgui::add_param $IPINST -name C_PF1_ENTRY_TYPE_0 -parent $PF1_Table_0_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF1_ENTRY_TYPE_0
		
		  set C_PF1_ENTRY_BAR_0 [ipgui::add_param $IPINST -name C_PF1_ENTRY_BAR_0 -parent $PF1_Table_0_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF1_ENTRY_BAR_0
		
		  set C_PF1_ENTRY_ADDR_0 [ipgui::add_param $IPINST -name C_PF1_ENTRY_ADDR_0 -parent $PF1_Table_0_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF1_ENTRY_ADDR_0
		
		  set C_PF1_ENTRY_VERSION_TYPE_0 [ipgui::add_param $IPINST -name C_PF1_ENTRY_VERSION_TYPE_0 -parent $PF1_Table_0_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF1_ENTRY_VERSION_TYPE_0
		
		  set C_PF1_ENTRY_MAJOR_VERSION_0 [ipgui::add_param $IPINST -name C_PF1_ENTRY_MAJOR_VERSION_0 -parent $PF1_Table_0_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF1_ENTRY_MAJOR_VERSION_0
		
		  set C_PF1_ENTRY_MINOR_VERSION_0 [ipgui::add_param $IPINST -name C_PF1_ENTRY_MINOR_VERSION_0 -parent $PF1_Table_0_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF1_ENTRY_MINOR_VERSION_0
		
		  set C_PF1_ENTRY_RSVD0_0 [ipgui::add_param $IPINST -name C_PF1_ENTRY_RSVD0_0 -parent $PF1_Table_0_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF1_ENTRY_RSVD0_0
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF1_Table_1_Group [ipgui::add_group $IPINST -name "PF1 - Table Entry 1 Configuration" -parent $PF1_Config]  
 
		  set C_PF1_ENTRY_TYPE_1 [ipgui::add_param $IPINST -name C_PF1_ENTRY_TYPE_1 -parent $PF1_Table_1_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF1_ENTRY_TYPE_1
		
		  set C_PF1_ENTRY_BAR_1 [ipgui::add_param $IPINST -name C_PF1_ENTRY_BAR_1 -parent $PF1_Table_1_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF1_ENTRY_BAR_1
		
		  set C_PF1_ENTRY_ADDR_1 [ipgui::add_param $IPINST -name C_PF1_ENTRY_ADDR_1 -parent $PF1_Table_1_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF1_ENTRY_ADDR_1
		
		  set C_PF1_ENTRY_VERSION_TYPE_1 [ipgui::add_param $IPINST -name C_PF1_ENTRY_VERSION_TYPE_1 -parent $PF1_Table_1_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF1_ENTRY_VERSION_TYPE_1
		
		  set C_PF1_ENTRY_MAJOR_VERSION_1 [ipgui::add_param $IPINST -name C_PF1_ENTRY_MAJOR_VERSION_1 -parent $PF1_Table_1_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF1_ENTRY_MAJOR_VERSION_1
		
		  set C_PF1_ENTRY_MINOR_VERSION_1 [ipgui::add_param $IPINST -name C_PF1_ENTRY_MINOR_VERSION_1 -parent $PF1_Table_1_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF1_ENTRY_MINOR_VERSION_1
		
		  set C_PF1_ENTRY_RSVD0_1 [ipgui::add_param $IPINST -name C_PF1_ENTRY_RSVD0_1 -parent $PF1_Table_1_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF1_ENTRY_RSVD0_1
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF1_Table_2_Group [ipgui::add_group $IPINST -name "PF1 - Table Entry 2 Configuration" -parent $PF1_Config]  
 
		  set C_PF1_ENTRY_TYPE_2 [ipgui::add_param $IPINST -name C_PF1_ENTRY_TYPE_2 -parent $PF1_Table_2_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF1_ENTRY_TYPE_2
		
		  set C_PF1_ENTRY_BAR_2 [ipgui::add_param $IPINST -name C_PF1_ENTRY_BAR_2 -parent $PF1_Table_2_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF1_ENTRY_BAR_2
		
		  set C_PF1_ENTRY_ADDR_2 [ipgui::add_param $IPINST -name C_PF1_ENTRY_ADDR_2 -parent $PF1_Table_2_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF1_ENTRY_ADDR_2
		
		  set C_PF1_ENTRY_VERSION_TYPE_2 [ipgui::add_param $IPINST -name C_PF1_ENTRY_VERSION_TYPE_2 -parent $PF1_Table_2_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF1_ENTRY_VERSION_TYPE_2
		
		  set C_PF1_ENTRY_MAJOR_VERSION_2 [ipgui::add_param $IPINST -name C_PF1_ENTRY_MAJOR_VERSION_2 -parent $PF1_Table_2_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF1_ENTRY_MAJOR_VERSION_2
		
		  set C_PF1_ENTRY_MINOR_VERSION_2 [ipgui::add_param $IPINST -name C_PF1_ENTRY_MINOR_VERSION_2 -parent $PF1_Table_2_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF1_ENTRY_MINOR_VERSION_2
		
		  set C_PF1_ENTRY_RSVD0_2 [ipgui::add_param $IPINST -name C_PF1_ENTRY_RSVD0_2 -parent $PF1_Table_2_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF1_ENTRY_RSVD0_2
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF1_Table_3_Group [ipgui::add_group $IPINST -name "PF1 - Table Entry 3 Configuration" -parent $PF1_Config]  
 
		  set C_PF1_ENTRY_TYPE_3 [ipgui::add_param $IPINST -name C_PF1_ENTRY_TYPE_3 -parent $PF1_Table_3_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF1_ENTRY_TYPE_3
		
		  set C_PF1_ENTRY_BAR_3 [ipgui::add_param $IPINST -name C_PF1_ENTRY_BAR_3 -parent $PF1_Table_3_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF1_ENTRY_BAR_3
		
		  set C_PF1_ENTRY_ADDR_3 [ipgui::add_param $IPINST -name C_PF1_ENTRY_ADDR_3 -parent $PF1_Table_3_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF1_ENTRY_ADDR_3
		
		  set C_PF1_ENTRY_VERSION_TYPE_3 [ipgui::add_param $IPINST -name C_PF1_ENTRY_VERSION_TYPE_3 -parent $PF1_Table_3_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF1_ENTRY_VERSION_TYPE_3
		
		  set C_PF1_ENTRY_MAJOR_VERSION_3 [ipgui::add_param $IPINST -name C_PF1_ENTRY_MAJOR_VERSION_3 -parent $PF1_Table_3_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF1_ENTRY_MAJOR_VERSION_3
		
		  set C_PF1_ENTRY_MINOR_VERSION_3 [ipgui::add_param $IPINST -name C_PF1_ENTRY_MINOR_VERSION_3 -parent $PF1_Table_3_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF1_ENTRY_MINOR_VERSION_3
		
		  set C_PF1_ENTRY_RSVD0_3 [ipgui::add_param $IPINST -name C_PF1_ENTRY_RSVD0_3 -parent $PF1_Table_3_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF1_ENTRY_RSVD0_3
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF1_Table_4_Group [ipgui::add_group $IPINST -name "PF1 - Table Entry 4 Configuration" -parent $PF1_Config]  
 
		  set C_PF1_ENTRY_TYPE_4 [ipgui::add_param $IPINST -name C_PF1_ENTRY_TYPE_4 -parent $PF1_Table_4_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF1_ENTRY_TYPE_4
		
		  set C_PF1_ENTRY_BAR_4 [ipgui::add_param $IPINST -name C_PF1_ENTRY_BAR_4 -parent $PF1_Table_4_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF1_ENTRY_BAR_4
		
		  set C_PF1_ENTRY_ADDR_4 [ipgui::add_param $IPINST -name C_PF1_ENTRY_ADDR_4 -parent $PF1_Table_4_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF1_ENTRY_ADDR_4
		
		  set C_PF1_ENTRY_VERSION_TYPE_4 [ipgui::add_param $IPINST -name C_PF1_ENTRY_VERSION_TYPE_4 -parent $PF1_Table_4_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF1_ENTRY_VERSION_TYPE_4
		
		  set C_PF1_ENTRY_MAJOR_VERSION_4 [ipgui::add_param $IPINST -name C_PF1_ENTRY_MAJOR_VERSION_4 -parent $PF1_Table_4_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF1_ENTRY_MAJOR_VERSION_4
		
		  set C_PF1_ENTRY_MINOR_VERSION_4 [ipgui::add_param $IPINST -name C_PF1_ENTRY_MINOR_VERSION_4 -parent $PF1_Table_4_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF1_ENTRY_MINOR_VERSION_4
		
		  set C_PF1_ENTRY_RSVD0_4 [ipgui::add_param $IPINST -name C_PF1_ENTRY_RSVD0_4 -parent $PF1_Table_4_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF1_ENTRY_RSVD0_4
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF1_Table_5_Group [ipgui::add_group $IPINST -name "PF1 - Table Entry 5 Configuration" -parent $PF1_Config]  
 
		  set C_PF1_ENTRY_TYPE_5 [ipgui::add_param $IPINST -name C_PF1_ENTRY_TYPE_5 -parent $PF1_Table_5_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF1_ENTRY_TYPE_5
		
		  set C_PF1_ENTRY_BAR_5 [ipgui::add_param $IPINST -name C_PF1_ENTRY_BAR_5 -parent $PF1_Table_5_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF1_ENTRY_BAR_5
		
		  set C_PF1_ENTRY_ADDR_5 [ipgui::add_param $IPINST -name C_PF1_ENTRY_ADDR_5 -parent $PF1_Table_5_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF1_ENTRY_ADDR_5
		
		  set C_PF1_ENTRY_VERSION_TYPE_5 [ipgui::add_param $IPINST -name C_PF1_ENTRY_VERSION_TYPE_5 -parent $PF1_Table_5_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF1_ENTRY_VERSION_TYPE_5
		
		  set C_PF1_ENTRY_MAJOR_VERSION_5 [ipgui::add_param $IPINST -name C_PF1_ENTRY_MAJOR_VERSION_5 -parent $PF1_Table_5_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF1_ENTRY_MAJOR_VERSION_5
		
		  set C_PF1_ENTRY_MINOR_VERSION_5 [ipgui::add_param $IPINST -name C_PF1_ENTRY_MINOR_VERSION_5 -parent $PF1_Table_5_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF1_ENTRY_MINOR_VERSION_5
		
		  set C_PF1_ENTRY_RSVD0_5 [ipgui::add_param $IPINST -name C_PF1_ENTRY_RSVD0_5 -parent $PF1_Table_5_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF1_ENTRY_RSVD0_5
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF1_Table_6_Group [ipgui::add_group $IPINST -name "PF1 - Table Entry 6 Configuration" -parent $PF1_Config]  
 
		  set C_PF1_ENTRY_TYPE_6 [ipgui::add_param $IPINST -name C_PF1_ENTRY_TYPE_6 -parent $PF1_Table_6_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF1_ENTRY_TYPE_6
		
		  set C_PF1_ENTRY_BAR_6 [ipgui::add_param $IPINST -name C_PF1_ENTRY_BAR_6 -parent $PF1_Table_6_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF1_ENTRY_BAR_6
		
		  set C_PF1_ENTRY_ADDR_6 [ipgui::add_param $IPINST -name C_PF1_ENTRY_ADDR_6 -parent $PF1_Table_6_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF1_ENTRY_ADDR_6
		
		  set C_PF1_ENTRY_VERSION_TYPE_6 [ipgui::add_param $IPINST -name C_PF1_ENTRY_VERSION_TYPE_6 -parent $PF1_Table_6_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF1_ENTRY_VERSION_TYPE_6
		
		  set C_PF1_ENTRY_MAJOR_VERSION_6 [ipgui::add_param $IPINST -name C_PF1_ENTRY_MAJOR_VERSION_6 -parent $PF1_Table_6_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF1_ENTRY_MAJOR_VERSION_6
		
		  set C_PF1_ENTRY_MINOR_VERSION_6 [ipgui::add_param $IPINST -name C_PF1_ENTRY_MINOR_VERSION_6 -parent $PF1_Table_6_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF1_ENTRY_MINOR_VERSION_6
		
		  set C_PF1_ENTRY_RSVD0_6 [ipgui::add_param $IPINST -name C_PF1_ENTRY_RSVD0_6 -parent $PF1_Table_6_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF1_ENTRY_RSVD0_6
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF1_Table_7_Group [ipgui::add_group $IPINST -name "PF1 - Table Entry 7 Configuration" -parent $PF1_Config]  
 
		  set C_PF1_ENTRY_TYPE_7 [ipgui::add_param $IPINST -name C_PF1_ENTRY_TYPE_7 -parent $PF1_Table_7_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF1_ENTRY_TYPE_7
		
		  set C_PF1_ENTRY_BAR_7 [ipgui::add_param $IPINST -name C_PF1_ENTRY_BAR_7 -parent $PF1_Table_7_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF1_ENTRY_BAR_7
		
		  set C_PF1_ENTRY_ADDR_7 [ipgui::add_param $IPINST -name C_PF1_ENTRY_ADDR_7 -parent $PF1_Table_7_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF1_ENTRY_ADDR_7
		
		  set C_PF1_ENTRY_VERSION_TYPE_7 [ipgui::add_param $IPINST -name C_PF1_ENTRY_VERSION_TYPE_7 -parent $PF1_Table_7_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF1_ENTRY_VERSION_TYPE_7
		
		  set C_PF1_ENTRY_MAJOR_VERSION_7 [ipgui::add_param $IPINST -name C_PF1_ENTRY_MAJOR_VERSION_7 -parent $PF1_Table_7_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF1_ENTRY_MAJOR_VERSION_7
		
		  set C_PF1_ENTRY_MINOR_VERSION_7 [ipgui::add_param $IPINST -name C_PF1_ENTRY_MINOR_VERSION_7 -parent $PF1_Table_7_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF1_ENTRY_MINOR_VERSION_7
		
		  set C_PF1_ENTRY_RSVD0_7 [ipgui::add_param $IPINST -name C_PF1_ENTRY_RSVD0_7 -parent $PF1_Table_7_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF1_ENTRY_RSVD0_7
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF1_Table_8_Group [ipgui::add_group $IPINST -name "PF1 - Table Entry 8 Configuration" -parent $PF1_Config]  
 
		  set C_PF1_ENTRY_TYPE_8 [ipgui::add_param $IPINST -name C_PF1_ENTRY_TYPE_8 -parent $PF1_Table_8_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF1_ENTRY_TYPE_8
		
		  set C_PF1_ENTRY_BAR_8 [ipgui::add_param $IPINST -name C_PF1_ENTRY_BAR_8 -parent $PF1_Table_8_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF1_ENTRY_BAR_8
		
		  set C_PF1_ENTRY_ADDR_8 [ipgui::add_param $IPINST -name C_PF1_ENTRY_ADDR_8 -parent $PF1_Table_8_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF1_ENTRY_ADDR_8
		
		  set C_PF1_ENTRY_VERSION_TYPE_8 [ipgui::add_param $IPINST -name C_PF1_ENTRY_VERSION_TYPE_8 -parent $PF1_Table_8_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF1_ENTRY_VERSION_TYPE_8
		
		  set C_PF1_ENTRY_MAJOR_VERSION_8 [ipgui::add_param $IPINST -name C_PF1_ENTRY_MAJOR_VERSION_8 -parent $PF1_Table_8_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF1_ENTRY_MAJOR_VERSION_8
		
		  set C_PF1_ENTRY_MINOR_VERSION_8 [ipgui::add_param $IPINST -name C_PF1_ENTRY_MINOR_VERSION_8 -parent $PF1_Table_8_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF1_ENTRY_MINOR_VERSION_8
		
		  set C_PF1_ENTRY_RSVD0_8 [ipgui::add_param $IPINST -name C_PF1_ENTRY_RSVD0_8 -parent $PF1_Table_8_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF1_ENTRY_RSVD0_8
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF1_Table_9_Group [ipgui::add_group $IPINST -name "PF1 - Table Entry 9 Configuration" -parent $PF1_Config]  
 
		  set C_PF1_ENTRY_TYPE_9 [ipgui::add_param $IPINST -name C_PF1_ENTRY_TYPE_9 -parent $PF1_Table_9_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF1_ENTRY_TYPE_9
		
		  set C_PF1_ENTRY_BAR_9 [ipgui::add_param $IPINST -name C_PF1_ENTRY_BAR_9 -parent $PF1_Table_9_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF1_ENTRY_BAR_9
		
		  set C_PF1_ENTRY_ADDR_9 [ipgui::add_param $IPINST -name C_PF1_ENTRY_ADDR_9 -parent $PF1_Table_9_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF1_ENTRY_ADDR_9
		
		  set C_PF1_ENTRY_VERSION_TYPE_9 [ipgui::add_param $IPINST -name C_PF1_ENTRY_VERSION_TYPE_9 -parent $PF1_Table_9_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF1_ENTRY_VERSION_TYPE_9
		
		  set C_PF1_ENTRY_MAJOR_VERSION_9 [ipgui::add_param $IPINST -name C_PF1_ENTRY_MAJOR_VERSION_9 -parent $PF1_Table_9_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF1_ENTRY_MAJOR_VERSION_9
		
		  set C_PF1_ENTRY_MINOR_VERSION_9 [ipgui::add_param $IPINST -name C_PF1_ENTRY_MINOR_VERSION_9 -parent $PF1_Table_9_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF1_ENTRY_MINOR_VERSION_9
		
		  set C_PF1_ENTRY_RSVD0_9 [ipgui::add_param $IPINST -name C_PF1_ENTRY_RSVD0_9 -parent $PF1_Table_9_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF1_ENTRY_RSVD0_9
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF1_Table_10_Group [ipgui::add_group $IPINST -name "PF1 - Table Entry 10 Configuration" -parent $PF1_Config]  
 
		  set C_PF1_ENTRY_TYPE_10 [ipgui::add_param $IPINST -name C_PF1_ENTRY_TYPE_10 -parent $PF1_Table_10_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF1_ENTRY_TYPE_10
		
		  set C_PF1_ENTRY_BAR_10 [ipgui::add_param $IPINST -name C_PF1_ENTRY_BAR_10 -parent $PF1_Table_10_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF1_ENTRY_BAR_10
		
		  set C_PF1_ENTRY_ADDR_10 [ipgui::add_param $IPINST -name C_PF1_ENTRY_ADDR_10 -parent $PF1_Table_10_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF1_ENTRY_ADDR_10
		
		  set C_PF1_ENTRY_VERSION_TYPE_10 [ipgui::add_param $IPINST -name C_PF1_ENTRY_VERSION_TYPE_10 -parent $PF1_Table_10_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF1_ENTRY_VERSION_TYPE_10
		
		  set C_PF1_ENTRY_MAJOR_VERSION_10 [ipgui::add_param $IPINST -name C_PF1_ENTRY_MAJOR_VERSION_10 -parent $PF1_Table_10_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF1_ENTRY_MAJOR_VERSION_10
		
		  set C_PF1_ENTRY_MINOR_VERSION_10 [ipgui::add_param $IPINST -name C_PF1_ENTRY_MINOR_VERSION_10 -parent $PF1_Table_10_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF1_ENTRY_MINOR_VERSION_10
		
		  set C_PF1_ENTRY_RSVD0_10 [ipgui::add_param $IPINST -name C_PF1_ENTRY_RSVD0_10 -parent $PF1_Table_10_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF1_ENTRY_RSVD0_10
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF1_Table_11_Group [ipgui::add_group $IPINST -name "PF1 - Table Entry 11 Configuration" -parent $PF1_Config]  
 
		  set C_PF1_ENTRY_TYPE_11 [ipgui::add_param $IPINST -name C_PF1_ENTRY_TYPE_11 -parent $PF1_Table_11_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF1_ENTRY_TYPE_11
		
		  set C_PF1_ENTRY_BAR_11 [ipgui::add_param $IPINST -name C_PF1_ENTRY_BAR_11 -parent $PF1_Table_11_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF1_ENTRY_BAR_11
		
		  set C_PF1_ENTRY_ADDR_11 [ipgui::add_param $IPINST -name C_PF1_ENTRY_ADDR_11 -parent $PF1_Table_11_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF1_ENTRY_ADDR_11
		
		  set C_PF1_ENTRY_VERSION_TYPE_11 [ipgui::add_param $IPINST -name C_PF1_ENTRY_VERSION_TYPE_11 -parent $PF1_Table_11_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF1_ENTRY_VERSION_TYPE_11
		
		  set C_PF1_ENTRY_MAJOR_VERSION_11 [ipgui::add_param $IPINST -name C_PF1_ENTRY_MAJOR_VERSION_11 -parent $PF1_Table_11_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF1_ENTRY_MAJOR_VERSION_11
		
		  set C_PF1_ENTRY_MINOR_VERSION_11 [ipgui::add_param $IPINST -name C_PF1_ENTRY_MINOR_VERSION_11 -parent $PF1_Table_11_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF1_ENTRY_MINOR_VERSION_11
		
		  set C_PF1_ENTRY_RSVD0_11 [ipgui::add_param $IPINST -name C_PF1_ENTRY_RSVD0_11 -parent $PF1_Table_11_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF1_ENTRY_RSVD0_11
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF1_Table_12_Group [ipgui::add_group $IPINST -name "PF1 - Table Entry 12 Configuration" -parent $PF1_Config]  
 
		  set C_PF1_ENTRY_TYPE_12 [ipgui::add_param $IPINST -name C_PF1_ENTRY_TYPE_12 -parent $PF1_Table_12_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF1_ENTRY_TYPE_12
		
		  set C_PF1_ENTRY_BAR_12 [ipgui::add_param $IPINST -name C_PF1_ENTRY_BAR_12 -parent $PF1_Table_12_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF1_ENTRY_BAR_12
		
		  set C_PF1_ENTRY_ADDR_12 [ipgui::add_param $IPINST -name C_PF1_ENTRY_ADDR_12 -parent $PF1_Table_12_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF1_ENTRY_ADDR_12
		
		  set C_PF1_ENTRY_VERSION_TYPE_12 [ipgui::add_param $IPINST -name C_PF1_ENTRY_VERSION_TYPE_12 -parent $PF1_Table_12_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF1_ENTRY_VERSION_TYPE_12
		
		  set C_PF1_ENTRY_MAJOR_VERSION_12 [ipgui::add_param $IPINST -name C_PF1_ENTRY_MAJOR_VERSION_12 -parent $PF1_Table_12_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF1_ENTRY_MAJOR_VERSION_12
		
		  set C_PF1_ENTRY_MINOR_VERSION_12 [ipgui::add_param $IPINST -name C_PF1_ENTRY_MINOR_VERSION_12 -parent $PF1_Table_12_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF1_ENTRY_MINOR_VERSION_12
		
		  set C_PF1_ENTRY_RSVD0_12 [ipgui::add_param $IPINST -name C_PF1_ENTRY_RSVD0_12 -parent $PF1_Table_12_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF1_ENTRY_RSVD0_12
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF1_Table_13_Group [ipgui::add_group $IPINST -name "PF1 - Table Entry 13 Configuration" -parent $PF1_Config]  
 
		  set C_PF1_ENTRY_TYPE_13 [ipgui::add_param $IPINST -name C_PF1_ENTRY_TYPE_13 -parent $PF1_Table_13_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF1_ENTRY_TYPE_13
		
		  set C_PF1_ENTRY_BAR_13 [ipgui::add_param $IPINST -name C_PF1_ENTRY_BAR_13 -parent $PF1_Table_13_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF1_ENTRY_BAR_13
		
		  set C_PF1_ENTRY_ADDR_13 [ipgui::add_param $IPINST -name C_PF1_ENTRY_ADDR_13 -parent $PF1_Table_13_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF1_ENTRY_ADDR_13
		
		  set C_PF1_ENTRY_VERSION_TYPE_13 [ipgui::add_param $IPINST -name C_PF1_ENTRY_VERSION_TYPE_13 -parent $PF1_Table_13_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF1_ENTRY_VERSION_TYPE_13
		
		  set C_PF1_ENTRY_MAJOR_VERSION_13 [ipgui::add_param $IPINST -name C_PF1_ENTRY_MAJOR_VERSION_13 -parent $PF1_Table_13_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF1_ENTRY_MAJOR_VERSION_13
		
		  set C_PF1_ENTRY_MINOR_VERSION_13 [ipgui::add_param $IPINST -name C_PF1_ENTRY_MINOR_VERSION_13 -parent $PF1_Table_13_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF1_ENTRY_MINOR_VERSION_13
		
		  set C_PF1_ENTRY_RSVD0_13 [ipgui::add_param $IPINST -name C_PF1_ENTRY_RSVD0_13 -parent $PF1_Table_13_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF1_ENTRY_RSVD0_13
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF1_Table_14_Group [ipgui::add_group $IPINST -name "PF1 - Table Entry 14 Configuration" -parent $PF1_Config]  
 
		  set C_PF1_ENTRY_TYPE_14 [ipgui::add_param $IPINST -name C_PF1_ENTRY_TYPE_14 -parent $PF1_Table_14_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF1_ENTRY_TYPE_14
		
		  set C_PF1_ENTRY_BAR_14 [ipgui::add_param $IPINST -name C_PF1_ENTRY_BAR_14 -parent $PF1_Table_14_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF1_ENTRY_BAR_14
		
		  set C_PF1_ENTRY_ADDR_14 [ipgui::add_param $IPINST -name C_PF1_ENTRY_ADDR_14 -parent $PF1_Table_14_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF1_ENTRY_ADDR_14
		
		  set C_PF1_ENTRY_VERSION_TYPE_14 [ipgui::add_param $IPINST -name C_PF1_ENTRY_VERSION_TYPE_14 -parent $PF1_Table_14_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF1_ENTRY_VERSION_TYPE_14
		
		  set C_PF1_ENTRY_MAJOR_VERSION_14 [ipgui::add_param $IPINST -name C_PF1_ENTRY_MAJOR_VERSION_14 -parent $PF1_Table_14_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF1_ENTRY_MAJOR_VERSION_14
		
		  set C_PF1_ENTRY_MINOR_VERSION_14 [ipgui::add_param $IPINST -name C_PF1_ENTRY_MINOR_VERSION_14 -parent $PF1_Table_14_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF1_ENTRY_MINOR_VERSION_14
		
		  set C_PF1_ENTRY_RSVD0_14 [ipgui::add_param $IPINST -name C_PF1_ENTRY_RSVD0_14 -parent $PF1_Table_14_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF1_ENTRY_RSVD0_14
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF1_Table_15_Group [ipgui::add_group $IPINST -name "PF1 - Table Entry 15 Configuration" -parent $PF1_Config]  
 
		  set C_PF1_ENTRY_TYPE_15 [ipgui::add_param $IPINST -name C_PF1_ENTRY_TYPE_15 -parent $PF1_Table_15_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF1_ENTRY_TYPE_15
		
		  set C_PF1_ENTRY_BAR_15 [ipgui::add_param $IPINST -name C_PF1_ENTRY_BAR_15 -parent $PF1_Table_15_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF1_ENTRY_BAR_15
		
		  set C_PF1_ENTRY_ADDR_15 [ipgui::add_param $IPINST -name C_PF1_ENTRY_ADDR_15 -parent $PF1_Table_15_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF1_ENTRY_ADDR_15
		
		  set C_PF1_ENTRY_VERSION_TYPE_15 [ipgui::add_param $IPINST -name C_PF1_ENTRY_VERSION_TYPE_15 -parent $PF1_Table_15_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF1_ENTRY_VERSION_TYPE_15
		
		  set C_PF1_ENTRY_MAJOR_VERSION_15 [ipgui::add_param $IPINST -name C_PF1_ENTRY_MAJOR_VERSION_15 -parent $PF1_Table_15_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF1_ENTRY_MAJOR_VERSION_15
		
		  set C_PF1_ENTRY_MINOR_VERSION_15 [ipgui::add_param $IPINST -name C_PF1_ENTRY_MINOR_VERSION_15 -parent $PF1_Table_15_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF1_ENTRY_MINOR_VERSION_15
		
		  set C_PF1_ENTRY_RSVD0_15 [ipgui::add_param $IPINST -name C_PF1_ENTRY_RSVD0_15 -parent $PF1_Table_15_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF1_ENTRY_RSVD0_15
		  
  #---> Adding Page -----------------------------------------------------------------------------------------------------------------------#

  set PF2_Config [ipgui::add_page $IPINST -name "PF2 Configuration"]
  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF2_Group [ipgui::add_group $IPINST -name "PF2 - General Configuration" -parent $PF2_Config]  
  
		  set C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE [ipgui::add_param $IPINST -name C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE -parent $PF2_Group]
		  set_property tooltip  "Set the number of Table Entries to be implemented for PF2, excluding the End of Table identifier. i.e. when 1 only Table Entry 0 is implemented"  $C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE
		  
		  set C_PF2_BAR_INDEX [ipgui::add_param $IPINST -name C_PF2_BAR_INDEX -parent $PF2_Group]
		  set_property tooltip  "Set the BAR Index for PF2"  $C_PF2_BAR_INDEX
		
		  set C_PF2_LOW_OFFSET [ipgui::add_param $IPINST -name C_PF2_LOW_OFFSET -parent $PF2_Group]
		  set_property tooltip  "Set the Low Address Offset for PF2"  $C_PF2_LOW_OFFSET
		
		  set C_PF2_HIGH_OFFSET [ipgui::add_param $IPINST -name C_PF2_HIGH_OFFSET -parent $PF2_Group]
		  set_property tooltip  "Set the High Address Offset for PF2"  $C_PF2_HIGH_OFFSET  
		  
		  set C_PF2_HAS_UUID_ROM [ipgui::add_param $IPINST -name C_PF2_HAS_UUID_ROM -parent $PF2_Group]
		  set_property tooltip  "Set the Low Address Offset for PF2"  $C_PF2_HAS_UUID_ROM
		
			set C_PF2_UUID_ROM_INITIAL_VAL [ipgui::add_param $IPINST -name C_PF2_UUID_ROM_INITIAL_VAL -parent $PF2_Group]
			set_property tooltip  "Set a default 128-bit UUID to be initialized in the ROM during synthesis" $C_PF2_UUID_ROM_INITIAL_VAL
			
		  set C_PF2_S_AXI_DATA_WIDTH [ipgui::add_param $IPINST -name C_PF2_S_AXI_DATA_WIDTH -parent $PF2_Group]
		  set_property tooltip  "Set the AXI data width for PF2 AXI inteface"  $C_PF2_S_AXI_DATA_WIDTH
		
			set C_PF2_S_AXI_ADDR_WIDTH [ipgui::add_param $IPINST -name C_PF2_S_AXI_ADDR_WIDTH -parent $PF2_Group]
			set_property tooltip  "Set the AXI address width for PF2 AXI inteface" $C_PF2_S_AXI_ADDR_WIDTH			
		
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF2_Table_0_Group [ipgui::add_group $IPINST -name "PF2 - Table Entry 0 Configuration" -parent $PF2_Config]  
 
		  set C_PF2_ENTRY_TYPE_0 [ipgui::add_param $IPINST -name C_PF2_ENTRY_TYPE_0 -parent $PF2_Table_0_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF2_ENTRY_TYPE_0
		
		  set C_PF2_ENTRY_BAR_0 [ipgui::add_param $IPINST -name C_PF2_ENTRY_BAR_0 -parent $PF2_Table_0_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF2_ENTRY_BAR_0
		
		  set C_PF2_ENTRY_ADDR_0 [ipgui::add_param $IPINST -name C_PF2_ENTRY_ADDR_0 -parent $PF2_Table_0_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF2_ENTRY_ADDR_0
		
		  set C_PF2_ENTRY_VERSION_TYPE_0 [ipgui::add_param $IPINST -name C_PF2_ENTRY_VERSION_TYPE_0 -parent $PF2_Table_0_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF2_ENTRY_VERSION_TYPE_0
		
		  set C_PF2_ENTRY_MAJOR_VERSION_0 [ipgui::add_param $IPINST -name C_PF2_ENTRY_MAJOR_VERSION_0 -parent $PF2_Table_0_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF2_ENTRY_MAJOR_VERSION_0
		
		  set C_PF2_ENTRY_MINOR_VERSION_0 [ipgui::add_param $IPINST -name C_PF2_ENTRY_MINOR_VERSION_0 -parent $PF2_Table_0_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF2_ENTRY_MINOR_VERSION_0
		
		  set C_PF2_ENTRY_RSVD0_0 [ipgui::add_param $IPINST -name C_PF2_ENTRY_RSVD0_0 -parent $PF2_Table_0_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF2_ENTRY_RSVD0_0
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF2_Table_1_Group [ipgui::add_group $IPINST -name "PF2 - Table Entry 1 Configuration" -parent $PF2_Config]  
 
		  set C_PF2_ENTRY_TYPE_1 [ipgui::add_param $IPINST -name C_PF2_ENTRY_TYPE_1 -parent $PF2_Table_1_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF2_ENTRY_TYPE_1
		
		  set C_PF2_ENTRY_BAR_1 [ipgui::add_param $IPINST -name C_PF2_ENTRY_BAR_1 -parent $PF2_Table_1_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF2_ENTRY_BAR_1
		
		  set C_PF2_ENTRY_ADDR_1 [ipgui::add_param $IPINST -name C_PF2_ENTRY_ADDR_1 -parent $PF2_Table_1_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF2_ENTRY_ADDR_1
		
		  set C_PF2_ENTRY_VERSION_TYPE_1 [ipgui::add_param $IPINST -name C_PF2_ENTRY_VERSION_TYPE_1 -parent $PF2_Table_1_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF2_ENTRY_VERSION_TYPE_1
		
		  set C_PF2_ENTRY_MAJOR_VERSION_1 [ipgui::add_param $IPINST -name C_PF2_ENTRY_MAJOR_VERSION_1 -parent $PF2_Table_1_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF2_ENTRY_MAJOR_VERSION_1
		
		  set C_PF2_ENTRY_MINOR_VERSION_1 [ipgui::add_param $IPINST -name C_PF2_ENTRY_MINOR_VERSION_1 -parent $PF2_Table_1_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF2_ENTRY_MINOR_VERSION_1
		
		  set C_PF2_ENTRY_RSVD0_1 [ipgui::add_param $IPINST -name C_PF2_ENTRY_RSVD0_1 -parent $PF2_Table_1_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF2_ENTRY_RSVD0_1
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF2_Table_2_Group [ipgui::add_group $IPINST -name "PF2 - Table Entry 2 Configuration" -parent $PF2_Config]  
 
		  set C_PF2_ENTRY_TYPE_2 [ipgui::add_param $IPINST -name C_PF2_ENTRY_TYPE_2 -parent $PF2_Table_2_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF2_ENTRY_TYPE_2
		
		  set C_PF2_ENTRY_BAR_2 [ipgui::add_param $IPINST -name C_PF2_ENTRY_BAR_2 -parent $PF2_Table_2_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF2_ENTRY_BAR_2
		
		  set C_PF2_ENTRY_ADDR_2 [ipgui::add_param $IPINST -name C_PF2_ENTRY_ADDR_2 -parent $PF2_Table_2_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF2_ENTRY_ADDR_2
		
		  set C_PF2_ENTRY_VERSION_TYPE_2 [ipgui::add_param $IPINST -name C_PF2_ENTRY_VERSION_TYPE_2 -parent $PF2_Table_2_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF2_ENTRY_VERSION_TYPE_2
		
		  set C_PF2_ENTRY_MAJOR_VERSION_2 [ipgui::add_param $IPINST -name C_PF2_ENTRY_MAJOR_VERSION_2 -parent $PF2_Table_2_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF2_ENTRY_MAJOR_VERSION_2
		
		  set C_PF2_ENTRY_MINOR_VERSION_2 [ipgui::add_param $IPINST -name C_PF2_ENTRY_MINOR_VERSION_2 -parent $PF2_Table_2_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF2_ENTRY_MINOR_VERSION_2
		
		  set C_PF2_ENTRY_RSVD0_2 [ipgui::add_param $IPINST -name C_PF2_ENTRY_RSVD0_2 -parent $PF2_Table_2_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF2_ENTRY_RSVD0_2
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF2_Table_3_Group [ipgui::add_group $IPINST -name "PF2 - Table Entry 3 Configuration" -parent $PF2_Config]  
 
		  set C_PF2_ENTRY_TYPE_3 [ipgui::add_param $IPINST -name C_PF2_ENTRY_TYPE_3 -parent $PF2_Table_3_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF2_ENTRY_TYPE_3
		
		  set C_PF2_ENTRY_BAR_3 [ipgui::add_param $IPINST -name C_PF2_ENTRY_BAR_3 -parent $PF2_Table_3_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF2_ENTRY_BAR_3
		
		  set C_PF2_ENTRY_ADDR_3 [ipgui::add_param $IPINST -name C_PF2_ENTRY_ADDR_3 -parent $PF2_Table_3_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF2_ENTRY_ADDR_3
		
		  set C_PF2_ENTRY_VERSION_TYPE_3 [ipgui::add_param $IPINST -name C_PF2_ENTRY_VERSION_TYPE_3 -parent $PF2_Table_3_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF2_ENTRY_VERSION_TYPE_3
		
		  set C_PF2_ENTRY_MAJOR_VERSION_3 [ipgui::add_param $IPINST -name C_PF2_ENTRY_MAJOR_VERSION_3 -parent $PF2_Table_3_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF2_ENTRY_MAJOR_VERSION_3
		
		  set C_PF2_ENTRY_MINOR_VERSION_3 [ipgui::add_param $IPINST -name C_PF2_ENTRY_MINOR_VERSION_3 -parent $PF2_Table_3_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF2_ENTRY_MINOR_VERSION_3
		
		  set C_PF2_ENTRY_RSVD0_3 [ipgui::add_param $IPINST -name C_PF2_ENTRY_RSVD0_3 -parent $PF2_Table_3_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF2_ENTRY_RSVD0_3
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF2_Table_4_Group [ipgui::add_group $IPINST -name "PF2 - Table Entry 4 Configuration" -parent $PF2_Config]  
 
		  set C_PF2_ENTRY_TYPE_4 [ipgui::add_param $IPINST -name C_PF2_ENTRY_TYPE_4 -parent $PF2_Table_4_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF2_ENTRY_TYPE_4
		
		  set C_PF2_ENTRY_BAR_4 [ipgui::add_param $IPINST -name C_PF2_ENTRY_BAR_4 -parent $PF2_Table_4_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF2_ENTRY_BAR_4
		
		  set C_PF2_ENTRY_ADDR_4 [ipgui::add_param $IPINST -name C_PF2_ENTRY_ADDR_4 -parent $PF2_Table_4_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF2_ENTRY_ADDR_4
		
		  set C_PF2_ENTRY_VERSION_TYPE_4 [ipgui::add_param $IPINST -name C_PF2_ENTRY_VERSION_TYPE_4 -parent $PF2_Table_4_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF2_ENTRY_VERSION_TYPE_4
		
		  set C_PF2_ENTRY_MAJOR_VERSION_4 [ipgui::add_param $IPINST -name C_PF2_ENTRY_MAJOR_VERSION_4 -parent $PF2_Table_4_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF2_ENTRY_MAJOR_VERSION_4
		
		  set C_PF2_ENTRY_MINOR_VERSION_4 [ipgui::add_param $IPINST -name C_PF2_ENTRY_MINOR_VERSION_4 -parent $PF2_Table_4_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF2_ENTRY_MINOR_VERSION_4
		
		  set C_PF2_ENTRY_RSVD0_4 [ipgui::add_param $IPINST -name C_PF2_ENTRY_RSVD0_4 -parent $PF2_Table_4_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF2_ENTRY_RSVD0_4
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF2_Table_5_Group [ipgui::add_group $IPINST -name "PF2 - Table Entry 5 Configuration" -parent $PF2_Config]  
 
		  set C_PF2_ENTRY_TYPE_5 [ipgui::add_param $IPINST -name C_PF2_ENTRY_TYPE_5 -parent $PF2_Table_5_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF2_ENTRY_TYPE_5
		
		  set C_PF2_ENTRY_BAR_5 [ipgui::add_param $IPINST -name C_PF2_ENTRY_BAR_5 -parent $PF2_Table_5_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF2_ENTRY_BAR_5
		
		  set C_PF2_ENTRY_ADDR_5 [ipgui::add_param $IPINST -name C_PF2_ENTRY_ADDR_5 -parent $PF2_Table_5_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF2_ENTRY_ADDR_5
		
		  set C_PF2_ENTRY_VERSION_TYPE_5 [ipgui::add_param $IPINST -name C_PF2_ENTRY_VERSION_TYPE_5 -parent $PF2_Table_5_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF2_ENTRY_VERSION_TYPE_5
		
		  set C_PF2_ENTRY_MAJOR_VERSION_5 [ipgui::add_param $IPINST -name C_PF2_ENTRY_MAJOR_VERSION_5 -parent $PF2_Table_5_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF2_ENTRY_MAJOR_VERSION_5
		
		  set C_PF2_ENTRY_MINOR_VERSION_5 [ipgui::add_param $IPINST -name C_PF2_ENTRY_MINOR_VERSION_5 -parent $PF2_Table_5_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF2_ENTRY_MINOR_VERSION_5
		
		  set C_PF2_ENTRY_RSVD0_5 [ipgui::add_param $IPINST -name C_PF2_ENTRY_RSVD0_5 -parent $PF2_Table_5_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF2_ENTRY_RSVD0_5
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF2_Table_6_Group [ipgui::add_group $IPINST -name "PF2 - Table Entry 6 Configuration" -parent $PF2_Config]  
 
		  set C_PF2_ENTRY_TYPE_6 [ipgui::add_param $IPINST -name C_PF2_ENTRY_TYPE_6 -parent $PF2_Table_6_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF2_ENTRY_TYPE_6
		
		  set C_PF2_ENTRY_BAR_6 [ipgui::add_param $IPINST -name C_PF2_ENTRY_BAR_6 -parent $PF2_Table_6_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF2_ENTRY_BAR_6
		
		  set C_PF2_ENTRY_ADDR_6 [ipgui::add_param $IPINST -name C_PF2_ENTRY_ADDR_6 -parent $PF2_Table_6_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF2_ENTRY_ADDR_6
		
		  set C_PF2_ENTRY_VERSION_TYPE_6 [ipgui::add_param $IPINST -name C_PF2_ENTRY_VERSION_TYPE_6 -parent $PF2_Table_6_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF2_ENTRY_VERSION_TYPE_6
		
		  set C_PF2_ENTRY_MAJOR_VERSION_6 [ipgui::add_param $IPINST -name C_PF2_ENTRY_MAJOR_VERSION_6 -parent $PF2_Table_6_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF2_ENTRY_MAJOR_VERSION_6
		
		  set C_PF2_ENTRY_MINOR_VERSION_6 [ipgui::add_param $IPINST -name C_PF2_ENTRY_MINOR_VERSION_6 -parent $PF2_Table_6_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF2_ENTRY_MINOR_VERSION_6
		
		  set C_PF2_ENTRY_RSVD0_6 [ipgui::add_param $IPINST -name C_PF2_ENTRY_RSVD0_6 -parent $PF2_Table_6_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF2_ENTRY_RSVD0_6
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF2_Table_7_Group [ipgui::add_group $IPINST -name "PF2 - Table Entry 7 Configuration" -parent $PF2_Config]  
 
		  set C_PF2_ENTRY_TYPE_7 [ipgui::add_param $IPINST -name C_PF2_ENTRY_TYPE_7 -parent $PF2_Table_7_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF2_ENTRY_TYPE_7
		
		  set C_PF2_ENTRY_BAR_7 [ipgui::add_param $IPINST -name C_PF2_ENTRY_BAR_7 -parent $PF2_Table_7_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF2_ENTRY_BAR_7
		
		  set C_PF2_ENTRY_ADDR_7 [ipgui::add_param $IPINST -name C_PF2_ENTRY_ADDR_7 -parent $PF2_Table_7_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF2_ENTRY_ADDR_7
		
		  set C_PF2_ENTRY_VERSION_TYPE_7 [ipgui::add_param $IPINST -name C_PF2_ENTRY_VERSION_TYPE_7 -parent $PF2_Table_7_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF2_ENTRY_VERSION_TYPE_7
		
		  set C_PF2_ENTRY_MAJOR_VERSION_7 [ipgui::add_param $IPINST -name C_PF2_ENTRY_MAJOR_VERSION_7 -parent $PF2_Table_7_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF2_ENTRY_MAJOR_VERSION_7
		
		  set C_PF2_ENTRY_MINOR_VERSION_7 [ipgui::add_param $IPINST -name C_PF2_ENTRY_MINOR_VERSION_7 -parent $PF2_Table_7_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF2_ENTRY_MINOR_VERSION_7
		
		  set C_PF2_ENTRY_RSVD0_7 [ipgui::add_param $IPINST -name C_PF2_ENTRY_RSVD0_7 -parent $PF2_Table_7_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF2_ENTRY_RSVD0_7
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF2_Table_8_Group [ipgui::add_group $IPINST -name "PF2 - Table Entry 8 Configuration" -parent $PF2_Config]  
 
		  set C_PF2_ENTRY_TYPE_8 [ipgui::add_param $IPINST -name C_PF2_ENTRY_TYPE_8 -parent $PF2_Table_8_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF2_ENTRY_TYPE_8
		
		  set C_PF2_ENTRY_BAR_8 [ipgui::add_param $IPINST -name C_PF2_ENTRY_BAR_8 -parent $PF2_Table_8_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF2_ENTRY_BAR_8
		
		  set C_PF2_ENTRY_ADDR_8 [ipgui::add_param $IPINST -name C_PF2_ENTRY_ADDR_8 -parent $PF2_Table_8_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF2_ENTRY_ADDR_8
		
		  set C_PF2_ENTRY_VERSION_TYPE_8 [ipgui::add_param $IPINST -name C_PF2_ENTRY_VERSION_TYPE_8 -parent $PF2_Table_8_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF2_ENTRY_VERSION_TYPE_8
		
		  set C_PF2_ENTRY_MAJOR_VERSION_8 [ipgui::add_param $IPINST -name C_PF2_ENTRY_MAJOR_VERSION_8 -parent $PF2_Table_8_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF2_ENTRY_MAJOR_VERSION_8
		
		  set C_PF2_ENTRY_MINOR_VERSION_8 [ipgui::add_param $IPINST -name C_PF2_ENTRY_MINOR_VERSION_8 -parent $PF2_Table_8_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF2_ENTRY_MINOR_VERSION_8
		
		  set C_PF2_ENTRY_RSVD0_8 [ipgui::add_param $IPINST -name C_PF2_ENTRY_RSVD0_8 -parent $PF2_Table_8_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF2_ENTRY_RSVD0_8
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF2_Table_9_Group [ipgui::add_group $IPINST -name "PF2 - Table Entry 9 Configuration" -parent $PF2_Config]  
 
		  set C_PF2_ENTRY_TYPE_9 [ipgui::add_param $IPINST -name C_PF2_ENTRY_TYPE_9 -parent $PF2_Table_9_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF2_ENTRY_TYPE_9
		
		  set C_PF2_ENTRY_BAR_9 [ipgui::add_param $IPINST -name C_PF2_ENTRY_BAR_9 -parent $PF2_Table_9_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF2_ENTRY_BAR_9
		
		  set C_PF2_ENTRY_ADDR_9 [ipgui::add_param $IPINST -name C_PF2_ENTRY_ADDR_9 -parent $PF2_Table_9_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF2_ENTRY_ADDR_9
		
		  set C_PF2_ENTRY_VERSION_TYPE_9 [ipgui::add_param $IPINST -name C_PF2_ENTRY_VERSION_TYPE_9 -parent $PF2_Table_9_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF2_ENTRY_VERSION_TYPE_9
		
		  set C_PF2_ENTRY_MAJOR_VERSION_9 [ipgui::add_param $IPINST -name C_PF2_ENTRY_MAJOR_VERSION_9 -parent $PF2_Table_9_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF2_ENTRY_MAJOR_VERSION_9
		
		  set C_PF2_ENTRY_MINOR_VERSION_9 [ipgui::add_param $IPINST -name C_PF2_ENTRY_MINOR_VERSION_9 -parent $PF2_Table_9_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF2_ENTRY_MINOR_VERSION_9
		
		  set C_PF2_ENTRY_RSVD0_9 [ipgui::add_param $IPINST -name C_PF2_ENTRY_RSVD0_9 -parent $PF2_Table_9_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF2_ENTRY_RSVD0_9
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF2_Table_10_Group [ipgui::add_group $IPINST -name "PF2 - Table Entry 10 Configuration" -parent $PF2_Config]  
 
		  set C_PF2_ENTRY_TYPE_10 [ipgui::add_param $IPINST -name C_PF2_ENTRY_TYPE_10 -parent $PF2_Table_10_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF2_ENTRY_TYPE_10
		
		  set C_PF2_ENTRY_BAR_10 [ipgui::add_param $IPINST -name C_PF2_ENTRY_BAR_10 -parent $PF2_Table_10_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF2_ENTRY_BAR_10
		
		  set C_PF2_ENTRY_ADDR_10 [ipgui::add_param $IPINST -name C_PF2_ENTRY_ADDR_10 -parent $PF2_Table_10_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF2_ENTRY_ADDR_10
		
		  set C_PF2_ENTRY_VERSION_TYPE_10 [ipgui::add_param $IPINST -name C_PF2_ENTRY_VERSION_TYPE_10 -parent $PF2_Table_10_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF2_ENTRY_VERSION_TYPE_10
		
		  set C_PF2_ENTRY_MAJOR_VERSION_10 [ipgui::add_param $IPINST -name C_PF2_ENTRY_MAJOR_VERSION_10 -parent $PF2_Table_10_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF2_ENTRY_MAJOR_VERSION_10
		
		  set C_PF2_ENTRY_MINOR_VERSION_10 [ipgui::add_param $IPINST -name C_PF2_ENTRY_MINOR_VERSION_10 -parent $PF2_Table_10_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF2_ENTRY_MINOR_VERSION_10
		
		  set C_PF2_ENTRY_RSVD0_10 [ipgui::add_param $IPINST -name C_PF2_ENTRY_RSVD0_10 -parent $PF2_Table_10_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF2_ENTRY_RSVD0_10
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF2_Table_11_Group [ipgui::add_group $IPINST -name "PF2 - Table Entry 11 Configuration" -parent $PF2_Config]  
 
		  set C_PF2_ENTRY_TYPE_11 [ipgui::add_param $IPINST -name C_PF2_ENTRY_TYPE_11 -parent $PF2_Table_11_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF2_ENTRY_TYPE_11
		
		  set C_PF2_ENTRY_BAR_11 [ipgui::add_param $IPINST -name C_PF2_ENTRY_BAR_11 -parent $PF2_Table_11_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF2_ENTRY_BAR_11
		
		  set C_PF2_ENTRY_ADDR_11 [ipgui::add_param $IPINST -name C_PF2_ENTRY_ADDR_11 -parent $PF2_Table_11_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF2_ENTRY_ADDR_11
		
		  set C_PF2_ENTRY_VERSION_TYPE_11 [ipgui::add_param $IPINST -name C_PF2_ENTRY_VERSION_TYPE_11 -parent $PF2_Table_11_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF2_ENTRY_VERSION_TYPE_11
		
		  set C_PF2_ENTRY_MAJOR_VERSION_11 [ipgui::add_param $IPINST -name C_PF2_ENTRY_MAJOR_VERSION_11 -parent $PF2_Table_11_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF2_ENTRY_MAJOR_VERSION_11
		
		  set C_PF2_ENTRY_MINOR_VERSION_11 [ipgui::add_param $IPINST -name C_PF2_ENTRY_MINOR_VERSION_11 -parent $PF2_Table_11_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF2_ENTRY_MINOR_VERSION_11
		
		  set C_PF2_ENTRY_RSVD0_11 [ipgui::add_param $IPINST -name C_PF2_ENTRY_RSVD0_11 -parent $PF2_Table_11_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF2_ENTRY_RSVD0_11
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF2_Table_12_Group [ipgui::add_group $IPINST -name "PF2 - Table Entry 12 Configuration" -parent $PF2_Config]  
 
		  set C_PF2_ENTRY_TYPE_12 [ipgui::add_param $IPINST -name C_PF2_ENTRY_TYPE_12 -parent $PF2_Table_12_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF2_ENTRY_TYPE_12
		
		  set C_PF2_ENTRY_BAR_12 [ipgui::add_param $IPINST -name C_PF2_ENTRY_BAR_12 -parent $PF2_Table_12_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF2_ENTRY_BAR_12
		
		  set C_PF2_ENTRY_ADDR_12 [ipgui::add_param $IPINST -name C_PF2_ENTRY_ADDR_12 -parent $PF2_Table_12_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF2_ENTRY_ADDR_12
		
		  set C_PF2_ENTRY_VERSION_TYPE_12 [ipgui::add_param $IPINST -name C_PF2_ENTRY_VERSION_TYPE_12 -parent $PF2_Table_12_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF2_ENTRY_VERSION_TYPE_12
		
		  set C_PF2_ENTRY_MAJOR_VERSION_12 [ipgui::add_param $IPINST -name C_PF2_ENTRY_MAJOR_VERSION_12 -parent $PF2_Table_12_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF2_ENTRY_MAJOR_VERSION_12
		
		  set C_PF2_ENTRY_MINOR_VERSION_12 [ipgui::add_param $IPINST -name C_PF2_ENTRY_MINOR_VERSION_12 -parent $PF2_Table_12_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF2_ENTRY_MINOR_VERSION_12
		
		  set C_PF2_ENTRY_RSVD0_12 [ipgui::add_param $IPINST -name C_PF2_ENTRY_RSVD0_12 -parent $PF2_Table_12_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF2_ENTRY_RSVD0_12
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF2_Table_13_Group [ipgui::add_group $IPINST -name "PF2 - Table Entry 13 Configuration" -parent $PF2_Config]  
 
		  set C_PF2_ENTRY_TYPE_13 [ipgui::add_param $IPINST -name C_PF2_ENTRY_TYPE_13 -parent $PF2_Table_13_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF2_ENTRY_TYPE_13
		
		  set C_PF2_ENTRY_BAR_13 [ipgui::add_param $IPINST -name C_PF2_ENTRY_BAR_13 -parent $PF2_Table_13_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF2_ENTRY_BAR_13
		
		  set C_PF2_ENTRY_ADDR_13 [ipgui::add_param $IPINST -name C_PF2_ENTRY_ADDR_13 -parent $PF2_Table_13_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF2_ENTRY_ADDR_13
		
		  set C_PF2_ENTRY_VERSION_TYPE_13 [ipgui::add_param $IPINST -name C_PF2_ENTRY_VERSION_TYPE_13 -parent $PF2_Table_13_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF2_ENTRY_VERSION_TYPE_13
		
		  set C_PF2_ENTRY_MAJOR_VERSION_13 [ipgui::add_param $IPINST -name C_PF2_ENTRY_MAJOR_VERSION_13 -parent $PF2_Table_13_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF2_ENTRY_MAJOR_VERSION_13
		
		  set C_PF2_ENTRY_MINOR_VERSION_13 [ipgui::add_param $IPINST -name C_PF2_ENTRY_MINOR_VERSION_13 -parent $PF2_Table_13_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF2_ENTRY_MINOR_VERSION_13
		
		  set C_PF2_ENTRY_RSVD0_13 [ipgui::add_param $IPINST -name C_PF2_ENTRY_RSVD0_13 -parent $PF2_Table_13_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF2_ENTRY_RSVD0_13
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF2_Table_14_Group [ipgui::add_group $IPINST -name "PF2 - Table Entry 14 Configuration" -parent $PF2_Config]  
 
		  set C_PF2_ENTRY_TYPE_14 [ipgui::add_param $IPINST -name C_PF2_ENTRY_TYPE_14 -parent $PF2_Table_14_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF2_ENTRY_TYPE_14
		
		  set C_PF2_ENTRY_BAR_14 [ipgui::add_param $IPINST -name C_PF2_ENTRY_BAR_14 -parent $PF2_Table_14_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF2_ENTRY_BAR_14
		
		  set C_PF2_ENTRY_ADDR_14 [ipgui::add_param $IPINST -name C_PF2_ENTRY_ADDR_14 -parent $PF2_Table_14_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF2_ENTRY_ADDR_14
		
		  set C_PF2_ENTRY_VERSION_TYPE_14 [ipgui::add_param $IPINST -name C_PF2_ENTRY_VERSION_TYPE_14 -parent $PF2_Table_14_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF2_ENTRY_VERSION_TYPE_14
		
		  set C_PF2_ENTRY_MAJOR_VERSION_14 [ipgui::add_param $IPINST -name C_PF2_ENTRY_MAJOR_VERSION_14 -parent $PF2_Table_14_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF2_ENTRY_MAJOR_VERSION_14
		
		  set C_PF2_ENTRY_MINOR_VERSION_14 [ipgui::add_param $IPINST -name C_PF2_ENTRY_MINOR_VERSION_14 -parent $PF2_Table_14_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF2_ENTRY_MINOR_VERSION_14
		
		  set C_PF2_ENTRY_RSVD0_14 [ipgui::add_param $IPINST -name C_PF2_ENTRY_RSVD0_14 -parent $PF2_Table_14_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF2_ENTRY_RSVD0_14
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF2_Table_15_Group [ipgui::add_group $IPINST -name "PF2 - Table Entry 15 Configuration" -parent $PF2_Config]  
 
		  set C_PF2_ENTRY_TYPE_15 [ipgui::add_param $IPINST -name C_PF2_ENTRY_TYPE_15 -parent $PF2_Table_15_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF2_ENTRY_TYPE_15
		
		  set C_PF2_ENTRY_BAR_15 [ipgui::add_param $IPINST -name C_PF2_ENTRY_BAR_15 -parent $PF2_Table_15_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF2_ENTRY_BAR_15
		
		  set C_PF2_ENTRY_ADDR_15 [ipgui::add_param $IPINST -name C_PF2_ENTRY_ADDR_15 -parent $PF2_Table_15_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF2_ENTRY_ADDR_15
		
		  set C_PF2_ENTRY_VERSION_TYPE_15 [ipgui::add_param $IPINST -name C_PF2_ENTRY_VERSION_TYPE_15 -parent $PF2_Table_15_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF2_ENTRY_VERSION_TYPE_15
		
		  set C_PF2_ENTRY_MAJOR_VERSION_15 [ipgui::add_param $IPINST -name C_PF2_ENTRY_MAJOR_VERSION_15 -parent $PF2_Table_15_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF2_ENTRY_MAJOR_VERSION_15
		
		  set C_PF2_ENTRY_MINOR_VERSION_15 [ipgui::add_param $IPINST -name C_PF2_ENTRY_MINOR_VERSION_15 -parent $PF2_Table_15_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF2_ENTRY_MINOR_VERSION_15
		
		  set C_PF2_ENTRY_RSVD0_15 [ipgui::add_param $IPINST -name C_PF2_ENTRY_RSVD0_15 -parent $PF2_Table_15_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF2_ENTRY_RSVD0_15
		  
  #---> Adding Page -----------------------------------------------------------------------------------------------------------------------#

  set PF3_Config [ipgui::add_page $IPINST -name "PF3 Configuration"]
  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF3_Group [ipgui::add_group $IPINST -name "PF3 - General Configuration" -parent $PF3_Config]  
  
		  set C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE [ipgui::add_param $IPINST -name C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE -parent $PF3_Group]
		  set_property tooltip  "Set the number of Table Entries to be implemented for PF3, excluding the End of Table identifier. i.e. when 1 only Table Entry 0 is implemented"  $C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE
		  
		  set C_PF3_BAR_INDEX [ipgui::add_param $IPINST -name C_PF3_BAR_INDEX -parent $PF3_Group]
		  set_property tooltip  "Set the BAR Index for PF3"  $C_PF3_BAR_INDEX
		
		  set C_PF3_LOW_OFFSET [ipgui::add_param $IPINST -name C_PF3_LOW_OFFSET -parent $PF3_Group]
		  set_property tooltip  "Set the Low Address Offset for PF3"  $C_PF3_LOW_OFFSET
		
		  set C_PF3_HIGH_OFFSET [ipgui::add_param $IPINST -name C_PF3_HIGH_OFFSET -parent $PF3_Group]
		  set_property tooltip  "Set the High Address Offset for PF3"  $C_PF3_HIGH_OFFSET  
		  
		  set C_PF3_HAS_UUID_ROM [ipgui::add_param $IPINST -name C_PF3_HAS_UUID_ROM -parent $PF3_Group]
		  set_property tooltip  "Set the Low Address Offset for PF3"  $C_PF3_HAS_UUID_ROM
		
			set C_PF3_UUID_ROM_INITIAL_VAL [ipgui::add_param $IPINST -name C_PF3_UUID_ROM_INITIAL_VAL -parent $PF3_Group]
			set_property tooltip  "Set a default 128-bit UUID to be initialized in the ROM during synthesis" $C_PF3_UUID_ROM_INITIAL_VAL
			
		  set C_PF3_S_AXI_DATA_WIDTH [ipgui::add_param $IPINST -name C_PF3_S_AXI_DATA_WIDTH -parent $PF3_Group]
		  set_property tooltip  "Set the AXI data width for PF3 AXI inteface"  $C_PF3_S_AXI_DATA_WIDTH
		
			set C_PF3_S_AXI_ADDR_WIDTH [ipgui::add_param $IPINST -name C_PF3_S_AXI_ADDR_WIDTH -parent $PF3_Group]
			set_property tooltip  "Set the AXI address width for PF3 AXI inteface" $C_PF3_S_AXI_ADDR_WIDTH			
		
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF3_Table_0_Group [ipgui::add_group $IPINST -name "PF3 - Table Entry 0 Configuration" -parent $PF3_Config]  
 
		  set C_PF3_ENTRY_TYPE_0 [ipgui::add_param $IPINST -name C_PF3_ENTRY_TYPE_0 -parent $PF3_Table_0_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF3_ENTRY_TYPE_0
		
		  set C_PF3_ENTRY_BAR_0 [ipgui::add_param $IPINST -name C_PF3_ENTRY_BAR_0 -parent $PF3_Table_0_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF3_ENTRY_BAR_0
		
		  set C_PF3_ENTRY_ADDR_0 [ipgui::add_param $IPINST -name C_PF3_ENTRY_ADDR_0 -parent $PF3_Table_0_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF3_ENTRY_ADDR_0
		
		  set C_PF3_ENTRY_VERSION_TYPE_0 [ipgui::add_param $IPINST -name C_PF3_ENTRY_VERSION_TYPE_0 -parent $PF3_Table_0_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF3_ENTRY_VERSION_TYPE_0
		
		  set C_PF3_ENTRY_MAJOR_VERSION_0 [ipgui::add_param $IPINST -name C_PF3_ENTRY_MAJOR_VERSION_0 -parent $PF3_Table_0_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF3_ENTRY_MAJOR_VERSION_0
		
		  set C_PF3_ENTRY_MINOR_VERSION_0 [ipgui::add_param $IPINST -name C_PF3_ENTRY_MINOR_VERSION_0 -parent $PF3_Table_0_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF3_ENTRY_MINOR_VERSION_0
		
		  set C_PF3_ENTRY_RSVD0_0 [ipgui::add_param $IPINST -name C_PF3_ENTRY_RSVD0_0 -parent $PF3_Table_0_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF3_ENTRY_RSVD0_0
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF3_Table_1_Group [ipgui::add_group $IPINST -name "PF3 - Table Entry 1 Configuration" -parent $PF3_Config]  
 
		  set C_PF3_ENTRY_TYPE_1 [ipgui::add_param $IPINST -name C_PF3_ENTRY_TYPE_1 -parent $PF3_Table_1_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF3_ENTRY_TYPE_1
		
		  set C_PF3_ENTRY_BAR_1 [ipgui::add_param $IPINST -name C_PF3_ENTRY_BAR_1 -parent $PF3_Table_1_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF3_ENTRY_BAR_1
		
		  set C_PF3_ENTRY_ADDR_1 [ipgui::add_param $IPINST -name C_PF3_ENTRY_ADDR_1 -parent $PF3_Table_1_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF3_ENTRY_ADDR_1
		
		  set C_PF3_ENTRY_VERSION_TYPE_1 [ipgui::add_param $IPINST -name C_PF3_ENTRY_VERSION_TYPE_1 -parent $PF3_Table_1_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF3_ENTRY_VERSION_TYPE_1
		
		  set C_PF3_ENTRY_MAJOR_VERSION_1 [ipgui::add_param $IPINST -name C_PF3_ENTRY_MAJOR_VERSION_1 -parent $PF3_Table_1_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF3_ENTRY_MAJOR_VERSION_1
		
		  set C_PF3_ENTRY_MINOR_VERSION_1 [ipgui::add_param $IPINST -name C_PF3_ENTRY_MINOR_VERSION_1 -parent $PF3_Table_1_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF3_ENTRY_MINOR_VERSION_1
		
		  set C_PF3_ENTRY_RSVD0_1 [ipgui::add_param $IPINST -name C_PF3_ENTRY_RSVD0_1 -parent $PF3_Table_1_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF3_ENTRY_RSVD0_1
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF3_Table_2_Group [ipgui::add_group $IPINST -name "PF3 - Table Entry 2 Configuration" -parent $PF3_Config]  
 
		  set C_PF3_ENTRY_TYPE_2 [ipgui::add_param $IPINST -name C_PF3_ENTRY_TYPE_2 -parent $PF3_Table_2_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF3_ENTRY_TYPE_2
		
		  set C_PF3_ENTRY_BAR_2 [ipgui::add_param $IPINST -name C_PF3_ENTRY_BAR_2 -parent $PF3_Table_2_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF3_ENTRY_BAR_2
		
		  set C_PF3_ENTRY_ADDR_2 [ipgui::add_param $IPINST -name C_PF3_ENTRY_ADDR_2 -parent $PF3_Table_2_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF3_ENTRY_ADDR_2
		
		  set C_PF3_ENTRY_VERSION_TYPE_2 [ipgui::add_param $IPINST -name C_PF3_ENTRY_VERSION_TYPE_2 -parent $PF3_Table_2_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF3_ENTRY_VERSION_TYPE_2
		
		  set C_PF3_ENTRY_MAJOR_VERSION_2 [ipgui::add_param $IPINST -name C_PF3_ENTRY_MAJOR_VERSION_2 -parent $PF3_Table_2_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF3_ENTRY_MAJOR_VERSION_2
		
		  set C_PF3_ENTRY_MINOR_VERSION_2 [ipgui::add_param $IPINST -name C_PF3_ENTRY_MINOR_VERSION_2 -parent $PF3_Table_2_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF3_ENTRY_MINOR_VERSION_2
		
		  set C_PF3_ENTRY_RSVD0_2 [ipgui::add_param $IPINST -name C_PF3_ENTRY_RSVD0_2 -parent $PF3_Table_2_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF3_ENTRY_RSVD0_2
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF3_Table_3_Group [ipgui::add_group $IPINST -name "PF3 - Table Entry 3 Configuration" -parent $PF3_Config]  
 
		  set C_PF3_ENTRY_TYPE_3 [ipgui::add_param $IPINST -name C_PF3_ENTRY_TYPE_3 -parent $PF3_Table_3_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF3_ENTRY_TYPE_3
		
		  set C_PF3_ENTRY_BAR_3 [ipgui::add_param $IPINST -name C_PF3_ENTRY_BAR_3 -parent $PF3_Table_3_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF3_ENTRY_BAR_3
		
		  set C_PF3_ENTRY_ADDR_3 [ipgui::add_param $IPINST -name C_PF3_ENTRY_ADDR_3 -parent $PF3_Table_3_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF3_ENTRY_ADDR_3
		
		  set C_PF3_ENTRY_VERSION_TYPE_3 [ipgui::add_param $IPINST -name C_PF3_ENTRY_VERSION_TYPE_3 -parent $PF3_Table_3_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF3_ENTRY_VERSION_TYPE_3
		
		  set C_PF3_ENTRY_MAJOR_VERSION_3 [ipgui::add_param $IPINST -name C_PF3_ENTRY_MAJOR_VERSION_3 -parent $PF3_Table_3_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF3_ENTRY_MAJOR_VERSION_3
		
		  set C_PF3_ENTRY_MINOR_VERSION_3 [ipgui::add_param $IPINST -name C_PF3_ENTRY_MINOR_VERSION_3 -parent $PF3_Table_3_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF3_ENTRY_MINOR_VERSION_3
		
		  set C_PF3_ENTRY_RSVD0_3 [ipgui::add_param $IPINST -name C_PF3_ENTRY_RSVD0_3 -parent $PF3_Table_3_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF3_ENTRY_RSVD0_3
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF3_Table_4_Group [ipgui::add_group $IPINST -name "PF3 - Table Entry 4 Configuration" -parent $PF3_Config]  
 
		  set C_PF3_ENTRY_TYPE_4 [ipgui::add_param $IPINST -name C_PF3_ENTRY_TYPE_4 -parent $PF3_Table_4_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF3_ENTRY_TYPE_4
		
		  set C_PF3_ENTRY_BAR_4 [ipgui::add_param $IPINST -name C_PF3_ENTRY_BAR_4 -parent $PF3_Table_4_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF3_ENTRY_BAR_4
		
		  set C_PF3_ENTRY_ADDR_4 [ipgui::add_param $IPINST -name C_PF3_ENTRY_ADDR_4 -parent $PF3_Table_4_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF3_ENTRY_ADDR_4
		
		  set C_PF3_ENTRY_VERSION_TYPE_4 [ipgui::add_param $IPINST -name C_PF3_ENTRY_VERSION_TYPE_4 -parent $PF3_Table_4_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF3_ENTRY_VERSION_TYPE_4
		
		  set C_PF3_ENTRY_MAJOR_VERSION_4 [ipgui::add_param $IPINST -name C_PF3_ENTRY_MAJOR_VERSION_4 -parent $PF3_Table_4_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF3_ENTRY_MAJOR_VERSION_4
		
		  set C_PF3_ENTRY_MINOR_VERSION_4 [ipgui::add_param $IPINST -name C_PF3_ENTRY_MINOR_VERSION_4 -parent $PF3_Table_4_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF3_ENTRY_MINOR_VERSION_4
		
		  set C_PF3_ENTRY_RSVD0_4 [ipgui::add_param $IPINST -name C_PF3_ENTRY_RSVD0_4 -parent $PF3_Table_4_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF3_ENTRY_RSVD0_4
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF3_Table_5_Group [ipgui::add_group $IPINST -name "PF3 - Table Entry 5 Configuration" -parent $PF3_Config]  
 
		  set C_PF3_ENTRY_TYPE_5 [ipgui::add_param $IPINST -name C_PF3_ENTRY_TYPE_5 -parent $PF3_Table_5_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF3_ENTRY_TYPE_5
		
		  set C_PF3_ENTRY_BAR_5 [ipgui::add_param $IPINST -name C_PF3_ENTRY_BAR_5 -parent $PF3_Table_5_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF3_ENTRY_BAR_5
		
		  set C_PF3_ENTRY_ADDR_5 [ipgui::add_param $IPINST -name C_PF3_ENTRY_ADDR_5 -parent $PF3_Table_5_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF3_ENTRY_ADDR_5
		
		  set C_PF3_ENTRY_VERSION_TYPE_5 [ipgui::add_param $IPINST -name C_PF3_ENTRY_VERSION_TYPE_5 -parent $PF3_Table_5_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF3_ENTRY_VERSION_TYPE_5
		
		  set C_PF3_ENTRY_MAJOR_VERSION_5 [ipgui::add_param $IPINST -name C_PF3_ENTRY_MAJOR_VERSION_5 -parent $PF3_Table_5_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF3_ENTRY_MAJOR_VERSION_5
		
		  set C_PF3_ENTRY_MINOR_VERSION_5 [ipgui::add_param $IPINST -name C_PF3_ENTRY_MINOR_VERSION_5 -parent $PF3_Table_5_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF3_ENTRY_MINOR_VERSION_5
		
		  set C_PF3_ENTRY_RSVD0_5 [ipgui::add_param $IPINST -name C_PF3_ENTRY_RSVD0_5 -parent $PF3_Table_5_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF3_ENTRY_RSVD0_5
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF3_Table_6_Group [ipgui::add_group $IPINST -name "PF3 - Table Entry 6 Configuration" -parent $PF3_Config]  
 
		  set C_PF3_ENTRY_TYPE_6 [ipgui::add_param $IPINST -name C_PF3_ENTRY_TYPE_6 -parent $PF3_Table_6_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF3_ENTRY_TYPE_6
		
		  set C_PF3_ENTRY_BAR_6 [ipgui::add_param $IPINST -name C_PF3_ENTRY_BAR_6 -parent $PF3_Table_6_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF3_ENTRY_BAR_6
		
		  set C_PF3_ENTRY_ADDR_6 [ipgui::add_param $IPINST -name C_PF3_ENTRY_ADDR_6 -parent $PF3_Table_6_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF3_ENTRY_ADDR_6
		
		  set C_PF3_ENTRY_VERSION_TYPE_6 [ipgui::add_param $IPINST -name C_PF3_ENTRY_VERSION_TYPE_6 -parent $PF3_Table_6_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF3_ENTRY_VERSION_TYPE_6
		
		  set C_PF3_ENTRY_MAJOR_VERSION_6 [ipgui::add_param $IPINST -name C_PF3_ENTRY_MAJOR_VERSION_6 -parent $PF3_Table_6_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF3_ENTRY_MAJOR_VERSION_6
		
		  set C_PF3_ENTRY_MINOR_VERSION_6 [ipgui::add_param $IPINST -name C_PF3_ENTRY_MINOR_VERSION_6 -parent $PF3_Table_6_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF3_ENTRY_MINOR_VERSION_6
		
		  set C_PF3_ENTRY_RSVD0_6 [ipgui::add_param $IPINST -name C_PF3_ENTRY_RSVD0_6 -parent $PF3_Table_6_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF3_ENTRY_RSVD0_6
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF3_Table_7_Group [ipgui::add_group $IPINST -name "PF3 - Table Entry 7 Configuration" -parent $PF3_Config]  
 
		  set C_PF3_ENTRY_TYPE_7 [ipgui::add_param $IPINST -name C_PF3_ENTRY_TYPE_7 -parent $PF3_Table_7_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF3_ENTRY_TYPE_7
		
		  set C_PF3_ENTRY_BAR_7 [ipgui::add_param $IPINST -name C_PF3_ENTRY_BAR_7 -parent $PF3_Table_7_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF3_ENTRY_BAR_7
		
		  set C_PF3_ENTRY_ADDR_7 [ipgui::add_param $IPINST -name C_PF3_ENTRY_ADDR_7 -parent $PF3_Table_7_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF3_ENTRY_ADDR_7
		
		  set C_PF3_ENTRY_VERSION_TYPE_7 [ipgui::add_param $IPINST -name C_PF3_ENTRY_VERSION_TYPE_7 -parent $PF3_Table_7_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF3_ENTRY_VERSION_TYPE_7
		
		  set C_PF3_ENTRY_MAJOR_VERSION_7 [ipgui::add_param $IPINST -name C_PF3_ENTRY_MAJOR_VERSION_7 -parent $PF3_Table_7_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF3_ENTRY_MAJOR_VERSION_7
		
		  set C_PF3_ENTRY_MINOR_VERSION_7 [ipgui::add_param $IPINST -name C_PF3_ENTRY_MINOR_VERSION_7 -parent $PF3_Table_7_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF3_ENTRY_MINOR_VERSION_7
		
		  set C_PF3_ENTRY_RSVD0_7 [ipgui::add_param $IPINST -name C_PF3_ENTRY_RSVD0_7 -parent $PF3_Table_7_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF3_ENTRY_RSVD0_7
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF3_Table_8_Group [ipgui::add_group $IPINST -name "PF3 - Table Entry 8 Configuration" -parent $PF3_Config]  
 
		  set C_PF3_ENTRY_TYPE_8 [ipgui::add_param $IPINST -name C_PF3_ENTRY_TYPE_8 -parent $PF3_Table_8_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF3_ENTRY_TYPE_8
		
		  set C_PF3_ENTRY_BAR_8 [ipgui::add_param $IPINST -name C_PF3_ENTRY_BAR_8 -parent $PF3_Table_8_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF3_ENTRY_BAR_8
		
		  set C_PF3_ENTRY_ADDR_8 [ipgui::add_param $IPINST -name C_PF3_ENTRY_ADDR_8 -parent $PF3_Table_8_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF3_ENTRY_ADDR_8
		
		  set C_PF3_ENTRY_VERSION_TYPE_8 [ipgui::add_param $IPINST -name C_PF3_ENTRY_VERSION_TYPE_8 -parent $PF3_Table_8_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF3_ENTRY_VERSION_TYPE_8
		
		  set C_PF3_ENTRY_MAJOR_VERSION_8 [ipgui::add_param $IPINST -name C_PF3_ENTRY_MAJOR_VERSION_8 -parent $PF3_Table_8_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF3_ENTRY_MAJOR_VERSION_8
		
		  set C_PF3_ENTRY_MINOR_VERSION_8 [ipgui::add_param $IPINST -name C_PF3_ENTRY_MINOR_VERSION_8 -parent $PF3_Table_8_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF3_ENTRY_MINOR_VERSION_8
		
		  set C_PF3_ENTRY_RSVD0_8 [ipgui::add_param $IPINST -name C_PF3_ENTRY_RSVD0_8 -parent $PF3_Table_8_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF3_ENTRY_RSVD0_8
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF3_Table_9_Group [ipgui::add_group $IPINST -name "PF3 - Table Entry 9 Configuration" -parent $PF3_Config]  
 
		  set C_PF3_ENTRY_TYPE_9 [ipgui::add_param $IPINST -name C_PF3_ENTRY_TYPE_9 -parent $PF3_Table_9_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF3_ENTRY_TYPE_9
		
		  set C_PF3_ENTRY_BAR_9 [ipgui::add_param $IPINST -name C_PF3_ENTRY_BAR_9 -parent $PF3_Table_9_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF3_ENTRY_BAR_9
		
		  set C_PF3_ENTRY_ADDR_9 [ipgui::add_param $IPINST -name C_PF3_ENTRY_ADDR_9 -parent $PF3_Table_9_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF3_ENTRY_ADDR_9
		
		  set C_PF3_ENTRY_VERSION_TYPE_9 [ipgui::add_param $IPINST -name C_PF3_ENTRY_VERSION_TYPE_9 -parent $PF3_Table_9_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF3_ENTRY_VERSION_TYPE_9
		
		  set C_PF3_ENTRY_MAJOR_VERSION_9 [ipgui::add_param $IPINST -name C_PF3_ENTRY_MAJOR_VERSION_9 -parent $PF3_Table_9_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF3_ENTRY_MAJOR_VERSION_9
		
		  set C_PF3_ENTRY_MINOR_VERSION_9 [ipgui::add_param $IPINST -name C_PF3_ENTRY_MINOR_VERSION_9 -parent $PF3_Table_9_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF3_ENTRY_MINOR_VERSION_9
		
		  set C_PF3_ENTRY_RSVD0_9 [ipgui::add_param $IPINST -name C_PF3_ENTRY_RSVD0_9 -parent $PF3_Table_9_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF3_ENTRY_RSVD0_9
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF3_Table_10_Group [ipgui::add_group $IPINST -name "PF3 - Table Entry 10 Configuration" -parent $PF3_Config]  
 
		  set C_PF3_ENTRY_TYPE_10 [ipgui::add_param $IPINST -name C_PF3_ENTRY_TYPE_10 -parent $PF3_Table_10_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF3_ENTRY_TYPE_10
		
		  set C_PF3_ENTRY_BAR_10 [ipgui::add_param $IPINST -name C_PF3_ENTRY_BAR_10 -parent $PF3_Table_10_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF3_ENTRY_BAR_10
		
		  set C_PF3_ENTRY_ADDR_10 [ipgui::add_param $IPINST -name C_PF3_ENTRY_ADDR_10 -parent $PF3_Table_10_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF3_ENTRY_ADDR_10
		
		  set C_PF3_ENTRY_VERSION_TYPE_10 [ipgui::add_param $IPINST -name C_PF3_ENTRY_VERSION_TYPE_10 -parent $PF3_Table_10_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF3_ENTRY_VERSION_TYPE_10
		
		  set C_PF3_ENTRY_MAJOR_VERSION_10 [ipgui::add_param $IPINST -name C_PF3_ENTRY_MAJOR_VERSION_10 -parent $PF3_Table_10_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF3_ENTRY_MAJOR_VERSION_10
		
		  set C_PF3_ENTRY_MINOR_VERSION_10 [ipgui::add_param $IPINST -name C_PF3_ENTRY_MINOR_VERSION_10 -parent $PF3_Table_10_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF3_ENTRY_MINOR_VERSION_10
		
		  set C_PF3_ENTRY_RSVD0_10 [ipgui::add_param $IPINST -name C_PF3_ENTRY_RSVD0_10 -parent $PF3_Table_10_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF3_ENTRY_RSVD0_10
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF3_Table_11_Group [ipgui::add_group $IPINST -name "PF3 - Table Entry 11 Configuration" -parent $PF3_Config]  
 
		  set C_PF3_ENTRY_TYPE_11 [ipgui::add_param $IPINST -name C_PF3_ENTRY_TYPE_11 -parent $PF3_Table_11_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF3_ENTRY_TYPE_11
		
		  set C_PF3_ENTRY_BAR_11 [ipgui::add_param $IPINST -name C_PF3_ENTRY_BAR_11 -parent $PF3_Table_11_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF3_ENTRY_BAR_11
		
		  set C_PF3_ENTRY_ADDR_11 [ipgui::add_param $IPINST -name C_PF3_ENTRY_ADDR_11 -parent $PF3_Table_11_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF3_ENTRY_ADDR_11
		
		  set C_PF3_ENTRY_VERSION_TYPE_11 [ipgui::add_param $IPINST -name C_PF3_ENTRY_VERSION_TYPE_11 -parent $PF3_Table_11_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF3_ENTRY_VERSION_TYPE_11
		
		  set C_PF3_ENTRY_MAJOR_VERSION_11 [ipgui::add_param $IPINST -name C_PF3_ENTRY_MAJOR_VERSION_11 -parent $PF3_Table_11_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF3_ENTRY_MAJOR_VERSION_11
		
		  set C_PF3_ENTRY_MINOR_VERSION_11 [ipgui::add_param $IPINST -name C_PF3_ENTRY_MINOR_VERSION_11 -parent $PF3_Table_11_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF3_ENTRY_MINOR_VERSION_11
		
		  set C_PF3_ENTRY_RSVD0_11 [ipgui::add_param $IPINST -name C_PF3_ENTRY_RSVD0_11 -parent $PF3_Table_11_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF3_ENTRY_RSVD0_11
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF3_Table_12_Group [ipgui::add_group $IPINST -name "PF3 - Table Entry 12 Configuration" -parent $PF3_Config]  
 
		  set C_PF3_ENTRY_TYPE_12 [ipgui::add_param $IPINST -name C_PF3_ENTRY_TYPE_12 -parent $PF3_Table_12_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF3_ENTRY_TYPE_12
		
		  set C_PF3_ENTRY_BAR_12 [ipgui::add_param $IPINST -name C_PF3_ENTRY_BAR_12 -parent $PF3_Table_12_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF3_ENTRY_BAR_12
		
		  set C_PF3_ENTRY_ADDR_12 [ipgui::add_param $IPINST -name C_PF3_ENTRY_ADDR_12 -parent $PF3_Table_12_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF3_ENTRY_ADDR_12
		
		  set C_PF3_ENTRY_VERSION_TYPE_12 [ipgui::add_param $IPINST -name C_PF3_ENTRY_VERSION_TYPE_12 -parent $PF3_Table_12_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF3_ENTRY_VERSION_TYPE_12
		
		  set C_PF3_ENTRY_MAJOR_VERSION_12 [ipgui::add_param $IPINST -name C_PF3_ENTRY_MAJOR_VERSION_12 -parent $PF3_Table_12_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF3_ENTRY_MAJOR_VERSION_12
		
		  set C_PF3_ENTRY_MINOR_VERSION_12 [ipgui::add_param $IPINST -name C_PF3_ENTRY_MINOR_VERSION_12 -parent $PF3_Table_12_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF3_ENTRY_MINOR_VERSION_12
		
		  set C_PF3_ENTRY_RSVD0_12 [ipgui::add_param $IPINST -name C_PF3_ENTRY_RSVD0_12 -parent $PF3_Table_12_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF3_ENTRY_RSVD0_12
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF3_Table_13_Group [ipgui::add_group $IPINST -name "PF3 - Table Entry 13 Configuration" -parent $PF3_Config]  
 
		  set C_PF3_ENTRY_TYPE_13 [ipgui::add_param $IPINST -name C_PF3_ENTRY_TYPE_13 -parent $PF3_Table_13_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF3_ENTRY_TYPE_13
		
		  set C_PF3_ENTRY_BAR_13 [ipgui::add_param $IPINST -name C_PF3_ENTRY_BAR_13 -parent $PF3_Table_13_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF3_ENTRY_BAR_13
		
		  set C_PF3_ENTRY_ADDR_13 [ipgui::add_param $IPINST -name C_PF3_ENTRY_ADDR_13 -parent $PF3_Table_13_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF3_ENTRY_ADDR_13
		
		  set C_PF3_ENTRY_VERSION_TYPE_13 [ipgui::add_param $IPINST -name C_PF3_ENTRY_VERSION_TYPE_13 -parent $PF3_Table_13_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF3_ENTRY_VERSION_TYPE_13
		
		  set C_PF3_ENTRY_MAJOR_VERSION_13 [ipgui::add_param $IPINST -name C_PF3_ENTRY_MAJOR_VERSION_13 -parent $PF3_Table_13_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF3_ENTRY_MAJOR_VERSION_13
		
		  set C_PF3_ENTRY_MINOR_VERSION_13 [ipgui::add_param $IPINST -name C_PF3_ENTRY_MINOR_VERSION_13 -parent $PF3_Table_13_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF3_ENTRY_MINOR_VERSION_13
		
		  set C_PF3_ENTRY_RSVD0_13 [ipgui::add_param $IPINST -name C_PF3_ENTRY_RSVD0_13 -parent $PF3_Table_13_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF3_ENTRY_RSVD0_13
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF3_Table_14_Group [ipgui::add_group $IPINST -name "PF3 - Table Entry 14 Configuration" -parent $PF3_Config]  
 
		  set C_PF3_ENTRY_TYPE_14 [ipgui::add_param $IPINST -name C_PF3_ENTRY_TYPE_14 -parent $PF3_Table_14_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF3_ENTRY_TYPE_14
		
		  set C_PF3_ENTRY_BAR_14 [ipgui::add_param $IPINST -name C_PF3_ENTRY_BAR_14 -parent $PF3_Table_14_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF3_ENTRY_BAR_14
		
		  set C_PF3_ENTRY_ADDR_14 [ipgui::add_param $IPINST -name C_PF3_ENTRY_ADDR_14 -parent $PF3_Table_14_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF3_ENTRY_ADDR_14
		
		  set C_PF3_ENTRY_VERSION_TYPE_14 [ipgui::add_param $IPINST -name C_PF3_ENTRY_VERSION_TYPE_14 -parent $PF3_Table_14_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF3_ENTRY_VERSION_TYPE_14
		
		  set C_PF3_ENTRY_MAJOR_VERSION_14 [ipgui::add_param $IPINST -name C_PF3_ENTRY_MAJOR_VERSION_14 -parent $PF3_Table_14_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF3_ENTRY_MAJOR_VERSION_14
		
		  set C_PF3_ENTRY_MINOR_VERSION_14 [ipgui::add_param $IPINST -name C_PF3_ENTRY_MINOR_VERSION_14 -parent $PF3_Table_14_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF3_ENTRY_MINOR_VERSION_14
		
		  set C_PF3_ENTRY_RSVD0_14 [ipgui::add_param $IPINST -name C_PF3_ENTRY_RSVD0_14 -parent $PF3_Table_14_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF3_ENTRY_RSVD0_14
		  
  	#------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  	set PF3_Table_15_Group [ipgui::add_group $IPINST -name "PF3 - Table Entry 15 Configuration" -parent $PF3_Config]  
 
		  set C_PF3_ENTRY_TYPE_15 [ipgui::add_param $IPINST -name C_PF3_ENTRY_TYPE_15 -parent $PF3_Table_15_Group]
		  set_property tooltip  "Set the Type field for Table Entry 0"  $C_PF3_ENTRY_TYPE_15
		
		  set C_PF3_ENTRY_BAR_15 [ipgui::add_param $IPINST -name C_PF3_ENTRY_BAR_15 -parent $PF3_Table_15_Group]
		  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_PF3_ENTRY_BAR_15
		
		  set C_PF3_ENTRY_ADDR_15 [ipgui::add_param $IPINST -name C_PF3_ENTRY_ADDR_15 -parent $PF3_Table_15_Group]
		  set_property tooltip  "Set the Address field for Table Entry 0"  $C_PF3_ENTRY_ADDR_15
		
		  set C_PF3_ENTRY_VERSION_TYPE_15 [ipgui::add_param $IPINST -name C_PF3_ENTRY_VERSION_TYPE_15 -parent $PF3_Table_15_Group]
		  set_property tooltip "Set the Version Type for Table Entry 0" $C_PF3_ENTRY_VERSION_TYPE_15
		
		  set C_PF3_ENTRY_MAJOR_VERSION_15 [ipgui::add_param $IPINST -name C_PF3_ENTRY_MAJOR_VERSION_15 -parent $PF3_Table_15_Group]
		  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_PF3_ENTRY_MAJOR_VERSION_15
		
		  set C_PF3_ENTRY_MINOR_VERSION_15 [ipgui::add_param $IPINST -name C_PF3_ENTRY_MINOR_VERSION_15 -parent $PF3_Table_15_Group]
		  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_PF3_ENTRY_MINOR_VERSION_15
		
		  set C_PF3_ENTRY_RSVD0_15 [ipgui::add_param $IPINST -name C_PF3_ENTRY_RSVD0_15 -parent $PF3_Table_15_Group]
		  set_property tooltip  "Set the Reserved field 0 for Table Entry 0"  $C_PF3_ENTRY_RSVD0_15		  

}

proc update_PARAM_VALUE.Component_Name {PARAM_VALUE.Component_Name } {
  set value [get_property value ${PARAM_VALUE.Component_Name}]
  set Component_Name ${PARAM_VALUE.Component_Name}
}

proc update_PARAM_VALUE.C_NUM_PFS { PARAM_VALUE.C_NUM_PFS } {
	# Procedure called to update C_NUM_PFS when any of the dependent parameters in the arguments change
}

proc update_MODELPARAM_VALUE.C_NUM_PFS { MODELPARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_NUM_PFS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_NUM_PFS}] ${MODELPARAM_VALUE.C_NUM_PFS}
}

proc validate_PARAM_VALUE.C_NUM_PFS { PARAM_VALUE.C_NUM_PFS } {
  # Procedure called to validate C_NUM_PFS
  return true
}

proc update_gui_for_PARAM_VALUE.C_NUM_PFS {IPINST PARAM_VALUE.C_NUM_PFS} {
	# Procedure called to update C_NUM_PFS when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  if {$num_pfs == 1} {	
		set_property visible true [ipgui::get_pagespec -name "PF0 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_pagespec -name "PF1 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_pagespec -name "PF2 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_pagespec -name "PF3 Configuration" -of $IPINST]
	} elseif {$num_pfs == 2} {
		set_property visible true [ipgui::get_pagespec -name "PF0 Configuration" -of $IPINST]
		set_property visible true [ipgui::get_pagespec -name "PF1 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_pagespec -name "PF2 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_pagespec -name "PF3 Configuration" -of $IPINST]
	}	elseif {$num_pfs == 3} {
		set_property visible true [ipgui::get_pagespec -name "PF0 Configuration" -of $IPINST]
		set_property visible true [ipgui::get_pagespec -name "PF1 Configuration" -of $IPINST]
		set_property visible true [ipgui::get_pagespec -name "PF2 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_pagespec -name "PF3 Configuration" -of $IPINST]
	}	else {
		set_property visible true [ipgui::get_pagespec -name "PF0 Configuration" -of $IPINST]
		set_property visible true [ipgui::get_pagespec -name "PF1 Configuration" -of $IPINST]
		set_property visible true [ipgui::get_pagespec -name "PF2 Configuration" -of $IPINST]
		set_property visible true [ipgui::get_pagespec -name "PF3 Configuration" -of $IPINST]
	}	
}

proc update_MODELPARAM_VALUE.C_CAP_BASE_ADDR { MODELPARAM_VALUE.C_CAP_BASE_ADDR PARAM_VALUE.C_CAP_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_CAP_BASE_ADDR}] ${MODELPARAM_VALUE.C_CAP_BASE_ADDR}
}

proc validate_PARAM_VALUE.C_CAP_BASE_ADDR { PARAM_VALUE.C_CAP_BASE_ADDR } {
  # Procedure called to validate C_CAP_BASE_ADDR
  return true
}

proc update_PARAM_VALUE.C_NEXT_CAP_ADDR { PARAM_VALUE.C_CAP_BASE_ADDR PARAM_VALUE.C_NEXT_CAP_ADDR } {
  # Procedure called to validate C_NEXT_CAP_ADDR
}

proc update_MODELPARAM_VALUE.C_NEXT_CAP_ADDR { MODELPARAM_VALUE.C_NEXT_CAP_ADDR PARAM_VALUE.C_NEXT_CAP_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_NEXT_CAP_ADDR}] ${MODELPARAM_VALUE.C_NEXT_CAP_ADDR}
}

proc validate_PARAM_VALUE.C_NEXT_CAP_ADDR {PARAM_VALUE.C_CAP_BASE_ADDR PARAM_VALUE.C_NEXT_CAP_ADDR IPINST} {
  # Procedure called to validate C_NEXT_CAP_ADDR
  set cap_base_addr [get_property value ${PARAM_VALUE.C_CAP_BASE_ADDR}]
	set calc_cap_base_addr [ expr {$cap_base_addr + 0x010} ]  
  set nxt_cap_base_addr [get_property value ${PARAM_VALUE.C_NEXT_CAP_ADDR}]
  if { $nxt_cap_base_addr == 0x000 } {
  		return true
  } elseif {$nxt_cap_base_addr >= $calc_cap_base_addr} {
  		return true
  } else {
    	set_property errmsg "C_NEXT_CAP_ADDR value not as expected" [ipgui::get_paramspec -name C_NEXT_CAP_ADDR -of $IPINST ]
    	return false
  }       
}

proc update_PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE } {
  # Procedure called to update C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  if {$num_pfs >= 1} {
    set_property enabled true ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE { MODELPARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}] ${MODELPARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}
}

proc validate_PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE { PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE } {
  # Procedure called to validate C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE
  return true
}

proc update_gui_for_PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE {IPINST PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE} {
	# Procedure called to update C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE when any of the dependent parameters in the arguments change
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$pf0_num_slots == 1} {	
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 15 Configuration" -of $IPINST]						
	} elseif {$pf0_num_slots == 2} {
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 15 Configuration" -of $IPINST]			
	}	elseif {$pf0_num_slots == 3} {
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 15 Configuration" -of $IPINST]			
	} elseif {$pf0_num_slots == 4} {
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 15 Configuration" -of $IPINST]			
	}	elseif {$pf0_num_slots == 5} {
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 15 Configuration" -of $IPINST]			
	} elseif {$pf0_num_slots == 6} {
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 15 Configuration" -of $IPINST]			
	}	elseif {$pf0_num_slots == 7} {
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 15 Configuration" -of $IPINST]			
	} elseif {$pf0_num_slots == 8} {
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 15 Configuration" -of $IPINST]			
	}	elseif {$pf0_num_slots == 9} {
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 15 Configuration" -of $IPINST]			
	} elseif {$pf0_num_slots == 10} {
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 15 Configuration" -of $IPINST]			
	}	elseif {$pf0_num_slots == 11} {
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 15 Configuration" -of $IPINST]			
	} elseif {$pf0_num_slots == 12} {
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 15 Configuration" -of $IPINST]			
	}	elseif {$pf0_num_slots == 13} {
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 15 Configuration" -of $IPINST]			
	} elseif {$pf0_num_slots == 14} {
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 15 Configuration" -of $IPINST]	
	} elseif {$pf0_num_slots == 15} {
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF0 - Table Entry 15 Configuration" -of $IPINST]					
	}	else {
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF0 - Table Entry 15 Configuration" -of $IPINST]			
	}	
}

proc update_PARAM_VALUE.C_PF0_BAR_INDEX { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_BAR_INDEX } {
  # Procedure called to update C_PF0_BAR_INDEX when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  if {$num_pfs >= 1} {
    set_property enabled true ${PARAM_VALUE.C_PF0_BAR_INDEX}
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_BAR_INDEX}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_BAR_INDEX { MODELPARAM_VALUE.C_PF0_BAR_INDEX PARAM_VALUE.C_PF0_BAR_INDEX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_BAR_INDEX}] ${MODELPARAM_VALUE.C_PF0_BAR_INDEX}
}


proc validate_PARAM_VALUE.C_PF0_BAR_INDEX { PARAM_VALUE.C_PF0_BAR_INDEX } {
  # Procedure called to validate C_PF0_BAR_INDEX
  return true
}

proc update_PARAM_VALUE.C_PF0_LOW_OFFSET { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_LOW_OFFSET } {
  # Procedure called to update C_PF0_LOW_OFFSET when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  if {$num_pfs >= 1} {
    set_property enabled true ${PARAM_VALUE.C_PF0_LOW_OFFSET}
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_LOW_OFFSET}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_LOW_OFFSET { MODELPARAM_VALUE.C_PF0_LOW_OFFSET PARAM_VALUE.C_PF0_LOW_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_LOW_OFFSET}] ${MODELPARAM_VALUE.C_PF0_LOW_OFFSET}
}


proc validate_PARAM_VALUE.C_PF0_LOW_OFFSET { PARAM_VALUE.C_PF0_LOW_OFFSET } {
  # Procedure called to validate C_PF0_LOW_OFFSET
  return true
}

proc update_PARAM_VALUE.C_PF0_HIGH_OFFSET { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_HIGH_OFFSET } {
  # Procedure called to update C_PF0_HIGH_OFFSET when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  if {$num_pfs >= 1} {
    set_property enabled true ${PARAM_VALUE.C_PF0_HIGH_OFFSET}
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_HIGH_OFFSET}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_HIGH_OFFSET { MODELPARAM_VALUE.C_PF0_HIGH_OFFSET PARAM_VALUE.C_PF0_HIGH_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_HIGH_OFFSET}] ${MODELPARAM_VALUE.C_PF0_HIGH_OFFSET}
}


proc validate_PARAM_VALUE.C_PF0_HIGH_OFFSET { PARAM_VALUE.C_PF0_HIGH_OFFSET } {
  # Procedure called to validate C_PF0_HIGH_OFFSET
  return true
}

proc update_PARAM_VALUE.C_PF0_HAS_UUID_ROM { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_HAS_UUID_ROM } {
  # Procedure called to update C_PF0_HAS_UUID_ROM when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  if {$num_pfs >= 1} {
    set_property enabled true ${PARAM_VALUE.C_PF0_HAS_UUID_ROM}
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_HAS_UUID_ROM}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_HAS_UUID_ROM { MODELPARAM_VALUE.C_PF0_HAS_UUID_ROM PARAM_VALUE.C_PF0_HAS_UUID_ROM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  if {[get_property value ${PARAM_VALUE.C_PF0_HAS_UUID_ROM}]} {
    set_property value 1 ${MODELPARAM_VALUE.C_PF0_HAS_UUID_ROM}
  } else {
    set_property value 0 ${MODELPARAM_VALUE.C_PF0_HAS_UUID_ROM}
  }  
}


proc validate_PARAM_VALUE.C_PF0_HAS_UUID_ROM { PARAM_VALUE.C_PF0_HAS_UUID_ROM } {
  # Procedure called to validate C_PF0_HAS_UUID_ROM
  return true
}

proc update_gui_for_PARAM_VALUE.C_PF0_HAS_UUID_ROM {IPINST PARAM_VALUE.C_PF0_HAS_UUID_ROM} {
	# Procedure called to update C_PF0_HAS_UUID_ROM when any of the dependent parameters in the arguments change
	set has_uuid_rom [get_property value ${PARAM_VALUE.C_PF0_HAS_UUID_ROM}]
  if {[get_property value ${PARAM_VALUE.C_PF0_HAS_UUID_ROM}]} {	
		set_property visible true [ipgui::get_guiparamspec -name C_PF0_UUID_ROM_INITIAL_VAL -of $IPINST ]
	} else {
		set_property visible false [ipgui::get_guiparamspec -name C_PF0_UUID_ROM_INITIAL_VAL -of $IPINST ]
	}
}

proc update_PARAM_VALUE.C_PF0_UUID_ROM_INITIAL_VAL { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_UUID_ROM_INITIAL_VAL } {
  # Procedure called to update C_PF0_UUID_ROM_INITIAL_VAL when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  if {$num_pfs >= 1} {
    set_property enabled true ${PARAM_VALUE.C_PF0_UUID_ROM_INITIAL_VAL}
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_UUID_ROM_INITIAL_VAL}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_UUID_ROM_INIT { MODELPARAM_VALUE.C_PF0_UUID_ROM_INIT PARAM_VALUE.C_PF0_UUID_ROM_INITIAL_VAL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set uuid ""
  set uuid_chars [split [get_property value ${PARAM_VALUE.C_PF0_UUID_ROM_INITIAL_VAL}] {}]

  # Split the UUID into dword's and rotate to match the XPM_MEM string init format
  for {set dw 3} {$dw >= 0} {incr dw -1} {
    set dword ""
    for {set n 0} {$n < 8} {incr n} {
      append dword [lindex $uuid_chars [expr $dw * 8 + $n]]
    }
    if {[expr $dw == 3]} {
      append uuid $dword
    } else {
      append uuid "," $dword
    }
  }
	set_property value $uuid ${MODELPARAM_VALUE.C_PF0_UUID_ROM_INIT}

}

proc validate_PARAM_VALUE.C_PF0_UUID_ROM_INITIAL_VAL { PARAM_VALUE.C_PF0_UUID_ROM_INITIAL_VAL IPINST } {
    # Verify the UUID string is 32 characters in length
    set uuid_length [string length [get_property value ${PARAM_VALUE.C_PF0_UUID_ROM_INITIAL_VAL}]]

    if {[expr $uuid_length != 32]} {
      set_property errmsg "UUID string length of $uuid_length is not equal to 32" [ipgui::get_paramspec -name C_PF0_UUID_ROM_INITIAL_VAL -of $IPINST ]
      return false
    }

    # Verify the UUID string is valid hexadecimal
    return [RangeCheck4HexDec C_PF0_UUID_ROM_INITIAL_VAL [get_property value ${PARAM_VALUE.C_PF0_UUID_ROM_INITIAL_VAL}] 00000000000000000000000000000000 FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF $IPINST]
}

proc update_PARAM_VALUE.C_PF0_S_AXI_DATA_WIDTH { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_S_AXI_DATA_WIDTH } {
  # Procedure called to update C_PF0_S_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  if {$num_pfs >= 1} {
    set_property enabled true ${PARAM_VALUE.C_PF0_S_AXI_DATA_WIDTH}
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_S_AXI_DATA_WIDTH}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_S_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_PF0_S_AXI_DATA_WIDTH PARAM_VALUE.C_PF0_S_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_S_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_PF0_S_AXI_DATA_WIDTH}
}


proc validate_PARAM_VALUE.C_PF0_S_AXI_DATA_WIDTH { PARAM_VALUE.C_PF0_S_AXI_DATA_WIDTH } {
  # Procedure called to validate C_PF0_S_AXI_DATA_WIDTH
  return true
}

proc update_PARAM_VALUE.C_PF0_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_S_AXI_ADDR_WIDTH } {
  # Procedure called to update C_PF0_S_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  if {$num_pfs >= 1} {
    set_property enabled true ${PARAM_VALUE.C_PF0_S_AXI_ADDR_WIDTH}
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_S_AXI_ADDR_WIDTH}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_S_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_PF0_S_AXI_ADDR_WIDTH PARAM_VALUE.C_PF0_S_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_S_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_PF0_S_AXI_ADDR_WIDTH}
}


proc validate_PARAM_VALUE.C_PF0_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_PF0_S_AXI_ADDR_WIDTH } {
  # Procedure called to validate C_PF0_S_AXI_ADDR_WIDTH
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_TYPE_0 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_TYPE_0 } {
  # Procedure called to update C_PF0_ENTRY_TYPE_0 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 1} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_TYPE_0}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_TYPE_0}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_0 { MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_0 PARAM_VALUE.C_PF0_ENTRY_TYPE_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_TYPE_0}] ${MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_0}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_TYPE_0 { PARAM_VALUE.C_PF0_ENTRY_TYPE_0 } {
  # Procedure called to validate C_PF0_ENTRY_TYPE_0
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_BAR_0 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_BAR_0 } {
  # Procedure called to update C_PF0_ENTRY_BAR_0 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 1} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_BAR_0}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_BAR_0}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_BAR_0 { MODELPARAM_VALUE.C_PF0_ENTRY_BAR_0 PARAM_VALUE.C_PF0_ENTRY_BAR_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_BAR_0}] ${MODELPARAM_VALUE.C_PF0_ENTRY_BAR_0}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_BAR_0 { PARAM_VALUE.C_PF0_ENTRY_BAR_0 } {
  # Procedure called to validate C_PF0_ENTRY_BAR_0
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_ADDR_0 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_ADDR_0 } {
  # Procedure called to update C_PF0_ENTRY_ADDR_0 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 1} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_ADDR_0}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_ADDR_0}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_0 { MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_0 PARAM_VALUE.C_PF0_ENTRY_ADDR_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_ADDR_0}] ${MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_0}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_ADDR_0 { PARAM_VALUE.C_PF0_ENTRY_ADDR_0 } {
  # Procedure called to validate C_PF0_ENTRY_ADDR_0
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_0 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_0 } {
  # Procedure called to update C_PF0_ENTRY_VERSION_TYPE_0 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 1} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_0}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_0}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_0 { MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_0 PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_0}] ${MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_0}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_0 { PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_0 } {
  # Procedure called to validate C_PF0_ENTRY_VERSION_TYPE_0
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_0 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_0 } {
  # Procedure called to update C_PF0_ENTRY_MAJOR_VERSION_0 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 1} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_0}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_0}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_0 { MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_0 PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_0}] ${MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_0}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_0 { PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_0 } {
  # Procedure called to validate C_PF0_ENTRY_MAJOR_VERSION_0
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_0 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_0 } {
  # Procedure called to update C_PF0_ENTRY_MINOR_VERSION_0 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 1} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_0}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_0}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_0 { MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_0 PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_0}] ${MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_0}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_0 { PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_0 } {
  # Procedure called to validate C_PF0_ENTRY_MINOR_VERSION_0
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_RSVD0_0 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_RSVD0_0 } {
  # Procedure called to update C_PF0_ENTRY_RSVD0_0 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 1} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_0}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_0}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_0 { MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_0 PARAM_VALUE.C_PF0_ENTRY_RSVD0_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_0}] ${MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_0}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_RSVD0_0 { PARAM_VALUE.C_PF0_ENTRY_RSVD0_0 } {
  # Procedure called to validate C_PF0_ENTRY_RSVD0_0
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_TYPE_1 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_TYPE_1 } {
  # Procedure called to update C_PF0_ENTRY_TYPE_1 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 2} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_TYPE_1}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_TYPE_1}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_1 { MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_1 PARAM_VALUE.C_PF0_ENTRY_TYPE_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_TYPE_1}] ${MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_1}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_TYPE_1 { PARAM_VALUE.C_PF0_ENTRY_TYPE_1 } {
  # Procedure called to validate C_PF0_ENTRY_TYPE_1
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_BAR_1 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_BAR_1 } {
  # Procedure called to update C_PF0_ENTRY_BAR_1 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 2} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_BAR_1}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_BAR_1}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_BAR_1 { MODELPARAM_VALUE.C_PF0_ENTRY_BAR_1 PARAM_VALUE.C_PF0_ENTRY_BAR_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_BAR_1}] ${MODELPARAM_VALUE.C_PF0_ENTRY_BAR_1}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_BAR_1 { PARAM_VALUE.C_PF0_ENTRY_BAR_1 } {
  # Procedure called to validate C_PF0_ENTRY_BAR_1
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_ADDR_1 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_ADDR_1 } {
  # Procedure called to update C_PF0_ENTRY_ADDR_1 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 2} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_ADDR_1}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_ADDR_1}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_1 { MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_1 PARAM_VALUE.C_PF0_ENTRY_ADDR_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_ADDR_1}] ${MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_1}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_ADDR_1 { PARAM_VALUE.C_PF0_ENTRY_ADDR_1 } {
  # Procedure called to validate C_PF0_ENTRY_ADDR_1
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_1 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_1 } {
  # Procedure called to update C_PF0_ENTRY_VERSION_TYPE_1 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 2} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_1}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_1}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_1 { MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_1 PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_1}] ${MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_1}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_1 { PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_1 } {
  # Procedure called to validate C_PF0_ENTRY_VERSION_TYPE_1
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_1 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_1 } {
  # Procedure called to update C_PF0_ENTRY_MAJOR_VERSION_1 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 2} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_1}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_1}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_1 { MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_1 PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_1}] ${MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_1}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_1 { PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_1 } {
  # Procedure called to validate C_PF0_ENTRY_MAJOR_VERSION_1
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_1 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_1 } {
  # Procedure called to update C_PF0_ENTRY_MINOR_VERSION_1 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 2} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_1}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_1}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_1 { MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_1 PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_1}] ${MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_1}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_1 { PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_1 } {
  # Procedure called to validate C_PF0_ENTRY_MINOR_VERSION_1
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_RSVD0_1 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_RSVD0_1 } {
  # Procedure called to update C_PF0_ENTRY_RSVD0_1 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 2} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_1}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_1}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_1 { MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_1 PARAM_VALUE.C_PF0_ENTRY_RSVD0_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_1}] ${MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_1}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_RSVD0_1 { PARAM_VALUE.C_PF0_ENTRY_RSVD0_1 } {
  # Procedure called to validate C_PF0_ENTRY_RSVD0_1
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_TYPE_2 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_TYPE_2 } {
  # Procedure called to update C_PF0_ENTRY_TYPE_2 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 3} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_TYPE_2}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_TYPE_2}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_2 { MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_2 PARAM_VALUE.C_PF0_ENTRY_TYPE_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_TYPE_2}] ${MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_2}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_TYPE_2 { PARAM_VALUE.C_PF0_ENTRY_TYPE_2 } {
  # Procedure called to validate C_PF0_ENTRY_TYPE_2
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_BAR_2 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_BAR_2 } {
  # Procedure called to update C_PF0_ENTRY_BAR_2 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 3} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_BAR_2}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_BAR_2}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_BAR_2 { MODELPARAM_VALUE.C_PF0_ENTRY_BAR_2 PARAM_VALUE.C_PF0_ENTRY_BAR_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_BAR_2}] ${MODELPARAM_VALUE.C_PF0_ENTRY_BAR_2}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_BAR_2 { PARAM_VALUE.C_PF0_ENTRY_BAR_2 } {
  # Procedure called to validate C_PF0_ENTRY_BAR_2
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_ADDR_2 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_ADDR_2 } {
  # Procedure called to update C_PF0_ENTRY_ADDR_2 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 3} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_ADDR_2}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_ADDR_2}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_2 { MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_2 PARAM_VALUE.C_PF0_ENTRY_ADDR_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_ADDR_2}] ${MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_2}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_ADDR_2 { PARAM_VALUE.C_PF0_ENTRY_ADDR_2 } {
  # Procedure called to validate C_PF0_ENTRY_ADDR_2
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_2 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_2 } {
  # Procedure called to update C_PF0_ENTRY_VERSION_TYPE_2 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 3} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_2}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_2}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_2 { MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_2 PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_2}] ${MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_2}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_2 { PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_2 } {
  # Procedure called to validate C_PF0_ENTRY_VERSION_TYPE_2
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_2 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_2 } {
  # Procedure called to update C_PF0_ENTRY_MAJOR_VERSION_2 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 3} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_2}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_2}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_2 { MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_2 PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_2}] ${MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_2}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_2 { PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_2 } {
  # Procedure called to validate C_PF0_ENTRY_MAJOR_VERSION_2
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_2 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_2 } {
  # Procedure called to update C_PF0_ENTRY_MINOR_VERSION_2 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 3} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_2}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_2}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_2 { MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_2 PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_2}] ${MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_2}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_2 { PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_2 } {
  # Procedure called to validate C_PF0_ENTRY_MINOR_VERSION_2
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_RSVD0_2 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_RSVD0_2 } {
  # Procedure called to update C_PF0_ENTRY_RSVD0_2 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 3} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_2}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_2}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_2 { MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_2 PARAM_VALUE.C_PF0_ENTRY_RSVD0_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_2}] ${MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_2}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_RSVD0_2 { PARAM_VALUE.C_PF0_ENTRY_RSVD0_2 } {
  # Procedure called to validate C_PF0_ENTRY_RSVD0_2
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_TYPE_3 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_TYPE_3 } {
  # Procedure called to update C_PF0_ENTRY_TYPE_3 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 4} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_TYPE_3}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_TYPE_3}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_3 { MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_3 PARAM_VALUE.C_PF0_ENTRY_TYPE_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_TYPE_3}] ${MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_3}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_TYPE_3 { PARAM_VALUE.C_PF0_ENTRY_TYPE_3 } {
  # Procedure called to validate C_PF0_ENTRY_TYPE_3
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_BAR_3 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_BAR_3 } {
  # Procedure called to update C_PF0_ENTRY_BAR_3 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 4} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_BAR_3}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_BAR_3}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_BAR_3 { MODELPARAM_VALUE.C_PF0_ENTRY_BAR_3 PARAM_VALUE.C_PF0_ENTRY_BAR_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_BAR_3}] ${MODELPARAM_VALUE.C_PF0_ENTRY_BAR_3}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_BAR_3 { PARAM_VALUE.C_PF0_ENTRY_BAR_3 } {
  # Procedure called to validate C_PF0_ENTRY_BAR_3
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_ADDR_3 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_ADDR_3 } {
  # Procedure called to update C_PF0_ENTRY_ADDR_3 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 4} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_ADDR_3}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_ADDR_3}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_3 { MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_3 PARAM_VALUE.C_PF0_ENTRY_ADDR_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_ADDR_3}] ${MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_3}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_ADDR_3 { PARAM_VALUE.C_PF0_ENTRY_ADDR_3 } {
  # Procedure called to validate C_PF0_ENTRY_ADDR_3
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_3 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_3 } {
  # Procedure called to update C_PF0_ENTRY_VERSION_TYPE_3 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 4} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_3}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_3}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_3 { MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_3 PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_3}] ${MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_3}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_3 { PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_3 } {
  # Procedure called to validate C_PF0_ENTRY_VERSION_TYPE_3
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_3 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_3 } {
  # Procedure called to update C_PF0_ENTRY_MAJOR_VERSION_3 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 4} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_3}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_3}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_3 { MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_3 PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_3}] ${MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_3}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_3 { PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_3 } {
  # Procedure called to validate C_PF0_ENTRY_MAJOR_VERSION_3
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_3 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_3 } {
  # Procedure called to update C_PF0_ENTRY_MINOR_VERSION_3 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 4} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_3}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_3}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_3 { MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_3 PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_3}] ${MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_3}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_3 { PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_3 } {
  # Procedure called to validate C_PF0_ENTRY_MINOR_VERSION_3
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_RSVD0_3 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_RSVD0_3 } {
  # Procedure called to update C_PF0_ENTRY_RSVD0_3 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 4} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_3}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_3}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_3 { MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_3 PARAM_VALUE.C_PF0_ENTRY_RSVD0_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_3}] ${MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_3}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_RSVD0_3 { PARAM_VALUE.C_PF0_ENTRY_RSVD0_3 } {
  # Procedure called to validate C_PF0_ENTRY_RSVD0_3
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_TYPE_4 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_TYPE_4 } {
  # Procedure called to update C_PF0_ENTRY_TYPE_4 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 5} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_TYPE_4}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_TYPE_4}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_4 { MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_4 PARAM_VALUE.C_PF0_ENTRY_TYPE_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_TYPE_4}] ${MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_4}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_TYPE_4 { PARAM_VALUE.C_PF0_ENTRY_TYPE_4 } {
  # Procedure called to validate C_PF0_ENTRY_TYPE_4
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_BAR_4 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_BAR_4 } {
  # Procedure called to update C_PF0_ENTRY_BAR_4 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 5} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_BAR_4}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_BAR_4}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_BAR_4 { MODELPARAM_VALUE.C_PF0_ENTRY_BAR_4 PARAM_VALUE.C_PF0_ENTRY_BAR_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_BAR_4}] ${MODELPARAM_VALUE.C_PF0_ENTRY_BAR_4}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_BAR_4 { PARAM_VALUE.C_PF0_ENTRY_BAR_4 } {
  # Procedure called to validate C_PF0_ENTRY_BAR_4
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_ADDR_4 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_ADDR_4 } {
  # Procedure called to update C_PF0_ENTRY_ADDR_4 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 5} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_ADDR_4}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_ADDR_4}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_4 { MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_4 PARAM_VALUE.C_PF0_ENTRY_ADDR_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_ADDR_4}] ${MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_4}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_ADDR_4 { PARAM_VALUE.C_PF0_ENTRY_ADDR_4 } {
  # Procedure called to validate C_PF0_ENTRY_ADDR_4
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_4 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_4 } {
  # Procedure called to update C_PF0_ENTRY_VERSION_TYPE_4 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 5} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_4}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_4}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_4 { MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_4 PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_4}] ${MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_4}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_4 { PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_4 } {
  # Procedure called to validate C_PF0_ENTRY_VERSION_TYPE_4
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_4 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_4 } {
  # Procedure called to update C_PF0_ENTRY_MAJOR_VERSION_4 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 5} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_4}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_4}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_4 { MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_4 PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_4}] ${MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_4}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_4 { PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_4 } {
  # Procedure called to validate C_PF0_ENTRY_MAJOR_VERSION_4
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_4 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_4 } {
  # Procedure called to update C_PF0_ENTRY_MINOR_VERSION_4 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 5} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_4}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_4}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_4 { MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_4 PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_4}] ${MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_4}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_4 { PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_4 } {
  # Procedure called to validate C_PF0_ENTRY_MINOR_VERSION_4
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_RSVD0_4 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_RSVD0_4 } {
  # Procedure called to update C_PF0_ENTRY_RSVD0_4 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 5} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_4}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_4}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_4 { MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_4 PARAM_VALUE.C_PF0_ENTRY_RSVD0_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_4}] ${MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_4}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_RSVD0_4 { PARAM_VALUE.C_PF0_ENTRY_RSVD0_4 } {
  # Procedure called to validate C_PF0_ENTRY_RSVD0_4
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_TYPE_5 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_TYPE_5 } {
  # Procedure called to update C_PF0_ENTRY_TYPE_5 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 6} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_TYPE_5}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_TYPE_5}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_5 { MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_5 PARAM_VALUE.C_PF0_ENTRY_TYPE_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_TYPE_5}] ${MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_5}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_TYPE_5 { PARAM_VALUE.C_PF0_ENTRY_TYPE_5 } {
  # Procedure called to validate C_PF0_ENTRY_TYPE_5
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_BAR_5 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_BAR_5 } {
  # Procedure called to update C_PF0_ENTRY_BAR_5 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 6} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_BAR_5}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_BAR_5}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_BAR_5 { MODELPARAM_VALUE.C_PF0_ENTRY_BAR_5 PARAM_VALUE.C_PF0_ENTRY_BAR_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_BAR_5}] ${MODELPARAM_VALUE.C_PF0_ENTRY_BAR_5}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_BAR_5 { PARAM_VALUE.C_PF0_ENTRY_BAR_5 } {
  # Procedure called to validate C_PF0_ENTRY_BAR_5
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_ADDR_5 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_ADDR_5 } {
  # Procedure called to update C_PF0_ENTRY_ADDR_5 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 6} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_ADDR_5}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_ADDR_5}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_5 { MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_5 PARAM_VALUE.C_PF0_ENTRY_ADDR_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_ADDR_5}] ${MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_5}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_ADDR_5 { PARAM_VALUE.C_PF0_ENTRY_ADDR_5 } {
  # Procedure called to validate C_PF0_ENTRY_ADDR_5
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_5 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_5 } {
  # Procedure called to update C_PF0_ENTRY_VERSION_TYPE_5 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 6} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_5}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_5}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_5 { MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_5 PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_5}] ${MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_5}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_5 { PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_5 } {
  # Procedure called to validate C_PF0_ENTRY_VERSION_TYPE_5
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_5 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_5 } {
  # Procedure called to update C_PF0_ENTRY_MAJOR_VERSION_5 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 6} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_5}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_5}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_5 { MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_5 PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_5}] ${MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_5}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_5 { PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_5 } {
  # Procedure called to validate C_PF0_ENTRY_MAJOR_VERSION_5
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_5 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_5 } {
  # Procedure called to update C_PF0_ENTRY_MINOR_VERSION_5 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 6} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_5}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_5}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_5 { MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_5 PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_5}] ${MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_5}
}

proc validate_PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_5 { PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_5 } {
  # Procedure called to validate C_PF0_ENTRY_MINOR_VERSION_5
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_RSVD0_5 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_RSVD0_5 } {
  # Procedure called to update C_PF0_ENTRY_RSVD0_5 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 6} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_5}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_5}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_5 { MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_5 PARAM_VALUE.C_PF0_ENTRY_RSVD0_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_5}] ${MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_5}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_RSVD0_5 { PARAM_VALUE.C_PF0_ENTRY_RSVD0_5 } {
  # Procedure called to validate C_PF0_ENTRY_RSVD0_5
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_TYPE_6 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_TYPE_6 } {
  # Procedure called to update C_PF0_ENTRY_TYPE_6 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 7} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_TYPE_6}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_TYPE_6}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_6 { MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_6 PARAM_VALUE.C_PF0_ENTRY_TYPE_6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_TYPE_6}] ${MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_6}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_TYPE_6 { PARAM_VALUE.C_PF0_ENTRY_TYPE_6 } {
  # Procedure called to validate C_PF0_ENTRY_TYPE_6
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_BAR_6 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_BAR_6 } {
  # Procedure called to update C_PF0_ENTRY_BAR_6 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 7} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_BAR_6}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_BAR_6}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_BAR_6 { MODELPARAM_VALUE.C_PF0_ENTRY_BAR_6 PARAM_VALUE.C_PF0_ENTRY_BAR_6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_BAR_6}] ${MODELPARAM_VALUE.C_PF0_ENTRY_BAR_6}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_BAR_6 { PARAM_VALUE.C_PF0_ENTRY_BAR_6 } {
  # Procedure called to validate C_PF0_ENTRY_BAR_6
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_ADDR_6 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_ADDR_6 } {
  # Procedure called to update C_PF0_ENTRY_ADDR_6 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 7} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_ADDR_6}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_ADDR_6}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_6 { MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_6 PARAM_VALUE.C_PF0_ENTRY_ADDR_6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_ADDR_6}] ${MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_6}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_ADDR_6 { PARAM_VALUE.C_PF0_ENTRY_ADDR_6 } {
  # Procedure called to validate C_PF0_ENTRY_ADDR_6
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_6 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_6 } {
  # Procedure called to update C_PF0_ENTRY_VERSION_TYPE_6 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 7} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_6}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_6}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_6 { MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_6 PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_6}] ${MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_6}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_6 { PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_6 } {
  # Procedure called to validate C_PF0_ENTRY_VERSION_TYPE_6
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_6 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_6 } {
  # Procedure called to update C_PF0_ENTRY_MAJOR_VERSION_6 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 7} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_6}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_6}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_6 { MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_6 PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_6}] ${MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_6}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_6 { PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_6 } {
  # Procedure called to validate C_PF0_ENTRY_MAJOR_VERSION_6
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_6 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_6 } {
  # Procedure called to update C_PF0_ENTRY_MINOR_VERSION_6 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 7} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_6}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_6}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_6 { MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_6 PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_6}] ${MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_6}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_6 { PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_6 } {
  # Procedure called to validate C_PF0_ENTRY_MINOR_VERSION_6
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_RSVD0_6 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_RSVD0_6 } {
  # Procedure called to update C_PF0_ENTRY_RSVD0_6 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 7} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_6}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_6}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_6 { MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_6 PARAM_VALUE.C_PF0_ENTRY_RSVD0_6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_6}] ${MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_6}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_RSVD0_6 { PARAM_VALUE.C_PF0_ENTRY_RSVD0_6 } {
  # Procedure called to validate C_PF0_ENTRY_RSVD0_6
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_TYPE_7 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_TYPE_7 } {
  # Procedure called to update C_PF0_ENTRY_TYPE_7 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 8} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_TYPE_7}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_TYPE_7}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_7 { MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_7 PARAM_VALUE.C_PF0_ENTRY_TYPE_7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_TYPE_7}] ${MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_7}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_TYPE_7 { PARAM_VALUE.C_PF0_ENTRY_TYPE_7 } {
  # Procedure called to validate C_PF0_ENTRY_TYPE_7
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_BAR_7 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_BAR_7 } {
  # Procedure called to update C_PF0_ENTRY_BAR_7 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 8} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_BAR_7}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_BAR_7}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_BAR_7 { MODELPARAM_VALUE.C_PF0_ENTRY_BAR_7 PARAM_VALUE.C_PF0_ENTRY_BAR_7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_BAR_7}] ${MODELPARAM_VALUE.C_PF0_ENTRY_BAR_7}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_BAR_7 { PARAM_VALUE.C_PF0_ENTRY_BAR_7 } {
  # Procedure called to validate C_PF0_ENTRY_BAR_7
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_ADDR_7 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_ADDR_7 } {
  # Procedure called to update C_PF0_ENTRY_ADDR_7 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 8} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_ADDR_7}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_ADDR_7}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_7 { MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_7 PARAM_VALUE.C_PF0_ENTRY_ADDR_7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_ADDR_7}] ${MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_7}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_ADDR_7 { PARAM_VALUE.C_PF0_ENTRY_ADDR_7 } {
  # Procedure called to validate C_PF0_ENTRY_ADDR_7
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_7 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_7 } {
  # Procedure called to update C_PF0_ENTRY_VERSION_TYPE_7 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 8} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_7}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_7}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_7 { MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_7 PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_7}] ${MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_7}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_7 { PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_7 } {
  # Procedure called to validate C_PF0_ENTRY_VERSION_TYPE_7
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_7 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_7 } {
  # Procedure called to update C_PF0_ENTRY_MAJOR_VERSION_7 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 8} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_7}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_7}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_7 { MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_7 PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_7}] ${MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_7}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_7 { PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_7 } {
  # Procedure called to validate C_PF0_ENTRY_MAJOR_VERSION_7
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_7 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_7 } {
  # Procedure called to update C_PF0_ENTRY_MINOR_VERSION_7 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 8} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_7}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_7}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_7 { MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_7 PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_7}] ${MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_7}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_7 { PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_7 } {
  # Procedure called to validate C_PF0_ENTRY_MINOR_VERSION_7
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_RSVD0_7 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_RSVD0_7 } {
  # Procedure called to update C_PF0_ENTRY_RSVD0_7 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 8} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_7}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_7}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_7 { MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_7 PARAM_VALUE.C_PF0_ENTRY_RSVD0_7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_7}] ${MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_7}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_RSVD0_7 { PARAM_VALUE.C_PF0_ENTRY_RSVD0_7 } {
  # Procedure called to validate C_PF0_ENTRY_RSVD0_7
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_TYPE_8 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_TYPE_8 } {
  # Procedure called to update C_PF0_ENTRY_TYPE_8 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 9} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_TYPE_8}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_TYPE_8}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_8 { MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_8 PARAM_VALUE.C_PF0_ENTRY_TYPE_8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_TYPE_8}] ${MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_8}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_TYPE_8 { PARAM_VALUE.C_PF0_ENTRY_TYPE_8 } {
  # Procedure called to validate C_PF0_ENTRY_TYPE_8
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_BAR_8 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_BAR_8 } {
  # Procedure called to update C_PF0_ENTRY_BAR_8 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 9} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_BAR_8}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_BAR_8}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_BAR_8 { MODELPARAM_VALUE.C_PF0_ENTRY_BAR_8 PARAM_VALUE.C_PF0_ENTRY_BAR_8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_BAR_8}] ${MODELPARAM_VALUE.C_PF0_ENTRY_BAR_8}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_BAR_8 { PARAM_VALUE.C_PF0_ENTRY_BAR_8 } {
  # Procedure called to validate C_PF0_ENTRY_BAR_8
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_ADDR_8 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_ADDR_8 } {
  # Procedure called to update C_PF0_ENTRY_ADDR_8 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 9} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_ADDR_8}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_ADDR_8}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_8 { MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_8 PARAM_VALUE.C_PF0_ENTRY_ADDR_8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_ADDR_8}] ${MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_8}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_ADDR_8 { PARAM_VALUE.C_PF0_ENTRY_ADDR_8 } {
  # Procedure called to validate C_PF0_ENTRY_ADDR_8
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_8 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_8 } {
  # Procedure called to update C_PF0_ENTRY_VERSION_TYPE_8 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 9} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_8}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_8}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_8 { MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_8 PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_8}] ${MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_8}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_8 { PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_8 } {
  # Procedure called to validate C_PF0_ENTRY_VERSION_TYPE_8
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_8 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_8 } {
  # Procedure called to update C_PF0_ENTRY_MAJOR_VERSION_8 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 9} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_8}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_8}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_8 { MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_8 PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_8}] ${MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_8}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_8 { PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_8 } {
  # Procedure called to validate C_PF0_ENTRY_MAJOR_VERSION_8
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_8 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_8 } {
  # Procedure called to update C_PF0_ENTRY_MINOR_VERSION_8 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 9} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_8}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_8}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_8 { MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_8 PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_8}] ${MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_8}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_8 { PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_8 } {
  # Procedure called to validate C_PF0_ENTRY_MINOR_VERSION_8
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_RSVD0_8 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_RSVD0_8 } {
  # Procedure called to update C_PF0_ENTRY_RSVD0_8 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 9} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_8}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_8}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_8 { MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_8 PARAM_VALUE.C_PF0_ENTRY_RSVD0_8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_8}] ${MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_8}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_RSVD0_8 { PARAM_VALUE.C_PF0_ENTRY_RSVD0_8 } {
  # Procedure called to validate C_PF0_ENTRY_RSVD0_8
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_TYPE_9 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_TYPE_9 } {
  # Procedure called to update C_PF0_ENTRY_TYPE_9 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 10} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_TYPE_9}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_TYPE_9}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_9 { MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_9 PARAM_VALUE.C_PF0_ENTRY_TYPE_9 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_TYPE_9}] ${MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_9}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_TYPE_9 { PARAM_VALUE.C_PF0_ENTRY_TYPE_9 } {
  # Procedure called to validate C_PF0_ENTRY_TYPE_9
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_BAR_9 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_BAR_9 } {
  # Procedure called to update C_PF0_ENTRY_BAR_9 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 10} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_BAR_9}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_BAR_9}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_BAR_9 { MODELPARAM_VALUE.C_PF0_ENTRY_BAR_9 PARAM_VALUE.C_PF0_ENTRY_BAR_9 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_BAR_9}] ${MODELPARAM_VALUE.C_PF0_ENTRY_BAR_9}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_BAR_9 { PARAM_VALUE.C_PF0_ENTRY_BAR_9 } {
  # Procedure called to validate C_PF0_ENTRY_BAR_9
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_ADDR_9 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_ADDR_9 } {
  # Procedure called to update C_PF0_ENTRY_ADDR_9 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 10} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_ADDR_9}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_ADDR_9}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_9 { MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_9 PARAM_VALUE.C_PF0_ENTRY_ADDR_9 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_ADDR_9}] ${MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_9}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_ADDR_9 { PARAM_VALUE.C_PF0_ENTRY_ADDR_9 } {
  # Procedure called to validate C_PF0_ENTRY_ADDR_9
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_9 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_9 } {
  # Procedure called to update C_PF0_ENTRY_VERSION_TYPE_9 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 10} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_9}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_9}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_9 { MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_9 PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_9 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_9}] ${MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_9}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_9 { PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_9 } {
  # Procedure called to validate C_PF0_ENTRY_VERSION_TYPE_9
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_9 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_9 } {
  # Procedure called to update C_PF0_ENTRY_MAJOR_VERSION_9 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 10} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_9}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_9}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_9 { MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_9 PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_9 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_9}] ${MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_9}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_9 { PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_9 } {
  # Procedure called to validate C_PF0_ENTRY_MAJOR_VERSION_9
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_9 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_9 } {
  # Procedure called to update C_PF0_ENTRY_MINOR_VERSION_9 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 10} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_9}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_9}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_9 { MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_9 PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_9 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_9}] ${MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_9}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_9 { PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_9 } {
  # Procedure called to validate C_PF0_ENTRY_MINOR_VERSION_9
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_RSVD0_9 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_RSVD0_9 } {
  # Procedure called to update C_PF0_ENTRY_RSVD0_9 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 10} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_9}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_9}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_9 { MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_9 PARAM_VALUE.C_PF0_ENTRY_RSVD0_9 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_9}] ${MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_9}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_RSVD0_9 { PARAM_VALUE.C_PF0_ENTRY_RSVD0_9 } {
  # Procedure called to validate C_PF0_ENTRY_RSVD0_9
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_TYPE_10 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_TYPE_10 } {
  # Procedure called to update C_PF0_ENTRY_TYPE_10 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 11} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_TYPE_10}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_TYPE_10}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_10 { MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_10 PARAM_VALUE.C_PF0_ENTRY_TYPE_10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_TYPE_10}] ${MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_10}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_TYPE_10 { PARAM_VALUE.C_PF0_ENTRY_TYPE_10 } {
  # Procedure called to validate C_PF0_ENTRY_TYPE_10
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_BAR_10 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_BAR_10 } {
  # Procedure called to update C_PF0_ENTRY_BAR_10 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 11} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_BAR_10}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_BAR_10}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_BAR_10 { MODELPARAM_VALUE.C_PF0_ENTRY_BAR_10 PARAM_VALUE.C_PF0_ENTRY_BAR_10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_BAR_10}] ${MODELPARAM_VALUE.C_PF0_ENTRY_BAR_10}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_BAR_10 { PARAM_VALUE.C_PF0_ENTRY_BAR_10 } {
  # Procedure called to validate C_PF0_ENTRY_BAR_10
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_ADDR_10 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_ADDR_10 } {
  # Procedure called to update C_PF0_ENTRY_ADDR_10 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 11} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_ADDR_10}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_ADDR_10}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_10 { MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_10 PARAM_VALUE.C_PF0_ENTRY_ADDR_10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_ADDR_10}] ${MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_10}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_ADDR_10 { PARAM_VALUE.C_PF0_ENTRY_ADDR_10 } {
  # Procedure called to validate C_PF0_ENTRY_ADDR_10
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_10 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_10 } {
  # Procedure called to update C_PF0_ENTRY_VERSION_TYPE_10 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 11} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_10}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_10}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_10 { MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_10 PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_10}] ${MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_10}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_10 { PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_10 } {
  # Procedure called to validate C_PF0_ENTRY_VERSION_TYPE_10
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_10 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_10 } {
  # Procedure called to update C_PF0_ENTRY_MAJOR_VERSION_10 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 11} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_10}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_10}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_10 { MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_10 PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_10}] ${MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_10}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_10 { PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_10 } {
  # Procedure called to validate C_PF0_ENTRY_MAJOR_VERSION_10
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_10 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_10 } {
  # Procedure called to update C_PF0_ENTRY_MINOR_VERSION_10 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 11} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_10}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_10}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_10 { MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_10 PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_10}] ${MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_10}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_10 { PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_10 } {
  # Procedure called to validate C_PF0_ENTRY_MINOR_VERSION_10
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_RSVD0_10 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_RSVD0_10 } {
  # Procedure called to update C_PF0_ENTRY_RSVD0_10 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 11} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_10}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_10}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_10 { MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_10 PARAM_VALUE.C_PF0_ENTRY_RSVD0_10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_10}] ${MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_10}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_RSVD0_10 { PARAM_VALUE.C_PF0_ENTRY_RSVD0_10 } {
  # Procedure called to validate C_PF0_ENTRY_RSVD0_10
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_TYPE_11 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_TYPE_11 } {
  # Procedure called to update C_PF0_ENTRY_TYPE_11 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 12} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_TYPE_11}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_TYPE_11}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_11 { MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_11 PARAM_VALUE.C_PF0_ENTRY_TYPE_11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_TYPE_11}] ${MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_11}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_TYPE_11 { PARAM_VALUE.C_PF0_ENTRY_TYPE_11 } {
  # Procedure called to validate C_PF0_ENTRY_TYPE_11
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_BAR_11 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_BAR_11 } {
  # Procedure called to update C_PF0_ENTRY_BAR_11 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 12} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_BAR_11}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_BAR_11}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_BAR_11 { MODELPARAM_VALUE.C_PF0_ENTRY_BAR_11 PARAM_VALUE.C_PF0_ENTRY_BAR_11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_BAR_11}] ${MODELPARAM_VALUE.C_PF0_ENTRY_BAR_11}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_BAR_11 { PARAM_VALUE.C_PF0_ENTRY_BAR_11 } {
  # Procedure called to validate C_PF0_ENTRY_BAR_11
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_ADDR_11 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_ADDR_11 } {
  # Procedure called to update C_PF0_ENTRY_ADDR_11 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 12} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_ADDR_11}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_ADDR_11}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_11 { MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_11 PARAM_VALUE.C_PF0_ENTRY_ADDR_11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_ADDR_11}] ${MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_11}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_ADDR_11 { PARAM_VALUE.C_PF0_ENTRY_ADDR_11 } {
  # Procedure called to validate C_PF0_ENTRY_ADDR_11
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_11 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_11 } {
  # Procedure called to update C_PF0_ENTRY_VERSION_TYPE_11 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 12} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_11}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_11}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_11 { MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_11 PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_11}] ${MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_11}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_11 { PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_11 } {
  # Procedure called to validate C_PF0_ENTRY_VERSION_TYPE_11
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_11 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_11 } {
  # Procedure called to update C_PF0_ENTRY_MAJOR_VERSION_11 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 12} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_11}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_11}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_11 { MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_11 PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_11}] ${MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_11}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_11 { PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_11 } {
  # Procedure called to validate C_PF0_ENTRY_MAJOR_VERSION_11
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_11 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_11 } {
  # Procedure called to update C_PF0_ENTRY_MINOR_VERSION_11 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 12} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_11}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_11}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_11 { MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_11 PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_11}] ${MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_11}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_11 { PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_11 } {
  # Procedure called to validate C_PF0_ENTRY_MINOR_VERSION_11
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_RSVD0_11 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_RSVD0_11 } {
  # Procedure called to update C_PF0_ENTRY_RSVD0_11 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 12} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_11}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_11}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_11 { MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_11 PARAM_VALUE.C_PF0_ENTRY_RSVD0_11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_11}] ${MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_11}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_RSVD0_11 { PARAM_VALUE.C_PF0_ENTRY_RSVD0_11 } {
  # Procedure called to validate C_PF0_ENTRY_RSVD0_11
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_TYPE_12 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_TYPE_12 } {
  # Procedure called to update C_PF0_ENTRY_TYPE_12 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 13} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_TYPE_12}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_TYPE_12}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_12 { MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_12 PARAM_VALUE.C_PF0_ENTRY_TYPE_12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_TYPE_12}] ${MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_12}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_TYPE_12 { PARAM_VALUE.C_PF0_ENTRY_TYPE_12 } {
  # Procedure called to validate C_PF0_ENTRY_TYPE_12
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_BAR_12 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_BAR_12 } {
  # Procedure called to update C_PF0_ENTRY_BAR_12 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 13} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_BAR_12}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_BAR_12}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_BAR_12 { MODELPARAM_VALUE.C_PF0_ENTRY_BAR_12 PARAM_VALUE.C_PF0_ENTRY_BAR_12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_BAR_12}] ${MODELPARAM_VALUE.C_PF0_ENTRY_BAR_12}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_BAR_12 { PARAM_VALUE.C_PF0_ENTRY_BAR_12 } {
  # Procedure called to validate C_PF0_ENTRY_BAR_12
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_ADDR_12 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_ADDR_12 } {
  # Procedure called to update C_PF0_ENTRY_ADDR_12 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 13} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_ADDR_12}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_ADDR_12}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_12 { MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_12 PARAM_VALUE.C_PF0_ENTRY_ADDR_12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_ADDR_12}] ${MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_12}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_ADDR_12 { PARAM_VALUE.C_PF0_ENTRY_ADDR_12 } {
  # Procedure called to validate C_PF0_ENTRY_ADDR_12
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_12 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_12 } {
  # Procedure called to update C_PF0_ENTRY_VERSION_TYPE_12 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 13} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_12}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_12}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_12 { MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_12 PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_12}] ${MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_12}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_12 { PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_12 } {
  # Procedure called to validate C_PF0_ENTRY_VERSION_TYPE_12
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_12 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_12 } {
  # Procedure called to update C_PF0_ENTRY_MAJOR_VERSION_12 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 13} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_12}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_12}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_12 { MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_12 PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_12}] ${MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_12}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_12 { PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_12 } {
  # Procedure called to validate C_PF0_ENTRY_MAJOR_VERSION_12
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_12 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_12 } {
  # Procedure called to update C_PF0_ENTRY_MINOR_VERSION_12 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 13} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_12}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_12}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_12 { MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_12 PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_12}] ${MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_12}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_12 { PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_12 } {
  # Procedure called to validate C_PF0_ENTRY_MINOR_VERSION_12
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_RSVD0_12 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_RSVD0_12 } {
  # Procedure called to update C_PF0_ENTRY_RSVD0_12 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 13} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_12}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_12}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_12 { MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_12 PARAM_VALUE.C_PF0_ENTRY_RSVD0_12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_12}] ${MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_12}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_RSVD0_12 { PARAM_VALUE.C_PF0_ENTRY_RSVD0_12 } {
  # Procedure called to validate C_PF0_ENTRY_RSVD0_12
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_TYPE_13 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_TYPE_13 } {
  # Procedure called to update C_PF0_ENTRY_TYPE_13 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 14} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_TYPE_13}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_TYPE_13}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_13 { MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_13 PARAM_VALUE.C_PF0_ENTRY_TYPE_13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_TYPE_13}] ${MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_13}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_TYPE_13 { PARAM_VALUE.C_PF0_ENTRY_TYPE_13 } {
  # Procedure called to validate C_PF0_ENTRY_TYPE_13
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_BAR_13 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_BAR_13 } {
  # Procedure called to update C_PF0_ENTRY_BAR_13 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 14} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_BAR_13}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_BAR_13}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_BAR_13 { MODELPARAM_VALUE.C_PF0_ENTRY_BAR_13 PARAM_VALUE.C_PF0_ENTRY_BAR_13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_BAR_13}] ${MODELPARAM_VALUE.C_PF0_ENTRY_BAR_13}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_BAR_13 { PARAM_VALUE.C_PF0_ENTRY_BAR_13 } {
  # Procedure called to validate C_PF0_ENTRY_BAR_13
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_ADDR_13 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_ADDR_13 } {
  # Procedure called to update C_PF0_ENTRY_ADDR_13 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 14} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_ADDR_13}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_ADDR_13}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_13 { MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_13 PARAM_VALUE.C_PF0_ENTRY_ADDR_13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_ADDR_13}] ${MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_13}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_ADDR_13 { PARAM_VALUE.C_PF0_ENTRY_ADDR_13 } {
  # Procedure called to validate C_PF0_ENTRY_ADDR_13
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_13 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_13 } {
  # Procedure called to update C_PF0_ENTRY_VERSION_TYPE_13 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 14} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_13}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_13}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_13 { MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_13 PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_13}] ${MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_13}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_13 { PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_13 } {
  # Procedure called to validate C_PF0_ENTRY_VERSION_TYPE_13
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_13 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_13 } {
  # Procedure called to update C_PF0_ENTRY_MAJOR_VERSION_13 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 14} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_13}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_13}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_13 { MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_13 PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_13}] ${MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_13}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_13 { PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_13 } {
  # Procedure called to validate C_PF0_ENTRY_MAJOR_VERSION_13
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_13 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_13 } {
  # Procedure called to update C_PF0_ENTRY_MINOR_VERSION_13 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 14} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_13}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_13}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_13 { MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_13 PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_13}] ${MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_13}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_13 { PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_13 } {
  # Procedure called to validate C_PF0_ENTRY_MINOR_VERSION_13
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_RSVD0_13 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_RSVD0_13 } {
  # Procedure called to update C_PF0_ENTRY_RSVD0_13 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 14} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_13}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_13}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_13 { MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_13 PARAM_VALUE.C_PF0_ENTRY_RSVD0_13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_13}] ${MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_13}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_RSVD0_13 { PARAM_VALUE.C_PF0_ENTRY_RSVD0_13 } {
  # Procedure called to validate C_PF0_ENTRY_RSVD0_13
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_TYPE_14 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_TYPE_14 } {
  # Procedure called to update C_PF0_ENTRY_TYPE_14 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 15} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_TYPE_14}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_TYPE_14}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_14 { MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_14 PARAM_VALUE.C_PF0_ENTRY_TYPE_14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_TYPE_14}] ${MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_14}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_TYPE_14 { PARAM_VALUE.C_PF0_ENTRY_TYPE_14 } {
  # Procedure called to validate C_PF0_ENTRY_TYPE_14
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_BAR_14 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_BAR_14 } {
  # Procedure called to update C_PF0_ENTRY_BAR_14 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 15} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_BAR_14}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_BAR_14}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_BAR_14 { MODELPARAM_VALUE.C_PF0_ENTRY_BAR_14 PARAM_VALUE.C_PF0_ENTRY_BAR_14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_BAR_14}] ${MODELPARAM_VALUE.C_PF0_ENTRY_BAR_14}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_BAR_14 { PARAM_VALUE.C_PF0_ENTRY_BAR_14 } {
  # Procedure called to validate C_PF0_ENTRY_BAR_14
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_ADDR_14 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_ADDR_14 } {
  # Procedure called to update C_PF0_ENTRY_ADDR_14 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 15} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_ADDR_14}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_ADDR_14}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_14 { MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_14 PARAM_VALUE.C_PF0_ENTRY_ADDR_14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_ADDR_14}] ${MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_14}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_ADDR_14 { PARAM_VALUE.C_PF0_ENTRY_ADDR_14 } {
  # Procedure called to validate C_PF0_ENTRY_ADDR_14
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_14 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_14 } {
  # Procedure called to update C_PF0_ENTRY_VERSION_TYPE_14 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 15} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_14}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_14}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_14 { MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_14 PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_14}] ${MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_14}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_14 { PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_14 } {
  # Procedure called to validate C_PF0_ENTRY_VERSION_TYPE_14
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_14 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_14 } {
  # Procedure called to update C_PF0_ENTRY_MAJOR_VERSION_14 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 15} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_14}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_14}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_14 { MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_14 PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_14}] ${MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_14}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_14 { PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_14 } {
  # Procedure called to validate C_PF0_ENTRY_MAJOR_VERSION_14
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_14 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_14 } {
  # Procedure called to update C_PF0_ENTRY_MINOR_VERSION_14 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 15} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_14}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_14}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_14 { MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_14 PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_14}] ${MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_14}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_14 { PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_14 } {
  # Procedure called to validate C_PF0_ENTRY_MINOR_VERSION_14
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_RSVD0_14 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_RSVD0_14 } {
  # Procedure called to update C_PF0_ENTRY_RSVD0_14 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots >= 15} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_14}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_14}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_14 { MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_14 PARAM_VALUE.C_PF0_ENTRY_RSVD0_14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_14}] ${MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_14}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_RSVD0_14 { PARAM_VALUE.C_PF0_ENTRY_RSVD0_14 } {
  # Procedure called to validate C_PF0_ENTRY_RSVD0_14
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_TYPE_15 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_TYPE_15 } {
  # Procedure called to update C_PF0_ENTRY_TYPE_15 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots == 16} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_TYPE_15}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_TYPE_15}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_15 { MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_15 PARAM_VALUE.C_PF0_ENTRY_TYPE_15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_TYPE_15}] ${MODELPARAM_VALUE.C_PF0_ENTRY_TYPE_15}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_TYPE_15 { PARAM_VALUE.C_PF0_ENTRY_TYPE_15 } {
  # Procedure called to validate C_PF0_ENTRY_TYPE_15
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_BAR_15 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_BAR_15 } {
  # Procedure called to update C_PF0_ENTRY_BAR_15 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots == 16} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_BAR_15}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_BAR_15}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_BAR_15 { MODELPARAM_VALUE.C_PF0_ENTRY_BAR_15 PARAM_VALUE.C_PF0_ENTRY_BAR_15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_BAR_15}] ${MODELPARAM_VALUE.C_PF0_ENTRY_BAR_15}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_BAR_15 { PARAM_VALUE.C_PF0_ENTRY_BAR_15 } {
  # Procedure called to validate C_PF0_ENTRY_BAR_15
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_ADDR_15 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_ADDR_15 } {
  # Procedure called to update C_PF0_ENTRY_ADDR_15 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots == 16} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_ADDR_15}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_ADDR_15}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_15 { MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_15 PARAM_VALUE.C_PF0_ENTRY_ADDR_15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_ADDR_15}] ${MODELPARAM_VALUE.C_PF0_ENTRY_ADDR_15}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_ADDR_15 { PARAM_VALUE.C_PF0_ENTRY_ADDR_15 } {
  # Procedure called to validate C_PF0_ENTRY_ADDR_15
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_15 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_15 } {
  # Procedure called to update C_PF0_ENTRY_VERSION_TYPE_15 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots == 16} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_15}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_15}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_15 { MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_15 PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_15}] ${MODELPARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_15}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_15 { PARAM_VALUE.C_PF0_ENTRY_VERSION_TYPE_15 } {
  # Procedure called to validate C_PF0_ENTRY_VERSION_TYPE_15
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_15 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_15 } {
  # Procedure called to update C_PF0_ENTRY_MAJOR_VERSION_15 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots == 16} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_15}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_15}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_15 { MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_15 PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_15}] ${MODELPARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_15}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_15 { PARAM_VALUE.C_PF0_ENTRY_MAJOR_VERSION_15 } {
  # Procedure called to validate C_PF0_ENTRY_MAJOR_VERSION_15
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_15 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_15 } {
  # Procedure called to update C_PF0_ENTRY_MINOR_VERSION_15 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots == 16} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_15}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_15}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_15 { MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_15 PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_15}] ${MODELPARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_15}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_15 { PARAM_VALUE.C_PF0_ENTRY_MINOR_VERSION_15 } {
  # Procedure called to validate C_PF0_ENTRY_MINOR_VERSION_15
  return true
}

proc update_PARAM_VALUE.C_PF0_ENTRY_RSVD0_15 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF0_ENTRY_RSVD0_15 } {
  # Procedure called to update C_PF0_ENTRY_RSVD0_15 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 1} {
  	if {$pf0_num_slots == 16} {
    	set_property enabled true ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_15}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_15}
  }      
}

proc update_MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_15 { MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_15 PARAM_VALUE.C_PF0_ENTRY_RSVD0_15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF0_ENTRY_RSVD0_15}] ${MODELPARAM_VALUE.C_PF0_ENTRY_RSVD0_15}
}


proc validate_PARAM_VALUE.C_PF0_ENTRY_RSVD0_15 { PARAM_VALUE.C_PF0_ENTRY_RSVD0_15 } {
  # Procedure called to validate C_PF0_ENTRY_RSVD0_15
  return true
}

proc update_PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE } {
  # Procedure called to update C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  if {$num_pfs >= 2} {
    set_property enabled true ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE { MODELPARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}] ${MODELPARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}
}


proc validate_PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE { PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE } {
  # Procedure called to validate C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE
  return true
}

proc update_gui_for_PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE {IPINST PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE} {
	# Procedure called to update C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE when any of the dependent parameters in the arguments change
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$pf0_num_slots == 1} {	
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 15 Configuration" -of $IPINST]						
	} elseif {$pf0_num_slots == 2} {
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 15 Configuration" -of $IPINST]			
	}	elseif {$pf0_num_slots == 3} {
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 15 Configuration" -of $IPINST]			
	} elseif {$pf0_num_slots == 4} {
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 15 Configuration" -of $IPINST]			
	}	elseif {$pf0_num_slots == 5} {
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 15 Configuration" -of $IPINST]			
	} elseif {$pf0_num_slots == 6} {
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 15 Configuration" -of $IPINST]			
	}	elseif {$pf0_num_slots == 7} {
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 15 Configuration" -of $IPINST]			
	} elseif {$pf0_num_slots == 8} {
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 15 Configuration" -of $IPINST]			
	}	elseif {$pf0_num_slots == 9} {
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 15 Configuration" -of $IPINST]			
	} elseif {$pf0_num_slots == 10} {
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 15 Configuration" -of $IPINST]			
	}	elseif {$pf0_num_slots == 11} {
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 15 Configuration" -of $IPINST]			
	} elseif {$pf0_num_slots == 12} {
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 15 Configuration" -of $IPINST]			
	}	elseif {$pf0_num_slots == 13} {
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 15 Configuration" -of $IPINST]			
	} elseif {$pf0_num_slots == 14} {
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 15 Configuration" -of $IPINST]	
	} elseif {$pf0_num_slots == 15} {
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF1 - Table Entry 15 Configuration" -of $IPINST]					
	}	else {
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF1 - Table Entry 15 Configuration" -of $IPINST]			
	}	
}

proc update_PARAM_VALUE.C_PF1_BAR_INDEX { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_BAR_INDEX } {
  # Procedure called to update C_PF1_BAR_INDEX when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  if {$num_pfs >= 2} {
    set_property enabled true ${PARAM_VALUE.C_PF1_BAR_INDEX}
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_BAR_INDEX}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_BAR_INDEX { MODELPARAM_VALUE.C_PF1_BAR_INDEX PARAM_VALUE.C_PF1_BAR_INDEX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_BAR_INDEX}] ${MODELPARAM_VALUE.C_PF1_BAR_INDEX}
}


proc validate_PARAM_VALUE.C_PF1_BAR_INDEX { PARAM_VALUE.C_PF1_BAR_INDEX } {
  # Procedure called to validate C_PF1_BAR_INDEX
  return true
}

proc update_PARAM_VALUE.C_PF1_LOW_OFFSET { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_LOW_OFFSET } {
  # Procedure called to update C_PF1_LOW_OFFSET when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  if {$num_pfs >= 2} {
    set_property enabled true ${PARAM_VALUE.C_PF1_LOW_OFFSET}
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_LOW_OFFSET}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_LOW_OFFSET { MODELPARAM_VALUE.C_PF1_LOW_OFFSET PARAM_VALUE.C_PF1_LOW_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_LOW_OFFSET}] ${MODELPARAM_VALUE.C_PF1_LOW_OFFSET}
}


proc validate_PARAM_VALUE.C_PF1_LOW_OFFSET { PARAM_VALUE.C_PF1_LOW_OFFSET } {
  # Procedure called to validate C_PF1_LOW_OFFSET
  return true
}

proc update_PARAM_VALUE.C_PF1_HIGH_OFFSET { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_HIGH_OFFSET } {
  # Procedure called to update C_PF1_HIGH_OFFSET when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  if {$num_pfs >= 2} {
    set_property enabled true ${PARAM_VALUE.C_PF1_HIGH_OFFSET}
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_HIGH_OFFSET}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_HIGH_OFFSET { MODELPARAM_VALUE.C_PF1_HIGH_OFFSET PARAM_VALUE.C_PF1_HIGH_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_HIGH_OFFSET}] ${MODELPARAM_VALUE.C_PF1_HIGH_OFFSET}
}


proc validate_PARAM_VALUE.C_PF1_HIGH_OFFSET { PARAM_VALUE.C_PF1_HIGH_OFFSET } {
  # Procedure called to validate C_PF1_HIGH_OFFSET
  return true
}

proc update_PARAM_VALUE.C_PF1_HAS_UUID_ROM { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_HAS_UUID_ROM } {
  # Procedure called to update C_PF1_HAS_UUID_ROM when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  if {$num_pfs >= 2} {
    set_property enabled true ${PARAM_VALUE.C_PF1_HAS_UUID_ROM}
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_HAS_UUID_ROM}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_HAS_UUID_ROM { MODELPARAM_VALUE.C_PF1_HAS_UUID_ROM PARAM_VALUE.C_PF1_HAS_UUID_ROM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  if {[get_property value ${PARAM_VALUE.C_PF1_HAS_UUID_ROM}]} {
    set_property value 1 ${MODELPARAM_VALUE.C_PF1_HAS_UUID_ROM}
  } else {
    set_property value 0 ${MODELPARAM_VALUE.C_PF1_HAS_UUID_ROM}
  }  
}

proc validate_PARAM_VALUE.C_PF1_HAS_UUID_ROM { PARAM_VALUE.C_PF1_HAS_UUID_ROM } {
  # Procedure called to validate C_PF1_HAS_UUID_ROM
  return true
}

proc update_gui_for_PARAM_VALUE.C_PF1_HAS_UUID_ROM {IPINST PARAM_VALUE.C_PF1_HAS_UUID_ROM} {
	# Procedure called to update C_PF1_HAS_UUID_ROM when any of the dependent parameters in the arguments change
	set has_uuid_rom [get_property value ${PARAM_VALUE.C_PF1_HAS_UUID_ROM}]
  if {[get_property value ${PARAM_VALUE.C_PF1_HAS_UUID_ROM}]} {	
		set_property visible true [ipgui::get_guiparamspec -name C_PF1_UUID_ROM_INITIAL_VAL -of $IPINST ]
	} else {
		set_property visible false [ipgui::get_guiparamspec -name C_PF1_UUID_ROM_INITIAL_VAL -of $IPINST ]
	}
}

proc update_PARAM_VALUE.C_PF1_UUID_ROM_INITIAL_VAL { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_UUID_ROM_INITIAL_VAL } {
  # Procedure called to update C_PF1_UUID_ROM_INITIAL_VAL when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  if {$num_pfs >= 2} {
    set_property enabled true ${PARAM_VALUE.C_PF1_UUID_ROM_INITIAL_VAL}
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_UUID_ROM_INITIAL_VAL}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_UUID_ROM_INIT { MODELPARAM_VALUE.C_PF1_UUID_ROM_INIT PARAM_VALUE.C_PF1_UUID_ROM_INITIAL_VAL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set uuid ""
  set uuid_chars [split [get_property value ${PARAM_VALUE.C_PF1_UUID_ROM_INITIAL_VAL}] {}]

  # Split the UUID into dword's and rotate to match the XPM_MEM string init format
  for {set dw 3} {$dw >= 0} {incr dw -1} {
    set dword ""
    for {set n 0} {$n < 8} {incr n} {
      append dword [lindex $uuid_chars [expr $dw * 8 + $n]]
    }
    if {[expr $dw == 3]} {
      append uuid $dword
    } else {
      append uuid "," $dword
    }
  }
	set_property value $uuid ${MODELPARAM_VALUE.C_PF1_UUID_ROM_INIT}

}

proc validate_PARAM_VALUE.C_PF1_UUID_ROM_INITIAL_VAL { PARAM_VALUE.C_PF1_UUID_ROM_INITIAL_VAL IPINST } {
    # Verify the UUID string is 32 characters in length
    set uuid_length [string length [get_property value ${PARAM_VALUE.C_PF1_UUID_ROM_INITIAL_VAL}]]

    if {[expr $uuid_length != 32]} {
      set_property errmsg "UUID string length of $uuid_length is not equal to 32" [ipgui::get_paramspec -name C_PF1_UUID_ROM_INITIAL_VAL -of $IPINST ]
      return false
    }

    # Verify the UUID string is valid hexadecimal
    return [RangeCheck4HexDec C_PF1_UUID_ROM_INITIAL_VAL [get_property value ${PARAM_VALUE.C_PF1_UUID_ROM_INITIAL_VAL}] 00000000000000000000000000000000 FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF $IPINST]
}

proc update_PARAM_VALUE.C_PF1_S_AXI_DATA_WIDTH { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_S_AXI_DATA_WIDTH } {
  # Procedure called to update C_PF1_S_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  if {$num_pfs >= 2} {
    set_property enabled true ${PARAM_VALUE.C_PF1_S_AXI_DATA_WIDTH}
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_S_AXI_DATA_WIDTH}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_S_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_PF1_S_AXI_DATA_WIDTH PARAM_VALUE.C_PF1_S_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_S_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_PF1_S_AXI_DATA_WIDTH}
}


proc validate_PARAM_VALUE.C_PF1_S_AXI_DATA_WIDTH { PARAM_VALUE.C_PF1_S_AXI_DATA_WIDTH } {
  # Procedure called to validate C_PF1_S_AXI_DATA_WIDTH
  return true
}

proc update_PARAM_VALUE.C_PF1_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_S_AXI_ADDR_WIDTH } {
  # Procedure called to update C_PF1_S_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  if {$num_pfs >= 2} {
    set_property enabled true ${PARAM_VALUE.C_PF1_S_AXI_ADDR_WIDTH}
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_S_AXI_ADDR_WIDTH}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_S_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_PF1_S_AXI_ADDR_WIDTH PARAM_VALUE.C_PF1_S_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_S_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_PF1_S_AXI_ADDR_WIDTH}
}


proc validate_PARAM_VALUE.C_PF1_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_PF1_S_AXI_ADDR_WIDTH } {
  # Procedure called to validate C_PF1_S_AXI_ADDR_WIDTH
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_TYPE_0 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_TYPE_0 } {
  # Procedure called to update C_PF1_ENTRY_TYPE_0 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 1} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_TYPE_0}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_TYPE_0}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_0 { MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_0 PARAM_VALUE.C_PF1_ENTRY_TYPE_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_TYPE_0}] ${MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_0}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_TYPE_0 { PARAM_VALUE.C_PF1_ENTRY_TYPE_0 } {
  # Procedure called to validate C_PF1_ENTRY_TYPE_0
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_BAR_0 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_BAR_0 } {
  # Procedure called to update C_PF1_ENTRY_BAR_0 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 1} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_BAR_0}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_BAR_0}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_BAR_0 { MODELPARAM_VALUE.C_PF1_ENTRY_BAR_0 PARAM_VALUE.C_PF1_ENTRY_BAR_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_BAR_0}] ${MODELPARAM_VALUE.C_PF1_ENTRY_BAR_0}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_BAR_0 { PARAM_VALUE.C_PF1_ENTRY_BAR_0 } {
  # Procedure called to validate C_PF1_ENTRY_BAR_0
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_ADDR_0 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_ADDR_0 } {
  # Procedure called to update C_PF1_ENTRY_ADDR_0 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 1} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_ADDR_0}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_ADDR_0}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_0 { MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_0 PARAM_VALUE.C_PF1_ENTRY_ADDR_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_ADDR_0}] ${MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_0}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_ADDR_0 { PARAM_VALUE.C_PF1_ENTRY_ADDR_0 } {
  # Procedure called to validate C_PF1_ENTRY_ADDR_0
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_0 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_0 } {
  # Procedure called to update C_PF1_ENTRY_VERSION_TYPE_0 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 1} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_0}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_0}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_0 { MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_0 PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_0}] ${MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_0}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_0 { PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_0 } {
  # Procedure called to validate C_PF1_ENTRY_VERSION_TYPE_0
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_0 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_0 } {
  # Procedure called to update C_PF1_ENTRY_MAJOR_VERSION_0 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 1} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_0}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_0}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_0 { MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_0 PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_0}] ${MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_0}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_0 { PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_0 } {
  # Procedure called to validate C_PF1_ENTRY_MAJOR_VERSION_0
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_0 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_0 } {
  # Procedure called to update C_PF1_ENTRY_MINOR_VERSION_0 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 1} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_0}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_0}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_0 { MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_0 PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_0}] ${MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_0}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_0 { PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_0 } {
  # Procedure called to validate C_PF1_ENTRY_MINOR_VERSION_0
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_RSVD0_0 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_RSVD0_0 } {
  # Procedure called to update C_PF1_ENTRY_RSVD0_0 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 1} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_0}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_0}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_0 { MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_0 PARAM_VALUE.C_PF1_ENTRY_RSVD0_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_0}] ${MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_0}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_RSVD0_0 { PARAM_VALUE.C_PF1_ENTRY_RSVD0_0 } {
  # Procedure called to validate C_PF1_ENTRY_RSVD0_0
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_TYPE_1 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_TYPE_1 } {
  # Procedure called to update C_PF1_ENTRY_TYPE_1 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 2} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_TYPE_1}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_TYPE_1}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_1 { MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_1 PARAM_VALUE.C_PF1_ENTRY_TYPE_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_TYPE_1}] ${MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_1}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_TYPE_1 { PARAM_VALUE.C_PF1_ENTRY_TYPE_1 } {
  # Procedure called to validate C_PF1_ENTRY_TYPE_1
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_BAR_1 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_BAR_1 } {
  # Procedure called to update C_PF1_ENTRY_BAR_1 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 2} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_BAR_1}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_BAR_1}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_BAR_1 { MODELPARAM_VALUE.C_PF1_ENTRY_BAR_1 PARAM_VALUE.C_PF1_ENTRY_BAR_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_BAR_1}] ${MODELPARAM_VALUE.C_PF1_ENTRY_BAR_1}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_BAR_1 { PARAM_VALUE.C_PF1_ENTRY_BAR_1 } {
  # Procedure called to validate C_PF1_ENTRY_BAR_1
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_ADDR_1 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_ADDR_1 } {
  # Procedure called to update C_PF1_ENTRY_ADDR_1 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 2} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_ADDR_1}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_ADDR_1}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_1 { MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_1 PARAM_VALUE.C_PF1_ENTRY_ADDR_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_ADDR_1}] ${MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_1}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_ADDR_1 { PARAM_VALUE.C_PF1_ENTRY_ADDR_1 } {
  # Procedure called to validate C_PF1_ENTRY_ADDR_1
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_1 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_1 } {
  # Procedure called to update C_PF1_ENTRY_VERSION_TYPE_1 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 2} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_1}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_1}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_1 { MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_1 PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_1}] ${MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_1}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_1 { PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_1 } {
  # Procedure called to validate C_PF1_ENTRY_VERSION_TYPE_1
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_1 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_1 } {
  # Procedure called to update C_PF1_ENTRY_MAJOR_VERSION_1 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 2} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_1}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_1}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_1 { MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_1 PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_1}] ${MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_1}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_1 { PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_1 } {
  # Procedure called to validate C_PF1_ENTRY_MAJOR_VERSION_1
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_1 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_1 } {
  # Procedure called to update C_PF1_ENTRY_MINOR_VERSION_1 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 2} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_1}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_1}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_1 { MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_1 PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_1}] ${MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_1}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_1 { PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_1 } {
  # Procedure called to validate C_PF1_ENTRY_MINOR_VERSION_1
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_RSVD0_1 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_RSVD0_1 } {
  # Procedure called to update C_PF1_ENTRY_RSVD0_1 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 2} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_1}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_1}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_1 { MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_1 PARAM_VALUE.C_PF1_ENTRY_RSVD0_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_1}] ${MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_1}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_RSVD0_1 { PARAM_VALUE.C_PF1_ENTRY_RSVD0_1 } {
  # Procedure called to validate C_PF1_ENTRY_RSVD0_1
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_TYPE_2 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_TYPE_2 } {
  # Procedure called to update C_PF1_ENTRY_TYPE_2 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 3} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_TYPE_2}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_TYPE_2}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_2 { MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_2 PARAM_VALUE.C_PF1_ENTRY_TYPE_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_TYPE_2}] ${MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_2}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_TYPE_2 { PARAM_VALUE.C_PF1_ENTRY_TYPE_2 } {
  # Procedure called to validate C_PF1_ENTRY_TYPE_2
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_BAR_2 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_BAR_2 } {
  # Procedure called to update C_PF1_ENTRY_BAR_2 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 3} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_BAR_2}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_BAR_2}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_BAR_2 { MODELPARAM_VALUE.C_PF1_ENTRY_BAR_2 PARAM_VALUE.C_PF1_ENTRY_BAR_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_BAR_2}] ${MODELPARAM_VALUE.C_PF1_ENTRY_BAR_2}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_BAR_2 { PARAM_VALUE.C_PF1_ENTRY_BAR_2 } {
  # Procedure called to validate C_PF1_ENTRY_BAR_2
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_ADDR_2 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_ADDR_2 } {
  # Procedure called to update C_PF1_ENTRY_ADDR_2 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 3} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_ADDR_2}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_ADDR_2}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_2 { MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_2 PARAM_VALUE.C_PF1_ENTRY_ADDR_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_ADDR_2}] ${MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_2}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_ADDR_2 { PARAM_VALUE.C_PF1_ENTRY_ADDR_2 } {
  # Procedure called to validate C_PF1_ENTRY_ADDR_2
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_2 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_2 } {
  # Procedure called to update C_PF1_ENTRY_VERSION_TYPE_2 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 3} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_2}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_2}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_2 { MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_2 PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_2}] ${MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_2}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_2 { PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_2 } {
  # Procedure called to validate C_PF1_ENTRY_VERSION_TYPE_2
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_2 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_2 } {
  # Procedure called to update C_PF1_ENTRY_MAJOR_VERSION_2 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 3} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_2}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_2}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_2 { MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_2 PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_2}] ${MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_2}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_2 { PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_2 } {
  # Procedure called to validate C_PF1_ENTRY_MAJOR_VERSION_2
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_2 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_2 } {
  # Procedure called to update C_PF1_ENTRY_MINOR_VERSION_2 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 3} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_2}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_2}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_2 { MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_2 PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_2}] ${MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_2}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_2 { PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_2 } {
  # Procedure called to validate C_PF1_ENTRY_MINOR_VERSION_2
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_RSVD0_2 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_RSVD0_2 } {
  # Procedure called to update C_PF1_ENTRY_RSVD0_2 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 3} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_2}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_2}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_2 { MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_2 PARAM_VALUE.C_PF1_ENTRY_RSVD0_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_2}] ${MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_2}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_RSVD0_2 { PARAM_VALUE.C_PF1_ENTRY_RSVD0_2 } {
  # Procedure called to validate C_PF1_ENTRY_RSVD0_2
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_TYPE_3 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_TYPE_3 } {
  # Procedure called to update C_PF1_ENTRY_TYPE_3 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 4} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_TYPE_3}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_TYPE_3}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_3 { MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_3 PARAM_VALUE.C_PF1_ENTRY_TYPE_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_TYPE_3}] ${MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_3}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_TYPE_3 { PARAM_VALUE.C_PF1_ENTRY_TYPE_3 } {
  # Procedure called to validate C_PF1_ENTRY_TYPE_3
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_BAR_3 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_BAR_3 } {
  # Procedure called to update C_PF1_ENTRY_BAR_3 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 4} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_BAR_3}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_BAR_3}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_BAR_3 { MODELPARAM_VALUE.C_PF1_ENTRY_BAR_3 PARAM_VALUE.C_PF1_ENTRY_BAR_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_BAR_3}] ${MODELPARAM_VALUE.C_PF1_ENTRY_BAR_3}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_BAR_3 { PARAM_VALUE.C_PF1_ENTRY_BAR_3 } {
  # Procedure called to validate C_PF1_ENTRY_BAR_3
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_ADDR_3 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_ADDR_3 } {
  # Procedure called to update C_PF1_ENTRY_ADDR_3 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 4} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_ADDR_3}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_ADDR_3}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_3 { MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_3 PARAM_VALUE.C_PF1_ENTRY_ADDR_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_ADDR_3}] ${MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_3}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_ADDR_3 { PARAM_VALUE.C_PF1_ENTRY_ADDR_3 } {
  # Procedure called to validate C_PF1_ENTRY_ADDR_3
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_3 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_3 } {
  # Procedure called to update C_PF1_ENTRY_VERSION_TYPE_3 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 4} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_3}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_3}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_3 { MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_3 PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_3}] ${MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_3}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_3 { PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_3 } {
  # Procedure called to validate C_PF1_ENTRY_VERSION_TYPE_3
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_3 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_3 } {
  # Procedure called to update C_PF1_ENTRY_MAJOR_VERSION_3 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 4} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_3}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_3}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_3 { MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_3 PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_3}] ${MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_3}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_3 { PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_3 } {
  # Procedure called to validate C_PF1_ENTRY_MAJOR_VERSION_3
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_3 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_3 } {
  # Procedure called to update C_PF1_ENTRY_MINOR_VERSION_3 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 4} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_3}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_3}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_3 { MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_3 PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_3}] ${MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_3}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_3 { PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_3 } {
  # Procedure called to validate C_PF1_ENTRY_MINOR_VERSION_3
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_RSVD0_3 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_RSVD0_3 } {
  # Procedure called to update C_PF1_ENTRY_RSVD0_3 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 4} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_3}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_3}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_3 { MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_3 PARAM_VALUE.C_PF1_ENTRY_RSVD0_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_3}] ${MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_3}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_RSVD0_3 { PARAM_VALUE.C_PF1_ENTRY_RSVD0_3 } {
  # Procedure called to validate C_PF1_ENTRY_RSVD0_3
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_TYPE_4 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_TYPE_4 } {
  # Procedure called to update C_PF1_ENTRY_TYPE_4 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 5} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_TYPE_4}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_TYPE_4}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_4 { MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_4 PARAM_VALUE.C_PF1_ENTRY_TYPE_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_TYPE_4}] ${MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_4}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_TYPE_4 { PARAM_VALUE.C_PF1_ENTRY_TYPE_4 } {
  # Procedure called to validate C_PF1_ENTRY_TYPE_4
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_BAR_4 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_BAR_4 } {
  # Procedure called to update C_PF1_ENTRY_BAR_4 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 5} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_BAR_4}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_BAR_4}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_BAR_4 { MODELPARAM_VALUE.C_PF1_ENTRY_BAR_4 PARAM_VALUE.C_PF1_ENTRY_BAR_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_BAR_4}] ${MODELPARAM_VALUE.C_PF1_ENTRY_BAR_4}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_BAR_4 { PARAM_VALUE.C_PF1_ENTRY_BAR_4 } {
  # Procedure called to validate C_PF1_ENTRY_BAR_4
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_ADDR_4 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_ADDR_4 } {
  # Procedure called to update C_PF1_ENTRY_ADDR_4 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 5} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_ADDR_4}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_ADDR_4}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_4 { MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_4 PARAM_VALUE.C_PF1_ENTRY_ADDR_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_ADDR_4}] ${MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_4}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_ADDR_4 { PARAM_VALUE.C_PF1_ENTRY_ADDR_4 } {
  # Procedure called to validate C_PF1_ENTRY_ADDR_4
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_4 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_4 } {
  # Procedure called to update C_PF1_ENTRY_VERSION_TYPE_4 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 5} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_4}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_4}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_4 { MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_4 PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_4}] ${MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_4}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_4 { PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_4 } {
  # Procedure called to validate C_PF1_ENTRY_VERSION_TYPE_4
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_4 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_4 } {
  # Procedure called to update C_PF1_ENTRY_MAJOR_VERSION_4 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 5} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_4}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_4}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_4 { MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_4 PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_4}] ${MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_4}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_4 { PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_4 } {
  # Procedure called to validate C_PF1_ENTRY_MAJOR_VERSION_4
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_4 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_4 } {
  # Procedure called to update C_PF1_ENTRY_MINOR_VERSION_4 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 5} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_4}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_4}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_4 { MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_4 PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_4}] ${MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_4}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_4 { PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_4 } {
  # Procedure called to validate C_PF1_ENTRY_MINOR_VERSION_4
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_RSVD0_4 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_RSVD0_4 } {
  # Procedure called to update C_PF1_ENTRY_RSVD0_4 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 5} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_4}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_4}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_4 { MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_4 PARAM_VALUE.C_PF1_ENTRY_RSVD0_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_4}] ${MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_4}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_RSVD0_4 { PARAM_VALUE.C_PF1_ENTRY_RSVD0_4 } {
  # Procedure called to validate C_PF1_ENTRY_RSVD0_4
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_TYPE_5 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_TYPE_5 } {
  # Procedure called to update C_PF1_ENTRY_TYPE_5 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 6} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_TYPE_5}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_TYPE_5}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_5 { MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_5 PARAM_VALUE.C_PF1_ENTRY_TYPE_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_TYPE_5}] ${MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_5}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_TYPE_5 { PARAM_VALUE.C_PF1_ENTRY_TYPE_5 } {
  # Procedure called to validate C_PF1_ENTRY_TYPE_5
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_BAR_5 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_BAR_5 } {
  # Procedure called to update C_PF1_ENTRY_BAR_5 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 6} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_BAR_5}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_BAR_5}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_BAR_5 { MODELPARAM_VALUE.C_PF1_ENTRY_BAR_5 PARAM_VALUE.C_PF1_ENTRY_BAR_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_BAR_5}] ${MODELPARAM_VALUE.C_PF1_ENTRY_BAR_5}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_BAR_5 { PARAM_VALUE.C_PF1_ENTRY_BAR_5 } {
  # Procedure called to validate C_PF1_ENTRY_BAR_5
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_ADDR_5 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_ADDR_5 } {
  # Procedure called to update C_PF1_ENTRY_ADDR_5 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 6} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_ADDR_5}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_ADDR_5}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_5 { MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_5 PARAM_VALUE.C_PF1_ENTRY_ADDR_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_ADDR_5}] ${MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_5}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_ADDR_5 { PARAM_VALUE.C_PF1_ENTRY_ADDR_5 } {
  # Procedure called to validate C_PF1_ENTRY_ADDR_5
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_5 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_5 } {
  # Procedure called to update C_PF1_ENTRY_VERSION_TYPE_5 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 6} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_5}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_5}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_5 { MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_5 PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_5}] ${MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_5}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_5 { PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_5 } {
  # Procedure called to validate C_PF1_ENTRY_VERSION_TYPE_5
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_5 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_5 } {
  # Procedure called to update C_PF1_ENTRY_MAJOR_VERSION_5 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 6} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_5}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_5}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_5 { MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_5 PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_5}] ${MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_5}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_5 { PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_5 } {
  # Procedure called to validate C_PF1_ENTRY_MAJOR_VERSION_5
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_5 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_5 } {
  # Procedure called to update C_PF1_ENTRY_MINOR_VERSION_5 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 6} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_5}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_5}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_5 { MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_5 PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_5}] ${MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_5}
}

proc validate_PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_5 { PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_5 } {
  # Procedure called to validate C_PF1_ENTRY_MINOR_VERSION_5
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_RSVD0_5 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_RSVD0_5 } {
  # Procedure called to update C_PF1_ENTRY_RSVD0_5 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 6} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_5}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_5}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_5 { MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_5 PARAM_VALUE.C_PF1_ENTRY_RSVD0_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_5}] ${MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_5}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_RSVD0_5 { PARAM_VALUE.C_PF1_ENTRY_RSVD0_5 } {
  # Procedure called to validate C_PF1_ENTRY_RSVD0_5
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_TYPE_6 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_TYPE_6 } {
  # Procedure called to update C_PF1_ENTRY_TYPE_6 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 7} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_TYPE_6}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_TYPE_6}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_6 { MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_6 PARAM_VALUE.C_PF1_ENTRY_TYPE_6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_TYPE_6}] ${MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_6}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_TYPE_6 { PARAM_VALUE.C_PF1_ENTRY_TYPE_6 } {
  # Procedure called to validate C_PF1_ENTRY_TYPE_6
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_BAR_6 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_BAR_6 } {
  # Procedure called to update C_PF1_ENTRY_BAR_6 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 7} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_BAR_6}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_BAR_6}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_BAR_6 { MODELPARAM_VALUE.C_PF1_ENTRY_BAR_6 PARAM_VALUE.C_PF1_ENTRY_BAR_6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_BAR_6}] ${MODELPARAM_VALUE.C_PF1_ENTRY_BAR_6}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_BAR_6 { PARAM_VALUE.C_PF1_ENTRY_BAR_6 } {
  # Procedure called to validate C_PF1_ENTRY_BAR_6
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_ADDR_6 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_ADDR_6 } {
  # Procedure called to update C_PF1_ENTRY_ADDR_6 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 7} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_ADDR_6}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_ADDR_6}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_6 { MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_6 PARAM_VALUE.C_PF1_ENTRY_ADDR_6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_ADDR_6}] ${MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_6}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_ADDR_6 { PARAM_VALUE.C_PF1_ENTRY_ADDR_6 } {
  # Procedure called to validate C_PF1_ENTRY_ADDR_6
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_6 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_6 } {
  # Procedure called to update C_PF1_ENTRY_VERSION_TYPE_6 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 7} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_6}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_6}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_6 { MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_6 PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_6}] ${MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_6}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_6 { PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_6 } {
  # Procedure called to validate C_PF1_ENTRY_VERSION_TYPE_6
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_6 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_6 } {
  # Procedure called to update C_PF1_ENTRY_MAJOR_VERSION_6 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 7} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_6}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_6}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_6 { MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_6 PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_6}] ${MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_6}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_6 { PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_6 } {
  # Procedure called to validate C_PF1_ENTRY_MAJOR_VERSION_6
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_6 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_6 } {
  # Procedure called to update C_PF1_ENTRY_MINOR_VERSION_6 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 7} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_6}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_6}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_6 { MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_6 PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_6}] ${MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_6}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_6 { PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_6 } {
  # Procedure called to validate C_PF1_ENTRY_MINOR_VERSION_6
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_RSVD0_6 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_RSVD0_6 } {
  # Procedure called to update C_PF1_ENTRY_RSVD0_6 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 7} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_6}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_6}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_6 { MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_6 PARAM_VALUE.C_PF1_ENTRY_RSVD0_6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_6}] ${MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_6}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_RSVD0_6 { PARAM_VALUE.C_PF1_ENTRY_RSVD0_6 } {
  # Procedure called to validate C_PF1_ENTRY_RSVD0_6
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_TYPE_7 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_TYPE_7 } {
  # Procedure called to update C_PF1_ENTRY_TYPE_7 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 8} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_TYPE_7}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_TYPE_7}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_7 { MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_7 PARAM_VALUE.C_PF1_ENTRY_TYPE_7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_TYPE_7}] ${MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_7}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_TYPE_7 { PARAM_VALUE.C_PF1_ENTRY_TYPE_7 } {
  # Procedure called to validate C_PF1_ENTRY_TYPE_7
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_BAR_7 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_BAR_7 } {
  # Procedure called to update C_PF1_ENTRY_BAR_7 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 8} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_BAR_7}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_BAR_7}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_BAR_7 { MODELPARAM_VALUE.C_PF1_ENTRY_BAR_7 PARAM_VALUE.C_PF1_ENTRY_BAR_7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_BAR_7}] ${MODELPARAM_VALUE.C_PF1_ENTRY_BAR_7}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_BAR_7 { PARAM_VALUE.C_PF1_ENTRY_BAR_7 } {
  # Procedure called to validate C_PF1_ENTRY_BAR_7
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_ADDR_7 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_ADDR_7 } {
  # Procedure called to update C_PF1_ENTRY_ADDR_7 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 8} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_ADDR_7}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_ADDR_7}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_7 { MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_7 PARAM_VALUE.C_PF1_ENTRY_ADDR_7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_ADDR_7}] ${MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_7}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_ADDR_7 { PARAM_VALUE.C_PF1_ENTRY_ADDR_7 } {
  # Procedure called to validate C_PF1_ENTRY_ADDR_7
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_7 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_7 } {
  # Procedure called to update C_PF1_ENTRY_VERSION_TYPE_7 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 8} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_7}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_7}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_7 { MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_7 PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_7}] ${MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_7}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_7 { PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_7 } {
  # Procedure called to validate C_PF1_ENTRY_VERSION_TYPE_7
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_7 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_7 } {
  # Procedure called to update C_PF1_ENTRY_MAJOR_VERSION_7 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 8} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_7}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_7}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_7 { MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_7 PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_7}] ${MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_7}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_7 { PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_7 } {
  # Procedure called to validate C_PF1_ENTRY_MAJOR_VERSION_7
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_7 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_7 } {
  # Procedure called to update C_PF1_ENTRY_MINOR_VERSION_7 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 8} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_7}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_7}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_7 { MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_7 PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_7}] ${MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_7}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_7 { PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_7 } {
  # Procedure called to validate C_PF1_ENTRY_MINOR_VERSION_7
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_RSVD0_7 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_RSVD0_7 } {
  # Procedure called to update C_PF1_ENTRY_RSVD0_7 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 8} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_7}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_7}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_7 { MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_7 PARAM_VALUE.C_PF1_ENTRY_RSVD0_7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_7}] ${MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_7}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_RSVD0_7 { PARAM_VALUE.C_PF1_ENTRY_RSVD0_7 } {
  # Procedure called to validate C_PF1_ENTRY_RSVD0_7
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_TYPE_8 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_TYPE_8 } {
  # Procedure called to update C_PF1_ENTRY_TYPE_8 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 9} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_TYPE_8}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_TYPE_8}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_8 { MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_8 PARAM_VALUE.C_PF1_ENTRY_TYPE_8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_TYPE_8}] ${MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_8}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_TYPE_8 { PARAM_VALUE.C_PF1_ENTRY_TYPE_8 } {
  # Procedure called to validate C_PF1_ENTRY_TYPE_8
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_BAR_8 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_BAR_8 } {
  # Procedure called to update C_PF1_ENTRY_BAR_8 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 9} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_BAR_8}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_BAR_8}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_BAR_8 { MODELPARAM_VALUE.C_PF1_ENTRY_BAR_8 PARAM_VALUE.C_PF1_ENTRY_BAR_8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_BAR_8}] ${MODELPARAM_VALUE.C_PF1_ENTRY_BAR_8}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_BAR_8 { PARAM_VALUE.C_PF1_ENTRY_BAR_8 } {
  # Procedure called to validate C_PF1_ENTRY_BAR_8
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_ADDR_8 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_ADDR_8 } {
  # Procedure called to update C_PF1_ENTRY_ADDR_8 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 9} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_ADDR_8}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_ADDR_8}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_8 { MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_8 PARAM_VALUE.C_PF1_ENTRY_ADDR_8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_ADDR_8}] ${MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_8}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_ADDR_8 { PARAM_VALUE.C_PF1_ENTRY_ADDR_8 } {
  # Procedure called to validate C_PF1_ENTRY_ADDR_8
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_8 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_8 } {
  # Procedure called to update C_PF1_ENTRY_VERSION_TYPE_8 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 9} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_8}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_8}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_8 { MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_8 PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_8}] ${MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_8}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_8 { PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_8 } {
  # Procedure called to validate C_PF1_ENTRY_VERSION_TYPE_8
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_8 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_8 } {
  # Procedure called to update C_PF1_ENTRY_MAJOR_VERSION_8 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 9} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_8}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_8}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_8 { MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_8 PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_8}] ${MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_8}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_8 { PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_8 } {
  # Procedure called to validate C_PF1_ENTRY_MAJOR_VERSION_8
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_8 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_8 } {
  # Procedure called to update C_PF1_ENTRY_MINOR_VERSION_8 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 9} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_8}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_8}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_8 { MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_8 PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_8}] ${MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_8}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_8 { PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_8 } {
  # Procedure called to validate C_PF1_ENTRY_MINOR_VERSION_8
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_RSVD0_8 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_RSVD0_8 } {
  # Procedure called to update C_PF1_ENTRY_RSVD0_8 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 9} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_8}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_8}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_8 { MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_8 PARAM_VALUE.C_PF1_ENTRY_RSVD0_8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_8}] ${MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_8}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_RSVD0_8 { PARAM_VALUE.C_PF1_ENTRY_RSVD0_8 } {
  # Procedure called to validate C_PF1_ENTRY_RSVD0_8
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_TYPE_9 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_TYPE_9 } {
  # Procedure called to update C_PF1_ENTRY_TYPE_9 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 10} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_TYPE_9}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_TYPE_9}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_9 { MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_9 PARAM_VALUE.C_PF1_ENTRY_TYPE_9 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_TYPE_9}] ${MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_9}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_TYPE_9 { PARAM_VALUE.C_PF1_ENTRY_TYPE_9 } {
  # Procedure called to validate C_PF1_ENTRY_TYPE_9
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_BAR_9 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_BAR_9 } {
  # Procedure called to update C_PF1_ENTRY_BAR_9 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 10} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_BAR_9}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_BAR_9}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_BAR_9 { MODELPARAM_VALUE.C_PF1_ENTRY_BAR_9 PARAM_VALUE.C_PF1_ENTRY_BAR_9 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_BAR_9}] ${MODELPARAM_VALUE.C_PF1_ENTRY_BAR_9}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_BAR_9 { PARAM_VALUE.C_PF1_ENTRY_BAR_9 } {
  # Procedure called to validate C_PF1_ENTRY_BAR_9
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_ADDR_9 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_ADDR_9 } {
  # Procedure called to update C_PF1_ENTRY_ADDR_9 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 10} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_ADDR_9}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_ADDR_9}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_9 { MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_9 PARAM_VALUE.C_PF1_ENTRY_ADDR_9 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_ADDR_9}] ${MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_9}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_ADDR_9 { PARAM_VALUE.C_PF1_ENTRY_ADDR_9 } {
  # Procedure called to validate C_PF1_ENTRY_ADDR_9
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_9 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_9 } {
  # Procedure called to update C_PF1_ENTRY_VERSION_TYPE_9 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 10} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_9}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_9}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_9 { MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_9 PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_9 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_9}] ${MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_9}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_9 { PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_9 } {
  # Procedure called to validate C_PF1_ENTRY_VERSION_TYPE_9
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_9 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_9 } {
  # Procedure called to update C_PF1_ENTRY_MAJOR_VERSION_9 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 10} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_9}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_9}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_9 { MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_9 PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_9 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_9}] ${MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_9}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_9 { PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_9 } {
  # Procedure called to validate C_PF1_ENTRY_MAJOR_VERSION_9
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_9 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_9 } {
  # Procedure called to update C_PF1_ENTRY_MINOR_VERSION_9 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 10} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_9}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_9}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_9 { MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_9 PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_9 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_9}] ${MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_9}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_9 { PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_9 } {
  # Procedure called to validate C_PF1_ENTRY_MINOR_VERSION_9
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_RSVD0_9 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_RSVD0_9 } {
  # Procedure called to update C_PF1_ENTRY_RSVD0_9 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 10} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_9}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_9}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_9 { MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_9 PARAM_VALUE.C_PF1_ENTRY_RSVD0_9 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_9}] ${MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_9}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_RSVD0_9 { PARAM_VALUE.C_PF1_ENTRY_RSVD0_9 } {
  # Procedure called to validate C_PF1_ENTRY_RSVD0_9
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_TYPE_10 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_TYPE_10 } {
  # Procedure called to update C_PF1_ENTRY_TYPE_10 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 11} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_TYPE_10}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_TYPE_10}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_10 { MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_10 PARAM_VALUE.C_PF1_ENTRY_TYPE_10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_TYPE_10}] ${MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_10}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_TYPE_10 { PARAM_VALUE.C_PF1_ENTRY_TYPE_10 } {
  # Procedure called to validate C_PF1_ENTRY_TYPE_10
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_BAR_10 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_BAR_10 } {
  # Procedure called to update C_PF1_ENTRY_BAR_10 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 11} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_BAR_10}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_BAR_10}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_BAR_10 { MODELPARAM_VALUE.C_PF1_ENTRY_BAR_10 PARAM_VALUE.C_PF1_ENTRY_BAR_10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_BAR_10}] ${MODELPARAM_VALUE.C_PF1_ENTRY_BAR_10}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_BAR_10 { PARAM_VALUE.C_PF1_ENTRY_BAR_10 } {
  # Procedure called to validate C_PF1_ENTRY_BAR_10
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_ADDR_10 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_ADDR_10 } {
  # Procedure called to update C_PF1_ENTRY_ADDR_10 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 11} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_ADDR_10}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_ADDR_10}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_10 { MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_10 PARAM_VALUE.C_PF1_ENTRY_ADDR_10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_ADDR_10}] ${MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_10}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_ADDR_10 { PARAM_VALUE.C_PF1_ENTRY_ADDR_10 } {
  # Procedure called to validate C_PF1_ENTRY_ADDR_10
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_10 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_10 } {
  # Procedure called to update C_PF1_ENTRY_VERSION_TYPE_10 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 11} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_10}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_10}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_10 { MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_10 PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_10}] ${MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_10}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_10 { PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_10 } {
  # Procedure called to validate C_PF1_ENTRY_VERSION_TYPE_10
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_10 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_10 } {
  # Procedure called to update C_PF1_ENTRY_MAJOR_VERSION_10 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 11} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_10}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_10}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_10 { MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_10 PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_10}] ${MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_10}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_10 { PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_10 } {
  # Procedure called to validate C_PF1_ENTRY_MAJOR_VERSION_10
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_10 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_10 } {
  # Procedure called to update C_PF1_ENTRY_MINOR_VERSION_10 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 11} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_10}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_10}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_10 { MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_10 PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_10}] ${MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_10}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_10 { PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_10 } {
  # Procedure called to validate C_PF1_ENTRY_MINOR_VERSION_10
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_RSVD0_10 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_RSVD0_10 } {
  # Procedure called to update C_PF1_ENTRY_RSVD0_10 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 11} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_10}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_10}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_10 { MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_10 PARAM_VALUE.C_PF1_ENTRY_RSVD0_10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_10}] ${MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_10}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_RSVD0_10 { PARAM_VALUE.C_PF1_ENTRY_RSVD0_10 } {
  # Procedure called to validate C_PF1_ENTRY_RSVD0_10
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_TYPE_11 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_TYPE_11 } {
  # Procedure called to update C_PF1_ENTRY_TYPE_11 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 12} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_TYPE_11}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_TYPE_11}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_11 { MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_11 PARAM_VALUE.C_PF1_ENTRY_TYPE_11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_TYPE_11}] ${MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_11}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_TYPE_11 { PARAM_VALUE.C_PF1_ENTRY_TYPE_11 } {
  # Procedure called to validate C_PF1_ENTRY_TYPE_11
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_BAR_11 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_BAR_11 } {
  # Procedure called to update C_PF1_ENTRY_BAR_11 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 12} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_BAR_11}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_BAR_11}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_BAR_11 { MODELPARAM_VALUE.C_PF1_ENTRY_BAR_11 PARAM_VALUE.C_PF1_ENTRY_BAR_11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_BAR_11}] ${MODELPARAM_VALUE.C_PF1_ENTRY_BAR_11}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_BAR_11 { PARAM_VALUE.C_PF1_ENTRY_BAR_11 } {
  # Procedure called to validate C_PF1_ENTRY_BAR_11
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_ADDR_11 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_ADDR_11 } {
  # Procedure called to update C_PF1_ENTRY_ADDR_11 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 12} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_ADDR_11}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_ADDR_11}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_11 { MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_11 PARAM_VALUE.C_PF1_ENTRY_ADDR_11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_ADDR_11}] ${MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_11}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_ADDR_11 { PARAM_VALUE.C_PF1_ENTRY_ADDR_11 } {
  # Procedure called to validate C_PF1_ENTRY_ADDR_11
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_11 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_11 } {
  # Procedure called to update C_PF1_ENTRY_VERSION_TYPE_11 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 12} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_11}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_11}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_11 { MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_11 PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_11}] ${MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_11}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_11 { PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_11 } {
  # Procedure called to validate C_PF1_ENTRY_VERSION_TYPE_11
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_11 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_11 } {
  # Procedure called to update C_PF1_ENTRY_MAJOR_VERSION_11 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 12} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_11}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_11}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_11 { MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_11 PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_11}] ${MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_11}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_11 { PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_11 } {
  # Procedure called to validate C_PF1_ENTRY_MAJOR_VERSION_11
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_11 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_11 } {
  # Procedure called to update C_PF1_ENTRY_MINOR_VERSION_11 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 12} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_11}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_11}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_11 { MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_11 PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_11}] ${MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_11}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_11 { PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_11 } {
  # Procedure called to validate C_PF1_ENTRY_MINOR_VERSION_11
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_RSVD0_11 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_RSVD0_11 } {
  # Procedure called to update C_PF1_ENTRY_RSVD0_11 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 12} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_11}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_11}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_11 { MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_11 PARAM_VALUE.C_PF1_ENTRY_RSVD0_11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_11}] ${MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_11}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_RSVD0_11 { PARAM_VALUE.C_PF1_ENTRY_RSVD0_11 } {
  # Procedure called to validate C_PF1_ENTRY_RSVD0_11
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_TYPE_12 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_TYPE_12 } {
  # Procedure called to update C_PF1_ENTRY_TYPE_12 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 13} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_TYPE_12}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_TYPE_12}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_12 { MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_12 PARAM_VALUE.C_PF1_ENTRY_TYPE_12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_TYPE_12}] ${MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_12}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_TYPE_12 { PARAM_VALUE.C_PF1_ENTRY_TYPE_12 } {
  # Procedure called to validate C_PF1_ENTRY_TYPE_12
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_BAR_12 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_BAR_12 } {
  # Procedure called to update C_PF1_ENTRY_BAR_12 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 13} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_BAR_12}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_BAR_12}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_BAR_12 { MODELPARAM_VALUE.C_PF1_ENTRY_BAR_12 PARAM_VALUE.C_PF1_ENTRY_BAR_12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_BAR_12}] ${MODELPARAM_VALUE.C_PF1_ENTRY_BAR_12}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_BAR_12 { PARAM_VALUE.C_PF1_ENTRY_BAR_12 } {
  # Procedure called to validate C_PF1_ENTRY_BAR_12
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_ADDR_12 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_ADDR_12 } {
  # Procedure called to update C_PF1_ENTRY_ADDR_12 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 13} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_ADDR_12}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_ADDR_12}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_12 { MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_12 PARAM_VALUE.C_PF1_ENTRY_ADDR_12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_ADDR_12}] ${MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_12}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_ADDR_12 { PARAM_VALUE.C_PF1_ENTRY_ADDR_12 } {
  # Procedure called to validate C_PF1_ENTRY_ADDR_12
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_12 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_12 } {
  # Procedure called to update C_PF1_ENTRY_VERSION_TYPE_12 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 13} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_12}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_12}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_12 { MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_12 PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_12}] ${MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_12}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_12 { PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_12 } {
  # Procedure called to validate C_PF1_ENTRY_VERSION_TYPE_12
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_12 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_12 } {
  # Procedure called to update C_PF1_ENTRY_MAJOR_VERSION_12 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 13} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_12}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_12}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_12 { MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_12 PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_12}] ${MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_12}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_12 { PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_12 } {
  # Procedure called to validate C_PF1_ENTRY_MAJOR_VERSION_12
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_12 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_12 } {
  # Procedure called to update C_PF1_ENTRY_MINOR_VERSION_12 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 13} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_12}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_12}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_12 { MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_12 PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_12}] ${MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_12}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_12 { PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_12 } {
  # Procedure called to validate C_PF1_ENTRY_MINOR_VERSION_12
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_RSVD0_12 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_RSVD0_12 } {
  # Procedure called to update C_PF1_ENTRY_RSVD0_12 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 13} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_12}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_12}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_12 { MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_12 PARAM_VALUE.C_PF1_ENTRY_RSVD0_12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_12}] ${MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_12}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_RSVD0_12 { PARAM_VALUE.C_PF1_ENTRY_RSVD0_12 } {
  # Procedure called to validate C_PF1_ENTRY_RSVD0_12
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_TYPE_13 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_TYPE_13 } {
  # Procedure called to update C_PF1_ENTRY_TYPE_13 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 14} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_TYPE_13}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_TYPE_13}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_13 { MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_13 PARAM_VALUE.C_PF1_ENTRY_TYPE_13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_TYPE_13}] ${MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_13}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_TYPE_13 { PARAM_VALUE.C_PF1_ENTRY_TYPE_13 } {
  # Procedure called to validate C_PF1_ENTRY_TYPE_13
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_BAR_13 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_BAR_13 } {
  # Procedure called to update C_PF1_ENTRY_BAR_13 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 14} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_BAR_13}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_BAR_13}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_BAR_13 { MODELPARAM_VALUE.C_PF1_ENTRY_BAR_13 PARAM_VALUE.C_PF1_ENTRY_BAR_13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_BAR_13}] ${MODELPARAM_VALUE.C_PF1_ENTRY_BAR_13}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_BAR_13 { PARAM_VALUE.C_PF1_ENTRY_BAR_13 } {
  # Procedure called to validate C_PF1_ENTRY_BAR_13
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_ADDR_13 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_ADDR_13 } {
  # Procedure called to update C_PF1_ENTRY_ADDR_13 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 14} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_ADDR_13}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_ADDR_13}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_13 { MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_13 PARAM_VALUE.C_PF1_ENTRY_ADDR_13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_ADDR_13}] ${MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_13}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_ADDR_13 { PARAM_VALUE.C_PF1_ENTRY_ADDR_13 } {
  # Procedure called to validate C_PF1_ENTRY_ADDR_13
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_13 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_13 } {
  # Procedure called to update C_PF1_ENTRY_VERSION_TYPE_13 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 14} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_13}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_13}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_13 { MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_13 PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_13}] ${MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_13}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_13 { PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_13 } {
  # Procedure called to validate C_PF1_ENTRY_VERSION_TYPE_13
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_13 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_13 } {
  # Procedure called to update C_PF1_ENTRY_MAJOR_VERSION_13 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 14} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_13}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_13}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_13 { MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_13 PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_13}] ${MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_13}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_13 { PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_13 } {
  # Procedure called to validate C_PF1_ENTRY_MAJOR_VERSION_13
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_13 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_13 } {
  # Procedure called to update C_PF1_ENTRY_MINOR_VERSION_13 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 14} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_13}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_13}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_13 { MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_13 PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_13}] ${MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_13}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_13 { PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_13 } {
  # Procedure called to validate C_PF1_ENTRY_MINOR_VERSION_13
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_RSVD0_13 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_RSVD0_13 } {
  # Procedure called to update C_PF1_ENTRY_RSVD0_13 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 14} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_13}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_13}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_13 { MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_13 PARAM_VALUE.C_PF1_ENTRY_RSVD0_13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_13}] ${MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_13}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_RSVD0_13 { PARAM_VALUE.C_PF1_ENTRY_RSVD0_13 } {
  # Procedure called to validate C_PF1_ENTRY_RSVD0_13
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_TYPE_14 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_TYPE_14 } {
  # Procedure called to update C_PF1_ENTRY_TYPE_14 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 15} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_TYPE_14}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_TYPE_14}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_14 { MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_14 PARAM_VALUE.C_PF1_ENTRY_TYPE_14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_TYPE_14}] ${MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_14}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_TYPE_14 { PARAM_VALUE.C_PF1_ENTRY_TYPE_14 } {
  # Procedure called to validate C_PF1_ENTRY_TYPE_14
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_BAR_14 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_BAR_14 } {
  # Procedure called to update C_PF1_ENTRY_BAR_14 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 15} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_BAR_14}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_BAR_14}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_BAR_14 { MODELPARAM_VALUE.C_PF1_ENTRY_BAR_14 PARAM_VALUE.C_PF1_ENTRY_BAR_14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_BAR_14}] ${MODELPARAM_VALUE.C_PF1_ENTRY_BAR_14}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_BAR_14 { PARAM_VALUE.C_PF1_ENTRY_BAR_14 } {
  # Procedure called to validate C_PF1_ENTRY_BAR_14
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_ADDR_14 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_ADDR_14 } {
  # Procedure called to update C_PF1_ENTRY_ADDR_14 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 15} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_ADDR_14}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_ADDR_14}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_14 { MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_14 PARAM_VALUE.C_PF1_ENTRY_ADDR_14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_ADDR_14}] ${MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_14}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_ADDR_14 { PARAM_VALUE.C_PF1_ENTRY_ADDR_14 } {
  # Procedure called to validate C_PF1_ENTRY_ADDR_14
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_14 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_14 } {
  # Procedure called to update C_PF1_ENTRY_VERSION_TYPE_14 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 15} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_14}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_14}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_14 { MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_14 PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_14}] ${MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_14}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_14 { PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_14 } {
  # Procedure called to validate C_PF1_ENTRY_VERSION_TYPE_14
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_14 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_14 } {
  # Procedure called to update C_PF1_ENTRY_MAJOR_VERSION_14 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 15} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_14}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_14}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_14 { MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_14 PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_14}] ${MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_14}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_14 { PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_14 } {
  # Procedure called to validate C_PF1_ENTRY_MAJOR_VERSION_14
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_14 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_14 } {
  # Procedure called to update C_PF1_ENTRY_MINOR_VERSION_14 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 15} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_14}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_14}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_14 { MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_14 PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_14}] ${MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_14}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_14 { PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_14 } {
  # Procedure called to validate C_PF1_ENTRY_MINOR_VERSION_14
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_RSVD0_14 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_RSVD0_14 } {
  # Procedure called to update C_PF1_ENTRY_RSVD0_14 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots >= 15} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_14}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_14}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_14 { MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_14 PARAM_VALUE.C_PF1_ENTRY_RSVD0_14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_14}] ${MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_14}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_RSVD0_14 { PARAM_VALUE.C_PF1_ENTRY_RSVD0_14 } {
  # Procedure called to validate C_PF1_ENTRY_RSVD0_14
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_TYPE_15 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_TYPE_15 } {
  # Procedure called to update C_PF1_ENTRY_TYPE_15 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots == 16} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_TYPE_15}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_TYPE_15}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_15 { MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_15 PARAM_VALUE.C_PF1_ENTRY_TYPE_15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_TYPE_15}] ${MODELPARAM_VALUE.C_PF1_ENTRY_TYPE_15}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_TYPE_15 { PARAM_VALUE.C_PF1_ENTRY_TYPE_15 } {
  # Procedure called to validate C_PF1_ENTRY_TYPE_15
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_BAR_15 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_BAR_15 } {
  # Procedure called to update C_PF1_ENTRY_BAR_15 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots == 16} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_BAR_15}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_BAR_15}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_BAR_15 { MODELPARAM_VALUE.C_PF1_ENTRY_BAR_15 PARAM_VALUE.C_PF1_ENTRY_BAR_15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_BAR_15}] ${MODELPARAM_VALUE.C_PF1_ENTRY_BAR_15}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_BAR_15 { PARAM_VALUE.C_PF1_ENTRY_BAR_15 } {
  # Procedure called to validate C_PF1_ENTRY_BAR_15
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_ADDR_15 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_ADDR_15 } {
  # Procedure called to update C_PF1_ENTRY_ADDR_15 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots == 16} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_ADDR_15}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_ADDR_15}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_15 { MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_15 PARAM_VALUE.C_PF1_ENTRY_ADDR_15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_ADDR_15}] ${MODELPARAM_VALUE.C_PF1_ENTRY_ADDR_15}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_ADDR_15 { PARAM_VALUE.C_PF1_ENTRY_ADDR_15 } {
  # Procedure called to validate C_PF1_ENTRY_ADDR_15
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_15 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_15 } {
  # Procedure called to update C_PF1_ENTRY_VERSION_TYPE_15 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots == 16} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_15}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_15}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_15 { MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_15 PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_15}] ${MODELPARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_15}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_15 { PARAM_VALUE.C_PF1_ENTRY_VERSION_TYPE_15 } {
  # Procedure called to validate C_PF1_ENTRY_VERSION_TYPE_15
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_15 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_15 } {
  # Procedure called to update C_PF1_ENTRY_MAJOR_VERSION_15 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots == 16} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_15}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_15}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_15 { MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_15 PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_15}] ${MODELPARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_15}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_15 { PARAM_VALUE.C_PF1_ENTRY_MAJOR_VERSION_15 } {
  # Procedure called to validate C_PF1_ENTRY_MAJOR_VERSION_15
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_15 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_15 } {
  # Procedure called to update C_PF1_ENTRY_MINOR_VERSION_15 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots == 16} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_15}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_15}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_15 { MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_15 PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_15}] ${MODELPARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_15}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_15 { PARAM_VALUE.C_PF1_ENTRY_MINOR_VERSION_15 } {
  # Procedure called to validate C_PF1_ENTRY_MINOR_VERSION_15
  return true
}

proc update_PARAM_VALUE.C_PF1_ENTRY_RSVD0_15 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF1_ENTRY_RSVD0_15 } {
  # Procedure called to update C_PF1_ENTRY_RSVD0_15 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 2} {
  	if {$pf0_num_slots == 16} {
    	set_property enabled true ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_15}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_15}
  }      
}

proc update_MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_15 { MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_15 PARAM_VALUE.C_PF1_ENTRY_RSVD0_15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF1_ENTRY_RSVD0_15}] ${MODELPARAM_VALUE.C_PF1_ENTRY_RSVD0_15}
}


proc validate_PARAM_VALUE.C_PF1_ENTRY_RSVD0_15 { PARAM_VALUE.C_PF1_ENTRY_RSVD0_15 } {
  # Procedure called to validate C_PF1_ENTRY_RSVD0_15
  return true
}

proc update_PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE } {
  # Procedure called to update C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  if {$num_pfs >= 3} {
    set_property enabled true ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE { MODELPARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}] ${MODELPARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}
}


proc validate_PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE { PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE } {
  # Procedure called to validate C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE
  return true
}

proc update_gui_for_PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE {IPINST PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE} {
	# Procedure called to update C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE when any of the dependent parameters in the arguments change
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$pf0_num_slots == 1} {	
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 15 Configuration" -of $IPINST]						
	} elseif {$pf0_num_slots == 2} {
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 15 Configuration" -of $IPINST]			
	}	elseif {$pf0_num_slots == 3} {
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 15 Configuration" -of $IPINST]			
	} elseif {$pf0_num_slots == 4} {
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 15 Configuration" -of $IPINST]			
	}	elseif {$pf0_num_slots == 5} {
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 15 Configuration" -of $IPINST]			
	} elseif {$pf0_num_slots == 6} {
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 15 Configuration" -of $IPINST]			
	}	elseif {$pf0_num_slots == 7} {
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 15 Configuration" -of $IPINST]			
	} elseif {$pf0_num_slots == 8} {
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 15 Configuration" -of $IPINST]			
	}	elseif {$pf0_num_slots == 9} {
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 15 Configuration" -of $IPINST]			
	} elseif {$pf0_num_slots == 10} {
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 15 Configuration" -of $IPINST]			
	}	elseif {$pf0_num_slots == 11} {
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 15 Configuration" -of $IPINST]			
	} elseif {$pf0_num_slots == 12} {
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 15 Configuration" -of $IPINST]			
	}	elseif {$pf0_num_slots == 13} {
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 15 Configuration" -of $IPINST]			
	} elseif {$pf0_num_slots == 14} {
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 15 Configuration" -of $IPINST]	
	} elseif {$pf0_num_slots == 15} {
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF2 - Table Entry 15 Configuration" -of $IPINST]					
	}	else {
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF2 - Table Entry 15 Configuration" -of $IPINST]			
	}	
}

proc update_PARAM_VALUE.C_PF2_BAR_INDEX { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_BAR_INDEX } {
  # Procedure called to update C_PF2_BAR_INDEX when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  if {$num_pfs >= 3} {
    set_property enabled true ${PARAM_VALUE.C_PF2_BAR_INDEX}
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_BAR_INDEX}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_BAR_INDEX { MODELPARAM_VALUE.C_PF2_BAR_INDEX PARAM_VALUE.C_PF2_BAR_INDEX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_BAR_INDEX}] ${MODELPARAM_VALUE.C_PF2_BAR_INDEX}
}


proc validate_PARAM_VALUE.C_PF2_BAR_INDEX { PARAM_VALUE.C_PF2_BAR_INDEX } {
  # Procedure called to validate C_PF2_BAR_INDEX
  return true
}

proc update_PARAM_VALUE.C_PF2_LOW_OFFSET { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_LOW_OFFSET } {
  # Procedure called to update C_PF2_LOW_OFFSET when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  if {$num_pfs >= 3} {
    set_property enabled true ${PARAM_VALUE.C_PF2_LOW_OFFSET}
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_LOW_OFFSET}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_LOW_OFFSET { MODELPARAM_VALUE.C_PF2_LOW_OFFSET PARAM_VALUE.C_PF2_LOW_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_LOW_OFFSET}] ${MODELPARAM_VALUE.C_PF2_LOW_OFFSET}
}


proc validate_PARAM_VALUE.C_PF2_LOW_OFFSET { PARAM_VALUE.C_PF2_LOW_OFFSET } {
  # Procedure called to validate C_PF2_LOW_OFFSET
  return true
}

proc update_PARAM_VALUE.C_PF2_HIGH_OFFSET { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_HIGH_OFFSET } {
  # Procedure called to update C_PF2_HIGH_OFFSET when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  if {$num_pfs >= 3} {
    set_property enabled true ${PARAM_VALUE.C_PF2_HIGH_OFFSET}
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_HIGH_OFFSET}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_HIGH_OFFSET { MODELPARAM_VALUE.C_PF2_HIGH_OFFSET PARAM_VALUE.C_PF2_HIGH_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_HIGH_OFFSET}] ${MODELPARAM_VALUE.C_PF2_HIGH_OFFSET}
}


proc validate_PARAM_VALUE.C_PF2_HIGH_OFFSET { PARAM_VALUE.C_PF2_HIGH_OFFSET } {
  # Procedure called to validate C_PF2_HIGH_OFFSET
  return true
}

proc update_PARAM_VALUE.C_PF2_HAS_UUID_ROM { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_HAS_UUID_ROM } {
  # Procedure called to update C_PF2_HAS_UUID_ROM when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  if {$num_pfs >= 3} {
    set_property enabled true ${PARAM_VALUE.C_PF2_HAS_UUID_ROM}
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_HAS_UUID_ROM}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_HAS_UUID_ROM { MODELPARAM_VALUE.C_PF2_HAS_UUID_ROM PARAM_VALUE.C_PF2_HAS_UUID_ROM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  if {[get_property value ${PARAM_VALUE.C_PF2_HAS_UUID_ROM}]} {
    set_property value 1 ${MODELPARAM_VALUE.C_PF2_HAS_UUID_ROM}
  } else {
    set_property value 0 ${MODELPARAM_VALUE.C_PF2_HAS_UUID_ROM}
  }  
}


proc validate_PARAM_VALUE.C_PF2_HAS_UUID_ROM { PARAM_VALUE.C_PF2_HAS_UUID_ROM } {
  # Procedure called to validate C_PF2_HAS_UUID_ROM
  return true
}

proc update_gui_for_PARAM_VALUE.C_PF2_HAS_UUID_ROM {IPINST PARAM_VALUE.C_PF2_HAS_UUID_ROM} {
	# Procedure called to update C_PF2_HAS_UUID_ROM when any of the dependent parameters in the arguments change
	set has_uuid_rom [get_property value ${PARAM_VALUE.C_PF2_HAS_UUID_ROM}]
  if {[get_property value ${PARAM_VALUE.C_PF2_HAS_UUID_ROM}]} {	
		set_property visible true [ipgui::get_guiparamspec -name C_PF2_UUID_ROM_INITIAL_VAL -of $IPINST ]
	} else {
		set_property visible false [ipgui::get_guiparamspec -name C_PF2_UUID_ROM_INITIAL_VAL -of $IPINST ]
	}
}

proc update_PARAM_VALUE.C_PF2_UUID_ROM_INITIAL_VAL { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_UUID_ROM_INITIAL_VAL } {
  # Procedure called to update C_PF2_UUID_ROM_INITIAL_VAL when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  if {$num_pfs >= 3} {
    set_property enabled true ${PARAM_VALUE.C_PF2_UUID_ROM_INITIAL_VAL}
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_UUID_ROM_INITIAL_VAL}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_UUID_ROM_INIT { MODELPARAM_VALUE.C_PF2_UUID_ROM_INIT PARAM_VALUE.C_PF2_UUID_ROM_INITIAL_VAL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set uuid ""
  set uuid_chars [split [get_property value ${PARAM_VALUE.C_PF2_UUID_ROM_INITIAL_VAL}] {}]

  # Split the UUID into dword's and rotate to match the XPM_MEM string init format
  for {set dw 3} {$dw >= 0} {incr dw -1} {
    set dword ""
    for {set n 0} {$n < 8} {incr n} {
      append dword [lindex $uuid_chars [expr $dw * 8 + $n]]
    }
    if {[expr $dw == 3]} {
      append uuid $dword
    } else {
      append uuid "," $dword
    }
  }
	set_property value $uuid ${MODELPARAM_VALUE.C_PF2_UUID_ROM_INIT}

}

proc validate_PARAM_VALUE.C_PF2_UUID_ROM_INITIAL_VAL { PARAM_VALUE.C_PF2_UUID_ROM_INITIAL_VAL IPINST } {
    # Verify the UUID string is 32 characters in length
    set uuid_length [string length [get_property value ${PARAM_VALUE.C_PF2_UUID_ROM_INITIAL_VAL}]]

    if {[expr $uuid_length != 32]} {
      set_property errmsg "UUID string length of $uuid_length is not equal to 32" [ipgui::get_paramspec -name C_PF2_UUID_ROM_INITIAL_VAL -of $IPINST ]
      return false
    }

    # Verify the UUID string is valid hexadecimal
    return [RangeCheck4HexDec C_PF2_UUID_ROM_INITIAL_VAL [get_property value ${PARAM_VALUE.C_PF2_UUID_ROM_INITIAL_VAL}] 00000000000000000000000000000000 FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF $IPINST]
}

proc update_PARAM_VALUE.C_PF2_S_AXI_DATA_WIDTH { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_S_AXI_DATA_WIDTH } {
  # Procedure called to update C_PF2_S_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  if {$num_pfs >= 3} {
    set_property enabled true ${PARAM_VALUE.C_PF2_S_AXI_DATA_WIDTH}
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_S_AXI_DATA_WIDTH}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_S_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_PF2_S_AXI_DATA_WIDTH PARAM_VALUE.C_PF2_S_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_S_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_PF2_S_AXI_DATA_WIDTH}
}


proc validate_PARAM_VALUE.C_PF2_S_AXI_DATA_WIDTH { PARAM_VALUE.C_PF2_S_AXI_DATA_WIDTH } {
  # Procedure called to validate C_PF2_S_AXI_DATA_WIDTH
  return true
}

proc update_PARAM_VALUE.C_PF2_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_S_AXI_ADDR_WIDTH } {
  # Procedure called to update C_PF2_S_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  if {$num_pfs >= 3} {
    set_property enabled true ${PARAM_VALUE.C_PF2_S_AXI_ADDR_WIDTH}
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_S_AXI_ADDR_WIDTH}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_S_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_PF2_S_AXI_ADDR_WIDTH PARAM_VALUE.C_PF2_S_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_S_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_PF2_S_AXI_ADDR_WIDTH}
}


proc validate_PARAM_VALUE.C_PF2_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_PF2_S_AXI_ADDR_WIDTH } {
  # Procedure called to validate C_PF2_S_AXI_ADDR_WIDTH
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_TYPE_0 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_TYPE_0 } {
  # Procedure called to update C_PF2_ENTRY_TYPE_0 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 1} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_TYPE_0}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_TYPE_0}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_0 { MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_0 PARAM_VALUE.C_PF2_ENTRY_TYPE_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_TYPE_0}] ${MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_0}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_TYPE_0 { PARAM_VALUE.C_PF2_ENTRY_TYPE_0 } {
  # Procedure called to validate C_PF2_ENTRY_TYPE_0
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_BAR_0 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_BAR_0 } {
  # Procedure called to update C_PF2_ENTRY_BAR_0 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 1} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_BAR_0}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_BAR_0}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_BAR_0 { MODELPARAM_VALUE.C_PF2_ENTRY_BAR_0 PARAM_VALUE.C_PF2_ENTRY_BAR_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_BAR_0}] ${MODELPARAM_VALUE.C_PF2_ENTRY_BAR_0}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_BAR_0 { PARAM_VALUE.C_PF2_ENTRY_BAR_0 } {
  # Procedure called to validate C_PF2_ENTRY_BAR_0
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_ADDR_0 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_ADDR_0 } {
  # Procedure called to update C_PF2_ENTRY_ADDR_0 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 1} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_ADDR_0}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_ADDR_0}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_0 { MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_0 PARAM_VALUE.C_PF2_ENTRY_ADDR_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_ADDR_0}] ${MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_0}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_ADDR_0 { PARAM_VALUE.C_PF2_ENTRY_ADDR_0 } {
  # Procedure called to validate C_PF2_ENTRY_ADDR_0
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_0 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_0 } {
  # Procedure called to update C_PF2_ENTRY_VERSION_TYPE_0 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 1} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_0}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_0}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_0 { MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_0 PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_0}] ${MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_0}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_0 { PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_0 } {
  # Procedure called to validate C_PF2_ENTRY_VERSION_TYPE_0
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_0 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_0 } {
  # Procedure called to update C_PF2_ENTRY_MAJOR_VERSION_0 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 1} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_0}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_0}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_0 { MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_0 PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_0}] ${MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_0}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_0 { PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_0 } {
  # Procedure called to validate C_PF2_ENTRY_MAJOR_VERSION_0
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_0 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_0 } {
  # Procedure called to update C_PF2_ENTRY_MINOR_VERSION_0 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 1} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_0}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_0}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_0 { MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_0 PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_0}] ${MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_0}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_0 { PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_0 } {
  # Procedure called to validate C_PF2_ENTRY_MINOR_VERSION_0
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_RSVD0_0 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_RSVD0_0 } {
  # Procedure called to update C_PF2_ENTRY_RSVD0_0 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 1} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_0}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_0}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_0 { MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_0 PARAM_VALUE.C_PF2_ENTRY_RSVD0_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_0}] ${MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_0}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_RSVD0_0 { PARAM_VALUE.C_PF2_ENTRY_RSVD0_0 } {
  # Procedure called to validate C_PF2_ENTRY_RSVD0_0
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_TYPE_1 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_TYPE_1 } {
  # Procedure called to update C_PF2_ENTRY_TYPE_1 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 2} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_TYPE_1}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_TYPE_1}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_1 { MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_1 PARAM_VALUE.C_PF2_ENTRY_TYPE_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_TYPE_1}] ${MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_1}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_TYPE_1 { PARAM_VALUE.C_PF2_ENTRY_TYPE_1 } {
  # Procedure called to validate C_PF2_ENTRY_TYPE_1
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_BAR_1 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_BAR_1 } {
  # Procedure called to update C_PF2_ENTRY_BAR_1 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 2} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_BAR_1}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_BAR_1}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_BAR_1 { MODELPARAM_VALUE.C_PF2_ENTRY_BAR_1 PARAM_VALUE.C_PF2_ENTRY_BAR_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_BAR_1}] ${MODELPARAM_VALUE.C_PF2_ENTRY_BAR_1}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_BAR_1 { PARAM_VALUE.C_PF2_ENTRY_BAR_1 } {
  # Procedure called to validate C_PF2_ENTRY_BAR_1
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_ADDR_1 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_ADDR_1 } {
  # Procedure called to update C_PF2_ENTRY_ADDR_1 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 2} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_ADDR_1}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_ADDR_1}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_1 { MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_1 PARAM_VALUE.C_PF2_ENTRY_ADDR_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_ADDR_1}] ${MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_1}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_ADDR_1 { PARAM_VALUE.C_PF2_ENTRY_ADDR_1 } {
  # Procedure called to validate C_PF2_ENTRY_ADDR_1
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_1 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_1 } {
  # Procedure called to update C_PF2_ENTRY_VERSION_TYPE_1 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 2} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_1}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_1}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_1 { MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_1 PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_1}] ${MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_1}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_1 { PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_1 } {
  # Procedure called to validate C_PF2_ENTRY_VERSION_TYPE_1
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_1 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_1 } {
  # Procedure called to update C_PF2_ENTRY_MAJOR_VERSION_1 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 2} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_1}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_1}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_1 { MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_1 PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_1}] ${MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_1}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_1 { PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_1 } {
  # Procedure called to validate C_PF2_ENTRY_MAJOR_VERSION_1
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_1 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_1 } {
  # Procedure called to update C_PF2_ENTRY_MINOR_VERSION_1 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 2} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_1}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_1}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_1 { MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_1 PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_1}] ${MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_1}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_1 { PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_1 } {
  # Procedure called to validate C_PF2_ENTRY_MINOR_VERSION_1
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_RSVD0_1 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_RSVD0_1 } {
  # Procedure called to update C_PF2_ENTRY_RSVD0_1 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 2} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_1}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_1}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_1 { MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_1 PARAM_VALUE.C_PF2_ENTRY_RSVD0_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_1}] ${MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_1}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_RSVD0_1 { PARAM_VALUE.C_PF2_ENTRY_RSVD0_1 } {
  # Procedure called to validate C_PF2_ENTRY_RSVD0_1
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_TYPE_2 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_TYPE_2 } {
  # Procedure called to update C_PF2_ENTRY_TYPE_2 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 3} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_TYPE_2}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_TYPE_2}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_2 { MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_2 PARAM_VALUE.C_PF2_ENTRY_TYPE_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_TYPE_2}] ${MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_2}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_TYPE_2 { PARAM_VALUE.C_PF2_ENTRY_TYPE_2 } {
  # Procedure called to validate C_PF2_ENTRY_TYPE_2
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_BAR_2 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_BAR_2 } {
  # Procedure called to update C_PF2_ENTRY_BAR_2 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 3} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_BAR_2}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_BAR_2}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_BAR_2 { MODELPARAM_VALUE.C_PF2_ENTRY_BAR_2 PARAM_VALUE.C_PF2_ENTRY_BAR_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_BAR_2}] ${MODELPARAM_VALUE.C_PF2_ENTRY_BAR_2}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_BAR_2 { PARAM_VALUE.C_PF2_ENTRY_BAR_2 } {
  # Procedure called to validate C_PF2_ENTRY_BAR_2
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_ADDR_2 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_ADDR_2 } {
  # Procedure called to update C_PF2_ENTRY_ADDR_2 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 3} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_ADDR_2}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_ADDR_2}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_2 { MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_2 PARAM_VALUE.C_PF2_ENTRY_ADDR_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_ADDR_2}] ${MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_2}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_ADDR_2 { PARAM_VALUE.C_PF2_ENTRY_ADDR_2 } {
  # Procedure called to validate C_PF2_ENTRY_ADDR_2
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_2 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_2 } {
  # Procedure called to update C_PF2_ENTRY_VERSION_TYPE_2 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 3} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_2}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_2}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_2 { MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_2 PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_2}] ${MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_2}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_2 { PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_2 } {
  # Procedure called to validate C_PF2_ENTRY_VERSION_TYPE_2
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_2 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_2 } {
  # Procedure called to update C_PF2_ENTRY_MAJOR_VERSION_2 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 3} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_2}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_2}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_2 { MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_2 PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_2}] ${MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_2}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_2 { PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_2 } {
  # Procedure called to validate C_PF2_ENTRY_MAJOR_VERSION_2
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_2 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_2 } {
  # Procedure called to update C_PF2_ENTRY_MINOR_VERSION_2 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 3} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_2}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_2}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_2 { MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_2 PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_2}] ${MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_2}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_2 { PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_2 } {
  # Procedure called to validate C_PF2_ENTRY_MINOR_VERSION_2
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_RSVD0_2 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_RSVD0_2 } {
  # Procedure called to update C_PF2_ENTRY_RSVD0_2 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 3} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_2}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_2}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_2 { MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_2 PARAM_VALUE.C_PF2_ENTRY_RSVD0_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_2}] ${MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_2}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_RSVD0_2 { PARAM_VALUE.C_PF2_ENTRY_RSVD0_2 } {
  # Procedure called to validate C_PF2_ENTRY_RSVD0_2
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_TYPE_3 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_TYPE_3 } {
  # Procedure called to update C_PF2_ENTRY_TYPE_3 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 4} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_TYPE_3}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_TYPE_3}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_3 { MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_3 PARAM_VALUE.C_PF2_ENTRY_TYPE_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_TYPE_3}] ${MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_3}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_TYPE_3 { PARAM_VALUE.C_PF2_ENTRY_TYPE_3 } {
  # Procedure called to validate C_PF2_ENTRY_TYPE_3
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_BAR_3 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_BAR_3 } {
  # Procedure called to update C_PF2_ENTRY_BAR_3 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 4} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_BAR_3}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_BAR_3}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_BAR_3 { MODELPARAM_VALUE.C_PF2_ENTRY_BAR_3 PARAM_VALUE.C_PF2_ENTRY_BAR_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_BAR_3}] ${MODELPARAM_VALUE.C_PF2_ENTRY_BAR_3}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_BAR_3 { PARAM_VALUE.C_PF2_ENTRY_BAR_3 } {
  # Procedure called to validate C_PF2_ENTRY_BAR_3
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_ADDR_3 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_ADDR_3 } {
  # Procedure called to update C_PF2_ENTRY_ADDR_3 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 4} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_ADDR_3}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_ADDR_3}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_3 { MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_3 PARAM_VALUE.C_PF2_ENTRY_ADDR_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_ADDR_3}] ${MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_3}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_ADDR_3 { PARAM_VALUE.C_PF2_ENTRY_ADDR_3 } {
  # Procedure called to validate C_PF2_ENTRY_ADDR_3
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_3 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_3 } {
  # Procedure called to update C_PF2_ENTRY_VERSION_TYPE_3 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 4} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_3}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_3}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_3 { MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_3 PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_3}] ${MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_3}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_3 { PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_3 } {
  # Procedure called to validate C_PF2_ENTRY_VERSION_TYPE_3
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_3 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_3 } {
  # Procedure called to update C_PF2_ENTRY_MAJOR_VERSION_3 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 4} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_3}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_3}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_3 { MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_3 PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_3}] ${MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_3}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_3 { PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_3 } {
  # Procedure called to validate C_PF2_ENTRY_MAJOR_VERSION_3
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_3 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_3 } {
  # Procedure called to update C_PF2_ENTRY_MINOR_VERSION_3 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 4} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_3}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_3}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_3 { MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_3 PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_3}] ${MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_3}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_3 { PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_3 } {
  # Procedure called to validate C_PF2_ENTRY_MINOR_VERSION_3
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_RSVD0_3 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_RSVD0_3 } {
  # Procedure called to update C_PF2_ENTRY_RSVD0_3 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 4} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_3}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_3}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_3 { MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_3 PARAM_VALUE.C_PF2_ENTRY_RSVD0_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_3}] ${MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_3}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_RSVD0_3 { PARAM_VALUE.C_PF2_ENTRY_RSVD0_3 } {
  # Procedure called to validate C_PF2_ENTRY_RSVD0_3
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_TYPE_4 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_TYPE_4 } {
  # Procedure called to update C_PF2_ENTRY_TYPE_4 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 5} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_TYPE_4}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_TYPE_4}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_4 { MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_4 PARAM_VALUE.C_PF2_ENTRY_TYPE_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_TYPE_4}] ${MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_4}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_TYPE_4 { PARAM_VALUE.C_PF2_ENTRY_TYPE_4 } {
  # Procedure called to validate C_PF2_ENTRY_TYPE_4
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_BAR_4 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_BAR_4 } {
  # Procedure called to update C_PF2_ENTRY_BAR_4 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 5} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_BAR_4}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_BAR_4}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_BAR_4 { MODELPARAM_VALUE.C_PF2_ENTRY_BAR_4 PARAM_VALUE.C_PF2_ENTRY_BAR_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_BAR_4}] ${MODELPARAM_VALUE.C_PF2_ENTRY_BAR_4}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_BAR_4 { PARAM_VALUE.C_PF2_ENTRY_BAR_4 } {
  # Procedure called to validate C_PF2_ENTRY_BAR_4
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_ADDR_4 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_ADDR_4 } {
  # Procedure called to update C_PF2_ENTRY_ADDR_4 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 5} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_ADDR_4}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_ADDR_4}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_4 { MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_4 PARAM_VALUE.C_PF2_ENTRY_ADDR_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_ADDR_4}] ${MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_4}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_ADDR_4 { PARAM_VALUE.C_PF2_ENTRY_ADDR_4 } {
  # Procedure called to validate C_PF2_ENTRY_ADDR_4
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_4 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_4 } {
  # Procedure called to update C_PF2_ENTRY_VERSION_TYPE_4 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 5} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_4}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_4}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_4 { MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_4 PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_4}] ${MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_4}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_4 { PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_4 } {
  # Procedure called to validate C_PF2_ENTRY_VERSION_TYPE_4
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_4 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_4 } {
  # Procedure called to update C_PF2_ENTRY_MAJOR_VERSION_4 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 5} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_4}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_4}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_4 { MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_4 PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_4}] ${MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_4}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_4 { PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_4 } {
  # Procedure called to validate C_PF2_ENTRY_MAJOR_VERSION_4
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_4 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_4 } {
  # Procedure called to update C_PF2_ENTRY_MINOR_VERSION_4 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 5} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_4}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_4}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_4 { MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_4 PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_4}] ${MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_4}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_4 { PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_4 } {
  # Procedure called to validate C_PF2_ENTRY_MINOR_VERSION_4
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_RSVD0_4 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_RSVD0_4 } {
  # Procedure called to update C_PF2_ENTRY_RSVD0_4 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 5} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_4}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_4}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_4 { MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_4 PARAM_VALUE.C_PF2_ENTRY_RSVD0_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_4}] ${MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_4}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_RSVD0_4 { PARAM_VALUE.C_PF2_ENTRY_RSVD0_4 } {
  # Procedure called to validate C_PF2_ENTRY_RSVD0_4
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_TYPE_5 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_TYPE_5 } {
  # Procedure called to update C_PF2_ENTRY_TYPE_5 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 6} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_TYPE_5}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_TYPE_5}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_5 { MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_5 PARAM_VALUE.C_PF2_ENTRY_TYPE_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_TYPE_5}] ${MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_5}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_TYPE_5 { PARAM_VALUE.C_PF2_ENTRY_TYPE_5 } {
  # Procedure called to validate C_PF2_ENTRY_TYPE_5
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_BAR_5 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_BAR_5 } {
  # Procedure called to update C_PF2_ENTRY_BAR_5 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 6} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_BAR_5}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_BAR_5}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_BAR_5 { MODELPARAM_VALUE.C_PF2_ENTRY_BAR_5 PARAM_VALUE.C_PF2_ENTRY_BAR_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_BAR_5}] ${MODELPARAM_VALUE.C_PF2_ENTRY_BAR_5}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_BAR_5 { PARAM_VALUE.C_PF2_ENTRY_BAR_5 } {
  # Procedure called to validate C_PF2_ENTRY_BAR_5
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_ADDR_5 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_ADDR_5 } {
  # Procedure called to update C_PF2_ENTRY_ADDR_5 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 6} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_ADDR_5}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_ADDR_5}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_5 { MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_5 PARAM_VALUE.C_PF2_ENTRY_ADDR_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_ADDR_5}] ${MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_5}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_ADDR_5 { PARAM_VALUE.C_PF2_ENTRY_ADDR_5 } {
  # Procedure called to validate C_PF2_ENTRY_ADDR_5
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_5 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_5 } {
  # Procedure called to update C_PF2_ENTRY_VERSION_TYPE_5 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 6} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_5}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_5}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_5 { MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_5 PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_5}] ${MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_5}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_5 { PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_5 } {
  # Procedure called to validate C_PF2_ENTRY_VERSION_TYPE_5
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_5 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_5 } {
  # Procedure called to update C_PF2_ENTRY_MAJOR_VERSION_5 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 6} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_5}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_5}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_5 { MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_5 PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_5}] ${MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_5}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_5 { PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_5 } {
  # Procedure called to validate C_PF2_ENTRY_MAJOR_VERSION_5
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_5 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_5 } {
  # Procedure called to update C_PF2_ENTRY_MINOR_VERSION_5 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 6} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_5}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_5}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_5 { MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_5 PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_5}] ${MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_5}
}

proc validate_PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_5 { PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_5 } {
  # Procedure called to validate C_PF2_ENTRY_MINOR_VERSION_5
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_RSVD0_5 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_RSVD0_5 } {
  # Procedure called to update C_PF2_ENTRY_RSVD0_5 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 6} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_5}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_5}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_5 { MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_5 PARAM_VALUE.C_PF2_ENTRY_RSVD0_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_5}] ${MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_5}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_RSVD0_5 { PARAM_VALUE.C_PF2_ENTRY_RSVD0_5 } {
  # Procedure called to validate C_PF2_ENTRY_RSVD0_5
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_TYPE_6 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_TYPE_6 } {
  # Procedure called to update C_PF2_ENTRY_TYPE_6 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 7} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_TYPE_6}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_TYPE_6}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_6 { MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_6 PARAM_VALUE.C_PF2_ENTRY_TYPE_6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_TYPE_6}] ${MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_6}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_TYPE_6 { PARAM_VALUE.C_PF2_ENTRY_TYPE_6 } {
  # Procedure called to validate C_PF2_ENTRY_TYPE_6
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_BAR_6 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_BAR_6 } {
  # Procedure called to update C_PF2_ENTRY_BAR_6 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 7} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_BAR_6}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_BAR_6}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_BAR_6 { MODELPARAM_VALUE.C_PF2_ENTRY_BAR_6 PARAM_VALUE.C_PF2_ENTRY_BAR_6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_BAR_6}] ${MODELPARAM_VALUE.C_PF2_ENTRY_BAR_6}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_BAR_6 { PARAM_VALUE.C_PF2_ENTRY_BAR_6 } {
  # Procedure called to validate C_PF2_ENTRY_BAR_6
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_ADDR_6 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_ADDR_6 } {
  # Procedure called to update C_PF2_ENTRY_ADDR_6 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 7} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_ADDR_6}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_ADDR_6}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_6 { MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_6 PARAM_VALUE.C_PF2_ENTRY_ADDR_6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_ADDR_6}] ${MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_6}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_ADDR_6 { PARAM_VALUE.C_PF2_ENTRY_ADDR_6 } {
  # Procedure called to validate C_PF2_ENTRY_ADDR_6
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_6 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_6 } {
  # Procedure called to update C_PF2_ENTRY_VERSION_TYPE_6 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 7} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_6}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_6}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_6 { MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_6 PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_6}] ${MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_6}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_6 { PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_6 } {
  # Procedure called to validate C_PF2_ENTRY_VERSION_TYPE_6
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_6 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_6 } {
  # Procedure called to update C_PF2_ENTRY_MAJOR_VERSION_6 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 7} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_6}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_6}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_6 { MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_6 PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_6}] ${MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_6}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_6 { PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_6 } {
  # Procedure called to validate C_PF2_ENTRY_MAJOR_VERSION_6
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_6 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_6 } {
  # Procedure called to update C_PF2_ENTRY_MINOR_VERSION_6 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 7} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_6}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_6}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_6 { MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_6 PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_6}] ${MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_6}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_6 { PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_6 } {
  # Procedure called to validate C_PF2_ENTRY_MINOR_VERSION_6
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_RSVD0_6 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_RSVD0_6 } {
  # Procedure called to update C_PF2_ENTRY_RSVD0_6 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 7} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_6}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_6}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_6 { MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_6 PARAM_VALUE.C_PF2_ENTRY_RSVD0_6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_6}] ${MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_6}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_RSVD0_6 { PARAM_VALUE.C_PF2_ENTRY_RSVD0_6 } {
  # Procedure called to validate C_PF2_ENTRY_RSVD0_6
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_TYPE_7 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_TYPE_7 } {
  # Procedure called to update C_PF2_ENTRY_TYPE_7 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 8} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_TYPE_7}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_TYPE_7}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_7 { MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_7 PARAM_VALUE.C_PF2_ENTRY_TYPE_7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_TYPE_7}] ${MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_7}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_TYPE_7 { PARAM_VALUE.C_PF2_ENTRY_TYPE_7 } {
  # Procedure called to validate C_PF2_ENTRY_TYPE_7
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_BAR_7 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_BAR_7 } {
  # Procedure called to update C_PF2_ENTRY_BAR_7 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 8} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_BAR_7}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_BAR_7}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_BAR_7 { MODELPARAM_VALUE.C_PF2_ENTRY_BAR_7 PARAM_VALUE.C_PF2_ENTRY_BAR_7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_BAR_7}] ${MODELPARAM_VALUE.C_PF2_ENTRY_BAR_7}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_BAR_7 { PARAM_VALUE.C_PF2_ENTRY_BAR_7 } {
  # Procedure called to validate C_PF2_ENTRY_BAR_7
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_ADDR_7 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_ADDR_7 } {
  # Procedure called to update C_PF2_ENTRY_ADDR_7 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 8} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_ADDR_7}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_ADDR_7}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_7 { MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_7 PARAM_VALUE.C_PF2_ENTRY_ADDR_7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_ADDR_7}] ${MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_7}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_ADDR_7 { PARAM_VALUE.C_PF2_ENTRY_ADDR_7 } {
  # Procedure called to validate C_PF2_ENTRY_ADDR_7
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_7 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_7 } {
  # Procedure called to update C_PF2_ENTRY_VERSION_TYPE_7 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 8} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_7}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_7}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_7 { MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_7 PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_7}] ${MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_7}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_7 { PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_7 } {
  # Procedure called to validate C_PF2_ENTRY_VERSION_TYPE_7
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_7 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_7 } {
  # Procedure called to update C_PF2_ENTRY_MAJOR_VERSION_7 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 8} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_7}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_7}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_7 { MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_7 PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_7}] ${MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_7}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_7 { PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_7 } {
  # Procedure called to validate C_PF2_ENTRY_MAJOR_VERSION_7
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_7 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_7 } {
  # Procedure called to update C_PF2_ENTRY_MINOR_VERSION_7 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 8} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_7}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_7}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_7 { MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_7 PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_7}] ${MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_7}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_7 { PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_7 } {
  # Procedure called to validate C_PF2_ENTRY_MINOR_VERSION_7
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_RSVD0_7 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_RSVD0_7 } {
  # Procedure called to update C_PF2_ENTRY_RSVD0_7 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 8} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_7}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_7}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_7 { MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_7 PARAM_VALUE.C_PF2_ENTRY_RSVD0_7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_7}] ${MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_7}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_RSVD0_7 { PARAM_VALUE.C_PF2_ENTRY_RSVD0_7 } {
  # Procedure called to validate C_PF2_ENTRY_RSVD0_7
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_TYPE_8 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_TYPE_8 } {
  # Procedure called to update C_PF2_ENTRY_TYPE_8 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 9} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_TYPE_8}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_TYPE_8}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_8 { MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_8 PARAM_VALUE.C_PF2_ENTRY_TYPE_8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_TYPE_8}] ${MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_8}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_TYPE_8 { PARAM_VALUE.C_PF2_ENTRY_TYPE_8 } {
  # Procedure called to validate C_PF2_ENTRY_TYPE_8
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_BAR_8 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_BAR_8 } {
  # Procedure called to update C_PF2_ENTRY_BAR_8 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 9} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_BAR_8}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_BAR_8}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_BAR_8 { MODELPARAM_VALUE.C_PF2_ENTRY_BAR_8 PARAM_VALUE.C_PF2_ENTRY_BAR_8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_BAR_8}] ${MODELPARAM_VALUE.C_PF2_ENTRY_BAR_8}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_BAR_8 { PARAM_VALUE.C_PF2_ENTRY_BAR_8 } {
  # Procedure called to validate C_PF2_ENTRY_BAR_8
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_ADDR_8 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_ADDR_8 } {
  # Procedure called to update C_PF2_ENTRY_ADDR_8 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 9} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_ADDR_8}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_ADDR_8}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_8 { MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_8 PARAM_VALUE.C_PF2_ENTRY_ADDR_8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_ADDR_8}] ${MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_8}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_ADDR_8 { PARAM_VALUE.C_PF2_ENTRY_ADDR_8 } {
  # Procedure called to validate C_PF2_ENTRY_ADDR_8
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_8 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_8 } {
  # Procedure called to update C_PF2_ENTRY_VERSION_TYPE_8 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 9} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_8}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_8}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_8 { MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_8 PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_8}] ${MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_8}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_8 { PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_8 } {
  # Procedure called to validate C_PF2_ENTRY_VERSION_TYPE_8
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_8 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_8 } {
  # Procedure called to update C_PF2_ENTRY_MAJOR_VERSION_8 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 9} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_8}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_8}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_8 { MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_8 PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_8}] ${MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_8}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_8 { PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_8 } {
  # Procedure called to validate C_PF2_ENTRY_MAJOR_VERSION_8
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_8 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_8 } {
  # Procedure called to update C_PF2_ENTRY_MINOR_VERSION_8 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 9} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_8}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_8}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_8 { MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_8 PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_8}] ${MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_8}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_8 { PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_8 } {
  # Procedure called to validate C_PF2_ENTRY_MINOR_VERSION_8
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_RSVD0_8 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_RSVD0_8 } {
  # Procedure called to update C_PF2_ENTRY_RSVD0_8 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 9} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_8}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_8}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_8 { MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_8 PARAM_VALUE.C_PF2_ENTRY_RSVD0_8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_8}] ${MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_8}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_RSVD0_8 { PARAM_VALUE.C_PF2_ENTRY_RSVD0_8 } {
  # Procedure called to validate C_PF2_ENTRY_RSVD0_8
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_TYPE_9 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_TYPE_9 } {
  # Procedure called to update C_PF2_ENTRY_TYPE_9 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 10} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_TYPE_9}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_TYPE_9}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_9 { MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_9 PARAM_VALUE.C_PF2_ENTRY_TYPE_9 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_TYPE_9}] ${MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_9}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_TYPE_9 { PARAM_VALUE.C_PF2_ENTRY_TYPE_9 } {
  # Procedure called to validate C_PF2_ENTRY_TYPE_9
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_BAR_9 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_BAR_9 } {
  # Procedure called to update C_PF2_ENTRY_BAR_9 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 10} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_BAR_9}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_BAR_9}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_BAR_9 { MODELPARAM_VALUE.C_PF2_ENTRY_BAR_9 PARAM_VALUE.C_PF2_ENTRY_BAR_9 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_BAR_9}] ${MODELPARAM_VALUE.C_PF2_ENTRY_BAR_9}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_BAR_9 { PARAM_VALUE.C_PF2_ENTRY_BAR_9 } {
  # Procedure called to validate C_PF2_ENTRY_BAR_9
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_ADDR_9 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_ADDR_9 } {
  # Procedure called to update C_PF2_ENTRY_ADDR_9 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 10} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_ADDR_9}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_ADDR_9}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_9 { MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_9 PARAM_VALUE.C_PF2_ENTRY_ADDR_9 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_ADDR_9}] ${MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_9}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_ADDR_9 { PARAM_VALUE.C_PF2_ENTRY_ADDR_9 } {
  # Procedure called to validate C_PF2_ENTRY_ADDR_9
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_9 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_9 } {
  # Procedure called to update C_PF2_ENTRY_VERSION_TYPE_9 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 10} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_9}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_9}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_9 { MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_9 PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_9 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_9}] ${MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_9}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_9 { PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_9 } {
  # Procedure called to validate C_PF2_ENTRY_VERSION_TYPE_9
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_9 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_9 } {
  # Procedure called to update C_PF2_ENTRY_MAJOR_VERSION_9 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 10} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_9}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_9}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_9 { MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_9 PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_9 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_9}] ${MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_9}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_9 { PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_9 } {
  # Procedure called to validate C_PF2_ENTRY_MAJOR_VERSION_9
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_9 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_9 } {
  # Procedure called to update C_PF2_ENTRY_MINOR_VERSION_9 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 10} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_9}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_9}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_9 { MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_9 PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_9 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_9}] ${MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_9}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_9 { PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_9 } {
  # Procedure called to validate C_PF2_ENTRY_MINOR_VERSION_9
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_RSVD0_9 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_RSVD0_9 } {
  # Procedure called to update C_PF2_ENTRY_RSVD0_9 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 10} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_9}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_9}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_9 { MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_9 PARAM_VALUE.C_PF2_ENTRY_RSVD0_9 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_9}] ${MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_9}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_RSVD0_9 { PARAM_VALUE.C_PF2_ENTRY_RSVD0_9 } {
  # Procedure called to validate C_PF2_ENTRY_RSVD0_9
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_TYPE_10 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_TYPE_10 } {
  # Procedure called to update C_PF2_ENTRY_TYPE_10 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 11} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_TYPE_10}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_TYPE_10}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_10 { MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_10 PARAM_VALUE.C_PF2_ENTRY_TYPE_10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_TYPE_10}] ${MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_10}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_TYPE_10 { PARAM_VALUE.C_PF2_ENTRY_TYPE_10 } {
  # Procedure called to validate C_PF2_ENTRY_TYPE_10
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_BAR_10 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_BAR_10 } {
  # Procedure called to update C_PF2_ENTRY_BAR_10 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 11} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_BAR_10}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_BAR_10}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_BAR_10 { MODELPARAM_VALUE.C_PF2_ENTRY_BAR_10 PARAM_VALUE.C_PF2_ENTRY_BAR_10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_BAR_10}] ${MODELPARAM_VALUE.C_PF2_ENTRY_BAR_10}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_BAR_10 { PARAM_VALUE.C_PF2_ENTRY_BAR_10 } {
  # Procedure called to validate C_PF2_ENTRY_BAR_10
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_ADDR_10 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_ADDR_10 } {
  # Procedure called to update C_PF2_ENTRY_ADDR_10 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 11} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_ADDR_10}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_ADDR_10}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_10 { MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_10 PARAM_VALUE.C_PF2_ENTRY_ADDR_10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_ADDR_10}] ${MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_10}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_ADDR_10 { PARAM_VALUE.C_PF2_ENTRY_ADDR_10 } {
  # Procedure called to validate C_PF2_ENTRY_ADDR_10
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_10 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_10 } {
  # Procedure called to update C_PF2_ENTRY_VERSION_TYPE_10 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 11} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_10}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_10}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_10 { MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_10 PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_10}] ${MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_10}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_10 { PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_10 } {
  # Procedure called to validate C_PF2_ENTRY_VERSION_TYPE_10
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_10 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_10 } {
  # Procedure called to update C_PF2_ENTRY_MAJOR_VERSION_10 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 11} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_10}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_10}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_10 { MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_10 PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_10}] ${MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_10}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_10 { PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_10 } {
  # Procedure called to validate C_PF2_ENTRY_MAJOR_VERSION_10
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_10 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_10 } {
  # Procedure called to update C_PF2_ENTRY_MINOR_VERSION_10 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 11} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_10}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_10}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_10 { MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_10 PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_10}] ${MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_10}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_10 { PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_10 } {
  # Procedure called to validate C_PF2_ENTRY_MINOR_VERSION_10
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_RSVD0_10 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_RSVD0_10 } {
  # Procedure called to update C_PF2_ENTRY_RSVD0_10 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 11} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_10}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_10}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_10 { MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_10 PARAM_VALUE.C_PF2_ENTRY_RSVD0_10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_10}] ${MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_10}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_RSVD0_10 { PARAM_VALUE.C_PF2_ENTRY_RSVD0_10 } {
  # Procedure called to validate C_PF2_ENTRY_RSVD0_10
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_TYPE_11 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_TYPE_11 } {
  # Procedure called to update C_PF2_ENTRY_TYPE_11 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 12} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_TYPE_11}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_TYPE_11}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_11 { MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_11 PARAM_VALUE.C_PF2_ENTRY_TYPE_11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_TYPE_11}] ${MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_11}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_TYPE_11 { PARAM_VALUE.C_PF2_ENTRY_TYPE_11 } {
  # Procedure called to validate C_PF2_ENTRY_TYPE_11
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_BAR_11 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_BAR_11 } {
  # Procedure called to update C_PF2_ENTRY_BAR_11 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 12} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_BAR_11}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_BAR_11}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_BAR_11 { MODELPARAM_VALUE.C_PF2_ENTRY_BAR_11 PARAM_VALUE.C_PF2_ENTRY_BAR_11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_BAR_11}] ${MODELPARAM_VALUE.C_PF2_ENTRY_BAR_11}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_BAR_11 { PARAM_VALUE.C_PF2_ENTRY_BAR_11 } {
  # Procedure called to validate C_PF2_ENTRY_BAR_11
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_ADDR_11 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_ADDR_11 } {
  # Procedure called to update C_PF2_ENTRY_ADDR_11 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 12} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_ADDR_11}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_ADDR_11}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_11 { MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_11 PARAM_VALUE.C_PF2_ENTRY_ADDR_11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_ADDR_11}] ${MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_11}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_ADDR_11 { PARAM_VALUE.C_PF2_ENTRY_ADDR_11 } {
  # Procedure called to validate C_PF2_ENTRY_ADDR_11
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_11 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_11 } {
  # Procedure called to update C_PF2_ENTRY_VERSION_TYPE_11 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 12} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_11}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_11}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_11 { MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_11 PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_11}] ${MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_11}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_11 { PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_11 } {
  # Procedure called to validate C_PF2_ENTRY_VERSION_TYPE_11
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_11 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_11 } {
  # Procedure called to update C_PF2_ENTRY_MAJOR_VERSION_11 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 12} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_11}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_11}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_11 { MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_11 PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_11}] ${MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_11}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_11 { PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_11 } {
  # Procedure called to validate C_PF2_ENTRY_MAJOR_VERSION_11
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_11 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_11 } {
  # Procedure called to update C_PF2_ENTRY_MINOR_VERSION_11 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 12} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_11}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_11}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_11 { MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_11 PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_11}] ${MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_11}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_11 { PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_11 } {
  # Procedure called to validate C_PF2_ENTRY_MINOR_VERSION_11
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_RSVD0_11 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_RSVD0_11 } {
  # Procedure called to update C_PF2_ENTRY_RSVD0_11 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 12} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_11}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_11}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_11 { MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_11 PARAM_VALUE.C_PF2_ENTRY_RSVD0_11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_11}] ${MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_11}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_RSVD0_11 { PARAM_VALUE.C_PF2_ENTRY_RSVD0_11 } {
  # Procedure called to validate C_PF2_ENTRY_RSVD0_11
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_TYPE_12 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_TYPE_12 } {
  # Procedure called to update C_PF2_ENTRY_TYPE_12 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 13} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_TYPE_12}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_TYPE_12}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_12 { MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_12 PARAM_VALUE.C_PF2_ENTRY_TYPE_12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_TYPE_12}] ${MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_12}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_TYPE_12 { PARAM_VALUE.C_PF2_ENTRY_TYPE_12 } {
  # Procedure called to validate C_PF2_ENTRY_TYPE_12
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_BAR_12 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_BAR_12 } {
  # Procedure called to update C_PF2_ENTRY_BAR_12 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 13} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_BAR_12}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_BAR_12}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_BAR_12 { MODELPARAM_VALUE.C_PF2_ENTRY_BAR_12 PARAM_VALUE.C_PF2_ENTRY_BAR_12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_BAR_12}] ${MODELPARAM_VALUE.C_PF2_ENTRY_BAR_12}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_BAR_12 { PARAM_VALUE.C_PF2_ENTRY_BAR_12 } {
  # Procedure called to validate C_PF2_ENTRY_BAR_12
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_ADDR_12 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_ADDR_12 } {
  # Procedure called to update C_PF2_ENTRY_ADDR_12 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 13} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_ADDR_12}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_ADDR_12}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_12 { MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_12 PARAM_VALUE.C_PF2_ENTRY_ADDR_12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_ADDR_12}] ${MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_12}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_ADDR_12 { PARAM_VALUE.C_PF2_ENTRY_ADDR_12 } {
  # Procedure called to validate C_PF2_ENTRY_ADDR_12
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_12 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_12 } {
  # Procedure called to update C_PF2_ENTRY_VERSION_TYPE_12 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 13} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_12}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_12}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_12 { MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_12 PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_12}] ${MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_12}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_12 { PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_12 } {
  # Procedure called to validate C_PF2_ENTRY_VERSION_TYPE_12
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_12 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_12 } {
  # Procedure called to update C_PF2_ENTRY_MAJOR_VERSION_12 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 13} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_12}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_12}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_12 { MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_12 PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_12}] ${MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_12}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_12 { PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_12 } {
  # Procedure called to validate C_PF2_ENTRY_MAJOR_VERSION_12
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_12 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_12 } {
  # Procedure called to update C_PF2_ENTRY_MINOR_VERSION_12 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 13} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_12}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_12}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_12 { MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_12 PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_12}] ${MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_12}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_12 { PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_12 } {
  # Procedure called to validate C_PF2_ENTRY_MINOR_VERSION_12
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_RSVD0_12 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_RSVD0_12 } {
  # Procedure called to update C_PF2_ENTRY_RSVD0_12 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 13} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_12}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_12}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_12 { MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_12 PARAM_VALUE.C_PF2_ENTRY_RSVD0_12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_12}] ${MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_12}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_RSVD0_12 { PARAM_VALUE.C_PF2_ENTRY_RSVD0_12 } {
  # Procedure called to validate C_PF2_ENTRY_RSVD0_12
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_TYPE_13 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_TYPE_13 } {
  # Procedure called to update C_PF2_ENTRY_TYPE_13 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 14} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_TYPE_13}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_TYPE_13}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_13 { MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_13 PARAM_VALUE.C_PF2_ENTRY_TYPE_13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_TYPE_13}] ${MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_13}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_TYPE_13 { PARAM_VALUE.C_PF2_ENTRY_TYPE_13 } {
  # Procedure called to validate C_PF2_ENTRY_TYPE_13
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_BAR_13 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_BAR_13 } {
  # Procedure called to update C_PF2_ENTRY_BAR_13 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 14} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_BAR_13}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_BAR_13}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_BAR_13 { MODELPARAM_VALUE.C_PF2_ENTRY_BAR_13 PARAM_VALUE.C_PF2_ENTRY_BAR_13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_BAR_13}] ${MODELPARAM_VALUE.C_PF2_ENTRY_BAR_13}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_BAR_13 { PARAM_VALUE.C_PF2_ENTRY_BAR_13 } {
  # Procedure called to validate C_PF2_ENTRY_BAR_13
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_ADDR_13 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_ADDR_13 } {
  # Procedure called to update C_PF2_ENTRY_ADDR_13 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 14} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_ADDR_13}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_ADDR_13}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_13 { MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_13 PARAM_VALUE.C_PF2_ENTRY_ADDR_13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_ADDR_13}] ${MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_13}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_ADDR_13 { PARAM_VALUE.C_PF2_ENTRY_ADDR_13 } {
  # Procedure called to validate C_PF2_ENTRY_ADDR_13
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_13 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_13 } {
  # Procedure called to update C_PF2_ENTRY_VERSION_TYPE_13 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 14} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_13}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_13}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_13 { MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_13 PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_13}] ${MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_13}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_13 { PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_13 } {
  # Procedure called to validate C_PF2_ENTRY_VERSION_TYPE_13
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_13 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_13 } {
  # Procedure called to update C_PF2_ENTRY_MAJOR_VERSION_13 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 14} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_13}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_13}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_13 { MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_13 PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_13}] ${MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_13}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_13 { PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_13 } {
  # Procedure called to validate C_PF2_ENTRY_MAJOR_VERSION_13
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_13 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_13 } {
  # Procedure called to update C_PF2_ENTRY_MINOR_VERSION_13 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 14} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_13}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_13}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_13 { MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_13 PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_13}] ${MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_13}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_13 { PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_13 } {
  # Procedure called to validate C_PF2_ENTRY_MINOR_VERSION_13
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_RSVD0_13 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_RSVD0_13 } {
  # Procedure called to update C_PF2_ENTRY_RSVD0_13 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 14} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_13}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_13}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_13 { MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_13 PARAM_VALUE.C_PF2_ENTRY_RSVD0_13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_13}] ${MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_13}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_RSVD0_13 { PARAM_VALUE.C_PF2_ENTRY_RSVD0_13 } {
  # Procedure called to validate C_PF2_ENTRY_RSVD0_13
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_TYPE_14 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_TYPE_14 } {
  # Procedure called to update C_PF2_ENTRY_TYPE_14 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 15} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_TYPE_14}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_TYPE_14}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_14 { MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_14 PARAM_VALUE.C_PF2_ENTRY_TYPE_14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_TYPE_14}] ${MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_14}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_TYPE_14 { PARAM_VALUE.C_PF2_ENTRY_TYPE_14 } {
  # Procedure called to validate C_PF2_ENTRY_TYPE_14
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_BAR_14 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_BAR_14 } {
  # Procedure called to update C_PF2_ENTRY_BAR_14 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 15} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_BAR_14}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_BAR_14}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_BAR_14 { MODELPARAM_VALUE.C_PF2_ENTRY_BAR_14 PARAM_VALUE.C_PF2_ENTRY_BAR_14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_BAR_14}] ${MODELPARAM_VALUE.C_PF2_ENTRY_BAR_14}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_BAR_14 { PARAM_VALUE.C_PF2_ENTRY_BAR_14 } {
  # Procedure called to validate C_PF2_ENTRY_BAR_14
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_ADDR_14 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_ADDR_14 } {
  # Procedure called to update C_PF2_ENTRY_ADDR_14 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 15} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_ADDR_14}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_ADDR_14}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_14 { MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_14 PARAM_VALUE.C_PF2_ENTRY_ADDR_14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_ADDR_14}] ${MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_14}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_ADDR_14 { PARAM_VALUE.C_PF2_ENTRY_ADDR_14 } {
  # Procedure called to validate C_PF2_ENTRY_ADDR_14
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_14 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_14 } {
  # Procedure called to update C_PF2_ENTRY_VERSION_TYPE_14 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 15} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_14}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_14}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_14 { MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_14 PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_14}] ${MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_14}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_14 { PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_14 } {
  # Procedure called to validate C_PF2_ENTRY_VERSION_TYPE_14
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_14 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_14 } {
  # Procedure called to update C_PF2_ENTRY_MAJOR_VERSION_14 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 15} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_14}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_14}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_14 { MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_14 PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_14}] ${MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_14}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_14 { PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_14 } {
  # Procedure called to validate C_PF2_ENTRY_MAJOR_VERSION_14
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_14 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_14 } {
  # Procedure called to update C_PF2_ENTRY_MINOR_VERSION_14 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 15} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_14}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_14}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_14 { MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_14 PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_14}] ${MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_14}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_14 { PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_14 } {
  # Procedure called to validate C_PF2_ENTRY_MINOR_VERSION_14
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_RSVD0_14 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_RSVD0_14 } {
  # Procedure called to update C_PF2_ENTRY_RSVD0_14 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots >= 15} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_14}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_14}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_14 { MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_14 PARAM_VALUE.C_PF2_ENTRY_RSVD0_14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_14}] ${MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_14}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_RSVD0_14 { PARAM_VALUE.C_PF2_ENTRY_RSVD0_14 } {
  # Procedure called to validate C_PF2_ENTRY_RSVD0_14
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_TYPE_15 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_TYPE_15 } {
  # Procedure called to update C_PF2_ENTRY_TYPE_15 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots == 16} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_TYPE_15}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_TYPE_15}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_15 { MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_15 PARAM_VALUE.C_PF2_ENTRY_TYPE_15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_TYPE_15}] ${MODELPARAM_VALUE.C_PF2_ENTRY_TYPE_15}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_TYPE_15 { PARAM_VALUE.C_PF2_ENTRY_TYPE_15 } {
  # Procedure called to validate C_PF2_ENTRY_TYPE_15
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_BAR_15 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_BAR_15 } {
  # Procedure called to update C_PF2_ENTRY_BAR_15 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots == 16} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_BAR_15}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_BAR_15}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_BAR_15 { MODELPARAM_VALUE.C_PF2_ENTRY_BAR_15 PARAM_VALUE.C_PF2_ENTRY_BAR_15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_BAR_15}] ${MODELPARAM_VALUE.C_PF2_ENTRY_BAR_15}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_BAR_15 { PARAM_VALUE.C_PF2_ENTRY_BAR_15 } {
  # Procedure called to validate C_PF2_ENTRY_BAR_15
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_ADDR_15 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_ADDR_15 } {
  # Procedure called to update C_PF2_ENTRY_ADDR_15 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots == 16} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_ADDR_15}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_ADDR_15}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_15 { MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_15 PARAM_VALUE.C_PF2_ENTRY_ADDR_15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_ADDR_15}] ${MODELPARAM_VALUE.C_PF2_ENTRY_ADDR_15}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_ADDR_15 { PARAM_VALUE.C_PF2_ENTRY_ADDR_15 } {
  # Procedure called to validate C_PF2_ENTRY_ADDR_15
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_15 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_15 } {
  # Procedure called to update C_PF2_ENTRY_VERSION_TYPE_15 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots == 16} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_15}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_15}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_15 { MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_15 PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_15}] ${MODELPARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_15}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_15 { PARAM_VALUE.C_PF2_ENTRY_VERSION_TYPE_15 } {
  # Procedure called to validate C_PF2_ENTRY_VERSION_TYPE_15
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_15 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_15 } {
  # Procedure called to update C_PF2_ENTRY_MAJOR_VERSION_15 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots == 16} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_15}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_15}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_15 { MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_15 PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_15}] ${MODELPARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_15}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_15 { PARAM_VALUE.C_PF2_ENTRY_MAJOR_VERSION_15 } {
  # Procedure called to validate C_PF2_ENTRY_MAJOR_VERSION_15
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_15 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_15 } {
  # Procedure called to update C_PF2_ENTRY_MINOR_VERSION_15 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots == 16} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_15}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_15}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_15 { MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_15 PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_15}] ${MODELPARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_15}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_15 { PARAM_VALUE.C_PF2_ENTRY_MINOR_VERSION_15 } {
  # Procedure called to validate C_PF2_ENTRY_MINOR_VERSION_15
  return true
}

proc update_PARAM_VALUE.C_PF2_ENTRY_RSVD0_15 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF2_ENTRY_RSVD0_15 } {
  # Procedure called to update C_PF2_ENTRY_RSVD0_15 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs >= 3} {
  	if {$pf0_num_slots == 16} {
    	set_property enabled true ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_15}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_15}
  }      
}

proc update_MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_15 { MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_15 PARAM_VALUE.C_PF2_ENTRY_RSVD0_15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF2_ENTRY_RSVD0_15}] ${MODELPARAM_VALUE.C_PF2_ENTRY_RSVD0_15}
}


proc validate_PARAM_VALUE.C_PF2_ENTRY_RSVD0_15 { PARAM_VALUE.C_PF2_ENTRY_RSVD0_15 } {
  # Procedure called to validate C_PF2_ENTRY_RSVD0_15
  return true
}

proc update_PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE } {
  # Procedure called to update C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  if {$num_pfs == 4} {
    set_property enabled true ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE { MODELPARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}] ${MODELPARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}
}


proc validate_PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE { PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE } {
  # Procedure called to validate C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE
  return true
}

proc update_gui_for_PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE {IPINST PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE} {
	# Procedure called to update C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE when any of the dependent parameters in the arguments change
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$pf0_num_slots == 1} {	
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 15 Configuration" -of $IPINST]						
	} elseif {$pf0_num_slots == 2} {
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 15 Configuration" -of $IPINST]			
	}	elseif {$pf0_num_slots == 3} {
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 15 Configuration" -of $IPINST]			
	} elseif {$pf0_num_slots == 4} {
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 15 Configuration" -of $IPINST]			
	}	elseif {$pf0_num_slots == 5} {
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 15 Configuration" -of $IPINST]			
	} elseif {$pf0_num_slots == 6} {
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 15 Configuration" -of $IPINST]			
	}	elseif {$pf0_num_slots == 7} {
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 15 Configuration" -of $IPINST]			
	} elseif {$pf0_num_slots == 8} {
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 15 Configuration" -of $IPINST]			
	}	elseif {$pf0_num_slots == 9} {
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 15 Configuration" -of $IPINST]			
	} elseif {$pf0_num_slots == 10} {
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 15 Configuration" -of $IPINST]			
	}	elseif {$pf0_num_slots == 11} {
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 15 Configuration" -of $IPINST]			
	} elseif {$pf0_num_slots == 12} {
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 15 Configuration" -of $IPINST]			
	}	elseif {$pf0_num_slots == 13} {
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 15 Configuration" -of $IPINST]			
	} elseif {$pf0_num_slots == 14} {
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 15 Configuration" -of $IPINST]	
	} elseif {$pf0_num_slots == 15} {
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible false [ipgui::get_groupspec -name "PF3 - Table Entry 15 Configuration" -of $IPINST]					
	}	else {
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 0 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 1 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 2 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 3 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 4 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 5 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 6 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 7 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 8 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 9 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 10 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 11 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 12 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 13 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 14 Configuration" -of $IPINST]
		set_property visible true  [ipgui::get_groupspec -name "PF3 - Table Entry 15 Configuration" -of $IPINST]			
	}	
}

proc update_PARAM_VALUE.C_PF3_BAR_INDEX { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_BAR_INDEX } {
  # Procedure called to update C_PF3_BAR_INDEX when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  if {$num_pfs == 4} {
    set_property enabled true ${PARAM_VALUE.C_PF3_BAR_INDEX}
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_BAR_INDEX}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_BAR_INDEX { MODELPARAM_VALUE.C_PF3_BAR_INDEX PARAM_VALUE.C_PF3_BAR_INDEX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_BAR_INDEX}] ${MODELPARAM_VALUE.C_PF3_BAR_INDEX}
}


proc validate_PARAM_VALUE.C_PF3_BAR_INDEX { PARAM_VALUE.C_PF3_BAR_INDEX } {
  # Procedure called to validate C_PF3_BAR_INDEX
  return true
}

proc update_PARAM_VALUE.C_PF3_LOW_OFFSET { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_LOW_OFFSET } {
  # Procedure called to update C_PF3_LOW_OFFSET when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  if {$num_pfs == 4} {
    set_property enabled true ${PARAM_VALUE.C_PF3_LOW_OFFSET}
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_LOW_OFFSET}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_LOW_OFFSET { MODELPARAM_VALUE.C_PF3_LOW_OFFSET PARAM_VALUE.C_PF3_LOW_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_LOW_OFFSET}] ${MODELPARAM_VALUE.C_PF3_LOW_OFFSET}
}


proc validate_PARAM_VALUE.C_PF3_LOW_OFFSET { PARAM_VALUE.C_PF3_LOW_OFFSET } {
  # Procedure called to validate C_PF3_LOW_OFFSET
  return true
}

proc update_PARAM_VALUE.C_PF3_HIGH_OFFSET { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_HIGH_OFFSET } {
  # Procedure called to update C_PF3_HIGH_OFFSET when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  if {$num_pfs == 4} {
    set_property enabled true ${PARAM_VALUE.C_PF3_HIGH_OFFSET}
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_HIGH_OFFSET}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_HIGH_OFFSET { MODELPARAM_VALUE.C_PF3_HIGH_OFFSET PARAM_VALUE.C_PF3_HIGH_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_HIGH_OFFSET}] ${MODELPARAM_VALUE.C_PF3_HIGH_OFFSET}
}


proc validate_PARAM_VALUE.C_PF3_HIGH_OFFSET { PARAM_VALUE.C_PF3_HIGH_OFFSET } {
  # Procedure called to validate C_PF3_HIGH_OFFSET
  return true
}

proc update_PARAM_VALUE.C_PF3_HAS_UUID_ROM { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_HAS_UUID_ROM } {
  # Procedure called to update C_PF3_HAS_UUID_ROM when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  if {$num_pfs == 4} {
    set_property enabled true ${PARAM_VALUE.C_PF3_HAS_UUID_ROM}
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_HAS_UUID_ROM}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_HAS_UUID_ROM { MODELPARAM_VALUE.C_PF3_HAS_UUID_ROM PARAM_VALUE.C_PF3_HAS_UUID_ROM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  if {[get_property value ${PARAM_VALUE.C_PF3_HAS_UUID_ROM}]} {
    set_property value 1 ${MODELPARAM_VALUE.C_PF3_HAS_UUID_ROM}
  } else {
    set_property value 0 ${MODELPARAM_VALUE.C_PF3_HAS_UUID_ROM}
  }  
}


proc validate_PARAM_VALUE.C_PF3_HAS_UUID_ROM { PARAM_VALUE.C_PF3_HAS_UUID_ROM } {
  # Procedure called to validate C_PF3_HAS_UUID_ROM
  return true
}

proc update_gui_for_PARAM_VALUE.C_PF3_HAS_UUID_ROM {IPINST PARAM_VALUE.C_PF3_HAS_UUID_ROM} {
	# Procedure called to update C_PF3_HAS_UUID_ROM when any of the dependent parameters in the arguments change
	set has_uuid_rom [get_property value ${PARAM_VALUE.C_PF3_HAS_UUID_ROM}]
  if {[get_property value ${PARAM_VALUE.C_PF3_HAS_UUID_ROM}]} {	
		set_property visible true [ipgui::get_guiparamspec -name C_PF3_UUID_ROM_INITIAL_VAL -of $IPINST ]
	} else {
		set_property visible false [ipgui::get_guiparamspec -name C_PF3_UUID_ROM_INITIAL_VAL -of $IPINST ]
	}
}

proc update_PARAM_VALUE.C_PF3_UUID_ROM_INITIAL_VAL { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_UUID_ROM_INITIAL_VAL } {
  # Procedure called to update C_PF3_UUID_ROM_INITIAL_VAL when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  if {$num_pfs == 4} {
    set_property enabled true ${PARAM_VALUE.C_PF3_UUID_ROM_INITIAL_VAL}
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_UUID_ROM_INITIAL_VAL}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_UUID_ROM_INIT { MODELPARAM_VALUE.C_PF3_UUID_ROM_INIT PARAM_VALUE.C_PF3_UUID_ROM_INITIAL_VAL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set uuid ""
  set uuid_chars [split [get_property value ${PARAM_VALUE.C_PF3_UUID_ROM_INITIAL_VAL}] {}]

  # Split the UUID into dword's and rotate to match the XPM_MEM string init format
  for {set dw 3} {$dw >= 0} {incr dw -1} {
    set dword ""
    for {set n 0} {$n < 8} {incr n} {
      append dword [lindex $uuid_chars [expr $dw * 8 + $n]]
    }
    if {[expr $dw == 3]} {
      append uuid $dword
    } else {
      append uuid "," $dword
    }
  }
	set_property value $uuid ${MODELPARAM_VALUE.C_PF3_UUID_ROM_INIT}

}

proc validate_PARAM_VALUE.C_PF3_UUID_ROM_INITIAL_VAL { PARAM_VALUE.C_PF3_UUID_ROM_INITIAL_VAL IPINST } {
    # Verify the UUID string is 32 characters in length
    set uuid_length [string length [get_property value ${PARAM_VALUE.C_PF3_UUID_ROM_INITIAL_VAL}]]

    if {[expr $uuid_length != 32]} {
      set_property errmsg "UUID string length of $uuid_length is not equal to 32" [ipgui::get_paramspec -name C_PF3_UUID_ROM_INITIAL_VAL -of $IPINST ]
      return false
    }

    # Verify the UUID string is valid hexadecimal
    return [RangeCheck4HexDec C_PF3_UUID_ROM_INITIAL_VAL [get_property value ${PARAM_VALUE.C_PF3_UUID_ROM_INITIAL_VAL}] 00000000000000000000000000000000 FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF $IPINST]
}

proc update_PARAM_VALUE.C_PF3_S_AXI_DATA_WIDTH { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_S_AXI_DATA_WIDTH } {
  # Procedure called to update C_PF3_S_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  if {$num_pfs == 4} {
    set_property enabled true ${PARAM_VALUE.C_PF3_S_AXI_DATA_WIDTH}
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_S_AXI_DATA_WIDTH}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_S_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_PF3_S_AXI_DATA_WIDTH PARAM_VALUE.C_PF3_S_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_S_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_PF3_S_AXI_DATA_WIDTH}
}


proc validate_PARAM_VALUE.C_PF3_S_AXI_DATA_WIDTH { PARAM_VALUE.C_PF3_S_AXI_DATA_WIDTH } {
  # Procedure called to validate C_PF3_S_AXI_DATA_WIDTH
  return true
}

proc update_PARAM_VALUE.C_PF3_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_S_AXI_ADDR_WIDTH } {
  # Procedure called to update C_PF3_S_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  if {$num_pfs == 4} {
    set_property enabled true ${PARAM_VALUE.C_PF3_S_AXI_ADDR_WIDTH}
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_S_AXI_ADDR_WIDTH}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_S_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_PF3_S_AXI_ADDR_WIDTH PARAM_VALUE.C_PF3_S_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_S_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_PF3_S_AXI_ADDR_WIDTH}
}


proc validate_PARAM_VALUE.C_PF3_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_PF3_S_AXI_ADDR_WIDTH } {
  # Procedure called to validate C_PF3_S_AXI_ADDR_WIDTH
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_TYPE_0 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_TYPE_0 } {
  # Procedure called to update C_PF3_ENTRY_TYPE_0 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 1} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_TYPE_0}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_TYPE_0}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_0 { MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_0 PARAM_VALUE.C_PF3_ENTRY_TYPE_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_TYPE_0}] ${MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_0}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_TYPE_0 { PARAM_VALUE.C_PF3_ENTRY_TYPE_0 } {
  # Procedure called to validate C_PF3_ENTRY_TYPE_0
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_BAR_0 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_BAR_0 } {
  # Procedure called to update C_PF3_ENTRY_BAR_0 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 1} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_BAR_0}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_BAR_0}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_BAR_0 { MODELPARAM_VALUE.C_PF3_ENTRY_BAR_0 PARAM_VALUE.C_PF3_ENTRY_BAR_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_BAR_0}] ${MODELPARAM_VALUE.C_PF3_ENTRY_BAR_0}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_BAR_0 { PARAM_VALUE.C_PF3_ENTRY_BAR_0 } {
  # Procedure called to validate C_PF3_ENTRY_BAR_0
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_ADDR_0 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_ADDR_0 } {
  # Procedure called to update C_PF3_ENTRY_ADDR_0 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 1} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_ADDR_0}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_ADDR_0}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_0 { MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_0 PARAM_VALUE.C_PF3_ENTRY_ADDR_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_ADDR_0}] ${MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_0}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_ADDR_0 { PARAM_VALUE.C_PF3_ENTRY_ADDR_0 } {
  # Procedure called to validate C_PF3_ENTRY_ADDR_0
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_0 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_0 } {
  # Procedure called to update C_PF3_ENTRY_VERSION_TYPE_0 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 1} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_0}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_0}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_0 { MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_0 PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_0}] ${MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_0}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_0 { PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_0 } {
  # Procedure called to validate C_PF3_ENTRY_VERSION_TYPE_0
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_0 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_0 } {
  # Procedure called to update C_PF3_ENTRY_MAJOR_VERSION_0 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 1} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_0}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_0}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_0 { MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_0 PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_0}] ${MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_0}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_0 { PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_0 } {
  # Procedure called to validate C_PF3_ENTRY_MAJOR_VERSION_0
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_0 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_0 } {
  # Procedure called to update C_PF3_ENTRY_MINOR_VERSION_0 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 1} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_0}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_0}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_0 { MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_0 PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_0}] ${MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_0}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_0 { PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_0 } {
  # Procedure called to validate C_PF3_ENTRY_MINOR_VERSION_0
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_RSVD0_0 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_RSVD0_0 } {
  # Procedure called to update C_PF3_ENTRY_RSVD0_0 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 1} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_0}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_0}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_0 { MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_0 PARAM_VALUE.C_PF3_ENTRY_RSVD0_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_0}] ${MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_0}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_RSVD0_0 { PARAM_VALUE.C_PF3_ENTRY_RSVD0_0 } {
  # Procedure called to validate C_PF3_ENTRY_RSVD0_0
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_TYPE_1 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_TYPE_1 } {
  # Procedure called to update C_PF3_ENTRY_TYPE_1 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 2} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_TYPE_1}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_TYPE_1}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_1 { MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_1 PARAM_VALUE.C_PF3_ENTRY_TYPE_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_TYPE_1}] ${MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_1}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_TYPE_1 { PARAM_VALUE.C_PF3_ENTRY_TYPE_1 } {
  # Procedure called to validate C_PF3_ENTRY_TYPE_1
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_BAR_1 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_BAR_1 } {
  # Procedure called to update C_PF3_ENTRY_BAR_1 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 2} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_BAR_1}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_BAR_1}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_BAR_1 { MODELPARAM_VALUE.C_PF3_ENTRY_BAR_1 PARAM_VALUE.C_PF3_ENTRY_BAR_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_BAR_1}] ${MODELPARAM_VALUE.C_PF3_ENTRY_BAR_1}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_BAR_1 { PARAM_VALUE.C_PF3_ENTRY_BAR_1 } {
  # Procedure called to validate C_PF3_ENTRY_BAR_1
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_ADDR_1 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_ADDR_1 } {
  # Procedure called to update C_PF3_ENTRY_ADDR_1 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 2} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_ADDR_1}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_ADDR_1}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_1 { MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_1 PARAM_VALUE.C_PF3_ENTRY_ADDR_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_ADDR_1}] ${MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_1}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_ADDR_1 { PARAM_VALUE.C_PF3_ENTRY_ADDR_1 } {
  # Procedure called to validate C_PF3_ENTRY_ADDR_1
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_1 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_1 } {
  # Procedure called to update C_PF3_ENTRY_VERSION_TYPE_1 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 2} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_1}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_1}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_1 { MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_1 PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_1}] ${MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_1}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_1 { PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_1 } {
  # Procedure called to validate C_PF3_ENTRY_VERSION_TYPE_1
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_1 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_1 } {
  # Procedure called to update C_PF3_ENTRY_MAJOR_VERSION_1 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 2} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_1}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_1}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_1 { MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_1 PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_1}] ${MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_1}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_1 { PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_1 } {
  # Procedure called to validate C_PF3_ENTRY_MAJOR_VERSION_1
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_1 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_1 } {
  # Procedure called to update C_PF3_ENTRY_MINOR_VERSION_1 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 2} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_1}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_1}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_1 { MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_1 PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_1}] ${MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_1}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_1 { PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_1 } {
  # Procedure called to validate C_PF3_ENTRY_MINOR_VERSION_1
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_RSVD0_1 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_RSVD0_1 } {
  # Procedure called to update C_PF3_ENTRY_RSVD0_1 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 2} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_1}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_1}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_1 { MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_1 PARAM_VALUE.C_PF3_ENTRY_RSVD0_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_1}] ${MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_1}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_RSVD0_1 { PARAM_VALUE.C_PF3_ENTRY_RSVD0_1 } {
  # Procedure called to validate C_PF3_ENTRY_RSVD0_1
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_TYPE_2 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_TYPE_2 } {
  # Procedure called to update C_PF3_ENTRY_TYPE_2 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 3} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_TYPE_2}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_TYPE_2}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_2 { MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_2 PARAM_VALUE.C_PF3_ENTRY_TYPE_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_TYPE_2}] ${MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_2}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_TYPE_2 { PARAM_VALUE.C_PF3_ENTRY_TYPE_2 } {
  # Procedure called to validate C_PF3_ENTRY_TYPE_2
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_BAR_2 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_BAR_2 } {
  # Procedure called to update C_PF3_ENTRY_BAR_2 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 3} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_BAR_2}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_BAR_2}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_BAR_2 { MODELPARAM_VALUE.C_PF3_ENTRY_BAR_2 PARAM_VALUE.C_PF3_ENTRY_BAR_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_BAR_2}] ${MODELPARAM_VALUE.C_PF3_ENTRY_BAR_2}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_BAR_2 { PARAM_VALUE.C_PF3_ENTRY_BAR_2 } {
  # Procedure called to validate C_PF3_ENTRY_BAR_2
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_ADDR_2 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_ADDR_2 } {
  # Procedure called to update C_PF3_ENTRY_ADDR_2 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 3} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_ADDR_2}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_ADDR_2}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_2 { MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_2 PARAM_VALUE.C_PF3_ENTRY_ADDR_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_ADDR_2}] ${MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_2}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_ADDR_2 { PARAM_VALUE.C_PF3_ENTRY_ADDR_2 } {
  # Procedure called to validate C_PF3_ENTRY_ADDR_2
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_2 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_2 } {
  # Procedure called to update C_PF3_ENTRY_VERSION_TYPE_2 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 3} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_2}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_2}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_2 { MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_2 PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_2}] ${MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_2}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_2 { PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_2 } {
  # Procedure called to validate C_PF3_ENTRY_VERSION_TYPE_2
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_2 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_2 } {
  # Procedure called to update C_PF3_ENTRY_MAJOR_VERSION_2 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 3} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_2}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_2}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_2 { MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_2 PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_2}] ${MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_2}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_2 { PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_2 } {
  # Procedure called to validate C_PF3_ENTRY_MAJOR_VERSION_2
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_2 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_2 } {
  # Procedure called to update C_PF3_ENTRY_MINOR_VERSION_2 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 3} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_2}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_2}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_2 { MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_2 PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_2}] ${MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_2}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_2 { PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_2 } {
  # Procedure called to validate C_PF3_ENTRY_MINOR_VERSION_2
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_RSVD0_2 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_RSVD0_2 } {
  # Procedure called to update C_PF3_ENTRY_RSVD0_2 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 3} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_2}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_2}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_2 { MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_2 PARAM_VALUE.C_PF3_ENTRY_RSVD0_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_2}] ${MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_2}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_RSVD0_2 { PARAM_VALUE.C_PF3_ENTRY_RSVD0_2 } {
  # Procedure called to validate C_PF3_ENTRY_RSVD0_2
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_TYPE_3 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_TYPE_3 } {
  # Procedure called to update C_PF3_ENTRY_TYPE_3 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 4} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_TYPE_3}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_TYPE_3}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_3 { MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_3 PARAM_VALUE.C_PF3_ENTRY_TYPE_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_TYPE_3}] ${MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_3}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_TYPE_3 { PARAM_VALUE.C_PF3_ENTRY_TYPE_3 } {
  # Procedure called to validate C_PF3_ENTRY_TYPE_3
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_BAR_3 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_BAR_3 } {
  # Procedure called to update C_PF3_ENTRY_BAR_3 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 4} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_BAR_3}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_BAR_3}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_BAR_3 { MODELPARAM_VALUE.C_PF3_ENTRY_BAR_3 PARAM_VALUE.C_PF3_ENTRY_BAR_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_BAR_3}] ${MODELPARAM_VALUE.C_PF3_ENTRY_BAR_3}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_BAR_3 { PARAM_VALUE.C_PF3_ENTRY_BAR_3 } {
  # Procedure called to validate C_PF3_ENTRY_BAR_3
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_ADDR_3 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_ADDR_3 } {
  # Procedure called to update C_PF3_ENTRY_ADDR_3 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 4} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_ADDR_3}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_ADDR_3}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_3 { MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_3 PARAM_VALUE.C_PF3_ENTRY_ADDR_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_ADDR_3}] ${MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_3}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_ADDR_3 { PARAM_VALUE.C_PF3_ENTRY_ADDR_3 } {
  # Procedure called to validate C_PF3_ENTRY_ADDR_3
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_3 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_3 } {
  # Procedure called to update C_PF3_ENTRY_VERSION_TYPE_3 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 4} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_3}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_3}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_3 { MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_3 PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_3}] ${MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_3}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_3 { PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_3 } {
  # Procedure called to validate C_PF3_ENTRY_VERSION_TYPE_3
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_3 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_3 } {
  # Procedure called to update C_PF3_ENTRY_MAJOR_VERSION_3 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 4} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_3}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_3}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_3 { MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_3 PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_3}] ${MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_3}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_3 { PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_3 } {
  # Procedure called to validate C_PF3_ENTRY_MAJOR_VERSION_3
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_3 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_3 } {
  # Procedure called to update C_PF3_ENTRY_MINOR_VERSION_3 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 4} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_3}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_3}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_3 { MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_3 PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_3}] ${MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_3}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_3 { PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_3 } {
  # Procedure called to validate C_PF3_ENTRY_MINOR_VERSION_3
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_RSVD0_3 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_RSVD0_3 } {
  # Procedure called to update C_PF3_ENTRY_RSVD0_3 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 4} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_3}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_3}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_3 { MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_3 PARAM_VALUE.C_PF3_ENTRY_RSVD0_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_3}] ${MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_3}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_RSVD0_3 { PARAM_VALUE.C_PF3_ENTRY_RSVD0_3 } {
  # Procedure called to validate C_PF3_ENTRY_RSVD0_3
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_TYPE_4 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_TYPE_4 } {
  # Procedure called to update C_PF3_ENTRY_TYPE_4 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 5} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_TYPE_4}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_TYPE_4}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_4 { MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_4 PARAM_VALUE.C_PF3_ENTRY_TYPE_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_TYPE_4}] ${MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_4}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_TYPE_4 { PARAM_VALUE.C_PF3_ENTRY_TYPE_4 } {
  # Procedure called to validate C_PF3_ENTRY_TYPE_4
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_BAR_4 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_BAR_4 } {
  # Procedure called to update C_PF3_ENTRY_BAR_4 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 5} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_BAR_4}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_BAR_4}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_BAR_4 { MODELPARAM_VALUE.C_PF3_ENTRY_BAR_4 PARAM_VALUE.C_PF3_ENTRY_BAR_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_BAR_4}] ${MODELPARAM_VALUE.C_PF3_ENTRY_BAR_4}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_BAR_4 { PARAM_VALUE.C_PF3_ENTRY_BAR_4 } {
  # Procedure called to validate C_PF3_ENTRY_BAR_4
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_ADDR_4 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_ADDR_4 } {
  # Procedure called to update C_PF3_ENTRY_ADDR_4 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 5} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_ADDR_4}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_ADDR_4}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_4 { MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_4 PARAM_VALUE.C_PF3_ENTRY_ADDR_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_ADDR_4}] ${MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_4}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_ADDR_4 { PARAM_VALUE.C_PF3_ENTRY_ADDR_4 } {
  # Procedure called to validate C_PF3_ENTRY_ADDR_4
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_4 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_4 } {
  # Procedure called to update C_PF3_ENTRY_VERSION_TYPE_4 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 5} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_4}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_4}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_4 { MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_4 PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_4}] ${MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_4}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_4 { PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_4 } {
  # Procedure called to validate C_PF3_ENTRY_VERSION_TYPE_4
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_4 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_4 } {
  # Procedure called to update C_PF3_ENTRY_MAJOR_VERSION_4 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 5} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_4}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_4}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_4 { MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_4 PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_4}] ${MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_4}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_4 { PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_4 } {
  # Procedure called to validate C_PF3_ENTRY_MAJOR_VERSION_4
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_4 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_4 } {
  # Procedure called to update C_PF3_ENTRY_MINOR_VERSION_4 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 5} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_4}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_4}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_4 { MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_4 PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_4}] ${MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_4}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_4 { PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_4 } {
  # Procedure called to validate C_PF3_ENTRY_MINOR_VERSION_4
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_RSVD0_4 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_RSVD0_4 } {
  # Procedure called to update C_PF3_ENTRY_RSVD0_4 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 5} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_4}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_4}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_4 { MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_4 PARAM_VALUE.C_PF3_ENTRY_RSVD0_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_4}] ${MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_4}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_RSVD0_4 { PARAM_VALUE.C_PF3_ENTRY_RSVD0_4 } {
  # Procedure called to validate C_PF3_ENTRY_RSVD0_4
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_TYPE_5 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_TYPE_5 } {
  # Procedure called to update C_PF3_ENTRY_TYPE_5 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 6} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_TYPE_5}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_TYPE_5}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_5 { MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_5 PARAM_VALUE.C_PF3_ENTRY_TYPE_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_TYPE_5}] ${MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_5}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_TYPE_5 { PARAM_VALUE.C_PF3_ENTRY_TYPE_5 } {
  # Procedure called to validate C_PF3_ENTRY_TYPE_5
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_BAR_5 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_BAR_5 } {
  # Procedure called to update C_PF3_ENTRY_BAR_5 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 6} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_BAR_5}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_BAR_5}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_BAR_5 { MODELPARAM_VALUE.C_PF3_ENTRY_BAR_5 PARAM_VALUE.C_PF3_ENTRY_BAR_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_BAR_5}] ${MODELPARAM_VALUE.C_PF3_ENTRY_BAR_5}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_BAR_5 { PARAM_VALUE.C_PF3_ENTRY_BAR_5 } {
  # Procedure called to validate C_PF3_ENTRY_BAR_5
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_ADDR_5 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_ADDR_5 } {
  # Procedure called to update C_PF3_ENTRY_ADDR_5 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 6} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_ADDR_5}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_ADDR_5}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_5 { MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_5 PARAM_VALUE.C_PF3_ENTRY_ADDR_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_ADDR_5}] ${MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_5}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_ADDR_5 { PARAM_VALUE.C_PF3_ENTRY_ADDR_5 } {
  # Procedure called to validate C_PF3_ENTRY_ADDR_5
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_5 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_5 } {
  # Procedure called to update C_PF3_ENTRY_VERSION_TYPE_5 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 6} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_5}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_5}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_5 { MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_5 PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_5}] ${MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_5}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_5 { PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_5 } {
  # Procedure called to validate C_PF3_ENTRY_VERSION_TYPE_5
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_5 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_5 } {
  # Procedure called to update C_PF3_ENTRY_MAJOR_VERSION_5 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 6} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_5}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_5}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_5 { MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_5 PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_5}] ${MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_5}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_5 { PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_5 } {
  # Procedure called to validate C_PF3_ENTRY_MAJOR_VERSION_5
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_5 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_5 } {
  # Procedure called to update C_PF3_ENTRY_MINOR_VERSION_5 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 6} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_5}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_5}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_5 { MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_5 PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_5}] ${MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_5}
}

proc validate_PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_5 { PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_5 } {
  # Procedure called to validate C_PF3_ENTRY_MINOR_VERSION_5
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_RSVD0_5 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_RSVD0_5 } {
  # Procedure called to update C_PF3_ENTRY_RSVD0_5 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 6} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_5}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_5}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_5 { MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_5 PARAM_VALUE.C_PF3_ENTRY_RSVD0_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_5}] ${MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_5}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_RSVD0_5 { PARAM_VALUE.C_PF3_ENTRY_RSVD0_5 } {
  # Procedure called to validate C_PF3_ENTRY_RSVD0_5
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_TYPE_6 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_TYPE_6 } {
  # Procedure called to update C_PF3_ENTRY_TYPE_6 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 7} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_TYPE_6}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_TYPE_6}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_6 { MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_6 PARAM_VALUE.C_PF3_ENTRY_TYPE_6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_TYPE_6}] ${MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_6}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_TYPE_6 { PARAM_VALUE.C_PF3_ENTRY_TYPE_6 } {
  # Procedure called to validate C_PF3_ENTRY_TYPE_6
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_BAR_6 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_BAR_6 } {
  # Procedure called to update C_PF3_ENTRY_BAR_6 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 7} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_BAR_6}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_BAR_6}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_BAR_6 { MODELPARAM_VALUE.C_PF3_ENTRY_BAR_6 PARAM_VALUE.C_PF3_ENTRY_BAR_6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_BAR_6}] ${MODELPARAM_VALUE.C_PF3_ENTRY_BAR_6}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_BAR_6 { PARAM_VALUE.C_PF3_ENTRY_BAR_6 } {
  # Procedure called to validate C_PF3_ENTRY_BAR_6
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_ADDR_6 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_ADDR_6 } {
  # Procedure called to update C_PF3_ENTRY_ADDR_6 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 7} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_ADDR_6}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_ADDR_6}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_6 { MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_6 PARAM_VALUE.C_PF3_ENTRY_ADDR_6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_ADDR_6}] ${MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_6}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_ADDR_6 { PARAM_VALUE.C_PF3_ENTRY_ADDR_6 } {
  # Procedure called to validate C_PF3_ENTRY_ADDR_6
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_6 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_6 } {
  # Procedure called to update C_PF3_ENTRY_VERSION_TYPE_6 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 7} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_6}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_6}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_6 { MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_6 PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_6}] ${MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_6}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_6 { PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_6 } {
  # Procedure called to validate C_PF3_ENTRY_VERSION_TYPE_6
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_6 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_6 } {
  # Procedure called to update C_PF3_ENTRY_MAJOR_VERSION_6 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 7} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_6}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_6}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_6 { MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_6 PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_6}] ${MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_6}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_6 { PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_6 } {
  # Procedure called to validate C_PF3_ENTRY_MAJOR_VERSION_6
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_6 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_6 } {
  # Procedure called to update C_PF3_ENTRY_MINOR_VERSION_6 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 7} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_6}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_6}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_6 { MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_6 PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_6}] ${MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_6}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_6 { PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_6 } {
  # Procedure called to validate C_PF3_ENTRY_MINOR_VERSION_6
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_RSVD0_6 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_RSVD0_6 } {
  # Procedure called to update C_PF3_ENTRY_RSVD0_6 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 7} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_6}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_6}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_6 { MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_6 PARAM_VALUE.C_PF3_ENTRY_RSVD0_6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_6}] ${MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_6}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_RSVD0_6 { PARAM_VALUE.C_PF3_ENTRY_RSVD0_6 } {
  # Procedure called to validate C_PF3_ENTRY_RSVD0_6
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_TYPE_7 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_TYPE_7 } {
  # Procedure called to update C_PF3_ENTRY_TYPE_7 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 8} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_TYPE_7}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_TYPE_7}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_7 { MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_7 PARAM_VALUE.C_PF3_ENTRY_TYPE_7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_TYPE_7}] ${MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_7}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_TYPE_7 { PARAM_VALUE.C_PF3_ENTRY_TYPE_7 } {
  # Procedure called to validate C_PF3_ENTRY_TYPE_7
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_BAR_7 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_BAR_7 } {
  # Procedure called to update C_PF3_ENTRY_BAR_7 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 8} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_BAR_7}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_BAR_7}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_BAR_7 { MODELPARAM_VALUE.C_PF3_ENTRY_BAR_7 PARAM_VALUE.C_PF3_ENTRY_BAR_7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_BAR_7}] ${MODELPARAM_VALUE.C_PF3_ENTRY_BAR_7}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_BAR_7 { PARAM_VALUE.C_PF3_ENTRY_BAR_7 } {
  # Procedure called to validate C_PF3_ENTRY_BAR_7
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_ADDR_7 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_ADDR_7 } {
  # Procedure called to update C_PF3_ENTRY_ADDR_7 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 8} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_ADDR_7}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_ADDR_7}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_7 { MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_7 PARAM_VALUE.C_PF3_ENTRY_ADDR_7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_ADDR_7}] ${MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_7}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_ADDR_7 { PARAM_VALUE.C_PF3_ENTRY_ADDR_7 } {
  # Procedure called to validate C_PF3_ENTRY_ADDR_7
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_7 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_7 } {
  # Procedure called to update C_PF3_ENTRY_VERSION_TYPE_7 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 8} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_7}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_7}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_7 { MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_7 PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_7}] ${MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_7}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_7 { PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_7 } {
  # Procedure called to validate C_PF3_ENTRY_VERSION_TYPE_7
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_7 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_7 } {
  # Procedure called to update C_PF3_ENTRY_MAJOR_VERSION_7 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 8} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_7}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_7}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_7 { MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_7 PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_7}] ${MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_7}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_7 { PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_7 } {
  # Procedure called to validate C_PF3_ENTRY_MAJOR_VERSION_7
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_7 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_7 } {
  # Procedure called to update C_PF3_ENTRY_MINOR_VERSION_7 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 8} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_7}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_7}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_7 { MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_7 PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_7}] ${MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_7}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_7 { PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_7 } {
  # Procedure called to validate C_PF3_ENTRY_MINOR_VERSION_7
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_RSVD0_7 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_RSVD0_7 } {
  # Procedure called to update C_PF3_ENTRY_RSVD0_7 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 8} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_7}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_7}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_7 { MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_7 PARAM_VALUE.C_PF3_ENTRY_RSVD0_7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_7}] ${MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_7}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_RSVD0_7 { PARAM_VALUE.C_PF3_ENTRY_RSVD0_7 } {
  # Procedure called to validate C_PF3_ENTRY_RSVD0_7
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_TYPE_8 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_TYPE_8 } {
  # Procedure called to update C_PF3_ENTRY_TYPE_8 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 9} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_TYPE_8}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_TYPE_8}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_8 { MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_8 PARAM_VALUE.C_PF3_ENTRY_TYPE_8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_TYPE_8}] ${MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_8}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_TYPE_8 { PARAM_VALUE.C_PF3_ENTRY_TYPE_8 } {
  # Procedure called to validate C_PF3_ENTRY_TYPE_8
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_BAR_8 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_BAR_8 } {
  # Procedure called to update C_PF3_ENTRY_BAR_8 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 9} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_BAR_8}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_BAR_8}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_BAR_8 { MODELPARAM_VALUE.C_PF3_ENTRY_BAR_8 PARAM_VALUE.C_PF3_ENTRY_BAR_8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_BAR_8}] ${MODELPARAM_VALUE.C_PF3_ENTRY_BAR_8}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_BAR_8 { PARAM_VALUE.C_PF3_ENTRY_BAR_8 } {
  # Procedure called to validate C_PF3_ENTRY_BAR_8
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_ADDR_8 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_ADDR_8 } {
  # Procedure called to update C_PF3_ENTRY_ADDR_8 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 9} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_ADDR_8}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_ADDR_8}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_8 { MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_8 PARAM_VALUE.C_PF3_ENTRY_ADDR_8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_ADDR_8}] ${MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_8}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_ADDR_8 { PARAM_VALUE.C_PF3_ENTRY_ADDR_8 } {
  # Procedure called to validate C_PF3_ENTRY_ADDR_8
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_8 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_8 } {
  # Procedure called to update C_PF3_ENTRY_VERSION_TYPE_8 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 9} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_8}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_8}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_8 { MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_8 PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_8}] ${MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_8}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_8 { PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_8 } {
  # Procedure called to validate C_PF3_ENTRY_VERSION_TYPE_8
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_8 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_8 } {
  # Procedure called to update C_PF3_ENTRY_MAJOR_VERSION_8 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 9} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_8}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_8}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_8 { MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_8 PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_8}] ${MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_8}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_8 { PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_8 } {
  # Procedure called to validate C_PF3_ENTRY_MAJOR_VERSION_8
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_8 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_8 } {
  # Procedure called to update C_PF3_ENTRY_MINOR_VERSION_8 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 9} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_8}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_8}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_8 { MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_8 PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_8}] ${MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_8}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_8 { PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_8 } {
  # Procedure called to validate C_PF3_ENTRY_MINOR_VERSION_8
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_RSVD0_8 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_RSVD0_8 } {
  # Procedure called to update C_PF3_ENTRY_RSVD0_8 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 9} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_8}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_8}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_8 { MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_8 PARAM_VALUE.C_PF3_ENTRY_RSVD0_8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_8}] ${MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_8}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_RSVD0_8 { PARAM_VALUE.C_PF3_ENTRY_RSVD0_8 } {
  # Procedure called to validate C_PF3_ENTRY_RSVD0_8
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_TYPE_9 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_TYPE_9 } {
  # Procedure called to update C_PF3_ENTRY_TYPE_9 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 10} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_TYPE_9}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_TYPE_9}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_9 { MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_9 PARAM_VALUE.C_PF3_ENTRY_TYPE_9 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_TYPE_9}] ${MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_9}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_TYPE_9 { PARAM_VALUE.C_PF3_ENTRY_TYPE_9 } {
  # Procedure called to validate C_PF3_ENTRY_TYPE_9
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_BAR_9 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_BAR_9 } {
  # Procedure called to update C_PF3_ENTRY_BAR_9 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 10} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_BAR_9}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_BAR_9}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_BAR_9 { MODELPARAM_VALUE.C_PF3_ENTRY_BAR_9 PARAM_VALUE.C_PF3_ENTRY_BAR_9 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_BAR_9}] ${MODELPARAM_VALUE.C_PF3_ENTRY_BAR_9}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_BAR_9 { PARAM_VALUE.C_PF3_ENTRY_BAR_9 } {
  # Procedure called to validate C_PF3_ENTRY_BAR_9
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_ADDR_9 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_ADDR_9 } {
  # Procedure called to update C_PF3_ENTRY_ADDR_9 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 10} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_ADDR_9}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_ADDR_9}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_9 { MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_9 PARAM_VALUE.C_PF3_ENTRY_ADDR_9 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_ADDR_9}] ${MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_9}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_ADDR_9 { PARAM_VALUE.C_PF3_ENTRY_ADDR_9 } {
  # Procedure called to validate C_PF3_ENTRY_ADDR_9
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_9 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_9 } {
  # Procedure called to update C_PF3_ENTRY_VERSION_TYPE_9 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 10} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_9}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_9}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_9 { MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_9 PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_9 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_9}] ${MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_9}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_9 { PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_9 } {
  # Procedure called to validate C_PF3_ENTRY_VERSION_TYPE_9
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_9 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_9 } {
  # Procedure called to update C_PF3_ENTRY_MAJOR_VERSION_9 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 10} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_9}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_9}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_9 { MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_9 PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_9 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_9}] ${MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_9}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_9 { PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_9 } {
  # Procedure called to validate C_PF3_ENTRY_MAJOR_VERSION_9
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_9 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_9 } {
  # Procedure called to update C_PF3_ENTRY_MINOR_VERSION_9 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 10} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_9}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_9}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_9 { MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_9 PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_9 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_9}] ${MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_9}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_9 { PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_9 } {
  # Procedure called to validate C_PF3_ENTRY_MINOR_VERSION_9
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_RSVD0_9 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_RSVD0_9 } {
  # Procedure called to update C_PF3_ENTRY_RSVD0_9 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 10} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_9}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_9}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_9 { MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_9 PARAM_VALUE.C_PF3_ENTRY_RSVD0_9 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_9}] ${MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_9}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_RSVD0_9 { PARAM_VALUE.C_PF3_ENTRY_RSVD0_9 } {
  # Procedure called to validate C_PF3_ENTRY_RSVD0_9
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_TYPE_10 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_TYPE_10 } {
  # Procedure called to update C_PF3_ENTRY_TYPE_10 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 11} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_TYPE_10}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_TYPE_10}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_10 { MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_10 PARAM_VALUE.C_PF3_ENTRY_TYPE_10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_TYPE_10}] ${MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_10}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_TYPE_10 { PARAM_VALUE.C_PF3_ENTRY_TYPE_10 } {
  # Procedure called to validate C_PF3_ENTRY_TYPE_10
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_BAR_10 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_BAR_10 } {
  # Procedure called to update C_PF3_ENTRY_BAR_10 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 11} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_BAR_10}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_BAR_10}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_BAR_10 { MODELPARAM_VALUE.C_PF3_ENTRY_BAR_10 PARAM_VALUE.C_PF3_ENTRY_BAR_10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_BAR_10}] ${MODELPARAM_VALUE.C_PF3_ENTRY_BAR_10}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_BAR_10 { PARAM_VALUE.C_PF3_ENTRY_BAR_10 } {
  # Procedure called to validate C_PF3_ENTRY_BAR_10
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_ADDR_10 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_ADDR_10 } {
  # Procedure called to update C_PF3_ENTRY_ADDR_10 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 11} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_ADDR_10}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_ADDR_10}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_10 { MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_10 PARAM_VALUE.C_PF3_ENTRY_ADDR_10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_ADDR_10}] ${MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_10}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_ADDR_10 { PARAM_VALUE.C_PF3_ENTRY_ADDR_10 } {
  # Procedure called to validate C_PF3_ENTRY_ADDR_10
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_10 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_10 } {
  # Procedure called to update C_PF3_ENTRY_VERSION_TYPE_10 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 11} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_10}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_10}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_10 { MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_10 PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_10}] ${MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_10}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_10 { PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_10 } {
  # Procedure called to validate C_PF3_ENTRY_VERSION_TYPE_10
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_10 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_10 } {
  # Procedure called to update C_PF3_ENTRY_MAJOR_VERSION_10 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 11} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_10}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_10}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_10 { MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_10 PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_10}] ${MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_10}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_10 { PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_10 } {
  # Procedure called to validate C_PF3_ENTRY_MAJOR_VERSION_10
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_10 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_10 } {
  # Procedure called to update C_PF3_ENTRY_MINOR_VERSION_10 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 11} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_10}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_10}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_10 { MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_10 PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_10}] ${MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_10}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_10 { PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_10 } {
  # Procedure called to validate C_PF3_ENTRY_MINOR_VERSION_10
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_RSVD0_10 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_RSVD0_10 } {
  # Procedure called to update C_PF3_ENTRY_RSVD0_10 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 11} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_10}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_10}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_10 { MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_10 PARAM_VALUE.C_PF3_ENTRY_RSVD0_10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_10}] ${MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_10}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_RSVD0_10 { PARAM_VALUE.C_PF3_ENTRY_RSVD0_10 } {
  # Procedure called to validate C_PF3_ENTRY_RSVD0_10
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_TYPE_11 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_TYPE_11 } {
  # Procedure called to update C_PF3_ENTRY_TYPE_11 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 12} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_TYPE_11}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_TYPE_11}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_11 { MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_11 PARAM_VALUE.C_PF3_ENTRY_TYPE_11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_TYPE_11}] ${MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_11}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_TYPE_11 { PARAM_VALUE.C_PF3_ENTRY_TYPE_11 } {
  # Procedure called to validate C_PF3_ENTRY_TYPE_11
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_BAR_11 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_BAR_11 } {
  # Procedure called to update C_PF3_ENTRY_BAR_11 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 12} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_BAR_11}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_BAR_11}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_BAR_11 { MODELPARAM_VALUE.C_PF3_ENTRY_BAR_11 PARAM_VALUE.C_PF3_ENTRY_BAR_11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_BAR_11}] ${MODELPARAM_VALUE.C_PF3_ENTRY_BAR_11}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_BAR_11 { PARAM_VALUE.C_PF3_ENTRY_BAR_11 } {
  # Procedure called to validate C_PF3_ENTRY_BAR_11
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_ADDR_11 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_ADDR_11 } {
  # Procedure called to update C_PF3_ENTRY_ADDR_11 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 12} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_ADDR_11}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_ADDR_11}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_11 { MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_11 PARAM_VALUE.C_PF3_ENTRY_ADDR_11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_ADDR_11}] ${MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_11}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_ADDR_11 { PARAM_VALUE.C_PF3_ENTRY_ADDR_11 } {
  # Procedure called to validate C_PF3_ENTRY_ADDR_11
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_11 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_11 } {
  # Procedure called to update C_PF3_ENTRY_VERSION_TYPE_11 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 12} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_11}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_11}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_11 { MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_11 PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_11}] ${MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_11}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_11 { PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_11 } {
  # Procedure called to validate C_PF3_ENTRY_VERSION_TYPE_11
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_11 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_11 } {
  # Procedure called to update C_PF3_ENTRY_MAJOR_VERSION_11 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 12} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_11}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_11}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_11 { MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_11 PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_11}] ${MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_11}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_11 { PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_11 } {
  # Procedure called to validate C_PF3_ENTRY_MAJOR_VERSION_11
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_11 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_11 } {
  # Procedure called to update C_PF3_ENTRY_MINOR_VERSION_11 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 12} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_11}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_11}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_11 { MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_11 PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_11}] ${MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_11}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_11 { PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_11 } {
  # Procedure called to validate C_PF3_ENTRY_MINOR_VERSION_11
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_RSVD0_11 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_RSVD0_11 } {
  # Procedure called to update C_PF3_ENTRY_RSVD0_11 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 12} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_11}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_11}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_11 { MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_11 PARAM_VALUE.C_PF3_ENTRY_RSVD0_11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_11}] ${MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_11}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_RSVD0_11 { PARAM_VALUE.C_PF3_ENTRY_RSVD0_11 } {
  # Procedure called to validate C_PF3_ENTRY_RSVD0_11
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_TYPE_12 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_TYPE_12 } {
  # Procedure called to update C_PF3_ENTRY_TYPE_12 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 13} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_TYPE_12}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_TYPE_12}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_12 { MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_12 PARAM_VALUE.C_PF3_ENTRY_TYPE_12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_TYPE_12}] ${MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_12}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_TYPE_12 { PARAM_VALUE.C_PF3_ENTRY_TYPE_12 } {
  # Procedure called to validate C_PF3_ENTRY_TYPE_12
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_BAR_12 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_BAR_12 } {
  # Procedure called to update C_PF3_ENTRY_BAR_12 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 13} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_BAR_12}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_BAR_12}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_BAR_12 { MODELPARAM_VALUE.C_PF3_ENTRY_BAR_12 PARAM_VALUE.C_PF3_ENTRY_BAR_12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_BAR_12}] ${MODELPARAM_VALUE.C_PF3_ENTRY_BAR_12}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_BAR_12 { PARAM_VALUE.C_PF3_ENTRY_BAR_12 } {
  # Procedure called to validate C_PF3_ENTRY_BAR_12
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_ADDR_12 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_ADDR_12 } {
  # Procedure called to update C_PF3_ENTRY_ADDR_12 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 13} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_ADDR_12}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_ADDR_12}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_12 { MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_12 PARAM_VALUE.C_PF3_ENTRY_ADDR_12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_ADDR_12}] ${MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_12}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_ADDR_12 { PARAM_VALUE.C_PF3_ENTRY_ADDR_12 } {
  # Procedure called to validate C_PF3_ENTRY_ADDR_12
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_12 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_12 } {
  # Procedure called to update C_PF3_ENTRY_VERSION_TYPE_12 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 13} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_12}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_12}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_12 { MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_12 PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_12}] ${MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_12}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_12 { PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_12 } {
  # Procedure called to validate C_PF3_ENTRY_VERSION_TYPE_12
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_12 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_12 } {
  # Procedure called to update C_PF3_ENTRY_MAJOR_VERSION_12 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 13} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_12}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_12}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_12 { MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_12 PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_12}] ${MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_12}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_12 { PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_12 } {
  # Procedure called to validate C_PF3_ENTRY_MAJOR_VERSION_12
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_12 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_12 } {
  # Procedure called to update C_PF3_ENTRY_MINOR_VERSION_12 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 13} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_12}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_12}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_12 { MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_12 PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_12}] ${MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_12}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_12 { PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_12 } {
  # Procedure called to validate C_PF3_ENTRY_MINOR_VERSION_12
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_RSVD0_12 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_RSVD0_12 } {
  # Procedure called to update C_PF3_ENTRY_RSVD0_12 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 13} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_12}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_12}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_12 { MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_12 PARAM_VALUE.C_PF3_ENTRY_RSVD0_12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_12}] ${MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_12}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_RSVD0_12 { PARAM_VALUE.C_PF3_ENTRY_RSVD0_12 } {
  # Procedure called to validate C_PF3_ENTRY_RSVD0_12
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_TYPE_13 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_TYPE_13 } {
  # Procedure called to update C_PF3_ENTRY_TYPE_13 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 14} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_TYPE_13}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_TYPE_13}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_13 { MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_13 PARAM_VALUE.C_PF3_ENTRY_TYPE_13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_TYPE_13}] ${MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_13}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_TYPE_13 { PARAM_VALUE.C_PF3_ENTRY_TYPE_13 } {
  # Procedure called to validate C_PF3_ENTRY_TYPE_13
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_BAR_13 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_BAR_13 } {
  # Procedure called to update C_PF3_ENTRY_BAR_13 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 14} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_BAR_13}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_BAR_13}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_BAR_13 { MODELPARAM_VALUE.C_PF3_ENTRY_BAR_13 PARAM_VALUE.C_PF3_ENTRY_BAR_13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_BAR_13}] ${MODELPARAM_VALUE.C_PF3_ENTRY_BAR_13}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_BAR_13 { PARAM_VALUE.C_PF3_ENTRY_BAR_13 } {
  # Procedure called to validate C_PF3_ENTRY_BAR_13
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_ADDR_13 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_ADDR_13 } {
  # Procedure called to update C_PF3_ENTRY_ADDR_13 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 14} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_ADDR_13}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_ADDR_13}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_13 { MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_13 PARAM_VALUE.C_PF3_ENTRY_ADDR_13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_ADDR_13}] ${MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_13}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_ADDR_13 { PARAM_VALUE.C_PF3_ENTRY_ADDR_13 } {
  # Procedure called to validate C_PF3_ENTRY_ADDR_13
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_13 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_13 } {
  # Procedure called to update C_PF3_ENTRY_VERSION_TYPE_13 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 14} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_13}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_13}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_13 { MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_13 PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_13}] ${MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_13}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_13 { PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_13 } {
  # Procedure called to validate C_PF3_ENTRY_VERSION_TYPE_13
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_13 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_13 } {
  # Procedure called to update C_PF3_ENTRY_MAJOR_VERSION_13 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 14} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_13}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_13}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_13 { MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_13 PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_13}] ${MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_13}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_13 { PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_13 } {
  # Procedure called to validate C_PF3_ENTRY_MAJOR_VERSION_13
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_13 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_13 } {
  # Procedure called to update C_PF3_ENTRY_MINOR_VERSION_13 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 14} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_13}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_13}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_13 { MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_13 PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_13}] ${MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_13}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_13 { PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_13 } {
  # Procedure called to validate C_PF3_ENTRY_MINOR_VERSION_13
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_RSVD0_13 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_RSVD0_13 } {
  # Procedure called to update C_PF3_ENTRY_RSVD0_13 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 14} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_13}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_13}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_13 { MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_13 PARAM_VALUE.C_PF3_ENTRY_RSVD0_13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_13}] ${MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_13}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_RSVD0_13 { PARAM_VALUE.C_PF3_ENTRY_RSVD0_13 } {
  # Procedure called to validate C_PF3_ENTRY_RSVD0_13
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_TYPE_14 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_TYPE_14 } {
  # Procedure called to update C_PF3_ENTRY_TYPE_14 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 15} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_TYPE_14}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_TYPE_14}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_14 { MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_14 PARAM_VALUE.C_PF3_ENTRY_TYPE_14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_TYPE_14}] ${MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_14}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_TYPE_14 { PARAM_VALUE.C_PF3_ENTRY_TYPE_14 } {
  # Procedure called to validate C_PF3_ENTRY_TYPE_14
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_BAR_14 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_BAR_14 } {
  # Procedure called to update C_PF3_ENTRY_BAR_14 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 15} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_BAR_14}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_BAR_14}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_BAR_14 { MODELPARAM_VALUE.C_PF3_ENTRY_BAR_14 PARAM_VALUE.C_PF3_ENTRY_BAR_14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_BAR_14}] ${MODELPARAM_VALUE.C_PF3_ENTRY_BAR_14}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_BAR_14 { PARAM_VALUE.C_PF3_ENTRY_BAR_14 } {
  # Procedure called to validate C_PF3_ENTRY_BAR_14
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_ADDR_14 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_ADDR_14 } {
  # Procedure called to update C_PF3_ENTRY_ADDR_14 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 15} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_ADDR_14}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_ADDR_14}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_14 { MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_14 PARAM_VALUE.C_PF3_ENTRY_ADDR_14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_ADDR_14}] ${MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_14}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_ADDR_14 { PARAM_VALUE.C_PF3_ENTRY_ADDR_14 } {
  # Procedure called to validate C_PF3_ENTRY_ADDR_14
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_14 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_14 } {
  # Procedure called to update C_PF3_ENTRY_VERSION_TYPE_14 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 15} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_14}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_14}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_14 { MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_14 PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_14}] ${MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_14}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_14 { PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_14 } {
  # Procedure called to validate C_PF3_ENTRY_VERSION_TYPE_14
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_14 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_14 } {
  # Procedure called to update C_PF3_ENTRY_MAJOR_VERSION_14 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 15} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_14}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_14}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_14 { MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_14 PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_14}] ${MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_14}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_14 { PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_14 } {
  # Procedure called to validate C_PF3_ENTRY_MAJOR_VERSION_14
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_14 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_14 } {
  # Procedure called to update C_PF3_ENTRY_MINOR_VERSION_14 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 15} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_14}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_14}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_14 { MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_14 PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_14}] ${MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_14}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_14 { PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_14 } {
  # Procedure called to validate C_PF3_ENTRY_MINOR_VERSION_14
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_RSVD0_14 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_RSVD0_14 } {
  # Procedure called to update C_PF3_ENTRY_RSVD0_14 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots >= 15} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_14}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_14}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_14 { MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_14 PARAM_VALUE.C_PF3_ENTRY_RSVD0_14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_14}] ${MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_14}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_RSVD0_14 { PARAM_VALUE.C_PF3_ENTRY_RSVD0_14 } {
  # Procedure called to validate C_PF3_ENTRY_RSVD0_14
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_TYPE_15 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_TYPE_15 } {
  # Procedure called to update C_PF3_ENTRY_TYPE_15 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots == 16} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_TYPE_15}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_TYPE_15}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_15 { MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_15 PARAM_VALUE.C_PF3_ENTRY_TYPE_15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_TYPE_15}] ${MODELPARAM_VALUE.C_PF3_ENTRY_TYPE_15}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_TYPE_15 { PARAM_VALUE.C_PF3_ENTRY_TYPE_15 } {
  # Procedure called to validate C_PF3_ENTRY_TYPE_15
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_BAR_15 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_BAR_15 } {
  # Procedure called to update C_PF3_ENTRY_BAR_15 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots == 16} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_BAR_15}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_BAR_15}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_BAR_15 { MODELPARAM_VALUE.C_PF3_ENTRY_BAR_15 PARAM_VALUE.C_PF3_ENTRY_BAR_15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_BAR_15}] ${MODELPARAM_VALUE.C_PF3_ENTRY_BAR_15}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_BAR_15 { PARAM_VALUE.C_PF3_ENTRY_BAR_15 } {
  # Procedure called to validate C_PF3_ENTRY_BAR_15
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_ADDR_15 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_ADDR_15 } {
  # Procedure called to update C_PF3_ENTRY_ADDR_15 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots == 16} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_ADDR_15}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_ADDR_15}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_15 { MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_15 PARAM_VALUE.C_PF3_ENTRY_ADDR_15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_ADDR_15}] ${MODELPARAM_VALUE.C_PF3_ENTRY_ADDR_15}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_ADDR_15 { PARAM_VALUE.C_PF3_ENTRY_ADDR_15 } {
  # Procedure called to validate C_PF3_ENTRY_ADDR_15
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_15 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_15 } {
  # Procedure called to update C_PF3_ENTRY_VERSION_TYPE_15 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots == 16} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_15}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_15}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_15 { MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_15 PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_15}] ${MODELPARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_15}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_15 { PARAM_VALUE.C_PF3_ENTRY_VERSION_TYPE_15 } {
  # Procedure called to validate C_PF3_ENTRY_VERSION_TYPE_15
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_15 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_15 } {
  # Procedure called to update C_PF3_ENTRY_MAJOR_VERSION_15 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots == 16} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_15}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_15}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_15 { MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_15 PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_15}] ${MODELPARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_15}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_15 { PARAM_VALUE.C_PF3_ENTRY_MAJOR_VERSION_15 } {
  # Procedure called to validate C_PF3_ENTRY_MAJOR_VERSION_15
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_15 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_15 } {
  # Procedure called to update C_PF3_ENTRY_MINOR_VERSION_15 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots == 16} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_15}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_15}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_15 { MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_15 PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_15}] ${MODELPARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_15}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_15 { PARAM_VALUE.C_PF3_ENTRY_MINOR_VERSION_15 } {
  # Procedure called to validate C_PF3_ENTRY_MINOR_VERSION_15
  return true
}

proc update_PARAM_VALUE.C_PF3_ENTRY_RSVD0_15 { PARAM_VALUE.C_NUM_PFS PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE PARAM_VALUE.C_PF3_ENTRY_RSVD0_15 } {
  # Procedure called to update C_PF3_ENTRY_RSVD0_15 when any of the dependent parameters in the arguments change
  set num_pfs [get_property value ${PARAM_VALUE.C_NUM_PFS}]
  set pf0_num_slots [get_property value ${PARAM_VALUE.C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE}]
  if {$num_pfs == 4} {
  	if {$pf0_num_slots == 16} {
    	set_property enabled true ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_15}
    }
  } else {
    set_property enabled false ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_15}
  }      
}

proc update_MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_15 { MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_15 PARAM_VALUE.C_PF3_ENTRY_RSVD0_15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set_property value [get_property value ${PARAM_VALUE.C_PF3_ENTRY_RSVD0_15}] ${MODELPARAM_VALUE.C_PF3_ENTRY_RSVD0_15}
}


proc validate_PARAM_VALUE.C_PF3_ENTRY_RSVD0_15 { PARAM_VALUE.C_PF3_ENTRY_RSVD0_15 } {
  # Procedure called to validate C_PF3_ENTRY_RSVD0_15
  return true
}

#==========================================================================================================================================#
# Helper Procedures
#==========================================================================================================================================#

# Proc to validate that the entered Hex string value is within the correct range
proc RangeCheck4HexDec {param paramValue MinValue MaxValue IPINST} {

    if { [regexp -all {[a-fA-F0-9]} $paramValue] != [ string length $paramValue ]} {

        set_property errmsg "Entered invalid Hexadecimal value $paramValue" [ipgui::get_paramspec -name $param -of $IPINST ]
        return false

    }

    if {$paramValue  == ""} {

        set_property errmsg "Entered invalid Hexadecimal value $paramValue" [ipgui::get_paramspec -name $param -of $IPINST ]
        return false

    }

    if {[expr 0x$MaxValue ] < [expr 0x$paramValue ] ||  [expr 0x$paramValue ] < [expr 0x$MinValue]} {

        set_property errmsg "Entered Hexadecimal value $paramValue is out of range." [ipgui::get_paramspec -name $param -of $IPINST ]
        return false

    }

    return true

}

  
