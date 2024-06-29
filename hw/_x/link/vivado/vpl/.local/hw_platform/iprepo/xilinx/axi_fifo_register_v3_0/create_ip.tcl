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
set_property name axi_fifo_register [ipx::current_core]
set_property version 3.0 [ipx::current_core]
set_property display_name AXI_FIFO_Register_v3.0 [ipx::current_core]
set_property description "AXI4-Full Accessible Register interface that provides a AXI-Stream interface to HW" [ipx::current_core]
set_property vendor_display_name {Xilinx Inc.} [ipx::current_core]
set_property company_url http://www.xilinx.com [ipx::current_core]
set_property taxonomy /BaseIP [ipx::current_core]
set_property supported_families {} [ipx::current_core]
set_property supported_families {virtex7 Beta qvirtex7 Beta kintex7 Beta kintex7l Beta qkintex7 Beta qkintex7l Beta artix7 Beta artix7l Beta aartix7 Beta qartix7 Beta zynq Beta qzynq Beta azynq Beta spartan7 Beta virtexu Beta virtexuplus Beta kintexuplus Beta zynquplus Beta kintexu Beta} [ipx::current_core]

#remove existing interfaces
ipx::remove_bus_interface AXI [ipx::current_core]

#remove existing interface from associated clocks
set_property value "" [ipx::get_bus_parameters ASSOCIATED_BUSIF -of_objects [ipx::get_bus_interfaces AXI_ACLK -of_objects [ipx::current_core]]]

#remove existing memory maps
ipx::remove_memory_map AXI [ipx::current_core]

