#
# Edit package.
# In order to create component.xml first time the directory must be packaged as a library. (ipx::infer_core)
#

create_project -in_memory
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY XPM_FIFO} [current_project]
set_property ip_repo_paths . [current_project]
update_ip_catalog

source ./add_sources.tcl

add_files $DIR/component.xml
set_property file_type "IP-XACT" [get_files $DIR/component.xml]


# Use to create library component.xml.
#ipx::infer_core -as_library true .

# Use to unset the top level to include all files in the package.
#set_property source_mgmt_mode None [current_project]
#set_property top "" [current_fileset]

# Use to merge files.
#ipx::merge_project_changes files [ipx::current_core]

# Add sub-cores
#ipx::add_subcore xilinx.com:ip:axis_infrastructure:1.1 [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::find_open_core xilinx.com:ip:sds_lib:1.0]]
#ipx::add_subcore xilinx.com:ip:axis_register_slice:1.1 [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::find_open_core xilinx.com:ip:sds_lib:1.0]]
#ipx::add_subcore xilinx.com:ip:axis_dwidth_converter:1.1 [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::find_open_core xilinx.com:ip:sds_lib:1.0]]

#ipx::add_subcore xilinx.com:ip:axis_infrastructure:1.1 [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::find_open_core xilinx.com:ip:sds_lib:1.0]]
#ipx::add_subcore xilinx.com:ip:axis_register_slice:1.1 [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::find_open_core xilinx.com:ip:sds_lib:1.0]]
#ipx::add_subcore xilinx.com:ip:axis_dwidth_converter:1.1 [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::find_open_core xilinx.com:ip:sds_lib:1.0]]

