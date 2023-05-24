wvCreateWindow
wvOpenFile -win $_nWave2 \
           {/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/top_level_no_macros/sim/postsyn/cpu.fsdb}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
wvRestoreSignal -win $_nWave2 \
           "/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/top_level_no_macros/sim/top_level_no_macros_presyn.rc" \
           -overWriteAutoAlias on -appendSignals on
wvSelectGroup -win $_nWave2 {G2}
wvExpandGroup -win $_nWave2 "G2"
wvSelectGroup -win $_nWave2 {G2}
wvZoomAll -win $_nWave2
wvExpandGroup -win $_nWave2 "Hazard_Detect"
wvSelectGroup -win $_nWave2 {G2}
wvExpandGroup -win $_nWave2 "Fetch"
wvSelectGroup -win $_nWave2 {G2}
wvCollapseGroup -win $_nWave2 "Fetch"
wvSelectGroup -win $_nWave2 {G2}
wvExpandGroup -win $_nWave2 "ALU"
wvSelectGroup -win $_nWave2 {G2}
wvExpandGroup -win $_nWave2 "Regfile"
wvSelectGroup -win $_nWave2 {G2}
wvCollapseGroup -win $_nWave2 "Hazard_Detect"
wvSelectGroup -win $_nWave2 {G2}
wvExpandGroup -win $_nWave2 "dcache"
wvSelectGroup -win $_nWave2 {G2}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvScrollDown -win $_nWave2 4
verdiSetActWin -win $_nWave2
wvScrollUp -win $_nWave2 6
wvSelectGroup -win $_nWave2 {Hazard_Detect}
wvExpandGroup -win $_nWave2 "Hazard_Detect"
wvSelectGroup -win $_nWave2 {Hazard_Detect}
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
debExit