#configure axi-lite bus
ipx::add_bus_interface S_AXI [ipx::current_core]
set_property abstraction_type_vlnv xilinx.com:interface:aximm_rtl:1.0 [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property bus_type_vlnv xilinx.com:interface:aximm:1.0 [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property interface_mode master [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property display_name S_AXI [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property description S_AXI [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property interface_mode slave [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
ipx::add_port_map WLAST [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_WLAST [ipx::get_port_maps WLAST -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map BREADY [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_BREADY [ipx::get_port_maps BREADY -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map AWLEN [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_AWLEN [ipx::get_port_maps AWLEN -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map AWQOS [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_AWQOS [ipx::get_port_maps AWQOS -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map ARBURST [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_ARBURST [ipx::get_port_maps ARBURST -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map AWPROT [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_AWPROT [ipx::get_port_maps AWPROT -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map RRESP [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_RRESP [ipx::get_port_maps RRESP -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map ARPROT [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_ARPROT [ipx::get_port_maps ARPROT -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map RVALID [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_RVALID [ipx::get_port_maps RVALID -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map ARLOCK [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_ARLOCK [ipx::get_port_maps ARLOCK -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map RLAST [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_RLAST [ipx::get_port_maps RLAST -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map ARID [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_ARID [ipx::get_port_maps ARID -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map AWCACHE [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_AWCACHE [ipx::get_port_maps AWCACHE -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map WREADY [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_WREADY [ipx::get_port_maps WREADY -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map WSTRB [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_WSTRB [ipx::get_port_maps WSTRB -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map BRESP [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_BRESP [ipx::get_port_maps BRESP -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map BID [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_BID [ipx::get_port_maps BID -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map ARLEN [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_ARLEN [ipx::get_port_maps ARLEN -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map ARQOS [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_ARQOS [ipx::get_port_maps ARQOS -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map RDATA [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_RDATA [ipx::get_port_maps RDATA -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map BVALID [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_BVALID [ipx::get_port_maps BVALID -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map ARCACHE [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_ARCACHE [ipx::get_port_maps ARCACHE -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map RREADY [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_RREADY [ipx::get_port_maps RREADY -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map AWVALID [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_AWVALID [ipx::get_port_maps AWVALID -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map ARREGION [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_ARREGION [ipx::get_port_maps ARREGION -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map ARSIZE [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_ARSIZE [ipx::get_port_maps ARSIZE -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map WDATA [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_WDATA [ipx::get_port_maps WDATA -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map AWSIZE [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_AWSIZE [ipx::get_port_maps AWSIZE -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map RID [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_RID [ipx::get_port_maps RID -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map AWREGION [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_AWREGION [ipx::get_port_maps AWREGION -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map ARADDR [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_ARADDR [ipx::get_port_maps ARADDR -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map AWADDR [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_AWADDR [ipx::get_port_maps AWADDR -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map ARREADY [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_ARREADY [ipx::get_port_maps ARREADY -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map WVALID [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_WVALID [ipx::get_port_maps WVALID -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map ARVALID [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_ARVALID [ipx::get_port_maps ARVALID -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map AWLOCK [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_AWLOCK [ipx::get_port_maps AWLOCK -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map AWBURST [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_AWBURST [ipx::get_port_maps AWBURST -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map AWREADY [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name AXI_AWREADY [ipx::get_port_maps AWREADY -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
#enablement
set_property enablement_dependency {$AXI_FULL > 0} [ipx::get_ports AXI_WLAST -of_objects [ipx::current_core]]
set_property enablement_dependency {$AXI_FULL > 0} [ipx::get_ports AXI_AWADDR -of_objects [ipx::current_core]]
set_property enablement_dependency {$AXI_FULL > 0} [ipx::get_ports AXI_AWLEN -of_objects [ipx::current_core]]
set_property enablement_dependency {$AXI_FULL > 0} [ipx::get_ports AXI_AWSIZE -of_objects [ipx::current_core]]
set_property enablement_dependency {$AXI_FULL > 0} [ipx::get_ports AXI_AWBURST -of_objects [ipx::current_core]]
set_property enablement_dependency {$AXI_FULL > 0} [ipx::get_ports AXI_AWLOCK -of_objects [ipx::current_core]]
set_property enablement_dependency {$AXI_FULL > 0} [ipx::get_ports AXI_AWCACHE -of_objects [ipx::current_core]]
set_property enablement_dependency {$AXI_FULL > 0} [ipx::get_ports AXI_AWREGION -of_objects [ipx::current_core]]
set_property enablement_dependency {$AXI_FULL > 0} [ipx::get_ports AXI_AWQOS -of_objects [ipx::current_core]]
set_property enablement_dependency {$AXI_FULL > 0} [ipx::get_ports AXI_WLAST -of_objects [ipx::current_core]]
set_property enablement_dependency {$AXI_FULL > 0} [ipx::get_ports AXI_BID -of_objects [ipx::current_core]]
set_property enablement_dependency {$AXI_FULL > 0} [ipx::get_ports AXI_ARID -of_objects [ipx::current_core]]
set_property enablement_dependency {$AXI_FULL > 0} [ipx::get_ports AXI_ARLEN -of_objects [ipx::current_core]]
set_property enablement_dependency {$AXI_FULL > 0} [ipx::get_ports AXI_ARSIZE -of_objects [ipx::current_core]]
set_property enablement_dependency {$AXI_FULL > 0} [ipx::get_ports AXI_ARBURST -of_objects [ipx::current_core]]
set_property enablement_dependency {$AXI_FULL > 0} [ipx::get_ports AXI_ARLOCK -of_objects [ipx::current_core]]
set_property enablement_dependency {$AXI_FULL > 0} [ipx::get_ports AXI_ARCACHE -of_objects [ipx::current_core]]
set_property enablement_dependency {$AXI_FULL > 0} [ipx::get_ports AXI_ARPROT -of_objects [ipx::current_core]]
set_property enablement_dependency {$AXI_FULL > 0} [ipx::get_ports AXI_ARREGION -of_objects [ipx::current_core]]
set_property enablement_dependency {$AXI_FULL > 0} [ipx::get_ports AXI_ARQOS -of_objects [ipx::current_core]]
set_property enablement_dependency {$AXI_FULL > 0} [ipx::get_ports AXI_RID -of_objects [ipx::current_core]]
set_property enablement_dependency {$AXI_FULL > 0} [ipx::get_ports AXI_RLAST -of_objects [ipx::current_core]]
#set default values
set_property driver_value 0 [ipx::get_ports AXI_AWSIZE -of_objects [ipx::current_core]]
set_property driver_value 0 [ipx::get_ports AXI_ARSIZE -of_objects [ipx::current_core]]

#associate clocks with buses
ipx::associate_bus_interfaces -busif S_AXI -clock AXI_ACLK [ipx::current_core]
ipx::associate_bus_interfaces -busif M_AXIS -clock AXI_ACLK [ipx::current_core]
ipx::associate_bus_interfaces -busif S_AXIS -clock AXI_ACLK [ipx::current_core]

#enablement for S_AXIS bus
set_property enablement_dependency {$ENABLE_INPUT > 0} [ipx::get_bus_interfaces S_AXIS -of_objects [ipx::current_core]]

#enablement for M_AXIS bus
set_property enablement_dependency {$ENABLE_OUTPUT > 0} [ipx::get_bus_interfaces M_AXIS -of_objects [ipx::current_core]]

#configure count signals
set_property enablement_dependency {$ENABLE_INPUT > 0} [ipx::get_ports S_AXIS_count -of_objects [ipx::current_core]]
set_property enablement_dependency {$ENABLE_OUTPUT > 0} [ipx::get_ports M_AXIS_count -of_objects [ipx::current_core]]

set_property driver_value 0 [ipx::get_ports S_AXIS_count -of_objects [ipx::current_core]]
set_property driver_value 0 [ipx::get_ports M_AXIS_count -of_objects [ipx::current_core]]

#configure parameters
ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name "C_S_AXI_ID_WIDTH" -component [ipx::current_core]]
ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name "C_S_AXI_AWUSER_WIDTH" -component [ipx::current_core]]
ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name "C_S_AXI_ARUSER_WIDTH" -component [ipx::current_core]]
ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name "C_S_AXI_WUSER_WIDTH" -component [ipx::current_core]]
ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name "C_S_AXI_RUSER_WIDTH" -component [ipx::current_core]]
ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name "C_S_AXI_BUSER_WIDTH" -component [ipx::current_core]]
set_property display_name {Enable AXI Full Interface} [ipgui::get_guiparamspec -name "AXI_FULL" -component [ipx::current_core] ]
set_property tooltip {Enable AXI Full Interface (AXI-Lite if unchecked)} [ipgui::get_guiparamspec -name "AXI_FULL" -component [ipx::current_core] ]
set_property widget {checkBox} [ipgui::get_guiparamspec -name "AXI_FULL" -component [ipx::current_core] ]
set_property value false [ipx::get_user_parameters AXI_FULL -of_objects [ipx::current_core]]
set_property value false [ipx::get_hdl_parameters AXI_FULL -of_objects [ipx::current_core]]
set_property value_format bool [ipx::get_user_parameters AXI_FULL -of_objects [ipx::current_core]]
set_property value_format bool [ipx::get_hdl_parameters AXI_FULL -of_objects [ipx::current_core]]
set_property display_name {Enable Input AXI-Stream} [ipgui::get_guiparamspec -name "ENABLE_INPUT" -component [ipx::current_core] ]
set_property tooltip {Enable Input AXI-Stream} [ipgui::get_guiparamspec -name "ENABLE_INPUT" -component [ipx::current_core] ]
set_property widget {checkBox} [ipgui::get_guiparamspec -name "ENABLE_INPUT" -component [ipx::current_core] ]
set_property value false [ipx::get_user_parameters ENABLE_INPUT -of_objects [ipx::current_core]]
set_property value false [ipx::get_hdl_parameters ENABLE_INPUT -of_objects [ipx::current_core]]
set_property value_format bool [ipx::get_user_parameters ENABLE_INPUT -of_objects [ipx::current_core]]
set_property value_format bool [ipx::get_hdl_parameters ENABLE_INPUT -of_objects [ipx::current_core]]
set_property display_name {Enable Output AXI-Stream} [ipgui::get_guiparamspec -name "ENABLE_OUTPUT" -component [ipx::current_core] ]
set_property tooltip {Enable Output AXI-Stream} [ipgui::get_guiparamspec -name "ENABLE_OUTPUT" -component [ipx::current_core] ]
set_property widget {checkBox} [ipgui::get_guiparamspec -name "ENABLE_OUTPUT" -component [ipx::current_core] ]
set_property value false [ipx::get_user_parameters ENABLE_OUTPUT -of_objects [ipx::current_core]]
set_property value false [ipx::get_hdl_parameters ENABLE_OUTPUT -of_objects [ipx::current_core]]
set_property value_format bool [ipx::get_user_parameters ENABLE_OUTPUT -of_objects [ipx::current_core]]
set_property value_format bool [ipx::get_hdl_parameters ENABLE_OUTPUT -of_objects [ipx::current_core]]
set_property connection_required true [ipx::get_bus_interfaces S_AXIS -of_objects [ipx::current_core]]
ipgui::move_param -component [ipx::current_core] -order 2 [ipgui::get_guiparamspec -name "AXI_FULL" -component [ipx::current_core]] -parent [ipgui::get_pagespec -name "Page 0" -component [ipx::current_core]]
ipx::add_bus_parameter MAX_BURST_LENGTH_ [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property name MAX_BURST_LENGTH [ipx::get_bus_parameters MAX_BURST_LENGTH_ -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
set_property value 32 [ipx::get_bus_parameters MAX_BURST_LENGTH -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]

#create axi memory map
ipx::add_memory_map S_AXI [ipx::current_core]
set_property slave_memory_map_ref S_AXI [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
ipx::add_address_block Reg [ipx::get_memory_maps S_AXI -of_objects [ipx::current_core]]

#other misc configuration
set_property core_revision 2 [ipx::current_core]
ipx::create_xgui_files [ipx::current_core]
ipx::update_checksums [ipx::current_core]
ipx::save_core [ipx::current_core]
close_p
