
# Create Vivado project
create_project -in_memory -part xcu200-fsgd2104-2-e
set_property default_lib work [current_project]
set_property target_language VHDL [current_project]

# Make local copy of referenced files
catch {file delete -force ext xgui component.xml}
file mkdir ext/syscomp
file copy -force $env(VITIS_REPO)/syscomp/Utils.vhd ext/syscomp/
file copy -force $env(VITIS_REPO)/syscomp/Sync_Semaphore.vhd ext/syscomp/
file copy -force $env(VITIS_REPO)/syscomp/Sync_FIFO.vhd ext/syscomp/
file copy -force $env(VITIS_REPO)/syscomp/HSCDC.vhd ext/syscomp/
file copy -force $env(VITIS_REPO)/syscomp/Async_FIFO.vhd ext/syscomp/
file copy -force $env(VITIS_REPO)/syscomp/Auto_FIFO.vhd ext/syscomp/
file copy -force $env(VITIS_REPO)/syscomp/Upsize.vhd ext/syscomp/
file copy -force $env(VITIS_REPO)/syscomp/Downsize.vhd ext/syscomp/
file copy -force $env(VITIS_REPO)/syscomp/AXIS_Queue.vhd ext/syscomp/
file copy -force $env(VITIS_REPO)/syscomp/AXIS_Fork.vhd ext/syscomp/
file copy -force $env(VITIS_REPO)/syscomp/AXIL_Fork.vhd ext/syscomp/
file copy -force $env(VITIS_REPO)/syscomp/Delta_Semaphore.vhd ext/syscomp/
file copy -force $env(VITIS_REPO)/syscomp/Host_Gateway.vhd ext/syscomp/
file copy -force $env(VITIS_REPO)/syscomp/Memory_Gateway.vhd ext/syscomp/
file copy -force $env(VITIS_REPO)/syscomp/Multistream_Data_Mover.vhd ext/syscomp/

# Add sources
read_vhdl -vhdl2008 -library work [glob ext/syscomp/*.vhd]
read_vhdl -vhdl2008 -library work [glob src/*.vhd]
set_property file_type VHDL [get_files Data_Mover_XIP.vhd]
set_property top Data_Mover_XIP [current_fileset]
update_compile_order

# Package the project as IP-XACT
set Core [ipx::package_project -root_dir ./ -vendor xilinx.com -library hls -taxonomy /VIVADO_HLS_IP]
set_property display_name "System Compiler Data Mover" $Core
set_property version 1.0 $Core

ipx::associate_bus_interfaces -busif Host -clock Host_Clock_AClk $Core
ipx::associate_bus_interfaces -busif Memory -clock Memory_Clock_AClk $Core
ipx::associate_bus_interfaces -busif IRQ -clock Host_Clock_AClk $Core
ipx::associate_bus_interfaces -busif OStream0 -clock Memory_Clock_AClk $Core
ipx::associate_bus_interfaces -busif OStream1 -clock Memory_Clock_AClk $Core
ipx::associate_bus_interfaces -busif IStream0 -clock Memory_Clock_AClk $Core
ipx::associate_bus_interfaces -busif IStream1 -clock Memory_Clock_AClk $Core

#set Reg0 [ipx::get_address_block reg0 [ipx::get_memory_maps Host -of_objects $Core]]
#set_property BASE_ADDRESS_RESOLVE_TYPE dependent $Reg0
#set_property BASE_ADDRESS_DEPENDENCY Arg_Addr $Reg0
#set_property Range 4096 $Arg_Addr

ipx::create_xgui_files $Core
ipx::update_checksums $Core
ipx::check_integrity $Core
ipx::save_core $Core


