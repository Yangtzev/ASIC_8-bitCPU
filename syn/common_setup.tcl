#common setup.tcl
# dc_setup.tcl中用于逻辑库建立的用户定义变量

set ADDITIONAL_SEARCH_PATH "/home/eda/lib/smic ./unmapped ./rtl ./scripts"; #Directories containing logical libraries


#逻辑设计和脚本文件

set TARGET_LIBRARY_FILES "/home/eda/lib/smic/aci/sc-x/synopsys/typical_1v2c25.db /home/eda/lib/smic/SP013D3_V1p4/syn/SP013D3_V1p2_typ.db";

set SYMBOL_LIBRARY_FILES /home/eda/lib/smic/aci/sc-x/synopsys/smic13g.sdb; #Symbol library file
