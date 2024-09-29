proc gen_xml {num num_ports} {
    if {[file exists "adapter_v3_0.xml"]} {
	file delete -force "adapter_v3_0.xml"
    }
    set fp [open "adapter_v3_0.xml" "w"]
    
    puts $fp "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"
    puts $fp "<xd:repository xmlns:xd=\"http://www.xilinx.com/xd\" xd:vendor=\"xilinx.com\" xd:library=\"ip\" xd:name=\"adapter_v3_0\" xd:version=\"1.0\">"
    puts $fp "<xd:component xd:vendor=\"xilinx.com\" xd:library=\"ip\" xd:name=\"adapter_v3_0\" xd:version=\"1.0\">"
    
    #control
    puts $fp "<xd:busInterface xd:name=\"S_AXI\" xd:busTypeRef=\"aximm\" xd:mode=\"slave\" xd:clockRef=\"s_axi_aclk\" xd:resetRef=\"s_axi_aresetn\"/>"
    puts $fp "<xd:busInterface xd:name=\"ap_ctrl\" xd:busTypeRef=\"acc_handshake\" xd:mode=\"master\"/>"
    
    #clocks and resets
    puts $fp "<xd:busInterface xd:name=\"acc_aclk\" xd:busTypeRef=\"clock\" xd:mode=\"slave\" xd:direction=\"in\" xd:library=\"signal\" xd:port=\"acc_aclk\"/>"
    puts $fp "<xd:busInterface xd:name=\"acc_aresetn\" xd:busTypeRef=\"reset\" xd:mode=\"slave\" xd:direction=\"in\" xd:clockPort=\"acc_aclk\" xd:library=\"signal\" xd:port=\"acc_aresetn\"/>"
    
    puts $fp "<xd:busInterface xd:name=\"ap_clk\" xd:busTypeRef=\"clock\" xd:mode=\"master\" xd:direction=\"out\" xd:library=\"signal\" xd:port=\"ap_clk\"/>"
    puts $fp "<xd:busInterface xd:name=\"ap_resetn\" xd:busTypeRef=\"reset\" xd:mode=\"master\" xd:direction=\"out\" xd:clockPort=\"acc_aclk\" xd:library=\"signal\" xd:port=\"ap_resetn\"/>"
    
    puts $fp "<xd:busInterface xd:name=\"s_axi_aclk\" xd:busTypeRef=\"clock\" xd:mode=\"slave\" xd:direction=\"in\" xd:library=\"signal\" xd:port=\"s_axi_aclk\"/>"
    puts $fp "<xd:busInterface xd:name=\"s_axi_aresetn\" xd:busTypeRef=\"reset\" xd:mode=\"slave\" xd:direction=\"in\" xd:library=\"signal\" xd:port=\"s_axi_aresetn\"/>"
    
    #input scalars
    for {set idx 0} {$idx < $num} {incr idx} {
        puts $fp "<xd:busInterface xd:name=\"ap_iscalar_${idx}_dout\" xd:direction=\"out\" xd:size=\"1\" xd:busTypeRef=\"register\" xd:mode=\"master\"/>"
        puts $fp "<xd:busInterface xd:name=\"S_AXIS_SCALAR_${idx}\" xd:busTypeRef=\"axis\" xd:mode=\"slave\" xd:direction=\"in\" xd:hasTlast=\"true\" xd:clockRef=\"s_axis_scalar_${idx}_aclk\" xd:resetRef=\"s_axis_scalar_${idx}_aresetn\"/>"
        puts $fp "<xd:busInterface xd:name=\"s_axis_scalar_${idx}_aclk\" xd:busTypeRef=\"clock\" xd:mode=\"slave\" xd:direction=\"in\" xd:library=\"signal\" xd:port=\"s_axis_scalar_${idx}_aclk\"/>"
        puts $fp "<xd:busInterface xd:name=\"s_axis_scalar_${idx}_aresetn\" xd:busTypeRef=\"reset\" xd:mode=\"slave\" xd:direction=\"in\" xd:clockPort=\"s_axis_scalar_${idx}_aclk\" xd:library=\"signal\" xd:port=\"s_axis_scalar_${idx}_aresetn\"/>"
    }

    #output scalars
    for {set idx 0} {$idx < $num} {incr idx} {
        puts $fp "<xd:busInterface xd:busTypeRef=\"register\" xd:name=\"ap_oscalar_${idx}_din\" xd:mode=\"slave\" xd:direction=\"in\" xd:size=\"1\"/>"
        puts $fp "<xd:busInterface xd:busTypeRef=\"wire\" xd:name=\"ap_oscalar_${idx}_vld\" xd:mode=\"slave\" xd:direction=\"in\"/>"
        puts $fp "<xd:busInterface xd:name=\"M_AXIS_SCALAR_${idx}\" xd:busTypeRef=\"axis\" xd:mode=\"master\" xd:direction=\"out\" xd:hasTlast=\"true\" xd:clockRef=\"m_axis_scalar_${idx}_aclk\" xd:resetRef=\"m_axis_scalar_${idx}_aresetn\"/>"
        puts $fp "<xd:busInterface xd:name=\"m_axis_scalar_${idx}_aclk\" xd:busTypeRef=\"clock\" xd:mode=\"slave\" xd:direction=\"in\" xd:library=\"signal\" xd:port=\"m_axis_scalar_${idx}_aclk\"/>"
        puts $fp "<xd:busInterface xd:name=\"m_axis_scalar_${idx}_aresetn\" xd:busTypeRef=\"reset\" xd:mode=\"slave\" xd:direction=\"in\" xd:clockPort=\"m_axis_scalar_${idx}_aclk\" xd:library=\"signal\" xd:port=\"m_axis_scalar_${idx}_aresetn\"/>"
    }

    #input fifo
    for {set idx 0} {$idx < $num} {incr idx} {
	puts $fp "<xd:busInterface xd:name=\"S_AXIS_FIFO_${idx}\" xd:busTypeRef=\"axis\" xd:mode=\"slave\" xd:direction=\"in\" xd:hasTlast=\"true\" xd:clockRef=\"s_axis_fifo_${idx}_aclk\" xd:resetRef=\"s_axis_fifo_${idx}_aresetn\"/>"
        puts $fp "<xd:busInterface xd:name=\"AP_FIFO_IARG_${idx}\" xd:busTypeRef=\"acc_fifo_read\" xd:mode=\"slave\"/>"
        puts $fp "<xd:busInterface xd:name=\"s_axis_fifo_${idx}_aclk\" xd:busTypeRef=\"clock\" xd:mode=\"slave\" xd:direction=\"in\" xd:library=\"signal\" xd:port=\"s_axis_fifo_${idx}_aclk\"/>"
        puts $fp "<xd:busInterface xd:name=\"s_axis_fifo_${idx}_aresetn\" xd:busTypeRef=\"reset\" xd:mode=\"slave\" xd:direction=\"in\" xd:clockPort=\"s_axis_fifo_${idx}_aclk\" xd:library=\"signal\" xd:port=\"s_axis_fifo_${idx}_aresetn\"/>"
    }

    #output fifo
    for {set idx 0} {$idx < $num} {incr idx} {
        puts $fp "<xd:busInterface xd:name=\"M_AXIS_FIFO_${idx}\" xd:busTypeRef=\"axis\" xd:mode=\"master\" xd:direction=\"out\" xd:hasTlast=\"true\" xd:clockRef=\"m_axis_fifo_${idx}_aclk\" xd:resetRef=\"m_axis_fifo_${idx}_aresetn\"/>"
        puts $fp "<xd:busInterface xd:name=\"AP_FIFO_OARG_${idx}\" xd:busTypeRef=\"acc_fifo_write\" xd:mode=\"slave\"/>"
        puts $fp "<xd:busInterface xd:name=\"m_axis_fifo_${idx}_aclk\" xd:busTypeRef=\"clock\" xd:mode=\"slave\" xd:direction=\"in\" xd:library=\"signal\" xd:port=\"m_axis_fifo_${idx}_aclk\"/>"
        puts $fp "<xd:busInterface xd:name=\"m_axis_fifo_${idx}_aresetn\" xd:busTypeRef=\"reset\" xd:mode=\"slave\" xd:direction=\"in\" xd:clockPort=\"m_axis_fifo_${idx}_aclk\" xd:library=\"signal\" xd:port=\"m_axis_fifo_${idx}_aresetn\"/>"
    }

    #input axis
    for {set idx 0} {$idx < $num} {incr idx} {
        puts $fp "<xd:busInterface xd:name=\"S_AXIS_IARG_${idx}\" xd:busTypeRef=\"axis\" xd:mode=\"slave\" xd:direction=\"in\" xd:hasTlast=\"true\" xd:clockRef=\"s_axis_iarg_${idx}_aclk\" xd:resetRef=\"s_axis_iarg_${idx}_aresetn\"/>"
        puts $fp "<xd:busInterface xd:name=\"AP_AXIS_IARG_${idx}\" xd:busTypeRef=\"axis\" xd:mode=\"master\" xd:direction=\"out\" xd:hasTlast=\"true\" xd:clockRef=\"acc_aclk\" xd:resetRef=\"acc_aresetn\"/>"
        puts $fp "<xd:busInterface xd:name=\"s_axis_iarg_${idx}_aclk\" xd:busTypeRef=\"clock\" xd:mode=\"slave\" xd:direction=\"in\" xd:library=\"signal\" xd:port=\"s_axis_iarg_${idx}_aclk\"/>"
        puts $fp "<xd:busInterface xd:name=\"s_axis_iarg_${idx}_aresetn\" xd:busTypeRef=\"reset\" xd:mode=\"slave\" xd:direction=\"in\" xd:clockPort=\"s_axis_iarg_${idx}_aclk\" xd:library=\"signal\" xd:port=\"s_axis_iarg_${idx}_aresetn\"/>"
    }

    #output axis
    for {set idx 0} {$idx < $num} {incr idx} {
        puts $fp "<xd:busInterface xd:name=\"M_AXIS_OARG_${idx}\" xd:busTypeRef=\"axis\" xd:mode=\"master\" xd:direction=\"out\" xd:hasTlast=\"true\" xd:clockRef=\"m_axis_oarg_${idx}_aclk\" xd:resetRef=\"m_axis_oarg_${idx}_aresetn\"/>"
        puts $fp "<xd:busInterface xd:name=\"AP_AXIS_OARG_${idx}\" xd:busTypeRef=\"axis\" xd:mode=\"slave\" xd:direction=\"in\" xd:hasTlast=\"true\" xd:clockRef=\"acc_aclk\" xd:resetRef=\"acc_aresetn\"/>"
        puts $fp "<xd:busInterface xd:name=\"m_axis_oarg_${idx}_aclk\" xd:busTypeRef=\"clock\" xd:mode=\"slave\" xd:direction=\"in\" xd:library=\"signal\" xd:port=\"m_axis_oarg_${idx}_aclk\"/>"
        puts $fp "<xd:busInterface xd:name=\"m_axis_oarg_${idx}_aresetn\" xd:busTypeRef=\"reset\" xd:mode=\"slave\" xd:direction=\"in\" xd:clockPort=\"m_axis_oarg_${idx}_aclk\" xd:library=\"signal\" xd:port=\"m_axis_oarg_${idx}_aresetn\"/>"
    }

    #input bram
    for {set idx 0} {$idx < $num} {incr idx} {
        puts $fp "<xd:busInterface xd:name=\"S_AXIS_BRAM_${idx}\" xd:busTypeRef=\"axis\" xd:mode=\"slave\" xd:direction=\"in\" xd:hasTlast=\"true\" xd:clockRef=\"s_axis_bram_${idx}_aclk\" xd:resetRef=\"s_axis_bram_${idx}_aresetn\"/>"
	for {set port 0} {$port < $num_ports} {incr port} {
	    puts $fp "<xd:busInterface xd:name=\"AP_BRAM_IARG_${idx}_$port\" xd:busTypeRef=\"bram\" xd:mode=\"slave\" xd:direction=\"in\"/>"
	}
        puts $fp "<xd:busInterface xd:name=\"s_axis_bram_${idx}_aclk\" xd:busTypeRef=\"clock\" xd:mode=\"slave\" xd:direction=\"in\" xd:library=\"signal\" xd:port=\"s_axis_bram_${idx}_aclk\"/>"
        puts $fp "<xd:busInterface xd:name=\"s_axis_bram_${idx}_aresetn\" xd:busTypeRef=\"reset\" xd:mode=\"slave\" xd:direction=\"in\" xd:clockPort=\"s_axis_bram_${idx}_aclk\" xd:library=\"signal\" xd:port=\"s_axis_bram_${idx}_aresetn\"/>"

        puts $fp "<xd:busInterface xd:name=\"M_AXIS_BRAMIO_${idx}\" xd:busTypeRef=\"axis\" xd:mode=\"master\" xd:direction=\"out\" xd:hasTlast=\"true\" xd:clockRef=\"m_axis_bramio_${idx}_aclk\" xd:resetRef=\"m_axis_bramio_${idx}_aresetn\"/>"
        puts $fp "<xd:busInterface xd:name=\"m_axis_bramio_${idx}_aclk\" xd:busTypeRef=\"clock\" xd:mode=\"slave\" xd:direction=\"in\" xd:library=\"signal\" xd:port=\"m_axis_bramio_${idx}_aclk\"/>"
        puts $fp "<xd:busInterface xd:name=\"m_axis_bramio_${idx}_aresetn\" xd:busTypeRef=\"reset\" xd:mode=\"slave\" xd:direction=\"in\" xd:clockPort=\"m_axis_bramio_${idx}_aclk\" xd:library=\"signal\" xd:port=\"m_axis_bramio_${idx}_aresetn\"/>"
    }

    #output bram
    for {set idx 0} {$idx < $num} {incr idx} {
        puts $fp "<xd:busInterface xd:name=\"M_AXIS_BRAM_${idx}\" xd:busTypeRef=\"axis\" xd:mode=\"master\" xd:direction=\"out\" xd:hasTlast=\"true\" xd:clockRef=\"m_axis_bram_${idx}_aclk\" xd:resetRef=\"m_axis_bram_${idx}_aresetn\"/>"
	for {set port 0} {$port < $num_ports} {incr port} {
	    puts $fp "<xd:busInterface xd:name=\"AP_BRAM_OARG_${idx}_$port\" xd:busTypeRef=\"bram\" xd:mode=\"slave\" xd:direction=\"out\"/>"
	}
        puts $fp "<xd:busInterface xd:name=\"m_axis_bram_${idx}_aclk\" xd:busTypeRef=\"clock\" xd:mode=\"slave\" xd:direction=\"in\" xd:library=\"signal\" xd:port=\"m_axis_bram_${idx}_aclk\"/>"
        puts $fp "<xd:busInterface xd:name=\"m_axis_bram_${idx}_aresetn\" xd:busTypeRef=\"reset\" xd:mode=\"slave\" xd:direction=\"in\" xd:clockPort=\"m_axis_bram_${idx}_aclk\" xd:library=\"signal\" xd:port=\"m_axis_bram_${idx}_aresetn\"/>"
    }

    #aximm
    for {set idx 0} {$idx < $num} {incr idx} {
	puts $fp "<xd:busInterface xd:name=\"AP_AXIMM_${idx}\" xd:busTypeRef=\"aximm\" xd:mode=\"slave\" xd:clockRef=\"acc_aclk\" xd:resetRef=\"acc_aresetn\"/>"
	puts $fp "<xd:busInterface xd:name=\"M_AXIMM_${idx}\" xd:busTypeRef=\"aximm\" xd:mode=\"master\" xd:clockRef=\"acc_aclk\" xd:resetRef=\"acc_aresetn\"/>"
    }

    puts $fp "</xd:component>"
    puts $fp "</xd:repository>"

    close $fp
}