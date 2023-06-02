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
wvUnknownSaveResult -win $_nWave2 -clear
wvSelectGroup -win $_nWave2 {Hazard_Detect}
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "toplevel_tb.dut.cpu0.hazard_detect0" -win $_nTrace1
srcHBSelect "toplevel_tb.dut.cpu0.hazard_detect0" -win $_nTrace1
srcSetScope "toplevel_tb.dut.cpu0.hazard_detect0" -delim "." -win $_nTrace1
srcHBSelect "toplevel_tb.dut.cpu0.hazard_detect0" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "SourceReg1Dec" -line 2 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcSignalViewSelect "toplevel_tb.dut.cpu0.hazard_detect0.SourceReg1Dec\[4:0\]"
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelect "toplevel_tb.dut.cpu0.hazard_detect0.SourceReg1Dec\[4:0\]" \
           "toplevel_tb.dut.cpu0.hazard_detect0.SourceReg2Dec\[4:0\]" \
           "toplevel_tb.dut.cpu0.hazard_detect0.SourceReg1Exec\[4:0\]" \
           "toplevel_tb.dut.cpu0.hazard_detect0.SourceReg2Exec\[4:0\]" \
           "toplevel_tb.dut.cpu0.hazard_detect0.DestRegExec\[4:0\]" \
           "toplevel_tb.dut.cpu0.hazard_detect0.DestRegMem\[4:0\]" \
           "toplevel_tb.dut.cpu0.hazard_detect0.DestRegWriteBack\[4:0\]" \
           "toplevel_tb.dut.cpu0.hazard_detect0.RegisterWriteMem" \
           "toplevel_tb.dut.cpu0.hazard_detect0.RegisterWriteWriteBack" \
           "toplevel_tb.dut.cpu0.hazard_detect0.ResultSourceExec0" \
           "toplevel_tb.dut.cpu0.hazard_detect0.ProgramCounterSourceExec" \
           "toplevel_tb.dut.cpu0.hazard_detect0.ForwardingReg1Exec\[1:0\]" \
           "toplevel_tb.dut.cpu0.hazard_detect0.ForwardingReg2Exec\[1:0\]" \
           "toplevel_tb.dut.cpu0.hazard_detect0.StallDecode_o" \
           "toplevel_tb.dut.cpu0.hazard_detect0.StallFetch_o" \
           "toplevel_tb.dut.cpu0.hazard_detect0.FlushDecode" \
           "toplevel_tb.dut.cpu0.hazard_detect0.FlushExec" \
           "toplevel_tb.dut.cpu0.hazard_detect0.LoadWordStall" \
           "toplevel_tb.dut.cpu0.hazard_detect0.RAW_hazard"
wvSetPosition -win $_nWave2 {("Fetch" 0)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("Hazard_Detect" 0)}
wvSetPosition -win $_nWave2 {("Fetch" 0)}
wvSetPosition -win $_nWave2 {("Hazard_Detect" 0)}
wvAddSignal -win $_nWave2 \
           "/toplevel_tb/dut/cpu0/hazard_detect0/SourceReg1Dec\[4:0\]" \
           "/toplevel_tb/dut/cpu0/hazard_detect0/SourceReg2Dec\[4:0\]" \
           "/toplevel_tb/dut/cpu0/hazard_detect0/SourceReg1Exec\[4:0\]" \
           "/toplevel_tb/dut/cpu0/hazard_detect0/SourceReg2Exec\[4:0\]" \
           "/toplevel_tb/dut/cpu0/hazard_detect0/DestRegExec\[4:0\]" \
           "/toplevel_tb/dut/cpu0/hazard_detect0/DestRegMem\[4:0\]" \
           "/toplevel_tb/dut/cpu0/hazard_detect0/DestRegWriteBack\[4:0\]" \
           "/toplevel_tb/dut/cpu0/hazard_detect0/RegisterWriteMem" \
           "/toplevel_tb/dut/cpu0/hazard_detect0/RegisterWriteWriteBack" \
           "/toplevel_tb/dut/cpu0/hazard_detect0/ResultSourceExec0" \
           "/toplevel_tb/dut/cpu0/hazard_detect0/ProgramCounterSourceExec" \
           "/toplevel_tb/dut/cpu0/hazard_detect0/ForwardingReg1Exec\[1:0\]" \
           "/toplevel_tb/dut/cpu0/hazard_detect0/ForwardingReg2Exec\[1:0\]" \
           "/toplevel_tb/dut/cpu0/hazard_detect0/StallDecode_o" \
           "/toplevel_tb/dut/cpu0/hazard_detect0/StallFetch_o" \
           "/toplevel_tb/dut/cpu0/hazard_detect0/FlushDecode" \
           "/toplevel_tb/dut/cpu0/hazard_detect0/FlushExec" \
           "/toplevel_tb/dut/cpu0/hazard_detect0/LoadWordStall" \
           "/toplevel_tb/dut/cpu0/hazard_detect0/RAW_hazard"
