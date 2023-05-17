verdiSetActWin -dock widgetDock_<Decl._Tree>
simSetSimulator "-vcssv" -exec \
           "/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/execute/sim/postsyn/simv" \
           -args "+v2k +lint=all +neg_tchk +define+POST_SYN=1 -a execute.log"
debImport "-dbdir" \
          "/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/execute/sim/postsyn/simv.daidir"
debLoadSimResult \
           /home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/execute/sim/postsyn/execute.fsdb
wvCreateWindow
verdiWindowResize -win $_Verdi_1 "500" "150" "900" "700"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "ZN" -line 65 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcSelect -win $_nTrace1 -range {65 76 8 1 1 1}
srcSignalView -on
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelect "AND2_X2.ZN"
srcSignalViewSelect "AND2_X2.A1"
srcSignalViewSelect "AND2_X2.A1"
wvAddSignal -win $_nWave2 "AND2_X2/A1"
srcHBSelect "execute_tb" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "execute_tb.execute0" -win $_nTrace1
srcSetScope "execute_tb.execute0" -delim "." -win $_nTrace1
srcHBSelect "execute_tb.execute0" -win $_nTrace1
srcSignalViewSelect "execute_tb.execute0.clk"
srcSignalViewSelect "execute_tb.execute0.clk"
verdiSetActWin -dock widgetDock_<Signal_List>
wvAddSignal -win $_nWave2 "/execute_tb/execute0/clk"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 1)}
verdiSetActWin -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 873.404152 -snap {("G1" 1)}
wvRestoreSignal -win $_nWave2 \
           "/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/execute/sim/execute_wave.rc" \
           -overWriteAutoAlias on -appendSignals on
verdiSetActWin -dock widgetDock_<Signal_List>
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
uniFindSearchString -widget MTB_SOURCE_TAB_1 -pattern "alu_op" -next
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_i\[30\]" -line 466 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 467 -pos 8 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -word -line 469 -pos 28 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
verdiSetActWin -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvZoomAll -win $_nWave2
wvZoomAll -win $_nWave2
wvSaveSignal -win $_nWave2 \
           "/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/execute/sim/execute_postsyn_wave.rc"
debExit
