source -notrace generate.tcl
source -notrace genxml.tcl

###################################################
#generate HDL files
###########

proc genFiles {num num_ports} {
    gen_adapter $num
    gen_scalar $num
    gen_infifo $num
    gen_outfifo $num
    gen_inaxis $num
    gen_outaxis $num
    gen_aximm $num
    gen_outbram $num $num_ports
    gen_inbram $num $num_ports
    gen_top $num

    gen_xml $num $num_ports
}


###################################################
#create ip
###########
proc init {} {
    #remove any old files from previous run
    exec rm -rf component.xml
    exec rm -rf xgui
}

proc createIP {} {
    #create project
    create_project project_1 -force . -part xc7z020clg484-1
    set_property board_part xilinx.com:zc702:part0:1.2 [current_project]
    
    #set magic settings
    #### this one is to enable the fifo_generator instantiation
    set_property XPM_LIBRARIES {XPM_FIFO} [current_project]
    
    #add hdl files
    add_files ./hdl
    
    #package the project as an IP
    ipx::package_project -root_dir ./ -vendor xilinx.com -library user -taxonomy /UserIP
    
    #configure info settings for IP
    set_property library ip [ipx::current_core]
    set_property name adapter_v3_0 [ipx::current_core]
    set_property display_name adapter_v3_0 [ipx::current_core]
    set_property description adapter_v3_0 [ipx::current_core]
    set_property vendor_display_name {Xilinx Inc.} [ipx::current_core]
    set_property company_url http://www.xilinx.com [ipx::current_core]
    set_property taxonomy /BaseIP [ipx::current_core]
    #set_property supported_families {} [ipx::current_core]
    #set_property supported_families {virtex7 Production qvirtex7 Production versal Production kintex7 Production kintex7l Production qkintex7 Production qkintex7l Production akintex7 Production artix7 Production artix7l Production aartix7 Production qartix7 Production zynq Production qzynq Production azynq Production spartan7 Production aspartan7 Production virtexu Production zynquplus Production virtexuplus Production virtexuplusHBM Production virtexuplus58g Production kintexuplus Production kintexu Production} [ipx::current_core]
	#set_property autoFamilySupportLevel {level_beta} [ipx::current_core]
}

proc clear {} {
    #remove any auto-created buses
    set existing_buses [ipx::get_bus_interfaces]
    for {set idx 0} {$idx < [llength $existing_buses]} {incr idx} {
	set bus [lindex $existing_buses $idx]
	set name [lindex $bus 2]
	#remove any axis fifo buses
	if {[string first "s_axi" $name] > -1} {
	    ipx::remove_bus_interface $name [ipx::current_core]
	}
#	if {[string first "S_AXI" $name] > -1} {
#	    ipx::remove_bus_interface $name [ipx::current_core]
#	}
	if {[string first "m_axi" $name] > -1} {
	    ipx::remove_bus_interface $name [ipx::current_core]
	}
	if {[string first "ap_axis" $name] > -1} {
	    ipx::remove_bus_interface $name [ipx::current_core]
	}
	if {[string first "ap_AXIMM" $name] > -1} {
	    ipx::remove_bus_interface $name [ipx::current_core]
	}
	if {[string first "M_AXIMM" $name] > -1} {
	    ipx::remove_bus_interface $name [ipx::current_core]
	}
    }

    #remove existing auto created address spaces
    set existing_addr_spaces [ipx::get_address_spaces]
    for {set idx 0} {$idx < [llength $existing_addr_spaces]} {incr idx} {
	set addr_space [lindex $existing_addr_spaces $idx]
	set name [lindex $addr_space 2]
	
	ipx::remove_address_space $name [ipx::current_core]
    }

    #remove existing auto created memory maps
    set existing_mem_maps [ipx::get_memory_maps]
    for {set idx 0} {$idx < [llength $existing_mem_maps]} {incr idx} {
	set mem_map [lindex $existing_mem_maps $idx]
	set name [lindex $mem_map 2]
	#remove everything but S_AXI
	if {[string first "S_AXI" $name] == -1} {
	    ipx::remove_memory_map $name [ipx::current_core]
	}
    }

    #remove associated buses to aclk that have been removed
    #set_property value {} [ipx::get_bus_parameters ASSOCIATED_BUSIF -of_objects [ipx::get_bus_interfaces aclk -of_objects [ipx::current_core]]]

    #set parameters on clocks
    ipx::add_bus_parameter FREQ_HZ [ipx::get_bus_interfaces ap_clk -of_objects [ipx::current_core]]
}

proc create_ctrl {num} {
    #setup clocks
    ipx::infer_bus_interface s_axi_aclk xilinx.com:signal:clock_rtl:1.0 [ipx::current_core]
    set_property enablement_dependency "\$C_HAS_CTRL > 0" [ipx::get_bus_interfaces s_axi_aclk -of_objects [ipx::current_core]]
    ipx::infer_bus_interface s_axi_aresetn xilinx.com:signal:reset_rtl:1.0 [ipx::current_core]
    set_property enablement_dependency "\$C_HAS_CTRL > 0" [ipx::get_bus_interfaces s_axi_aresetn -of_objects [ipx::current_core]]

    for {set idx 0} {$idx < $num} {incr idx} {   
	ipx::infer_bus_interface s_axis_scalar_${idx}_aclk xilinx.com:signal:clock_rtl:1.0 [ipx::current_core]
	set_property enablement_dependency "\$C_N_INPUT_SCALARs > $idx and \$S_AXIS_SCALAR_${idx}_IS_DIRECT > 0" [ipx::get_bus_interfaces s_axis_scalar_${idx}_aclk -of_objects [ipx::current_core]]
	ipx::infer_bus_interface s_axis_scalar_${idx}_aresetn xilinx.com:signal:reset_rtl:1.0 [ipx::current_core]
	set_property enablement_dependency "\$C_N_INPUT_SCALARs > $idx and \$S_AXIS_SCALAR_${idx}_IS_DIRECT > 0" [ipx::get_bus_interfaces s_axis_scalar_${idx}_aresetn -of_objects [ipx::current_core]]

	ipx::infer_bus_interface m_axis_scalar_${idx}_aclk xilinx.com:signal:clock_rtl:1.0 [ipx::current_core]
	set_property enablement_dependency "\$C_N_OUTPUT_SCALARs > $idx and \$M_AXIS_SCALAR_${idx}_IS_DIRECT > 0" [ipx::get_bus_interfaces m_axis_scalar_${idx}_aclk -of_objects [ipx::current_core]]
	ipx::infer_bus_interface m_axis_scalar_${idx}_aresetn xilinx.com:signal:reset_rtl:1.0 [ipx::current_core]
	set_property enablement_dependency "\$C_N_OUTPUT_SCALARs > $idx and \$M_AXIS_SCALAR_${idx}_IS_DIRECT > 0" [ipx::get_bus_interfaces m_axis_scalar_${idx}_aresetn -of_objects [ipx::current_core]]
######################
	ipx::infer_bus_interface s_axis_fifo_${idx}_aclk xilinx.com:signal:clock_rtl:1.0 [ipx::current_core]
	set_property enablement_dependency "\$C_NUM_INPUT_FIFOs > $idx" [ipx::get_bus_interfaces s_axis_fifo_${idx}_aclk -of_objects [ipx::current_core]]
	ipx::infer_bus_interface s_axis_fifo_${idx}_aresetn xilinx.com:signal:reset_rtl:1.0 [ipx::current_core]
	set_property enablement_dependency "\$C_NUM_INPUT_FIFOs > $idx" [ipx::get_bus_interfaces s_axis_fifo_${idx}_aresetn -of_objects [ipx::current_core]]

	ipx::infer_bus_interface m_axis_fifo_${idx}_aclk xilinx.com:signal:clock_rtl:1.0 [ipx::current_core]
	set_property enablement_dependency "\$C_NUM_OUTPUT_FIFOs > $idx" [ipx::get_bus_interfaces m_axis_fifo_${idx}_aclk -of_objects [ipx::current_core]]
	ipx::infer_bus_interface m_axis_fifo_${idx}_aresetn xilinx.com:signal:reset_rtl:1.0 [ipx::current_core]
	set_property enablement_dependency "\$C_NUM_OUTPUT_FIFOs > $idx" [ipx::get_bus_interfaces m_axis_fifo_${idx}_aresetn -of_objects [ipx::current_core]]

	ipx::infer_bus_interface s_axis_iarg_${idx}_aclk xilinx.com:signal:clock_rtl:1.0 [ipx::current_core]
	set_property enablement_dependency "\$C_NUM_INPUT_AXISs > $idx" [ipx::get_bus_interfaces s_axis_iarg_${idx}_aclk -of_objects [ipx::current_core]]
	ipx::infer_bus_interface s_axis_iarg_${idx}_aresetn xilinx.com:signal:reset_rtl:1.0 [ipx::current_core]
	set_property enablement_dependency "\$C_NUM_INPUT_AXISs > $idx" [ipx::get_bus_interfaces s_axis_iarg_${idx}_aresetn -of_objects [ipx::current_core]]

	ipx::infer_bus_interface m_axis_oarg_${idx}_aclk xilinx.com:signal:clock_rtl:1.0 [ipx::current_core]
	set_property enablement_dependency "\$C_NUM_OUTPUT_AXISs > $idx" [ipx::get_bus_interfaces m_axis_oarg_${idx}_aclk -of_objects [ipx::current_core]]
	ipx::infer_bus_interface m_axis_oarg_${idx}_aresetn xilinx.com:signal:reset_rtl:1.0 [ipx::current_core]
	set_property enablement_dependency "\$C_NUM_OUTPUT_AXISs > $idx" [ipx::get_bus_interfaces m_axis_oarg_${idx}_aresetn -of_objects [ipx::current_core]]

	ipx::infer_bus_interface s_axis_bram_${idx}_aclk xilinx.com:signal:clock_rtl:1.0 [ipx::current_core]
	set_property enablement_dependency "\$C_NUM_INPUT_BRAMs > $idx" [ipx::get_bus_interfaces s_axis_bram_${idx}_aclk -of_objects [ipx::current_core]]
	ipx::infer_bus_interface s_axis_bram_${idx}_aresetn xilinx.com:signal:reset_rtl:1.0 [ipx::current_core]
	set_property enablement_dependency "\$C_NUM_INPUT_BRAMs > $idx" [ipx::get_bus_interfaces s_axis_bram_${idx}_aresetn -of_objects [ipx::current_core]]

	ipx::infer_bus_interface m_axis_bram_${idx}_aclk xilinx.com:signal:clock_rtl:1.0 [ipx::current_core]
	set_property enablement_dependency "\$C_NUM_OUTPUT_BRAMs > $idx" [ipx::get_bus_interfaces m_axis_bram_${idx}_aclk -of_objects [ipx::current_core]]
	ipx::infer_bus_interface m_axis_bram_${idx}_aresetn xilinx.com:signal:reset_rtl:1.0 [ipx::current_core]
	set_property enablement_dependency "\$C_NUM_OUTPUT_BRAMs > $idx" [ipx::get_bus_interfaces m_axis_bram_${idx}_aresetn -of_objects [ipx::current_core]]

	ipx::infer_bus_interface m_axis_bramio_${idx}_aclk xilinx.com:signal:clock_rtl:1.0 [ipx::current_core]
	set_property enablement_dependency "\$C_NUM_INPUT_BRAMs > $idx and \$S_AXIS_BRAM_${idx}_IS_INOUT > 0" [ipx::get_bus_interfaces m_axis_bramio_${idx}_aclk -of_objects [ipx::current_core]]
	ipx::infer_bus_interface m_axis_bramio_${idx}_aresetn xilinx.com:signal:reset_rtl:1.0 [ipx::current_core]
	set_property enablement_dependency "\$C_NUM_INPUT_BRAMs > $idx and \$S_AXIS_BRAM_${idx}_IS_INOUT > 0" [ipx::get_bus_interfaces m_axis_bramio_${idx}_aresetn -of_objects [ipx::current_core]]
    }

    set_property enablement_dependency "\$C_HAS_CTRL > 0" [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]


    #configure ap_ctrl bus
    ipx::add_bus_interface ap_ctrl [ipx::current_core]
    set_property abstraction_type_vlnv xilinx.com:interface:acc_handshake_rtl:1.0 [ipx::get_bus_interfaces ap_ctrl -of_objects [ipx::current_core]]
    set_property bus_type_vlnv xilinx.com:interface:acc_handshake:1.0 [ipx::get_bus_interfaces ap_ctrl -of_objects [ipx::current_core]]
    set_property interface_mode master [ipx::get_bus_interfaces ap_ctrl -of_objects [ipx::current_core]]
    set_property display_name ap_ctrl [ipx::get_bus_interfaces ap_ctrl -of_objects [ipx::current_core]]
    set_property description ap_ctrl [ipx::get_bus_interfaces ap_ctrl -of_objects [ipx::current_core]]
    ipx::add_port_map start [ipx::get_bus_interfaces ap_ctrl -of_objects [ipx::current_core]]
    set_property physical_name ap_start [ipx::get_port_maps start -of_objects [ipx::get_bus_interfaces ap_ctrl -of_objects [ipx::current_core]]]
    ipx::add_port_map done [ipx::get_bus_interfaces ap_ctrl -of_objects [ipx::current_core]]
    set_property physical_name ap_done [ipx::get_port_maps done -of_objects [ipx::get_bus_interfaces ap_ctrl -of_objects [ipx::current_core]]]
    ipx::add_port_map idle [ipx::get_bus_interfaces ap_ctrl -of_objects [ipx::current_core]]
    set_property physical_name ap_idle [ipx::get_port_maps idle -of_objects [ipx::get_bus_interfaces ap_ctrl -of_objects [ipx::current_core]]]
    ipx::add_port_map ready [ipx::get_bus_interfaces ap_ctrl -of_objects [ipx::current_core]]
    set_property physical_name ap_ready [ipx::get_port_maps ready -of_objects [ipx::get_bus_interfaces ap_ctrl -of_objects [ipx::current_core]]]
    ipx::add_port_map continue [ipx::get_bus_interfaces ap_ctrl -of_objects [ipx::current_core]]
    set_property physical_name ap_continue [ipx::get_port_maps continue -of_objects [ipx::get_bus_interfaces ap_ctrl -of_objects [ipx::current_core]]]

    set_property enablement_dependency "\$C_HAS_CTRL > 0" [ipx::get_bus_interfaces ap_ctrl -of_objects [ipx::current_core]]

}

