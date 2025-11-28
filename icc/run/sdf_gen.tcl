source ../rm_setup/icrm_setup.tcl 
source ../rm_setup/icc_setup.tcl 
#set link_library " /home/eda/lib/smic/SP013D3_V1p4/syn/SP013D3_V1p2_typ.db /home/eda/lib/smic/aci/sc-x/synopsys/typical_1v2c25.db"
set TARGET_LIBRARY_FILES "/home/eda/lib/smic/aci/sc-x/synopsys/typical_1v2c25.db \
/home/eda/lib/smic/SP013D3_V1p4/syn/SP013D3_V1p2_typ.db";
set_app_var target_library $TARGET_LIBRARY_FILES
set_app_var link_library "* $target_library"
read_verilog ../output/control_pad_final.v
current_design control_pad
read_db /home/eda/lib/smic/aci/sc-x/synopsys/typical_1v2c25.db
read_db /home/eda/lib/smic/SP013D3_V1p4/syn/SP013D3_V1p2_typ.db
read_parasitics -pin_cap_included ../output/control_pad.spef
write_sdf ../output/control_pad.sdf
