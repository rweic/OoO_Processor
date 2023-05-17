verdiSetActWin -dock widgetDock_<Decl._Tree>
simSetSimulator "-vcssv" -exec \
           "/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/execute/sim/postapr/simv" \
           -args "+v2k +lint=all +neg_tchk +define+POST_APR=1 -a execute.log"
debImport "-dbdir" \
          "/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/execute/sim/postapr/simv.daidir"
debLoadSimResult \
           /home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/execute/sim/postapr/execute.fsdb
wvCreateWindow
verdiWindowResize -win $_Verdi_1 "500" "150" "900" "700"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcHBSelect "execute_tb" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "execute_tb.execute0" -win $_nTrace1
srcSetScope "execute_tb.execute0" -delim "." -win $_nTrace1
srcHBSelect "execute_tb.execute0" -win $_nTrace1
verdiSetActWin -win $_nWave2
wvRestoreSignal -win $_nWave2 \
           "/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/execute/sim/execute_postsyn_wave.rc" \
           -overWriteAutoAlias on -appendSignals on
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 133.186813 -snap {("G1" 10)}
wvZoomAll -win $_nWave2
debExit
