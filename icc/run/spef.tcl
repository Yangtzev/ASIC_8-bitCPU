#spef.tcl 
source ../rm_setup/icrm_setup.tcl 
source ../rm_setup/icc_setup.tcl 
open_mw_lib control_pad.mw 
copy_mw_cel -from route -to spef 
open_mw_cel spef

change_names -hierarchy -rules verilog
write_verilog -no_physical_only_cells \
		-no_unconnected_cells \
		-no_tap_cells \
		../output/control_pad_final.v

extract_rc -coupling_cap
write_parasitics -output ../output/control_pad.spef -format SPEF -no_name_mapping 
			