wvSetPosition -win $_nWave2 {("Hazard_Detect" 0)}
wvSetPosition -win $_nWave2 {("Hazard_Detect" 19)}
verdiSetActWin -win $_nWave2
wvScrollUp -win $_nWave2 11
wvSelectSignal -win $_nWave2 {( "Hazard_Detect" 5 )} 
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 3
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSaveSignal -win $_nWave2 \
           "/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/top_level_no_macros/sim/top_level_no_macros_presyn.rc"
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "toplevel_tb.dut.cpu0.exec0.alu0" -win $_nTrace1
srcSetScope "toplevel_tb.dut.cpu0.exec0.alu0" -delim "." -win $_nTrace1
srcHBSelect "toplevel_tb.dut.cpu0.exec0.alu0" -win $_nTrace1
srcSignalViewSelect "toplevel_tb.dut.cpu0.exec0.alu0.funct7\[6:0\]"
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelect "toplevel_tb.dut.cpu0.exec0.alu0.alu_out_temp\[63:0\]"
wvSetPosition -win $_nWave2 {("Hazard_Detect" 0)}
wvCollapseGroup -win $_nWave2 "Hazard_Detect"
verdiSetActWin -win $_nWave2
wvExpandGroup -win $_nWave2 "ALU"
srcSignalViewSelect "toplevel_tb.dut.cpu0.exec0.alu0.funct7\[6:0\]"
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelect "toplevel_tb.dut.cpu0.exec0.alu0.funct7\[6:0\]" \
           "toplevel_tb.dut.cpu0.exec0.alu0.funct3\[2:0\]"
srcSignalViewSelect "toplevel_tb.dut.cpu0.exec0.alu0.funct7\[6:0\]" \
           "toplevel_tb.dut.cpu0.exec0.alu0.funct3\[2:0\]" \
           "toplevel_tb.dut.cpu0.exec0.alu0.alu_out_temp\[63:0\]"
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("Decode" 0)}
wvSetPosition -win $_nWave2 {("ALU" 0)}
wvSetPosition -win $_nWave2 {("ALU" 1)}
wvSetPosition -win $_nWave2 {("ALU" 2)}
wvSetPosition -win $_nWave2 {("ALU" 3)}
wvSetPosition -win $_nWave2 {("ALU" 4)}
wvSetPosition -win $_nWave2 {("dcache" 0)}
wvSetPosition -win $_nWave2 {("ALU" 4)}
wvAddSignal -win $_nWave2 "/toplevel_tb/dut/cpu0/exec0/alu0/funct7\[6:0\]" \
           "/toplevel_tb/dut/cpu0/exec0/alu0/funct3\[2:0\]" \
           "/toplevel_tb/dut/cpu0/exec0/alu0/alu_out_temp\[63:0\]"
wvSetPosition -win $_nWave2 {("ALU" 4)}
wvSetPosition -win $_nWave2 {("ALU" 7)}
verdiSetActWin -win $_nWave2
wvScrollDown -win $_nWave2 3
wvSaveSignal -win $_nWave2 \
           "/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/top_level_no_macros/sim/top_level_no_macros_presyn.rc"
debExit
