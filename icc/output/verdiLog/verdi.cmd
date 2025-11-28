wvCreateWindow
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 {/home/user123/Desktop/ASIC/icc/output/control.fsdb}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/control_test"
verdiSetActWin -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/control_test/opcode\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/control_test/opcode\[2:0\]} \
{/control_test/clk} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/control_test/opcode\[2:0\]} \
{/control_test/clk} \
{/control_test/rst_} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/control_test/opcode\[2:0\]} \
{/control_test/clk} \
{/control_test/rst_} \
{/control_test/zero} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/control_test/opcode\[2:0\]} \
{/control_test/clk} \
{/control_test/rst_} \
{/control_test/zero} \
{/control_test/i\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/control_test/opcode\[2:0\]} \
{/control_test/clk} \
{/control_test/rst_} \
{/control_test/zero} \
{/control_test/i\[31:0\]} \
{/control_test/j\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/control_test/opcode\[2:0\]} \
{/control_test/clk} \
{/control_test/rst_} \
{/control_test/zero} \
{/control_test/i\[31:0\]} \
{/control_test/j\[31:0\]} \
{/control_test/mnemonic\[24:1\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/control_test/opcode\[2:0\]} \
{/control_test/clk} \
{/control_test/rst_} \
{/control_test/zero} \
{/control_test/i\[31:0\]} \
{/control_test/j\[31:0\]} \
{/control_test/mnemonic\[24:1\]} \
{/control_test/rd} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/control_test/opcode\[2:0\]} \
{/control_test/clk} \
{/control_test/rst_} \
{/control_test/zero} \
{/control_test/i\[31:0\]} \
{/control_test/j\[31:0\]} \
{/control_test/mnemonic\[24:1\]} \
{/control_test/rd} \
{/control_test/wr} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/control_test/opcode\[2:0\]} \
{/control_test/clk} \
{/control_test/rst_} \
{/control_test/zero} \
{/control_test/i\[31:0\]} \
{/control_test/j\[31:0\]} \
{/control_test/mnemonic\[24:1\]} \
{/control_test/rd} \
{/control_test/wr} \
{/control_test/ld_ir} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/control_test/opcode\[2:0\]} \
{/control_test/clk} \
{/control_test/rst_} \
{/control_test/zero} \
{/control_test/i\[31:0\]} \
{/control_test/j\[31:0\]} \
{/control_test/mnemonic\[24:1\]} \
{/control_test/rd} \
{/control_test/wr} \
{/control_test/ld_ir} \
{/control_test/ld_ac} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/control_test/opcode\[2:0\]} \
{/control_test/clk} \
{/control_test/rst_} \
{/control_test/zero} \
{/control_test/i\[31:0\]} \
{/control_test/j\[31:0\]} \
{/control_test/mnemonic\[24:1\]} \
{/control_test/rd} \
{/control_test/wr} \
{/control_test/ld_ir} \
{/control_test/ld_ac} \
{/control_test/ld_pc} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/control_test/opcode\[2:0\]} \
{/control_test/clk} \
{/control_test/rst_} \
{/control_test/zero} \
{/control_test/i\[31:0\]} \
{/control_test/j\[31:0\]} \
{/control_test/mnemonic\[24:1\]} \
{/control_test/rd} \
{/control_test/wr} \
{/control_test/ld_ir} \
{/control_test/ld_ac} \
{/control_test/ld_pc} \
{/control_test/inc_pc} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/control_test/opcode\[2:0\]} \
{/control_test/clk} \
{/control_test/rst_} \
{/control_test/zero} \
{/control_test/i\[31:0\]} \
{/control_test/j\[31:0\]} \
{/control_test/mnemonic\[24:1\]} \
{/control_test/rd} \
{/control_test/wr} \
{/control_test/ld_ir} \
{/control_test/ld_ac} \
{/control_test/ld_pc} \
{/control_test/inc_pc} \
{/control_test/halt} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/control_test/opcode\[2:0\]} \
{/control_test/clk} \
{/control_test/rst_} \
{/control_test/zero} \
{/control_test/i\[31:0\]} \
{/control_test/j\[31:0\]} \
{/control_test/mnemonic\[24:1\]} \
{/control_test/rd} \
{/control_test/wr} \
{/control_test/ld_ir} \
{/control_test/ld_ac} \
{/control_test/ld_pc} \
{/control_test/inc_pc} \
{/control_test/halt} \
{/control_test/data_e} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/control_test/opcode\[2:0\]} \
{/control_test/clk} \
{/control_test/rst_} \
{/control_test/zero} \
{/control_test/i\[31:0\]} \
{/control_test/j\[31:0\]} \
{/control_test/mnemonic\[24:1\]} \
{/control_test/rd} \
{/control_test/wr} \
{/control_test/ld_ir} \
{/control_test/ld_ac} \
{/control_test/ld_pc} \
{/control_test/inc_pc} \
{/control_test/halt} \
{/control_test/data_e} \
{/control_test/sel} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 16 )} 
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/control_test/opcode\[2:0\]} \
{/control_test/clk} \
{/control_test/rst_} \
{/control_test/zero} \
{/control_test/i\[31:0\]} \
{/control_test/j\[31:0\]} \
{/control_test/mnemonic\[24:1\]} \
{/control_test/rd} \
{/control_test/wr} \
{/control_test/ld_ir} \
{/control_test/ld_ac} \
{/control_test/ld_pc} \
{/control_test/inc_pc} \
{/control_test/halt} \
{/control_test/data_e} \
{/control_test/sel} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 16 )} 
wvSetPosition -win $_nWave2 {("G1" 16)}
wvGetSignalClose -win $_nWave2
verdiDockWidgetMaximize -dock windowDock_nWave_2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 123457.165992 -snap {("G1" 14)}
debExit
