simSetSimulator "-vcssv" -exec \
           "/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/top_level_no_macros/sim/postsyn/simv" \
           -args \
           "+v2k +lint=all +neg_tchk +define+POST_SYN=1 -a top_level_no_macros.log"
debImport "-dbdir" \
          "/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/top_level_no_macros/sim/postsyn/simv.daidir"
debLoadSimResult \
           /home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/top_level_no_macros/sim/postsyn/top_level_no_macros.fsdb
wvCreateWindow
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "top_level_no_macros_tb.cpu0.regfile0" -win $_nTrace1
srcHBDrag -win $_nTrace1
wvSetPosition -win $_nWave2 {("regfile0" 0)}
wvRenameGroup -win $_nWave2 {G1} {regfile0}
wvAddSignal -win $_nWave2 "/top_level_no_macros_tb/cpu0/regfile0/clk" \
           "/top_level_no_macros_tb/cpu0/regfile0/reset" \
           "/top_level_no_macros_tb/cpu0/regfile0/w_en" \
           "/top_level_no_macros_tb/cpu0/regfile0/ra_addr\[4:0\]" \
           "/top_level_no_macros_tb/cpu0/regfile0/rb_addr\[4:0\]" \
           "/top_level_no_macros_tb/cpu0/regfile0/rd_addr\[4:0\]" \
           "/top_level_no_macros_tb/cpu0/regfile0/w_data\[31:0\]" \
           "/top_level_no_macros_tb/cpu0/regfile0/ra_value\[31:0\]" \
           "/top_level_no_macros_tb/cpu0/regfile0/rb_value\[31:0\]" \
           "/top_level_no_macros_tb/cpu0/regfile0/regfile_o\[1023:0\]"
wvSetPosition -win $_nWave2 {("regfile0" 0)}
wvSetPosition -win $_nWave2 {("regfile0" 10)}
wvSetPosition -win $_nWave2 {("regfile0" 10)}
wvZoomAll -win $_nWave2
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "regfile0" 7 )} 
wvSelectSignal -win $_nWave2 {( "regfile0" 7 )} 
wvSetRadix -win $_nWave2 -format UDec
debExit
