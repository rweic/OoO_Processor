simSetSimulator "-vcssv" -exec \
           "/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/out-of-order/lsu/sim/presyn/simv" \
           -args "+v2k +lint=all +neg_tchk +define+PRE_SYN=1 -a lsu.log"
debImport "-dbdir" \
          "/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/out-of-order/lsu/sim/presyn/simv.daidir"
debLoadSimResult \
           /home/projects/ee478.2023spr/gbeatty3/OoO_Processor/out-of-order/lsu/sim/presyn/lsu.fsdb
wvCreateWindow
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcHBSelect "lsu_tb.lsu" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBDrag -win $_nTrace1
wvSetPosition -win $_nWave2 {("lsu" 0)}
wvRenameGroup -win $_nWave2 {G1} {lsu}
wvAddSignal -win $_nWave2 "/lsu_tb/lsu/clk_i" "/lsu_tb/lsu/reset_i" \
           "/lsu_tb/lsu/pc_i\[31:0\]" "/lsu_tb/lsu/lsu_request_i" \
           "/lsu_tb/lsu/inst_i\[31:0\]" "/lsu_tb/lsu/rs1_value_i\[31:0\]" \
           "/lsu_tb/lsu/rs2_value_i\[31:0\]" "/lsu_tb/lsu/rob_idx_i\[4:0\]" \
           "/lsu_tb/lsu/busy_o" "/lsu_tb/lsu/writeback_valid_o" \
           "/lsu_tb/lsu/writeback_value_o\[31:0\]" \
           "/lsu_tb/lsu/rob_idx_o\[4:0\]" "/lsu_tb/lsu/dmem_csb_write_o" \
           "/lsu_tb/lsu/dmem_wmask_o\[3:0\]" "/lsu_tb/lsu/dmem_waddr_o\[7:0\]" \
           "/lsu_tb/lsu/dmem_din_o\[31:0\]" "/lsu_tb/lsu/dmem_csb_read_o" \
           "/lsu_tb/lsu/dmem_raddr_o\[7:0\]" "/lsu_tb/lsu/dmem_dout_i\[31:0\]"
wvSetPosition -win $_nWave2 {("lsu" 0)}
wvSetPosition -win $_nWave2 {("lsu" 19)}
wvSetPosition -win $_nWave2 {("lsu" 19)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvZoomAll -win $_nWave2
verdiSetActWin -win $_nWave2
debExit
