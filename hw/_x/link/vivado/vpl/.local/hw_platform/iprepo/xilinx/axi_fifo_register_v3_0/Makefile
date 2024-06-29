all:
	vivado -mode batch -s create_ip.tcl
	rm -rf vivado*
	rm -rf project*

gui:
	vivado -s create_ip.tcl &

clean:
	rm -rf vivado*
	rm -rf project*
	rm -rf edit.*
	rm -rf xilinx*

ultraclean: clean
	rm -rf adapter*
	rm -rf component.xml
	rm -rf xgui gui
