
proc init { cellpath otherInfo } {
    set cell_handle [get_bd_cells $cellpath]
    set num_aximm [get_property CONFIG.C_NUM_AXIMMs $cell_handle]

    for {set idx 0} {$idx < $num_aximm} {incr idx} {
	bd::mark_propagate_only $cell_handle [list "CONFIG.M_AXIMM_${idx}_DATA_WIDTH"]
    }
}

proc propagate { cellpath otherInfo } {
    set cell_handle [get_bd_cells $cellpath]

    #propagate clock freq/domain from input to output
    set acc_clk [get_bd_pins $cell_handle/acc_aclk]
    set ap_clk [get_bd_pins $cell_handle/ap_clk]
    set freq_hz [get_property config.FREQ_HZ $acc_clk]
    set domain [get_property config.CLK_DOMAIN $acc_clk]
    set_property config.FREQ_HZ $freq_hz $ap_clk
    set_property config.CLK_DOMAIN $domain $ap_clk

    set num_aximm [get_property config.C_NUM_AXIMMs $cell_handle]
    for {set idx 0} {$idx < $num_aximm} {incr idx} {
	set connected_to [find_bd_objs -thru_hier -relation connected_to [get_bd_intf_pins $cell_handle/AP_AXIMM_${idx}]]
	for {set slave 0} {$slave < [llength $connected_to]} {incr slave} {
	    set interface [lindex $connected_to $slave]
	    set mode [get_property MODE $interface]
	    if {$mode == "Master"} {
		set width [get_property config.DATA_WIDTH $interface]
		set_property "CONFIG.M_AXIMM_${idx}_DATA_WIDTH" $width $cell_handle
	    }
	}
    }
}
