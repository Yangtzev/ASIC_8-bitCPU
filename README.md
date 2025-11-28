# ASIC_8-bitCPU
BUPT-ASIC8位CPU设计，包含各模块设计部分，综合部分，和版图设计部分。

要用到的命令如下：

门级仿真（后仿，在mapped目录下执行）：
vcs -full64 -v smic13g.v -v SP013D3_V1p2.v control_test.v control_pad.v -debug_access -timescale=1ns/1ns -o simv +define+FSDB +neg_tchk -negdelay
./simv -R +fsdb

版图设计后仿（在output目录下执行）：
vcs -full64 -v smic13g.v -v SP013D3_V1p2.v control_test.v control_pad_final.v  -debug_access -timescale=1ns/1ns -o simv +define+FSDB -R
