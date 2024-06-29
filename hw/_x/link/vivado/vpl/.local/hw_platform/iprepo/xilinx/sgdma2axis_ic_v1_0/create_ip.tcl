#remove any old files from previous run
exec rm -rf component.xml
exec rm -rf xgui

###################################################
#create ip
###########
#create project
create_project project_1 . -part xc7z020clg484-1
set_property board_part xilinx.com:zc702:part0:1.2 [current_project]

#add hdl files
add_files ./hdl

#package the project as an IP
ipx::package_project -root_dir ./ -vendor xilinx.com -library user -taxonomy /UserIP

#configure info settings for IP
set_property library ip [ipx::current_core]
set_property name sgdma2axis_ic [ipx::current_core]
set_property display_name sgdma2axis_ic_v1_0 [ipx::current_core]
set_property description sgdma2axis_ic_v1_0 [ipx::current_core]
set_property vendor_display_name {Xilinx Inc.} [ipx::current_core]
set_property company_url http://www.xilinx.com [ipx::current_core]
set_property taxonomy /BaseIP [ipx::current_core]
set_property supported_families {} [ipx::current_core]
set_property supported_families {virtex7 Beta qvirtex7 Beta kintex7 Beta kintex7l Beta qkintex7 Beta qkintex7l Beta artix7 Beta artix7l Beta aartix7 Beta qartix7 Beta zynq Beta qzynq Beta azynq Beta spartan7 Beta virtexu Beta virtexuplus Beta kintexuplus Beta zynquplus Beta kintexu Beta} [ipx::current_core]

#remove any auto-created buses
set existing_buses [ipx::get_bus_interfaces]
for {set idx 0} {$idx < [llength $existing_buses]} {incr idx} {
    set bus [lindex $existing_buses $idx]
    set name [lindex $bus 2]
    #remove any axis fifo buses
    if {[string first "axis" $name] > -1} {
	ipx::remove_bus_interface $name [ipx::current_core]
    }
    if {[string first "ctrl" $name] > -1} {
	ipx::remove_bus_interface $name [ipx::current_core]
    }
    if {[string first "data" $name] > -1} {
	ipx::remove_bus_interface $name [ipx::current_core]
    }
}

#remove associated buses to clk
set_property value {} [ipx::get_bus_parameters ASSOCIATED_BUSIF -of_objects [ipx::get_bus_interfaces clk -of_objects [ipx::current_core]]]

#setup data bus
ipx::add_bus_interface S_AXIS_DATA [ipx::current_core]
set_property abstraction_type_vlnv xilinx.com:interface:axis_rtl:1.0 [ipx::get_bus_interfaces S_AXIS_DATA -of_objects [ipx::current_core]]
set_property bus_type_vlnv xilinx.com:interface:axis:1.0 [ipx::get_bus_interfaces S_AXIS_DATA -of_objects [ipx::current_core]]
set_property display_name S_AXIS_DATA [ipx::get_bus_interfaces S_AXIS_DATA -of_objects [ipx::current_core]]
set_property description S_AXIS_DATA [ipx::get_bus_interfaces S_AXIS_DATA -of_objects [ipx::current_core]]
ipx::add_port_map TLAST [ipx::get_bus_interfaces S_AXIS_DATA -of_objects [ipx::current_core]]
set_property physical_name data_tlast [ipx::get_port_maps TLAST -of_objects [ipx::get_bus_interfaces S_AXIS_DATA -of_objects [ipx::current_core]]]
ipx::add_port_map TVALID [ipx::get_bus_interfaces S_AXIS_DATA -of_objects [ipx::current_core]]
set_property physical_name data_tvalid [ipx::get_port_maps TVALID -of_objects [ipx::get_bus_interfaces S_AXIS_DATA -of_objects [ipx::current_core]]]
ipx::add_port_map TDATA [ipx::get_bus_interfaces S_AXIS_DATA -of_objects [ipx::current_core]]
set_property physical_name data_tdata [ipx::get_port_maps TDATA -of_objects [ipx::get_bus_interfaces S_AXIS_DATA -of_objects [ipx::current_core]]]
ipx::add_port_map TKEEP [ipx::get_bus_interfaces S_AXIS_DATA -of_objects [ipx::current_core]]
set_property physical_name data_tkeep [ipx::get_port_maps TKEEP -of_objects [ipx::get_bus_interfaces S_AXIS_DATA -of_objects [ipx::current_core]]]
ipx::add_port_map TREADY [ipx::get_bus_interfaces S_AXIS_DATA -of_objects [ipx::current_core]]
set_property physical_name data_tready [ipx::get_port_maps TREADY -of_objects [ipx::get_bus_interfaces S_AXIS_DATA -of_objects [ipx::current_core]]]

