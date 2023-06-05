simSetSimulator "-vcssv" -exec \
           "/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/top_level_no_macros/sim/postapr/simv" \
           -args \
           "+v2k +lint=all +neg_tchk +define+POST_APR=1 -a top_level_no_macros_tb.log"
debImport "-dbdir" \
          "/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/top_level_no_macros/sim/postapr/simv.daidir"
debLoadSimResult \
           /home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/top_level_no_macros/sim/postapr/top_level_no_macros_tb.fsdb
wvCreateWindow
verdiWindowResize -win $_Verdi_1 "0" "0" "900" "700"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "top_level_no_macros_tb.instruction_memory" -win $_nTrace1
srcHBDrag -win $_nTrace1
wvSetPosition -win $_nWave2 {("instruction_memory" 0)}
wvRenameGroup -win $_nWave2 {G1} {instruction_memory}
wvAddSignal -win $_nWave2 \
           "/top_level_no_macros_tb/instruction_memory/addr\[31:0\]" \
           "/top_level_no_macros_tb/instruction_memory/data\[31:0\]"
wvSetPosition -win $_nWave2 {("instruction_memory" 0)}
wvSetPosition -win $_nWave2 {("instruction_memory" 2)}
wvSetPosition -win $_nWave2 {("instruction_memory" 2)}
verdiSetActWin -win $_nWave2
srcHBSelect "top_level_no_macros_tb.dcache0" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "top_level_no_macros_tb.cpu0" -win $_nTrace1
srcHBSelect "top_level_no_macros_tb.cpu0.regfile0" -win $_nTrace1
srcHBDrag -win $_nTrace1
wvSetPosition -win $_nWave2 {("instruction_memory" 1)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("regfile0" 0)}
wvRenameGroup -win $_nWave2 {G2} {regfile0}
wvAddSignal -win $_nWave2 "/top_level_no_macros_tb/cpu0/regfile0/reset" \
           "/top_level_no_macros_tb/cpu0/regfile0/w_en" \
           "/top_level_no_macros_tb/cpu0/regfile0/IN0" \
           "/top_level_no_macros_tb/cpu0/regfile0/IN1" \
           "/top_level_no_macros_tb/cpu0/regfile0/IN2" \
           "/top_level_no_macros_tb/cpu0/regfile0/IN3" \
           "/top_level_no_macros_tb/cpu0/regfile0/regfile_o\[1023:0\]" \
           "/top_level_no_macros_tb/cpu0/regfile0/clk" \
           "/top_level_no_macros_tb/cpu0/regfile0/rb_value\[31:0\]" \
           "/top_level_no_macros_tb/cpu0/regfile0/ra_value\[31:0\]" \
           "/top_level_no_macros_tb/cpu0/regfile0/w_data\[31:0\]" \
           "/top_level_no_macros_tb/cpu0/regfile0/rb_addr\[4:0\]" \
           "/top_level_no_macros_tb/cpu0/regfile0/rd_addr\[4:0\]" \
           "/top_level_no_macros_tb/cpu0/regfile0/ra_addr\[4:0\]" \
           "/top_level_no_macros_tb/cpu0/regfile0/IN4" \
           "/top_level_no_macros_tb/cpu0/regfile0/clk_cts_1" \
           "/top_level_no_macros_tb/cpu0/regfile0/clk_cts_2" \
           "/top_level_no_macros_tb/cpu0/regfile0/clk_cts_3" \
           "/top_level_no_macros_tb/cpu0/regfile0/clk_cts_4"
wvSetPosition -win $_nWave2 {("regfile0" 0)}
wvSetPosition -win $_nWave2 {("regfile0" 19)}
wvSetPosition -win $_nWave2 {("regfile0" 19)}
wvZoomAll -win $_nWave2
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "regfile0" 13 )} 
wvSelectSignal -win $_nWave2 {( "regfile0" 11 )} 
wvSelectSignal -win $_nWave2 {( "regfile0" 11 )} 
wvSetRadix -win $_nWave2 -format UDec
