simSetSimulator "-vcssv" -exec \
           "/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/toplevel/sim/presyn/simv" \
           -args \
           "+v2k +lint=all +neg_tchk +define+PRE_SYN=1 -a top_level_with_macros.log"
debImport "-dbdir" \
          "/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/toplevel/sim/presyn/simv.daidir"
debLoadSimResult \
           /home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/toplevel/sim/presyn/top_level_with_macros.fsdb
wvCreateWindow
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcHBSelect "top_level_with_macros_tb.dut" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "top_level_with_macros_tb.dut.cpu0" -win $_nTrace1
srcHBSelect "top_level_with_macros_tb.dut.dcache0" -win $_nTrace1
srcHBSelect "top_level_with_macros_tb.dut.instruction_memory" -win $_nTrace1
srcHBDrag -win $_nTrace1
wvSetPosition -win $_nWave2 {("instruction_memory" 0)}
wvRenameGroup -win $_nWave2 {G1} {instruction_memory}
wvAddSignal -win $_nWave2 "/top_level_with_macros_tb/dut/instruction_memory/clk0" \
           "/top_level_with_macros_tb/dut/instruction_memory/csb0" \
           "/top_level_with_macros_tb/dut/instruction_memory/web0" \
           "/top_level_with_macros_tb/dut/instruction_memory/addr0\[7:0\]" \
           "/top_level_with_macros_tb/dut/instruction_memory/din0\[31:0\]" \
           "/top_level_with_macros_tb/dut/instruction_memory/dout0\[31:0\]"
wvSetPosition -win $_nWave2 {("instruction_memory" 0)}
wvSetPosition -win $_nWave2 {("instruction_memory" 6)}
wvSetPosition -win $_nWave2 {("instruction_memory" 6)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
verdiSetActWin -win $_nWave2
wvSelectGroup -win $_nWave2 {G2}
wvSelectSignal -win $_nWave2 {( "instruction_memory" 5 )} 
wvScrollUp -win $_nWave2 1
srcHBSelect "top_level_with_macros_tb.dut.instruction_memory" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "top_level_with_macros_tb.dut.instruction_memory" -win $_nTrace1
srcSetScope "top_level_with_macros_tb.dut.instruction_memory" -delim "." -win \
           $_nTrace1
srcHBSelect "top_level_with_macros_tb.dut.instruction_memory" -win $_nTrace1
wvZoomAll -win $_nWave2
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 1966.257953 -snap {("G2" 0)}
wvSelectSignal -win $_nWave2 {( "instruction_memory" 6 )} 
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSelectSignal -win $_nWave2 {( "instruction_memory" 6 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "top_level_with_macros_tb.dut.cpu0.fetch0" -win $_nTrace1
srcHBSelect "top_level_with_macros_tb.dut.cpu0.hazard_detect0" -win $_nTrace1
srcHBSelect "top_level_with_macros_tb.dut.cpu0.regfile0" -win $_nTrace1
srcHBDrag -win $_nTrace1
wvSetPosition -win $_nWave2 {("instruction_memory" 1)}
wvSetPosition -win $_nWave2 {("instruction_memory" 3)}
wvSetPosition -win $_nWave2 {("instruction_memory" 4)}
wvSetPosition -win $_nWave2 {("instruction_memory" 5)}
wvSetPosition -win $_nWave2 {("instruction_memory" 6)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("instruction_memory" 0)}
srcHBSelect "top_level_with_macros_tb.dut.cpu0.regfile0" -win $_nTrace1
srcHBSelect "top_level_with_macros_tb.dut.cpu0.memaccess0" -win $_nTrace1
srcHBSelect "top_level_with_macros_tb.dut.cpu0.regfile0" -win $_nTrace1
srcHBDrag -win $_nTrace1
wvSetPosition -win $_nWave2 {("instruction_memory" 1)}
wvSetPosition -win $_nWave2 {("instruction_memory" 3)}
wvSetPosition -win $_nWave2 {("instruction_memory" 4)}
wvSetPosition -win $_nWave2 {("instruction_memory" 5)}
wvSetPosition -win $_nWave2 {("instruction_memory" 6)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvAddSignal -win $_nWave2 \
           "top_level_with_macros_tb/dut/cpu0/regfile0/regfile_o\[0:31\]"
wvSetPosition -win $_nWave2 {("regfile0" 0)}
wvRenameGroup -win $_nWave2 {G2} {regfile0}
wvAddSignal -win $_nWave2 "/top_level_with_macros_tb/dut/cpu0/regfile0/clk" \
           "/top_level_with_macros_tb/dut/cpu0/regfile0/reset" \
           "/top_level_with_macros_tb/dut/cpu0/regfile0/w_en" \
           "/top_level_with_macros_tb/dut/cpu0/regfile0/ra_addr\[4:0\]" \
           "/top_level_with_macros_tb/dut/cpu0/regfile0/rb_addr\[4:0\]" \
           "/top_level_with_macros_tb/dut/cpu0/regfile0/rd_addr\[4:0\]" \
           "/top_level_with_macros_tb/dut/cpu0/regfile0/w_data\[31:0\]" \
           "/top_level_with_macros_tb/dut/cpu0/regfile0/ra_value\[31:0\]" \
           "/top_level_with_macros_tb/dut/cpu0/regfile0/rb_value\[31:0\]"
wvSetPosition -win $_nWave2 {("regfile0" 0)}
wvSetPosition -win $_nWave2 {("regfile0" 9)}
wvSetPosition -win $_nWave2 {("regfile0" 9)}
verdiSetActWin -win $_nWave2
wvScrollUp -win $_nWave2 9
wvZoom -win $_nWave2 0.000000 30625.957201
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcHBSelect "top_level_with_macros_tb" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "top_level_with_macros_tb" -win $_nTrace1
srcSetScope "top_level_with_macros_tb" -delim "." -win $_nTrace1
srcHBSelect "top_level_with_macros_tb" -win $_nTrace1
wvSetCursor -win $_nWave2 2426.695278 -snap {("regfile0" 0)}
verdiSetActWin -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
debExit