#setup control bus
ipx::add_bus_interface S_AXIS_CTRL [ipx::current_core]
set_property abstraction_type_vlnv xilinx.com:interface:axis_rtl:1.0 [ipx::get_bus_interfaces S_AXIS_CTRL -of_objects [ipx::current_core]]
set_property bus_type_vlnv xilinx.com:interface:axis:1.0 [ipx::get_bus_interfaces S_AXIS_CTRL -of_objects [ipx::current_core]]
set_property display_name S_AXIS_CTRL [ipx::get_bus_interfaces S_AXIS_CTRL -of_objects [ipx::current_core]]
set_property description S_AXIS_CTRL [ipx::get_bus_interfaces S_AXIS_CTRL -of_objects [ipx::current_core]]
ipx::add_port_map TDATA [ipx::get_bus_interfaces S_AXIS_CTRL -of_objects [ipx::current_core]]
set_property physical_name ctrl_tdata [ipx::get_port_maps TDATA -of_objects [ipx::get_bus_interfaces S_AXIS_CTRL -of_objects [ipx::current_core]]]
ipx::add_port_map TVALID [ipx::get_bus_interfaces S_AXIS_CTRL -of_objects [ipx::current_core]]
set_property physical_name ctrl_tvalid [ipx::get_port_maps TVALID -of_objects [ipx::get_bus_interfaces S_AXIS_CTRL -of_objects [ipx::current_core]]]
ipx::add_port_map TLAST [ipx::get_bus_interfaces S_AXIS_CTRL -of_objects [ipx::current_core]]
set_property physical_name ctrl_tlast [ipx::get_port_maps TLAST -of_objects [ipx::get_bus_interfaces S_AXIS_CTRL -of_objects [ipx::current_core]]]
ipx::add_port_map TKEEP [ipx::get_bus_interfaces S_AXIS_CTRL -of_objects [ipx::current_core]]
set_property physical_name ctrl_tkeep [ipx::get_port_maps TKEEP -of_objects [ipx::get_bus_interfaces S_AXIS_CTRL -of_objects [ipx::current_core]]]
ipx::add_port_map TREADY [ipx::get_bus_interfaces S_AXIS_CTRL -of_objects [ipx::current_core]]
set_property physical_name ctrl_tready [ipx::get_port_maps TREADY -of_objects [ipx::get_bus_interfaces S_AXIS_CTRL -of_objects [ipx::current_core]]]

#setup output bus
ipx::add_bus_interface M_AXIS_DATA [ipx::current_core]
set_property abstraction_type_vlnv xilinx.com:interface:aximm_rtl:1.0 [ipx::get_bus_interfaces M_AXIS_DATA -of_objects [ipx::current_core]]
set_property bus_type_vlnv xilinx.com:interface:aximm:1.0 [ipx::get_bus_interfaces M_AXIS_DATA -of_objects [ipx::current_core]]
set_property interface_mode master [ipx::get_bus_interfaces M_AXIS_DATA -of_objects [ipx::current_core]]
set_property display_name M_AXIS_DATA [ipx::get_bus_interfaces M_AXIS_DATA -of_objects [ipx::current_core]]
set_property description M_AXIS_DATA [ipx::get_bus_interfaces M_AXIS_DATA -of_objects [ipx::current_core]]
set_property abstraction_type_vlnv xilinx.com:interface:axis_rtl:1.0 [ipx::get_bus_interfaces M_AXIS_DATA -of_objects [ipx::current_core]]
set_property bus_type_vlnv xilinx.com:interface:axis:1.0 [ipx::get_bus_interfaces M_AXIS_DATA -of_objects [ipx::current_core]]
ipx::add_port_map TDEST [ipx::get_bus_interfaces M_AXIS_DATA -of_objects [ipx::current_core]]
set_property physical_name axis_tdest [ipx::get_port_maps TDEST -of_objects [ipx::get_bus_interfaces M_AXIS_DATA -of_objects [ipx::current_core]]]
ipx::add_port_map TLAST [ipx::get_bus_interfaces M_AXIS_DATA -of_objects [ipx::current_core]]
set_property physical_name axis_tlast [ipx::get_port_maps TLAST -of_objects [ipx::get_bus_interfaces M_AXIS_DATA -of_objects [ipx::current_core]]]
ipx::add_port_map TVALID [ipx::get_bus_interfaces M_AXIS_DATA -of_objects [ipx::current_core]]
set_property physical_name axis_tvalid [ipx::get_port_maps TVALID -of_objects [ipx::get_bus_interfaces M_AXIS_DATA -of_objects [ipx::current_core]]]
ipx::add_port_map TDATA [ipx::get_bus_interfaces M_AXIS_DATA -of_objects [ipx::current_core]]
set_property physical_name axis_tdata [ipx::get_port_maps TDATA -of_objects [ipx::get_bus_interfaces M_AXIS_DATA -of_objects [ipx::current_core]]]
ipx::add_port_map TKEEP [ipx::get_bus_interfaces M_AXIS_DATA -of_objects [ipx::current_core]]
set_property physical_name axis_tkeep [ipx::get_port_maps TKEEP -of_objects [ipx::get_bus_interfaces M_AXIS_DATA -of_objects [ipx::current_core]]]
ipx::add_port_map TREADY [ipx::get_bus_interfaces M_AXIS_DATA -of_objects [ipx::current_core]]
set_property physical_name axis_tready [ipx::get_port_maps TREADY -of_objects [ipx::get_bus_interfaces M_AXIS_DATA -of_objects [ipx::current_core]]]

#setup reset
ipx::infer_bus_interface arstn xilinx.com:signal:reset_rtl:1.0 [ipx::current_core]

#associate clocks
ipx::associate_bus_interfaces -busif S_AXIS_DATA -clock clk [ipx::current_core]
ipx::associate_bus_interfaces -busif S_AXIS_CTRL -clock clk [ipx::current_core]
ipx::associate_bus_interfaces -busif M_AXIS_DATA -clock clk [ipx::current_core]

#other misc configuration
set_property core_revision 1 [ipx::current_core]
ipx::create_xgui_files [ipx::current_core]
ipx::update_checksums [ipx::current_core]
ipx::save_core [ipx::current_core]
close_p
