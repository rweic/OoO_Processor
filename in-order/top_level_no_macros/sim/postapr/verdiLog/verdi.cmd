simSetSimulator "-vcssv" -exec \
           "/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/top_level_no_macros/sim/postapr/simv" \
           -args \
           "+v2k +lint=all +neg_tchk +define+POST_APR=1 -a top_level_no_macros_tb.log"
debImport "-dbdir" \
          "/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/top_level_no_macros/sim/postapr/simv.daidir"
debLoadSimResult \
           /home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/top_level_no_macros/sim/postapr/top_level_no_macros_tb.fsdb
wvCreateWindow
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "top_level_no_macros_tb.cpu0.regfile0" -win $_nTrace1
srcHBDrag -win $_nTrace1
wvSetPosition -win $_nWave2 {("regfile0" 0)}
wvRenameGroup -win $_nWave2 {G1} {regfile0}
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
srcHBSelect "top_level_no_macros_tb.cpu0.hazard_detect0" -win $_nTrace1
srcHBDrag -win $_nTrace1
wvSetPosition -win $_nWave2 {("regfile0" 13)}
wvSetPosition -win $_nWave2 {("regfile0" 14)}
wvSetPosition -win $_nWave2 {("regfile0" 15)}
wvSetPosition -win $_nWave2 {("regfile0" 16)}
wvSetPosition -win $_nWave2 {("regfile0" 17)}
wvSetPosition -win $_nWave2 {("regfile0" 18)}
wvSetPosition -win $_nWave2 {("regfile0" 18)}
wvSetPosition -win $_nWave2 {("regfile0/hazard_detect0" 0)}
wvAddSubGroup -win $_nWave2 -holdpost {hazard_detect0}
wvAddSignal -win $_nWave2 \
           "/top_level_no_macros_tb/cpu0/hazard_detect0/DestRegWriteBack\[4:0\]" \
           "/top_level_no_macros_tb/cpu0/hazard_detect0/RegisterWriteMem" \
           "/top_level_no_macros_tb/cpu0/hazard_detect0/RegisterWriteWriteBack" \
           "/top_level_no_macros_tb/cpu0/hazard_detect0/ResultSourceExec0" \
           "/top_level_no_macros_tb/cpu0/hazard_detect0/ProgramCounterSourceExec" \
           "/top_level_no_macros_tb/cpu0/hazard_detect0/StallDecode_o" \
           "/top_level_no_macros_tb/cpu0/hazard_detect0/StallFetch_o" \
           "/top_level_no_macros_tb/cpu0/hazard_detect0/DestRegMem\[4:0\]" \
           "/top_level_no_macros_tb/cpu0/hazard_detect0/SourceReg2Dec\[4:0\]" \
           "/top_level_no_macros_tb/cpu0/hazard_detect0/DestRegExec\[4:0\]" \
           "/top_level_no_macros_tb/cpu0/hazard_detect0/SourceReg1Dec\[4:0\]" \
           "/top_level_no_macros_tb/cpu0/hazard_detect0/IN0" \
           "/top_level_no_macros_tb/cpu0/hazard_detect0/IN1" \
           "/top_level_no_macros_tb/cpu0/hazard_detect0/IN2" \
           "/top_level_no_macros_tb/cpu0/hazard_detect0/IN3"
wvSetPosition -win $_nWave2 {("regfile0/hazard_detect0" 0)}
wvSetPosition -win $_nWave2 {("regfile0/hazard_detect0" 15)}
verdiSetActWin -win $_nWave2
wvSelectGroup -win $_nWave2 {G2}
wvSelectSignal -win $_nWave2 {( "regfile0/hazard_detect0" 12 )} 
wvSelectSignal -win $_nWave2 {( "regfile0/hazard_detect0" 12 13 14 15 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("regfile0/hazard_detect0" 11)}
wvSelectSignal -win $_nWave2 {( "regfile0" 31 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("regfile0/hazard_detect0" 11)}
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "regfile0" 18 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("regfile0/hazard_detect0" 11)}
wvSelectSignal -win $_nWave2 {( "regfile0" 17 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("regfile0/hazard_detect0" 11)}
wvSelectSignal -win $_nWave2 {( "regfile0" 16 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("regfile0/hazard_detect0" 11)}
wvScrollUp -win $_nWave2 4
wvSelectSignal -win $_nWave2 {( "regfile0" 7 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("regfile0/hazard_detect0" 11)}
wvZoomAll -win $_nWave2
wvSelectSignal -win $_nWave2 {( "regfile0" 14 )} 
wvSetPosition -win $_nWave2 {("regfile0" 14)}
wvSetPosition -win $_nWave2 {("regfile0" 13)}
wvSetPosition -win $_nWave2 {("regfile0" 12)}
wvSetPosition -win $_nWave2 {("regfile0" 11)}
wvSetPosition -win $_nWave2 {("regfile0" 10)}
wvSetPosition -win $_nWave2 {("regfile0" 9)}
wvSetPosition -win $_nWave2 {("regfile0" 8)}
wvSetPosition -win $_nWave2 {("regfile0" 7)}
wvSetPosition -win $_nWave2 {("regfile0" 6)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("regfile0" 6)}
wvSetPosition -win $_nWave2 {("regfile0" 7)}
wvSelectSignal -win $_nWave2 {( "regfile0" 5 )} 
wvSelectSignal -win $_nWave2 {( "regfile0" 3 )} 
srcHBSelect "top_level_no_macros_tb.cpu0.regfile0" -win $_nTrace1
srcHBSelect "top_level_no_macros_tb.cpu0.regfile0" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "top_level_no_macros_tb.cpu0.regfile0" -win $_nTrace1
srcSetScope "top_level_no_macros_tb.cpu0.regfile0" -delim "." -win $_nTrace1
srcHBSelect "top_level_no_macros_tb.cpu0.regfile0" -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "regfile0" 7 )} 
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "regfile0" 3 4 5 6 7 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("regfile0" 7)}
wvSetPosition -win $_nWave2 {("regfile0" 2)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "regfile0/hazard_detect0" 2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("regfile0" 2)}
wvSelectSignal -win $_nWave2 {( "regfile0/hazard_detect0" 2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("regfile0" 2)}
wvSetCursor -win $_nWave2 66422.424608
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 16123.799283 -snap {("regfile0" 0)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
debExit
