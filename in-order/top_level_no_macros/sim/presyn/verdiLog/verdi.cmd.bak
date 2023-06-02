simSetSimulator "-vcssv" -exec \
           "/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/top_level_no_macros/sim/presyn/simv" \
           -args "+v2k +lint=all +neg_tchk +define+PRE_SYN=1 -a toplevel.log"
debImport "-dbdir" \
          "/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/top_level_no_macros/sim/presyn/simv.daidir"
debLoadSimResult \
           /home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/top_level_no_macros/sim/presyn/toplevel.fsdb
wvCreateWindow
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "toplevel_tb.dut.cpu0.hazard_detect_inst" -win $_nTrace1
srcHBSelect "toplevel_tb.dut.cpu0.hazard_detect_inst" -win $_nTrace1
srcSetScope "toplevel_tb.dut.cpu0.hazard_detect_inst" -delim "." -win $_nTrace1
srcHBSelect "toplevel_tb.dut.cpu0.hazard_detect_inst" -win $_nTrace1
debExit
