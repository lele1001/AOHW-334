proc init {cell_name init_info} {
    # cell initialization here
}

proc post_configure_ip {cell_name prop_info } {
    # Any updates to interface properties based on user configuration
}

proc propagate {cell_name prop_info } {
}

proc post_propagate {cell_name args} {
  set ip [get_bd_cells $cell_name]; # IP
  set reg_bus [get_bd_intf_pins $ip/reg_bus]; # slave interface
  set memory [get_bd_intf_pins $ip/memory];
  set stream [get_bd_intf_pins $ip/stream];
  
  # Set base address
  #set as [::bd::addr::get_addresses_of $reg_bus]; # address space
  #set addr [lindex [lindex $as 0] 0]; # address
  #set_property CONFIG.RBUS_ADDR [expr $addr] $ip; # assign slave address
  
  # Fill memory bus parameters  
  set_property CONFIG.MEMORY_CLK_DOMAIN [get_property CONFIG.CLK_DOMAIN $memory] $ip;
  set_property CONFIG.STREAM_CLK_DOMAIN [get_property CONFIG.CLK_DOMAIN $stream] $ip;
  
  # Set data width
  
}