verdiSetActWin -dock widgetDock_<Decl._Tree>
simSetSimulator "-vcssv" -exec \
           "/home/projects/ee478.2023spr/gbeatty3/alu2/sim/presyn/simv" -args \
           "+v2k +lint=all +neg_tchk +define+PRE_SYN=1 -a alu.log"
debImport "-dbdir" \
          "/home/projects/ee478.2023spr/gbeatty3/alu2/sim/presyn/simv.daidir"
debLoadSimResult /home/projects/ee478.2023spr/gbeatty3/alu2/sim/presyn/alu.fsdb
wvCreateWindow
verdiWindowResize -win $_Verdi_1 "308" "20" "900" "698"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcHBSelect "alu_tb.alu0" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "alu_tb.alu0" -win $_nTrace1
srcSetScope "alu_tb.alu0" -delim "." -win $_nTrace1
srcHBSelect "alu_tb.alu0" -win $_nTrace1
srcSignalView -on
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelect "alu_tb.alu0.alu_op1\[31:0\]"
srcSignalViewSelect "alu_tb.alu0.alu_op1\[31:0\]" "alu_tb.alu0.alu_op2\[31:0\]" \
           "alu_tb.alu0.alu_func\[3:0\]" "alu_tb.alu0.alu_out\[31:0\]"
wvAddSignal -win $_nWave2 "/alu_tb/alu0/alu_op1\[31:0\]" \
           "/alu_tb/alu0/alu_op2\[31:0\]" "/alu_tb/alu0/alu_func\[3:0\]" \
           "/alu_tb/alu0/alu_out\[31:0\]"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
verdiSetActWin -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvZoomAll -win $_nWave2
debExit