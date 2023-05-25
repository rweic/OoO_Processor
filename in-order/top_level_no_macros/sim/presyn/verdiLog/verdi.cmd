simSetSimulator "-vcssv" -exec \
           "/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/top_level_no_macros/sim/presyn/simv" \
           -args "+v2k +lint=all +neg_tchk +define+PRE_SYN=1 -a toplevel.log"
debImport "-dbdir" \
          "/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/top_level_no_macros/sim/presyn/simv.daidir"
debLoadSimResult \
           /home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/top_level_no_macros/sim/presyn/toplevel.fsdb
wvCreateWindow
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
wvRestoreSignal -win $_nWave2 \
           "/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/top_level_no_macros/sim/top_level_no_macros_presyn.rc" \
           -overWriteAutoAlias on -appendSignals on
wvSelectGroup -win $_nWave2 {Hazard_Detect}
wvSelectGroup -win $_nWave2 {Hazard_Detect}
wvExpandGroup -win $_nWave2 "Hazard_Detect"
wvSelectGroup -win $_nWave2 {Hazard_Detect}
wvZoomAll -win $_nWave2
debExit