proc create_scalar {num} {
    #configure input scalar ports
    for {set idx 0} {$idx < $num} {incr idx} {
	set portName "ap_iscalar_${idx}_dout"
	set_property driver_value 0 [ipx::get_ports $portName -of_objects [ipx::current_core]]
	set_property enablement_dependency "\$C_N_INPUT_SCALARS > $idx" [ipx::get_ports $portName -of_objects [ipx::current_core]]

	set axis_name "S_AXIS_SCALAR_$idx"
	set axis_clk "s_axis_scalar_${idx}_aclk"
	set axis_tdata_name "s_axis_scalar_${idx}_tdata"
	set axis_tvalid_name "s_axis_scalar_${idx}_tvalid"
	set axis_tlast_name "s_axis_scalar_${idx}_tlast"
	set axis_tready_name "s_axis_scalar_${idx}_tready"
	set axis_tstrb_name "s_axis_scalar_${idx}_tstrb"
	set axis_tkeep_name "s_axis_scalar_${idx}_tkeep"

	#configure input AXIS interface
	ipx::add_bus_interface $axis_name [ipx::current_core]
	set_property abstraction_type_vlnv xilinx.com:interface:axis_rtl:1.0 [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property bus_type_vlnv xilinx.com:interface:axis:1.0 [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property interface_mode slave [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property enablement_dependency "\$C_N_INPUT_SCALARS > $idx and \$S_AXIS_SCALAR_${idx}_IS_DIRECT > 0" [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	
	#add input AXIS ports
	ipx::add_port_map TDATA [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tdata_name [ipx::get_port_maps TDATA -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TVALID [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tvalid_name [ipx::get_port_maps TVALID -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TLAST [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tlast_name [ipx::get_port_maps TLAST -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TREADY [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tready_name [ipx::get_port_maps TREADY -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TSTRB [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tstrb_name [ipx::get_port_maps TSTRB -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TKEEP [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tkeep_name [ipx::get_port_maps TKEEP -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]

	ipx::associate_bus_interfaces -busif $axis_name -clock $axis_clk [ipx::current_core]
    }
    
    #configure output scalar ports
    for {set idx 0} {$idx < $num} {incr idx} {
	set portName "ap_oscalar_${idx}_din"
	set_property driver_value 0 [ipx::get_ports ${portName} -of_objects [ipx::current_core]]
	set_property enablement_dependency "\$C_N_OUTPUT_SCALARS > $idx" [ipx::get_ports $portName -of_objects [ipx::current_core]]
	
	set validName "ap_oscalar_${idx}_vld"
	set_property driver_value 0 [ipx::get_ports $validName -of_objects [ipx::current_core]]
	if {$idx == 0} {
	    set_property enablement_dependency "\$C_N_OUTPUT_SCALARS > $idx and \$C_HAS_RETURN = 0" [ipx::get_ports $validName -of_objects [ipx::current_core]]
	} else {
	    set_property enablement_dependency "\$C_N_OUTPUT_SCALARS > $idx" [ipx::get_ports $validName -of_objects [ipx::current_core]]
	}

	set axis_name "M_AXIS_SCALAR_$idx"
	set axis_clk "m_axis_scalar_${idx}_aclk"
	set axis_tdata_name "m_axis_scalar_${idx}_tdata"
	set axis_tvalid_name "m_axis_scalar_${idx}_tvalid"
	set axis_tlast_name "m_axis_scalar_${idx}_tlast"
	set axis_tready_name "m_axis_scalar_${idx}_tready"
	set axis_tstrb_name "m_axis_scalar_${idx}_tstrb"
	set axis_tkeep_name "m_axis_scalar_${idx}_tkeep"

	#configure output AXIS interface
	ipx::add_bus_interface $axis_name [ipx::current_core]
	set_property abstraction_type_vlnv xilinx.com:interface:axis_rtl:1.0 [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property bus_type_vlnv xilinx.com:interface:axis:1.0 [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property interface_mode master [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property enablement_dependency "\$C_N_OUTPUT_SCALARs > $idx and \$M_AXIS_SCALAR_${idx}_IS_DIRECT > 0" [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	
	#add output AXIS ports
	ipx::add_port_map TDATA [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tdata_name [ipx::get_port_maps TDATA -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TVALID [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tvalid_name [ipx::get_port_maps TVALID -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TLAST [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tlast_name [ipx::get_port_maps TLAST -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TREADY [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tready_name [ipx::get_port_maps TREADY -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TSTRB [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tstrb_name [ipx::get_port_maps TSTRB -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TKEEP [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tkeep_name [ipx::get_port_maps TKEEP -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]

	ipx::associate_bus_interfaces -busif $axis_name -clock $axis_clk [ipx::current_core]
    }
}

proc create_fifo {num} {
    #configure input AXIS_FIFO ports 
    for {set idx 0} {$idx < $num} {incr idx} {
	set axis_name "S_AXIS_FIFO_$idx"
	set axis_clk "s_axis_fifo_${idx}_aclk"
	set axis_tdata_name "s_axis_fifo_${idx}_tdata"
	set axis_tvalid_name "s_axis_fifo_${idx}_tvalid"
	set axis_tlast_name "s_axis_fifo_${idx}_tlast"
	set axis_tready_name "s_axis_fifo_${idx}_tready"
	set axis_tstrb_name "s_axis_fifo_${idx}_tstrb"
	set axis_tkeep_name "s_axis_fifo_${idx}_tkeep"
	
	set fifo_name "AP_FIFO_IARG_${idx}"
	set fifo_dout_name "ap_fifo_iarg_${idx}_dout"
	set fifo_read_name "ap_fifo_iarg_${idx}_read"
	set fifo_empty_name "ap_fifo_iarg_${idx}_empty_n"
	
	#configure input AXIS interface
	ipx::add_bus_interface $axis_name [ipx::current_core]
	set_property abstraction_type_vlnv xilinx.com:interface:axis_rtl:1.0 [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property bus_type_vlnv xilinx.com:interface:axis:1.0 [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property interface_mode slave [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property enablement_dependency "\$C_NUM_INPUT_FIFOs > $idx" [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	
	#add input AXIS ports
	ipx::add_port_map TDATA [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tdata_name [ipx::get_port_maps TDATA -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TVALID [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tvalid_name [ipx::get_port_maps TVALID -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TLAST [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tlast_name [ipx::get_port_maps TLAST -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TREADY [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tready_name [ipx::get_port_maps TREADY -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TSTRB [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tstrb_name [ipx::get_port_maps TSTRB -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TKEEP [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tkeep_name [ipx::get_port_maps TKEEP -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	
	#configure input FIFO interface
	ipx::add_bus_interface $fifo_name [ipx::current_core]
	set_property abstraction_type_vlnv xilinx.com:interface:acc_fifo_read_rtl:1.0 [ipx::get_bus_interfaces $fifo_name -of_objects [ipx::current_core]]
	set_property bus_type_vlnv xilinx.com:interface:acc_fifo_read:1.0 [ipx::get_bus_interfaces $fifo_name -of_objects [ipx::current_core]]
	set_property interface_mode slave [ipx::get_bus_interfaces $fifo_name -of_objects [ipx::current_core]]
	set_property enablement_dependency "\$C_NUM_INPUT_FIFOs > $idx" [ipx::get_bus_interfaces $fifo_name -of_objects [ipx::current_core]]
	
	#add input FIFO ports
	ipx::add_port_map RD_DATA [ipx::get_bus_interfaces $fifo_name -of_objects [ipx::current_core]]
	set_property physical_name $fifo_dout_name [ipx::get_port_maps RD_DATA -of_objects [ipx::get_bus_interfaces $fifo_name -of_objects [ipx::current_core]]]
	ipx::add_port_map RD_EN [ipx::get_bus_interfaces $fifo_name -of_objects [ipx::current_core]]
	set_property physical_name $fifo_read_name [ipx::get_port_maps RD_EN -of_objects [ipx::get_bus_interfaces $fifo_name -of_objects [ipx::current_core]]]
	ipx::add_port_map EMPTY_N [ipx::get_bus_interfaces $fifo_name -of_objects [ipx::current_core]]
	set_property physical_name $fifo_empty_name [ipx::get_port_maps EMPTY_N -of_objects [ipx::get_bus_interfaces $fifo_name -of_objects [ipx::current_core]]]
	
	#set default values
	set_property driver_value 0 [ipx::get_ports $fifo_read_name -of_objects [ipx::current_core]]
	set_property driver_value 0 [ipx::get_ports $axis_tdata_name -of_objects [ipx::current_core]]
	set_property driver_value 0 [ipx::get_ports $axis_tvalid_name -of_objects [ipx::current_core]]
	set_property driver_value 0 [ipx::get_ports $axis_tlast_name -of_objects [ipx::current_core]]
	set_property driver_value 0 [ipx::get_ports $axis_tstrb_name -of_objects [ipx::current_core]]
	set_property driver_value 0 [ipx::get_ports $axis_tkeep_name -of_objects [ipx::current_core]]

	ipx::associate_bus_interfaces -busif $axis_name -clock $axis_clk [ipx::current_core]
	ipx::associate_bus_interfaces -busif $fifo_name -clock ap_clk [ipx::current_core]
    }

    #configure output AXIS_FIFO ports 
    for {set idx 0} {$idx < $num} {incr idx} {
	set axis_name "M_AXIS_FIFO_$idx"
	set axis_clk "m_axis_fifo_${idx}_aclk"
	set axis_tdata_name "m_axis_fifo_${idx}_tdata"
	set axis_tvalid_name "m_axis_fifo_${idx}_tvalid"
	set axis_tlast_name "m_axis_fifo_${idx}_tlast"
	set axis_tready_name "m_axis_fifo_${idx}_tready"
	set axis_tstrb_name "m_axis_fifo_${idx}_tstrb"
	set axis_tkeep_name "m_axis_fifo_${idx}_tkeep"
	
	set fifo_name "AP_FIFO_OARG_${idx}"
	set fifo_dout_name "ap_fifo_oarg_${idx}_din"
	set fifo_read_name "ap_fifo_oarg_${idx}_write"
	set fifo_empty_name "ap_fifo_oarg_${idx}_full_n"
	
	#configure output AXIS interface
	ipx::add_bus_interface $axis_name [ipx::current_core]
	set_property abstraction_type_vlnv xilinx.com:interface:axis_rtl:1.0 [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property bus_type_vlnv xilinx.com:interface:axis:1.0 [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property interface_mode master [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property enablement_dependency "\$C_NUM_OUTPUT_FIFOs > $idx" [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	
	#add output AXIS ports
	ipx::add_port_map TDATA [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tdata_name [ipx::get_port_maps TDATA -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TVALID [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tvalid_name [ipx::get_port_maps TVALID -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TLAST [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tlast_name [ipx::get_port_maps TLAST -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TREADY [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tready_name [ipx::get_port_maps TREADY -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TSTRB [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tstrb_name [ipx::get_port_maps TSTRB -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TKEEP [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tkeep_name [ipx::get_port_maps TKEEP -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	
	#configure output FIFO interface
	ipx::add_bus_interface $fifo_name [ipx::current_core]
	set_property abstraction_type_vlnv xilinx.com:interface:acc_fifo_write_rtl:1.0 [ipx::get_bus_interfaces $fifo_name -of_objects [ipx::current_core]]
	set_property bus_type_vlnv xilinx.com:interface:acc_fifo_write:1.0 [ipx::get_bus_interfaces $fifo_name -of_objects [ipx::current_core]]
	set_property interface_mode slave [ipx::get_bus_interfaces $fifo_name -of_objects [ipx::current_core]]
	set_property enablement_dependency "\$C_NUM_OUTPUT_FIFOs > $idx" [ipx::get_bus_interfaces $fifo_name -of_objects [ipx::current_core]]
	
	#add output FIFO ports
	ipx::add_port_map WR_DATA [ipx::get_bus_interfaces $fifo_name -of_objects [ipx::current_core]]
	set_property physical_name $fifo_dout_name [ipx::get_port_maps WR_DATA -of_objects [ipx::get_bus_interfaces $fifo_name -of_objects [ipx::current_core]]]
	ipx::add_port_map WR_EN [ipx::get_bus_interfaces $fifo_name -of_objects [ipx::current_core]]
	set_property physical_name $fifo_read_name [ipx::get_port_maps WR_EN -of_objects [ipx::get_bus_interfaces $fifo_name -of_objects [ipx::current_core]]]
	ipx::add_port_map FULL_N [ipx::get_bus_interfaces $fifo_name -of_objects [ipx::current_core]]
	set_property physical_name $fifo_empty_name [ipx::get_port_maps FULL_N -of_objects [ipx::get_bus_interfaces $fifo_name -of_objects [ipx::current_core]]]
	
	#set default values
	set_property driver_value 0 [ipx::get_ports $fifo_dout_name -of_objects [ipx::current_core]]
	set_property driver_value 0 [ipx::get_ports $fifo_read_name -of_objects [ipx::current_core]]
	set_property driver_value 0 [ipx::get_ports $axis_tready_name -of_objects [ipx::current_core]]

	ipx::associate_bus_interfaces -busif $axis_name -clock $axis_clk [ipx::current_core]
	ipx::associate_bus_interfaces -busif $fifo_name -clock ap_clk [ipx::current_core]
    }
}

proc create_axis {num} {
    #configure input AXIS ports 
    for {set idx 0} {$idx < $num} {incr idx} {
	set axis_name "S_AXIS_IARG_$idx"
	set axis_clk "s_axis_iarg_${idx}_aclk"
	set axis_tdata_name "s_axis_iarg_${idx}_tdata"
	set axis_tvalid_name "s_axis_iarg_${idx}_tvalid"
	set axis_tlast_name "s_axis_iarg_${idx}_tlast"
	set axis_tready_name "s_axis_iarg_${idx}_tready"
	set axis_tstrb_name "s_axis_iarg_${idx}_tstrb"
	set axis_tkeep_name "s_axis_iarg_${idx}_tkeep"
	
	set ap_name "AP_AXIS_IARG_$idx"
	set ap_tdata_name "ap_axis_iarg_${idx}_tdata"
	set ap_tvalid_name "ap_axis_iarg_${idx}_tvalid"
	set ap_tlast_name "ap_axis_iarg_${idx}_tlast"
	set ap_tready_name "ap_axis_iarg_${idx}_tready"
	set ap_tstrb_name "ap_axis_iarg_${idx}_tstrb"
	set ap_tkeep_name "ap_axis_iarg_${idx}_tkeep"
	
	#configure input AXIS interface
	ipx::add_bus_interface $axis_name [ipx::current_core]
	set_property abstraction_type_vlnv xilinx.com:interface:axis_rtl:1.0 [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property bus_type_vlnv xilinx.com:interface:axis:1.0 [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property interface_mode slave [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property enablement_dependency "\$C_NUM_INPUT_AXISs > $idx" [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	
	#add input AXIS ports
	ipx::add_port_map TDATA [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tdata_name [ipx::get_port_maps TDATA -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TVALID [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tvalid_name [ipx::get_port_maps TVALID -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TLAST [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tlast_name [ipx::get_port_maps TLAST -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TREADY [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tready_name [ipx::get_port_maps TREADY -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TSTRB [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tstrb_name [ipx::get_port_maps TSTRB -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TKEEP [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tkeep_name [ipx::get_port_maps TKEEP -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	
	#configure input AXIS interface
	ipx::add_bus_interface $ap_name [ipx::current_core]
	set_property abstraction_type_vlnv xilinx.com:interface:axis_rtl:1.0 [ipx::get_bus_interfaces $ap_name -of_objects [ipx::current_core]]
	set_property bus_type_vlnv xilinx.com:interface:axis:1.0 [ipx::get_bus_interfaces $ap_name -of_objects [ipx::current_core]]
	set_property interface_mode master [ipx::get_bus_interfaces $ap_name -of_objects [ipx::current_core]]
	set_property enablement_dependency "\$C_NUM_INPUT_AXISs > $idx" [ipx::get_bus_interfaces $ap_name -of_objects [ipx::current_core]]
	
	#add input AXIS ports
	ipx::add_port_map TDATA [ipx::get_bus_interfaces $ap_name -of_objects [ipx::current_core]]
	set_property physical_name $ap_tdata_name [ipx::get_port_maps TDATA -of_objects [ipx::get_bus_interfaces $ap_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TVALID [ipx::get_bus_interfaces $ap_name -of_objects [ipx::current_core]]
	set_property physical_name $ap_tvalid_name [ipx::get_port_maps TVALID -of_objects [ipx::get_bus_interfaces $ap_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TLAST [ipx::get_bus_interfaces $ap_name -of_objects [ipx::current_core]]
	set_property physical_name $ap_tlast_name [ipx::get_port_maps TLAST -of_objects [ipx::get_bus_interfaces $ap_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TREADY [ipx::get_bus_interfaces $ap_name -of_objects [ipx::current_core]]
	set_property physical_name $ap_tready_name [ipx::get_port_maps TREADY -of_objects [ipx::get_bus_interfaces $ap_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TSTRB [ipx::get_bus_interfaces $ap_name -of_objects [ipx::current_core]]
	set_property physical_name $ap_tstrb_name [ipx::get_port_maps TSTRB -of_objects [ipx::get_bus_interfaces $ap_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TKEEP [ipx::get_bus_interfaces $ap_name -of_objects [ipx::current_core]]
	set_property physical_name $ap_tkeep_name [ipx::get_port_maps TKEEP -of_objects [ipx::get_bus_interfaces $ap_name -of_objects [ipx::current_core]]]
	
	#set default values
	set_property driver_value 0 [ipx::get_ports $ap_tready_name -of_objects [ipx::current_core]]
	set_property driver_value 0 [ipx::get_ports $axis_tdata_name -of_objects [ipx::current_core]]
	set_property driver_value 0 [ipx::get_ports $axis_tvalid_name -of_objects [ipx::current_core]]
	set_property driver_value 0 [ipx::get_ports $axis_tlast_name -of_objects [ipx::current_core]]
	set_property driver_value 0 [ipx::get_ports $axis_tstrb_name -of_objects [ipx::current_core]]
	set_property driver_value 0 [ipx::get_ports $axis_tkeep_name -of_objects [ipx::current_core]]

	ipx::associate_bus_interfaces -busif $axis_name -clock $axis_clk [ipx::current_core]
	ipx::associate_bus_interfaces -busif $ap_name -clock ap_clk [ipx::current_core]
    }
    
    #configure output AXIS ports 
    for {set idx 0} {$idx < $num} {incr idx} {
	set axis_name "M_AXIS_OARG_$idx"
	set axis_clk "m_axis_oarg_${idx}_aclk"
	set axis_tdata_name "m_axis_oarg_${idx}_tdata"
	set axis_tvalid_name "m_axis_oarg_${idx}_tvalid"
	set axis_tlast_name "m_axis_oarg_${idx}_tlast"
	set axis_tready_name "m_axis_oarg_${idx}_tready"
	set axis_tstrb_name "m_axis_oarg_${idx}_tstrb"
	set axis_tkeep_name "m_axis_oarg_${idx}_tkeep"
	
	set ap_name "AP_AXIS_OARG_$idx"
	set ap_tdata_name "ap_axis_oarg_${idx}_tdata"
	set ap_tvalid_name "ap_axis_oarg_${idx}_tvalid"
	set ap_tlast_name "ap_axis_oarg_${idx}_tlast"
	set ap_tready_name "ap_axis_oarg_${idx}_tready"
	set ap_tstrb_name "ap_axis_oarg_${idx}_tstrb"
	set ap_tkeep_name "ap_axis_oarg_${idx}_tkeep"
	
	#configure output AXIS interface
	ipx::add_bus_interface $axis_name [ipx::current_core]
	set_property abstraction_type_vlnv xilinx.com:interface:axis_rtl:1.0 [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property bus_type_vlnv xilinx.com:interface:axis:1.0 [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property interface_mode master [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property enablement_dependency "\$C_NUM_OUTPUT_AXISs > $idx" [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	
	#add output AXIS ports
	ipx::add_port_map TDATA [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tdata_name [ipx::get_port_maps TDATA -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TVALID [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tvalid_name [ipx::get_port_maps TVALID -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TLAST [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tlast_name [ipx::get_port_maps TLAST -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TREADY [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tready_name [ipx::get_port_maps TREADY -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TSTRB [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tstrb_name [ipx::get_port_maps TSTRB -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TKEEP [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tkeep_name [ipx::get_port_maps TKEEP -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	
	#configure output AXIS interface
	ipx::add_bus_interface $ap_name [ipx::current_core]
	set_property abstraction_type_vlnv xilinx.com:interface:axis_rtl:1.0 [ipx::get_bus_interfaces $ap_name -of_objects [ipx::current_core]]
	set_property bus_type_vlnv xilinx.com:interface:axis:1.0 [ipx::get_bus_interfaces $ap_name -of_objects [ipx::current_core]]
	set_property interface_mode slave [ipx::get_bus_interfaces $ap_name -of_objects [ipx::current_core]]
	set_property enablement_dependency "\$C_NUM_OUTPUT_AXISs > $idx" [ipx::get_bus_interfaces $ap_name -of_objects [ipx::current_core]]
	
	#add output AXIS ports
	ipx::add_port_map TDATA [ipx::get_bus_interfaces $ap_name -of_objects [ipx::current_core]]
	set_property physical_name $ap_tdata_name [ipx::get_port_maps TDATA -of_objects [ipx::get_bus_interfaces $ap_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TVALID [ipx::get_bus_interfaces $ap_name -of_objects [ipx::current_core]]
	set_property physical_name $ap_tvalid_name [ipx::get_port_maps TVALID -of_objects [ipx::get_bus_interfaces $ap_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TLAST [ipx::get_bus_interfaces $ap_name -of_objects [ipx::current_core]]
	set_property physical_name $ap_tlast_name [ipx::get_port_maps TLAST -of_objects [ipx::get_bus_interfaces $ap_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TREADY [ipx::get_bus_interfaces $ap_name -of_objects [ipx::current_core]]
	set_property physical_name $ap_tready_name [ipx::get_port_maps TREADY -of_objects [ipx::get_bus_interfaces $ap_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TSTRB [ipx::get_bus_interfaces $ap_name -of_objects [ipx::current_core]]
	set_property physical_name $ap_tstrb_name [ipx::get_port_maps TSTRB -of_objects [ipx::get_bus_interfaces $ap_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TKEEP [ipx::get_bus_interfaces $ap_name -of_objects [ipx::current_core]]
	set_property physical_name $ap_tkeep_name [ipx::get_port_maps TKEEP -of_objects [ipx::get_bus_interfaces $ap_name -of_objects [ipx::current_core]]]
	
	#set default values
	set_property driver_value 0 [ipx::get_ports $axis_tready_name -of_objects [ipx::current_core]]
	set_property driver_value 0 [ipx::get_ports $ap_tdata_name -of_objects [ipx::current_core]]
	set_property driver_value 0 [ipx::get_ports $ap_tvalid_name -of_objects [ipx::current_core]]
	set_property driver_value 0 [ipx::get_ports $ap_tlast_name -of_objects [ipx::current_core]]
	set_property driver_value 0 [ipx::get_ports $ap_tstrb_name -of_objects [ipx::current_core]]
	set_property driver_value 0 [ipx::get_ports $ap_tkeep_name -of_objects [ipx::current_core]]

	ipx::associate_bus_interfaces -busif $axis_name -clock $axis_clk [ipx::current_core]
	ipx::associate_bus_interfaces -busif $ap_name -clock ap_clk [ipx::current_core]
    }
}

proc create_aximm {num} {
    #configure DM side AXIMM ports 
    for {set idx 0} {$idx < $num} {incr idx} {
	set aximm_name "M_AXIMM_$idx"
	
	set ap_name "AP_AXIMM_$idx"
	
	#configure output AXIMM interface
	ipx::add_bus_interface ${aximm_name} [ipx::current_core]
	set_property abstraction_type_vlnv xilinx.com:interface:aximm_rtl:1.0 [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property bus_type_vlnv xilinx.com:interface:aximm:1.0 [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property interface_mode master [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property display_name ${aximm_name} [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	ipx::add_port_map WLAST [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property physical_name ${aximm_name}_WLAST [ipx::get_port_maps WLAST -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map BREADY [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property physical_name ${aximm_name}_BREADY [ipx::get_port_maps BREADY -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map AWLEN [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property physical_name ${aximm_name}_AWLEN [ipx::get_port_maps AWLEN -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map AWQOS [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property physical_name ${aximm_name}_AWQOS [ipx::get_port_maps AWQOS -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map AWREADY [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property physical_name ${aximm_name}_AWREADY [ipx::get_port_maps AWREADY -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map ARBURST [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property physical_name ${aximm_name}_ARBURST [ipx::get_port_maps ARBURST -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map AWPROT [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property physical_name ${aximm_name}_AWPROT [ipx::get_port_maps AWPROT -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map RRESP [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property physical_name ${aximm_name}_RRESP [ipx::get_port_maps RRESP -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map ARPROT [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property physical_name ${aximm_name}_ARPROT [ipx::get_port_maps ARPROT -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map RVALID [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property physical_name ${aximm_name}_RVALID [ipx::get_port_maps RVALID -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map ARLOCK [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property physical_name ${aximm_name}_ARLOCK [ipx::get_port_maps ARLOCK -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map RLAST [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property physical_name ${aximm_name}_RLAST [ipx::get_port_maps RLAST -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map AWCACHE [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property physical_name ${aximm_name}_AWCACHE [ipx::get_port_maps AWCACHE -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map WREADY [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property physical_name ${aximm_name}_WREADY [ipx::get_port_maps WREADY -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map WSTRB [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property physical_name ${aximm_name}_WSTRB [ipx::get_port_maps WSTRB -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map BRESP [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property physical_name ${aximm_name}_BRESP [ipx::get_port_maps BRESP -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map ARLEN [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property physical_name ${aximm_name}_ARLEN [ipx::get_port_maps ARLEN -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map ARQOS [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property physical_name ${aximm_name}_ARQOS [ipx::get_port_maps ARQOS -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map RDATA [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property physical_name ${aximm_name}_RDATA [ipx::get_port_maps RDATA -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map BVALID [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property physical_name ${aximm_name}_BVALID [ipx::get_port_maps BVALID -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map ARCACHE [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property physical_name ${aximm_name}_ARCACHE [ipx::get_port_maps ARCACHE -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map RREADY [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property physical_name ${aximm_name}_RREADY [ipx::get_port_maps RREADY -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map AWVALID [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property physical_name ${aximm_name}_AWVALID [ipx::get_port_maps AWVALID -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map ARREGION [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property physical_name ${aximm_name}_ARREGION [ipx::get_port_maps ARREGION -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map ARSIZE [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property physical_name ${aximm_name}_ARSIZE [ipx::get_port_maps ARSIZE -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map WDATA [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property physical_name ${aximm_name}_WDATA [ipx::get_port_maps WDATA -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map AWSIZE [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property physical_name ${aximm_name}_AWSIZE [ipx::get_port_maps AWSIZE -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map AWREGION [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property physical_name ${aximm_name}_AWREGION [ipx::get_port_maps AWREGION -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map ARADDR [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property physical_name ${aximm_name}_ARADDR [ipx::get_port_maps ARADDR -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map AWADDR [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property physical_name ${aximm_name}_AWADDR [ipx::get_port_maps AWADDR -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map ARREADY [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property physical_name ${aximm_name}_ARREADY [ipx::get_port_maps ARREADY -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map WVALID [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property physical_name ${aximm_name}_WVALID [ipx::get_port_maps WVALID -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map ARVALID [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property physical_name ${aximm_name}_ARVALID [ipx::get_port_maps ARVALID -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map AWLOCK [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property physical_name ${aximm_name}_AWLOCK [ipx::get_port_maps AWLOCK -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map AWBURST [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
	set_property physical_name ${aximm_name}_AWBURST [ipx::get_port_maps AWBURST -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]

#	ipx::add_port_map ARID [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
#	set_property physical_name ${aximm_name}_ARID [ipx::get_port_maps ARID -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
#	ipx::add_port_map AWID [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
#	set_property physical_name ${aximm_name}_AWID [ipx::get_port_maps AWID -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
#	ipx::add_port_map BID [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
#	set_property physical_name ${aximm_name}_BID [ipx::get_port_maps BID -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
#	ipx::add_port_map RID [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
#	set_property physical_name ${aximm_name}_RID [ipx::get_port_maps RID -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
#	ipx::add_port_map WID [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
#	set_property physical_name ${aximm_name}_WID [ipx::get_port_maps WID -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]

#	ipx::add_port_map ARUSER [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
#	set_property physical_name ${aximm_name}_ARUSER [ipx::get_port_maps ARUSER -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
#	ipx::add_port_map AWUSER [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
#	set_property physical_name ${aximm_name}_AWUSER [ipx::get_port_maps AWUSER -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
#	ipx::add_port_map BUSER [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
#	set_property physical_name ${aximm_name}_BUSER [ipx::get_port_maps BUSER -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
#	ipx::add_port_map RUSER [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
#	set_property physical_name ${aximm_name}_RUSER [ipx::get_port_maps RUSER -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]
#	ipx::add_port_map WUSER [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]
#	set_property physical_name ${aximm_name}_WUSER [ipx::get_port_maps WUSER -of_objects [ipx::get_bus_interfaces ${aximm_name} -of_objects [ipx::current_core]]]

#	set_property enablement_dependency "\$M_AXIMM_${idx}_AWID_WIDTH > 0" [ipx::get_ports "M_AXIMM_${idx}_AWID" -of_objects [ipx::current_core]]
#	set_property enablement_dependency "\$M_AXIMM_${idx}_ARID_WIDTH > 0" [ipx::get_ports "M_AXIMM_${idx}_ARID" -of_objects [ipx::current_core]]
#	set_property enablement_dependency "\$M_AXIMM_${idx}_RID_WIDTH > 0" [ipx::get_ports "M_AXIMM_${idx}_RID" -of_objects [ipx::current_core]]
#	set_property enablement_dependency "\$M_AXIMM_${idx}_BID_WIDTH > 0" [ipx::get_ports "M_AXIMM_${idx}_BID" -of_objects [ipx::current_core]]
#	set_property enablement_dependency "\$M_AXIMM_${idx}_WID_WIDTH > 0" [ipx::get_ports "M_AXIMM_${idx}_WID" -of_objects [ipx::current_core]]

#	set_property enablement_dependency "\$M_AXIMM_${idx}_AWUSER_WIDTH > 0" [ipx::get_ports "M_AXIMM_${idx}_AWUSER" -of_objects [ipx::current_core]]
#	set_property enablement_dependency "\$M_AXIMM_${idx}_ARUSER_WIDTH > 0" [ipx::get_ports "M_AXIMM_${idx}_ARUSER" -of_objects [ipx::current_core]]
#	set_property enablement_dependency "\$M_AXIMM_${idx}_RUSER_WIDTH > 0" [ipx::get_ports "M_AXIMM_${idx}_RUSER" -of_objects [ipx::current_core]]
#	set_property enablement_dependency "\$M_AXIMM_${idx}_BUSER_WIDTH > 0" [ipx::get_ports "M_AXIMM_${idx}_BUSER" -of_objects [ipx::current_core]]
#	set_property enablement_dependency "\$M_AXIMM_${idx}_WUSER_WIDTH > 0" [ipx::get_ports "M_AXIMM_${idx}_WUSER" -of_objects [ipx::current_core]]

	set_property enablement_dependency "\$C_NUM_AXIMMs > $idx" [ipx::get_bus_interfaces $aximm_name -of_objects [ipx::current_core]]

	#configure address space
	ipx::add_address_space $aximm_name [ipx::current_core]
	set_property master_address_space_ref $aximm_name [ipx::get_bus_interfaces $aximm_name -of_objects [ipx::current_core]]
	set_property range 17592186044416 [ipx::get_address_spaces $aximm_name -of_objects [ipx::current_core]]
	set_property range_resolve_type dependent [ipx::get_address_spaces $aximm_name -of_objects [ipx::current_core]]
	set_property range_dependency pow(2,M_AXIMM_ADDR_WIDTH) [ipx::get_address_spaces $aximm_name -of_objects [ipx::current_core]]
	set_property width_resolve_type dependent [ipx::get_address_spaces $aximm_name -of_objects [ipx::current_core]]
	set_property width_dependency ${aximm_name}_DATA_WIDTH [ipx::get_address_spaces $aximm_name -of_objects [ipx::current_core]]

	#configure input AXIMM interface
	ipx::add_bus_interface ${ap_name} [ipx::current_core]
	set_property abstraction_type_vlnv xilinx.com:interface:aximm_rtl:1.0 [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property bus_type_vlnv xilinx.com:interface:aximm:1.0 [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property interface_mode slave [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property display_name ${ap_name} [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	ipx::add_port_map WLAST [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property physical_name ${ap_name}_WLAST [ipx::get_port_maps WLAST -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map BREADY [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property physical_name ${ap_name}_BREADY [ipx::get_port_maps BREADY -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map AWLEN [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property physical_name ${ap_name}_AWLEN [ipx::get_port_maps AWLEN -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map AWQOS [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property physical_name ${ap_name}_AWQOS [ipx::get_port_maps AWQOS -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map AWREADY [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property physical_name ${ap_name}_AWREADY [ipx::get_port_maps AWREADY -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map ARBURST [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property physical_name ${ap_name}_ARBURST [ipx::get_port_maps ARBURST -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map AWPROT [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property physical_name ${ap_name}_AWPROT [ipx::get_port_maps AWPROT -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map RRESP [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property physical_name ${ap_name}_RRESP [ipx::get_port_maps RRESP -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map ARPROT [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property physical_name ${ap_name}_ARPROT [ipx::get_port_maps ARPROT -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map RVALID [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property physical_name ${ap_name}_RVALID [ipx::get_port_maps RVALID -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map ARLOCK [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property physical_name ${ap_name}_ARLOCK [ipx::get_port_maps ARLOCK -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map RLAST [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property physical_name ${ap_name}_RLAST [ipx::get_port_maps RLAST -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map AWCACHE [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property physical_name ${ap_name}_AWCACHE [ipx::get_port_maps AWCACHE -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map WREADY [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property physical_name ${ap_name}_WREADY [ipx::get_port_maps WREADY -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map WSTRB [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property physical_name ${ap_name}_WSTRB [ipx::get_port_maps WSTRB -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map BRESP [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property physical_name ${ap_name}_BRESP [ipx::get_port_maps BRESP -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map ARLEN [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property physical_name ${ap_name}_ARLEN [ipx::get_port_maps ARLEN -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map ARQOS [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property physical_name ${ap_name}_ARQOS [ipx::get_port_maps ARQOS -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map RDATA [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property physical_name ${ap_name}_RDATA [ipx::get_port_maps RDATA -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map BVALID [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property physical_name ${ap_name}_BVALID [ipx::get_port_maps BVALID -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map ARCACHE [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property physical_name ${ap_name}_ARCACHE [ipx::get_port_maps ARCACHE -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map RREADY [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property physical_name ${ap_name}_RREADY [ipx::get_port_maps RREADY -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map AWVALID [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property physical_name ${ap_name}_AWVALID [ipx::get_port_maps AWVALID -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map ARREGION [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property physical_name ${ap_name}_ARREGION [ipx::get_port_maps ARREGION -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map ARSIZE [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property physical_name ${ap_name}_ARSIZE [ipx::get_port_maps ARSIZE -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map WDATA [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property physical_name ${ap_name}_WDATA [ipx::get_port_maps WDATA -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map AWSIZE [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property physical_name ${ap_name}_AWSIZE [ipx::get_port_maps AWSIZE -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map AWREGION [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property physical_name ${ap_name}_AWREGION [ipx::get_port_maps AWREGION -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map ARADDR [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property physical_name ${ap_name}_ARADDR [ipx::get_port_maps ARADDR -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map AWADDR [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property physical_name ${ap_name}_AWADDR [ipx::get_port_maps AWADDR -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map ARREADY [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property physical_name ${ap_name}_ARREADY [ipx::get_port_maps ARREADY -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map WVALID [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property physical_name ${ap_name}_WVALID [ipx::get_port_maps WVALID -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map ARVALID [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property physical_name ${ap_name}_ARVALID [ipx::get_port_maps ARVALID -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map AWLOCK [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property physical_name ${ap_name}_AWLOCK [ipx::get_port_maps AWLOCK -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
	ipx::add_port_map AWBURST [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
	set_property physical_name ${ap_name}_AWBURST [ipx::get_port_maps AWBURST -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]

#	ipx::add_port_map AWUSER [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
#	set_property physical_name ${ap_name}_AWUSER [ipx::get_port_maps AWUSER -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
#	ipx::add_port_map ARUSER [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
#	set_property physical_name ${ap_name}_ARUSER [ipx::get_port_maps ARUSER -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
#	ipx::add_port_map RUSER [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
#	set_property physical_name ${ap_name}_RUSER [ipx::get_port_maps RUSER -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
#	ipx::add_port_map BUSER [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
#	set_property physical_name ${ap_name}_BUSER [ipx::get_port_maps BUSER -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
#	ipx::add_port_map WUSER [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
#	set_property physical_name ${ap_name}_WUSER [ipx::get_port_maps WUSER -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]

#	ipx::add_port_map AWID [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
#	set_property physical_name ${ap_name}_AWID [ipx::get_port_maps AWID -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
#	ipx::add_port_map ARID [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
#	set_property physical_name ${ap_name}_ARID [ipx::get_port_maps ARID -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
#	ipx::add_port_map BID [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
#	set_property physical_name ${ap_name}_BID [ipx::get_port_maps BID -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
#	ipx::add_port_map RID [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
#	set_property physical_name ${ap_name}_RID [ipx::get_port_maps RID -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]
#	ipx::add_port_map WID [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]
#	set_property physical_name ${ap_name}_WID [ipx::get_port_maps WID -of_objects [ipx::get_bus_interfaces ${ap_name} -of_objects [ipx::current_core]]]

#	set_property enablement_dependency "\$M_AXIMM_${idx}_AWID_WIDTH > 0" [ipx::get_ports "AP_AXIMM_${idx}_AWID" -of_objects [ipx::current_core]]
#	set_property enablement_dependency "\$M_AXIMM_${idx}_ARID_WIDTH > 0" [ipx::get_ports "AP_AXIMM_${idx}_ARID" -of_objects [ipx::current_core]]
#	set_property enablement_dependency "\$M_AXIMM_${idx}_RID_WIDTH > 0" [ipx::get_ports "AP_AXIMM_${idx}_RID" -of_objects [ipx::current_core]]
#	set_property enablement_dependency "\$M_AXIMM_${idx}_BID_WIDTH > 0" [ipx::get_ports "AP_AXIMM_${idx}_BID" -of_objects [ipx::current_core]]
#	set_property enablement_dependency "\$M_AXIMM_${idx}_WID_WIDTH > 0" [ipx::get_ports "AP_AXIMM_${idx}_WID" -of_objects [ipx::current_core]]

#	set_property enablement_dependency "\$M_AXIMM_${idx}_AWUSER_WIDTH > 0" [ipx::get_ports "AP_AXIMM_${idx}_AWUSER" -of_objects [ipx::current_core]]
#	set_property enablement_dependency "\$M_AXIMM_${idx}_ARUSER_WIDTH > 0" [ipx::get_ports "AP_AXIMM_${idx}_ARUSER" -of_objects [ipx::current_core]]
#	set_property enablement_dependency "\$M_AXIMM_${idx}_RUSER_WIDTH > 0" [ipx::get_ports "AP_AXIMM_${idx}_RUSER" -of_objects [ipx::current_core]]
#	set_property enablement_dependency "\$M_AXIMM_${idx}_BUSER_WIDTH > 0" [ipx::get_ports "AP_AXIMM_${idx}_BUSER" -of_objects [ipx::current_core]]
#	set_property enablement_dependency "\$M_AXIMM_${idx}_WUSER_WIDTH > 0" [ipx::get_ports "AP_AXIMM_${idx}_WUSER" -of_objects [ipx::current_core]]

	set_property enablement_dependency "\$C_NUM_AXIMMs > $idx" [ipx::get_bus_interfaces $ap_name -of_objects [ipx::current_core]]

	#configure memory map
	ipx::add_memory_map $ap_name [ipx::current_core]
	set_property slave_memory_map_ref $ap_name [ipx::get_bus_interfaces $ap_name -of_objects [ipx::current_core]]
	ipx::add_address_block reg0 [ipx::get_memory_maps $ap_name -of_objects [ipx::current_core]]
	set_property range 17592186044416 [ipx::get_address_blocks reg0 -of_objects [ipx::get_memory_maps $ap_name -of_objects [ipx::current_core]]]
	set_property range_dependency {pow(2,M_AXIMM_ADDR_WIDTH)} [ipx::get_address_blocks reg0 -of_objects [ipx::get_memory_maps $ap_name -of_objects [ipx::current_core]]]
	set_property range_resolve_type dependent [ipx::get_address_blocks reg0 -of_objects [ipx::get_memory_maps $ap_name -of_objects [ipx::current_core]]]
	set_property width 32 [ipx::get_address_blocks reg0 -of_objects [ipx::get_memory_maps $ap_name -of_objects [ipx::current_core]]]
	set_property width_resolve_type dependent [ipx::get_address_blocks reg0 -of_objects [ipx::get_memory_maps $ap_name -of_objects [ipx::current_core]]]
	set_property width_dependency M_AXIMM_${idx}_DATA_WIDTH [ipx::get_address_blocks reg0 -of_objects [ipx::get_memory_maps $ap_name -of_objects [ipx::current_core]]]
	set_property usage memory [ipx::get_address_blocks reg0 -of_objects [ipx::get_memory_maps $ap_name -of_objects [ipx::current_core]]]
	set_property access read-write [ipx::get_address_blocks reg0 -of_objects [ipx::get_memory_maps $ap_name -of_objects [ipx::current_core]]]

	ipx::associate_bus_interfaces -busif $ap_name -clock ap_clk [ipx::current_core]
	ipx::associate_bus_interfaces -busif $aximm_name -clock acc_aclk [ipx::current_core]
    }
}

proc create_bram {num} {
    #configure INPUT BRAM ports 
    for {set idx 0} {$idx < $num} {incr idx} {
	set s_axis_name "S_AXIS_BRAM_$idx"
	set axis_clk "s_axis_bram_${idx}_aclk"
	set s_axis_tdata_name "s_axis_bram_${idx}_tdata"
	set s_axis_tvalid_name "s_axis_bram_${idx}_tvalid"
	set s_axis_tlast_name "s_axis_bram_${idx}_tlast"
	set s_axis_tready_name "s_axis_bram_${idx}_tready"
	set s_axis_tstrb_name "s_axis_bram_${idx}_tstrb"
	set s_axis_tkeep_name "s_axis_bram_${idx}_tkeep"
	
	#configure input AXIS interface
	ipx::add_bus_interface $s_axis_name [ipx::current_core]
	set_property abstraction_type_vlnv xilinx.com:interface:axis_rtl:1.0 [ipx::get_bus_interfaces $s_axis_name -of_objects [ipx::current_core]]
	set_property bus_type_vlnv xilinx.com:interface:axis:1.0 [ipx::get_bus_interfaces $s_axis_name -of_objects [ipx::current_core]]
	set_property interface_mode slave [ipx::get_bus_interfaces $s_axis_name -of_objects [ipx::current_core]]
	set_property enablement_dependency "\$C_NUM_INPUT_BRAMs > $idx" [ipx::get_bus_interfaces $s_axis_name -of_objects [ipx::current_core]]
	ipx::associate_bus_interfaces -busif $s_axis_name -clock $axis_clk [ipx::current_core]
	
	#add input AXIS ports
	ipx::add_port_map TDATA [ipx::get_bus_interfaces $s_axis_name -of_objects [ipx::current_core]]
	set_property physical_name $s_axis_tdata_name [ipx::get_port_maps TDATA -of_objects [ipx::get_bus_interfaces $s_axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TVALID [ipx::get_bus_interfaces $s_axis_name -of_objects [ipx::current_core]]
	set_property physical_name $s_axis_tvalid_name [ipx::get_port_maps TVALID -of_objects [ipx::get_bus_interfaces $s_axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TLAST [ipx::get_bus_interfaces $s_axis_name -of_objects [ipx::current_core]]
	set_property physical_name $s_axis_tlast_name [ipx::get_port_maps TLAST -of_objects [ipx::get_bus_interfaces $s_axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TREADY [ipx::get_bus_interfaces $s_axis_name -of_objects [ipx::current_core]]
	set_property physical_name $s_axis_tready_name [ipx::get_port_maps TREADY -of_objects [ipx::get_bus_interfaces $s_axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TSTRB [ipx::get_bus_interfaces $s_axis_name -of_objects [ipx::current_core]]
	set_property physical_name $s_axis_tstrb_name [ipx::get_port_maps TSTRB -of_objects [ipx::get_bus_interfaces $s_axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TKEEP [ipx::get_bus_interfaces $s_axis_name -of_objects [ipx::current_core]]
	set_property physical_name $s_axis_tkeep_name [ipx::get_port_maps TKEEP -of_objects [ipx::get_bus_interfaces $s_axis_name -of_objects [ipx::current_core]]]  
	
	#set default values
	set_property driver_value 0 [ipx::get_ports $s_axis_tdata_name -of_objects [ipx::current_core]]
	set_property driver_value 0 [ipx::get_ports $s_axis_tvalid_name -of_objects [ipx::current_core]]
	set_property driver_value 0 [ipx::get_ports $s_axis_tlast_name -of_objects [ipx::current_core]]
	set_property driver_value 0 [ipx::get_ports $s_axis_tstrb_name -of_objects [ipx::current_core]]
	set_property driver_value 1 [ipx::get_ports $s_axis_tkeep_name -of_objects [ipx::current_core]]
	set_property driver_value 1 [ipx::get_ports $s_axis_tstrb_name -of_objects [ipx::current_core]]
	
	#setup bram ports
	for {set bp 0} {$bp < 2} {incr bp} {
	    set bram_name "AP_BRAM_IARG_${idx}_${bp}"
	    set bram_din "ap_bram_iarg_${idx}_din${bp}"
	    set bram_en "ap_bram_iarg_${idx}_en${bp}"
	    set bram_dout "ap_bram_iarg_${idx}_dout${bp}"
	    set bram_we "ap_bram_iarg_${idx}_we${bp}"
	    set bram_addr "ap_bram_iarg_${idx}_addr${bp}"
	    set bram_rst "ap_bram_iarg_${idx}_rst${bp}"
	    set bram_clk "ap_bram_iarg_${idx}_clk${bp}"
	    
	    #setup bram port
	    ipx::add_bus_interface $bram_name [ipx::current_core]
	    set_property abstraction_type_vlnv xilinx.com:interface:bram_rtl:1.0 [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]
	    set_property bus_type_vlnv xilinx.com:interface:bram:1.0 [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]
	    set_property display_name $bram_name [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]
	    set_property description $bram_name [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]
	    set_property enablement_dependency "\$C_NUM_INPUT_BRAMs > ${idx} and \$S_AXIS_BRAM_${idx}_PORTS > ${bp}" [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]
	    
	    #add parameters to port
	    ipx::add_bus_parameter MASTER_TYPE [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]
	    set_property value BRAM_CTRL [ipx::get_bus_parameters MASTER_TYPE -of_objects [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]]
	    
	    #add signals to port
	    ipx::add_port_map DIN [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]
	    set_property physical_name $bram_din [ipx::get_port_maps DIN -of_objects [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]]
	    ipx::add_port_map EN [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]
	    set_property physical_name $bram_en [ipx::get_port_maps EN -of_objects [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]]
	    ipx::add_port_map DOUT [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]
	    set_property physical_name $bram_dout [ipx::get_port_maps DOUT -of_objects [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]]
	    ipx::add_port_map WE [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]
	    set_property physical_name $bram_we [ipx::get_port_maps WE -of_objects [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]]
	    ipx::add_port_map ADDR [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]
	    set_property physical_name $bram_addr [ipx::get_port_maps ADDR -of_objects [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]]
	    ipx::add_port_map RST [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]
	    set_property physical_name $bram_rst [ipx::get_port_maps RST -of_objects [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]]
	    ipx::add_port_map CLK [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]
	    set_property physical_name $bram_clk [ipx::get_port_maps CLK -of_objects [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]]
	    
	    #set default values
	    set_property driver_value 0 [ipx::get_ports $bram_din -of_objects [ipx::current_core]]
	    set_property driver_value 0 [ipx::get_ports $bram_en -of_objects [ipx::current_core]]
	    set_property driver_value 0 [ipx::get_ports $bram_we -of_objects [ipx::current_core]]
	    set_property driver_value 0 [ipx::get_ports $bram_addr -of_objects [ipx::current_core]]
	    set_property driver_value 0 [ipx::get_ports $bram_rst -of_objects [ipx::current_core]]
	    set_property driver_value 0 [ipx::get_ports $bram_clk -of_objects [ipx::current_core]]
	}
	
	set m_axis_name "M_AXIS_BRAMIO_$idx"
	set axis_clk "m_axis_bramio_${idx}_aclk"
	set m_axis_tdata_name "m_axis_bramio_${idx}_tdata"
	set m_axis_tvalid_name "m_axis_bramio_${idx}_tvalid"
	set m_axis_tlast_name "m_axis_bramio_${idx}_tlast"
	set m_axis_tready_name "m_axis_bramio_${idx}_tready"
	set m_axis_tstrb_name "m_axis_bramio_${idx}_tstrb"
	set m_axis_tkeep_name "m_axis_bramio_${idx}_tkeep"
	
	#configure output AXIS interface
	ipx::add_bus_interface $m_axis_name [ipx::current_core]
	set_property abstraction_type_vlnv xilinx.com:interface:axis_rtl:1.0 [ipx::get_bus_interfaces $m_axis_name -of_objects [ipx::current_core]]
	set_property bus_type_vlnv xilinx.com:interface:axis:1.0 [ipx::get_bus_interfaces $m_axis_name -of_objects [ipx::current_core]]
	set_property interface_mode master [ipx::get_bus_interfaces $m_axis_name -of_objects [ipx::current_core]]
	set_property enablement_dependency "\$C_NUM_INPUT_BRAMs > $idx and \$S_AXIS_BRAM_${idx}_IS_INOUT > 0" [ipx::get_bus_interfaces $m_axis_name -of_objects [ipx::current_core]]
	ipx::associate_bus_interfaces -busif $m_axis_name -clock $axis_clk [ipx::current_core]
	
	#add output AXIS ports
	ipx::add_port_map TDATA [ipx::get_bus_interfaces $m_axis_name -of_objects [ipx::current_core]]
	set_property physical_name $m_axis_tdata_name [ipx::get_port_maps TDATA -of_objects [ipx::get_bus_interfaces $m_axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TVALID [ipx::get_bus_interfaces $m_axis_name -of_objects [ipx::current_core]]
	set_property physical_name $m_axis_tvalid_name [ipx::get_port_maps TVALID -of_objects [ipx::get_bus_interfaces $m_axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TLAST [ipx::get_bus_interfaces $m_axis_name -of_objects [ipx::current_core]]
	set_property physical_name $m_axis_tlast_name [ipx::get_port_maps TLAST -of_objects [ipx::get_bus_interfaces $m_axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TREADY [ipx::get_bus_interfaces $m_axis_name -of_objects [ipx::current_core]]
	set_property physical_name $m_axis_tready_name [ipx::get_port_maps TREADY -of_objects [ipx::get_bus_interfaces $m_axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TSTRB [ipx::get_bus_interfaces $m_axis_name -of_objects [ipx::current_core]]
	set_property physical_name $m_axis_tstrb_name [ipx::get_port_maps TSTRB -of_objects [ipx::get_bus_interfaces $m_axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TKEEP [ipx::get_bus_interfaces $m_axis_name -of_objects [ipx::current_core]]
	set_property physical_name $m_axis_tkeep_name [ipx::get_port_maps TKEEP -of_objects [ipx::get_bus_interfaces $m_axis_name -of_objects [ipx::current_core]]]
	
	#set default values
	set_property driver_value 0 [ipx::get_ports $m_axis_tready_name -of_objects [ipx::current_core]]
    }
    
    #configure OUTPUT BRAM ports 
    for {set idx 0} {$idx < $num} {incr idx} {
	set axis_name "M_AXIS_BRAM_$idx"
	set axis_clk "m_axis_bram_${idx}_aclk"
	set axis_tdata_name "m_axis_bram_${idx}_tdata"
	set axis_tvalid_name "m_axis_bram_${idx}_tvalid"
	set axis_tlast_name "m_axis_bram_${idx}_tlast"
	set axis_tready_name "m_axis_bram_${idx}_tready"
	set axis_tstrb_name "m_axis_bram_${idx}_tstrb"
	set axis_tkeep_name "m_axis_bram_${idx}_tkeep"
	
	#configure output AXIS interface
	ipx::add_bus_interface $axis_name [ipx::current_core]
	set_property abstraction_type_vlnv xilinx.com:interface:axis_rtl:1.0 [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property bus_type_vlnv xilinx.com:interface:axis:1.0 [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property interface_mode master [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property enablement_dependency "\$C_NUM_OUTPUT_BRAMs > $idx" [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	ipx::associate_bus_interfaces -busif $axis_name -clock $axis_clk [ipx::current_core]
	
	#add output AXIS ports
	ipx::add_port_map TDATA [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tdata_name [ipx::get_port_maps TDATA -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TVALID [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tvalid_name [ipx::get_port_maps TVALID -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TLAST [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tlast_name [ipx::get_port_maps TLAST -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TREADY [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tready_name [ipx::get_port_maps TREADY -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TSTRB [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tstrb_name [ipx::get_port_maps TSTRB -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	ipx::add_port_map TKEEP [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]
	set_property physical_name $axis_tkeep_name [ipx::get_port_maps TKEEP -of_objects [ipx::get_bus_interfaces $axis_name -of_objects [ipx::current_core]]]
	
	#set default values
	set_property driver_value 0 [ipx::get_ports $axis_tready_name -of_objects [ipx::current_core]]
	
	#setup bram ports
	for {set bp 0} {$bp < 2} {incr bp} {
	    set bram_name "AP_BRAM_OARG_${idx}_${bp}"
	    set bram_din "ap_bram_oarg_${idx}_din${bp}"
	    set bram_en "ap_bram_oarg_${idx}_en${bp}"
	    set bram_dout "ap_bram_oarg_${idx}_dout${bp}"
	    set bram_we "ap_bram_oarg_${idx}_we${bp}"
	    set bram_addr "ap_bram_oarg_${idx}_addr${bp}"
	    set bram_rst "ap_bram_oarg_${idx}_rst${bp}"
	    set bram_clk "ap_bram_oarg_${idx}_clk${bp}"
	    
	    #setup bram port
	    ipx::add_bus_interface $bram_name [ipx::current_core]
	    set_property abstraction_type_vlnv xilinx.com:interface:bram_rtl:1.0 [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]
	    set_property bus_type_vlnv xilinx.com:interface:bram:1.0 [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]
	    set_property display_name $bram_name [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]
	    set_property description $bram_name [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]
	    set_property enablement_dependency "\$C_NUM_OUTPUT_BRAMs > ${idx} and \$M_AXIS_BRAM_${idx}_PORTS > ${bp}" [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]
	    
	    #add parameters to port
	    ipx::add_bus_parameter MASTER_TYPE [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]
	    set_property value BRAM_CTRL [ipx::get_bus_parameters MASTER_TYPE -of_objects [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]]
	    
	    #add signals to port
	    ipx::add_port_map DIN [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]
	    set_property physical_name $bram_din [ipx::get_port_maps DIN -of_objects [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]]
	    ipx::add_port_map EN [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]
	    set_property physical_name $bram_en [ipx::get_port_maps EN -of_objects [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]]
	    ipx::add_port_map DOUT [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]
	    set_property physical_name $bram_dout [ipx::get_port_maps DOUT -of_objects [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]]
	    ipx::add_port_map WE [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]
	    set_property physical_name $bram_we [ipx::get_port_maps WE -of_objects [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]]
	    ipx::add_port_map ADDR [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]
	    set_property physical_name $bram_addr [ipx::get_port_maps ADDR -of_objects [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]]
	    ipx::add_port_map RST [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]
	    set_property physical_name $bram_rst [ipx::get_port_maps RST -of_objects [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]]
	    ipx::add_port_map CLK [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]
	    set_property physical_name $bram_clk [ipx::get_port_maps CLK -of_objects [ipx::get_bus_interfaces $bram_name -of_objects [ipx::current_core]]]
	    
	    #set default values
	    set_property driver_value 0 [ipx::get_ports $bram_din -of_objects [ipx::current_core]]
	    set_property driver_value 0 [ipx::get_ports $bram_en -of_objects [ipx::current_core]]
	    set_property driver_value 0 [ipx::get_ports $bram_we -of_objects [ipx::current_core]]
	    set_property driver_value 0 [ipx::get_ports $bram_addr -of_objects [ipx::current_core]]
	    set_property driver_value 0 [ipx::get_ports $bram_rst -of_objects [ipx::current_core]]
	    set_property driver_value 0 [ipx::get_ports $bram_clk -of_objects [ipx::current_core]]
	}
    }
}

proc finish {num} {
    puts "configure address range"
    set_property RANGE 65536 [ipx::get_address_blocks reg0 -of_objects [ipx::get_memory_maps S_AXI -of_objects [ipx::current_core]]]
	set_property RANGE_MINIMUM 65536 [ipx::get_address_blocks reg0 -of_objects [ipx::get_memory_maps S_AXI -of_objects [ipx::current_core]]]

	puts "Remove families and enable AUTO_FAMILY_SUPPORT_LEVEL"
	set_property SUPPORTED_FAMILIES {} [ipx::current_core]
	set_property AUTO_FAMILY_SUPPORT_LEVEL level_beta [ipx::current_core]
	
    puts "hide parameters"
    set param_list [list C_ACC_RESET_POLARITY C_QUEUE_DEPTH C_NUM_INPUT_SCALARS C_NUM_OUTPUT_SCALARS C_NUM_INSCALARS C_NUM_OUTSCALARS C_FIFO_DEPTH C_HAS_RETURN C_N_INPUT_SCALARS C_N_OUTPUT_SCALARS C_NUM_INPUT_FIFOs C_NUM_OUTPUT_FIFOs C_NUM_INPUT_BRAMs C_NUM_OUTPUT_BRAMs C_NUM_INPUT_AXISs C_NUM_OUTPUT_AXISs C_NUM_AXIMMs C_HAS_CTRL M_AXIMM_ADDR_WIDTH]
    for {set idx 0} {$idx < [llength $param_list]} {incr idx} {
        set param [lindex $param_list $idx]
	if {![string equal [ipgui::get_guiparamspec -name $param -component [ipx::current_core] -quiet] ""]} {
	    ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name $param -component [ipx::current_core]]
	}
    }
    for {set idx 0} {$idx < $num} {incr idx} {
        ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name C_INPUT_SCALAR_${idx}_WIDTH -component [ipx::current_core]]
        ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name S_AXIS_SCALAR_${idx}_IS_DIRECT -component [ipx::current_core]]
        ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name S_AXIS_SCALAR_${idx}_DIRECT_DMWIDTH -component [ipx::current_core]]
        ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name S_AXIS_SCALAR_${idx}_DIRECT_IS_ASYNC -component [ipx::current_core]]
        ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name S_AXIS_SCALAR_${idx}_DIRECT_DEPTH -component [ipx::current_core]]

        ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name C_OUTPUT_SCALAR_${idx}_WIDTH -component [ipx::current_core]]
        ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name M_AXIS_SCALAR_${idx}_IS_DIRECT -component [ipx::current_core]]
        ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name M_AXIS_SCALAR_${idx}_DIRECT_DMWIDTH -component [ipx::current_core]]
        ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name M_AXIS_SCALAR_${idx}_DIRECT_IS_ASYNC -component [ipx::current_core]]
        ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name M_AXIS_SCALAR_${idx}_DIRECT_DEPTH -component [ipx::current_core]]

        ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name S_AXIS_FIFO_${idx}_WIDTH -component [ipx::current_core]]
        ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name S_AXIS_FIFO_${idx}_DMWIDTH -component [ipx::current_core]]
        ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name S_AXIS_FIFO_${idx}_IS_ASYNC -component [ipx::current_core]]
        ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name S_AXIS_FIFO_${idx}_BYTE_WIDTH -component [ipx::current_core]]
        ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name S_AXIS_FIFO_${idx}_DEPTH -component [ipx::current_core]]
        ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name M_AXIS_FIFO_${idx}_WIDTH -component [ipx::current_core]]
        ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name M_AXIS_FIFO_${idx}_DMWIDTH -component [ipx::current_core]]
        ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name M_AXIS_FIFO_${idx}_IS_ASYNC -component [ipx::current_core]]
        ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name M_AXIS_FIFO_${idx}_BYTE_WIDTH -component [ipx::current_core]]
        ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name M_AXIS_FIFO_${idx}_DEPTH -component [ipx::current_core]]

        ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name S_AXIS_BRAM_${idx}_MB_DEPTH -component [ipx::current_core]]
        ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name S_AXIS_BRAM_${idx}_PORTS -component [ipx::current_core]]
        ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name S_AXIS_BRAM_${idx}_IS_INOUT -component [ipx::current_core]]
	ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name S_AXIS_BRAM_${idx}_WIDTH -component [ipx::current_core]]
	ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name S_AXIS_BRAM_${idx}_DEPTH -component [ipx::current_core]]
	ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name S_AXIS_BRAM_${idx}_ADDR_WIDTH -component [ipx::current_core]]
	ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name S_AXIS_BRAM_${idx}_DMWIDTH -component [ipx::current_core]]
	ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name M_AXIS_BRAMIO_${idx}_DMWIDTH -component [ipx::current_core]]
	ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name S_AXIS_BRAM_${idx}_IS_ASYNC -component [ipx::current_core]]
        ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name M_AXIS_BRAMIO_${idx}_IS_ASYNC -component [ipx::current_core]]
        ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name M_AXIS_BRAM_${idx}_MB_DEPTH -component [ipx::current_core]]
        ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name M_AXIS_BRAM_${idx}_PORTS -component [ipx::current_core]]
	ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name M_AXIS_BRAM_${idx}_WIDTH -component [ipx::current_core]]
	ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name M_AXIS_BRAM_${idx}_DEPTH -component [ipx::current_core]]
	ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name M_AXIS_BRAM_${idx}_ADDR_WIDTH -component [ipx::current_core]]
	ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name M_AXIS_BRAM_${idx}_DMWIDTH -component [ipx::current_core]]
        ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name M_AXIS_BRAM_${idx}_IS_ASYNC -component [ipx::current_core]]

	ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name S_AXIS_IARG_${idx}_WIDTH -component [ipx::current_core]]
	ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name S_AXIS_IARG_${idx}_DEPTH -component [ipx::current_core]]
	ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name S_AXIS_IARG_${idx}_DMWIDTH -component [ipx::current_core]]
        ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name S_AXIS_IARG_${idx}_IS_ASYNC -component [ipx::current_core]]
	ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name M_AXIS_OARG_${idx}_WIDTH -component [ipx::current_core]]
	ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name M_AXIS_OARG_${idx}_DEPTH -component [ipx::current_core]]
	ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name M_AXIS_OARG_${idx}_DMWIDTH -component [ipx::current_core]]
        ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name M_AXIS_OARG_${idx}_IS_ASYNC -component [ipx::current_core]]
	ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name M_AXIS_OARG_${idx}_GEN_TLAST -component [ipx::current_core]]

	ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name M_AXIMM_${idx}_DATA_WIDTH -component [ipx::current_core]]
	ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name M_AXIMM_${idx}_AWID_WIDTH -component [ipx::current_core]]
	ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name M_AXIMM_${idx}_ARID_WIDTH -component [ipx::current_core]]
	ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name M_AXIMM_${idx}_RID_WIDTH -component [ipx::current_core]]
	ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name M_AXIMM_${idx}_BID_WIDTH -component [ipx::current_core]]
	ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name M_AXIMM_${idx}_WID_WIDTH -component [ipx::current_core]]
	ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name M_AXIMM_${idx}_AWUSER_WIDTH -component [ipx::current_core]]
	ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name M_AXIMM_${idx}_ARUSER_WIDTH -component [ipx::current_core]]
	ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name M_AXIMM_${idx}_RUSER_WIDTH -component [ipx::current_core]]
	ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name M_AXIMM_${idx}_BUSER_WIDTH -component [ipx::current_core]]
	ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name M_AXIMM_${idx}_WUSER_WIDTH -component [ipx::current_core]]
    }
    
    puts "parameter enablement"
    for {set idx 0} {$idx < $num} {incr idx} {
	set_property enablement_value false [ipx::get_user_parameters "S_AXIS_BRAM_${idx}_ADDR_WIDTH" -of_objects [ipx::current_core]]
	set_property value_tcl_expr "expr \{ceil(log(\$S_AXIS_BRAM_${idx}_DEPTH) / log(2)) + ceil(log(\$S_AXIS_BRAM_${idx}_WIDTH/8) / log(2))\}" [ipx::get_user_parameters "S_AXIS_BRAM_${idx}_ADDR_WIDTH" -of_objects [ipx::current_core]]

	set_property enablement_value false [ipx::get_user_parameters "M_AXIS_BRAM_${idx}_ADDR_WIDTH" -of_objects [ipx::current_core]]
	set_property value_tcl_expr "expr \{ceil(log(\$M_AXIS_BRAM_${idx}_DEPTH) / log(2)) + ceil(log(\$M_AXIS_BRAM_${idx}_WIDTH/8) / log(2))\}" [ipx::get_user_parameters "M_AXIS_BRAM_${idx}_ADDR_WIDTH" -of_objects [ipx::current_core]]
    }

    puts "setup bd.tcl"
    ipx::add_file_group -type utility {} [ipx::current_core]
    set_property name xilinx_blockdiagram [ipx::get_file_groups xilinx_utilityxitfiles -of_objects [ipx::current_core]]
    set_property display_name {Block Diagram} [ipx::get_file_groups xilinx_blockdiagram -of_objects [ipx::current_core]]
    set_property env_ids :vivado.xilinx.com:block.diagram [ipx::get_file_groups xilinx_blockdiagram -of_objects [ipx::current_core]]
    set_property type block_diagram [ipx::get_file_groups xilinx_blockdiagram -of_objects [ipx::current_core]]
    ipx::add_file ./bd/bd.tcl [ipx::get_file_groups xilinx_blockdiagram -of_objects [ipx::current_core]]
    set_property type tclSource [ipx::get_files bd/bd.tcl -of_objects [ipx::get_file_groups xilinx_blockdiagram -of_objects [ipx::current_core]]]

    puts "other misc configuration"
    set_property core_revision 2 [ipx::current_core]
    ipx::create_xgui_files [ipx::current_core]
    ipx::update_checksums [ipx::current_core]
    ipx::save_core [ipx::current_core]

    close_project
}

if {1} {
    set num 128
    set num_ports 2

    puts "Starting flow..."
    genFiles $num $num_ports
    puts "generated files"
    init
    puts "init completed"
    createIP
    puts "created IP"
    clear
    puts "cleared auto generated buses"
    create_ctrl $num
    puts "Created control"
    create_scalar $num
    puts "Scalars finished"
    create_fifo $num
    puts "FIFOs finished"
    create_axis $num
    puts "AXISs finished"
    create_aximm $num
    puts "AXIMMs finished"
    create_bram $num
    puts "BRAMs finished"
    finish $num
    puts "Adapter packaged!"
}
