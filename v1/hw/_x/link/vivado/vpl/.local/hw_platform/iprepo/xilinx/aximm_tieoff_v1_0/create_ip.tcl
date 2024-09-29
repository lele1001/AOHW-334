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
set_property name aximm_tieoff_v1_0 [ipx::current_core]
set_property display_name AXI_Master_Tieoff [ipx::current_core]
set_property description {AXI Master Tieoff} [ipx::current_core]
set_property vendor_display_name {Xilinx Inc.} [ipx::current_core]
set_property company_url http://www.xilinx.com [ipx::current_core]
set_property taxonomy /BaseIP [ipx::current_core]
set_property supported_families {} [ipx::current_core]
set_property supported_families {virtex7 Beta qvirtex7 Beta kintex7 Beta kintex7l Beta qkintex7 Beta qkintex7l Beta artix7 Beta artix7l Beta aartix7 Beta qartix7 Beta zynq Beta qzynq Beta azynq Beta spartan7 Beta virtexu Beta virtexuplus Beta kintexuplus Beta zynquplus Beta kintexu Beta} [ipx::current_core]

#other misc configuration
set_property core_revision 1 [ipx::current_core]
ipx::create_xgui_files [ipx::current_core]
ipx::update_checksums [ipx::current_core]
ipx::save_core [ipx::current_core]
#close_p
