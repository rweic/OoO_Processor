verdiSetActWin -dock widgetDock_<Decl._Tree>
simSetSimulator "-vcssv" -exec \
           "/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/out-of-order/lsu/sim/postsyn/simv" \
           -args "+v2k +lint=all +neg_tchk +define+POST_SYN=1 -a lsu.log"
debImport "-dbdir" \
          "/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/out-of-order/lsu/sim/postsyn/simv.daidir"
debLoadSimResult \
           /home/projects/ee478.2023spr/gbeatty3/OoO_Processor/out-of-order/lsu/sim/postsyn/lsu.fsdb
wvCreateWindow
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcHBSelect "lsu_tb" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "lsu_tb.dut" -win $_nTrace1
srcHBDrag -win $_nTrace1
wvSetPosition -win $_nWave2 {("dut" 0)}
wvRenameGroup -win $_nWave2 {G1} {dut}
wvAddSignal -win $_nWave2 "/lsu_tb/dut/clk_i" "/lsu_tb/dut/reset_i" \
           "/lsu_tb/dut/pc_i\[31:0\]" "/lsu_tb/dut/lsu_request_i" \
           "/lsu_tb/dut/inst_i\[31:0\]" "/lsu_tb/dut/rs1_value_i\[31:0\]" \
           "/lsu_tb/dut/rs2_value_i\[31:0\]" "/lsu_tb/dut/rob_idx_i\[4:0\]" \
           "/lsu_tb/dut/busy_o" "/lsu_tb/dut/writeback_valid_o" \
           "/lsu_tb/dut/writeback_value_o\[31:0\]" \
           "/lsu_tb/dut/rob_idx_o\[4:0\]" "/lsu_tb/dut/dmem_csb_write_o" \
           "/lsu_tb/dut/dmem_wmask_o\[3:0\]" "/lsu_tb/dut/dmem_waddr_o\[7:0\]" \
           "/lsu_tb/dut/dmem_din_o\[31:0\]" "/lsu_tb/dut/dmem_csb_read_o" \
           "/lsu_tb/dut/dmem_raddr_o\[7:0\]" "/lsu_tb/dut/dmem_dout_i\[31:0\]"
wvSetPosition -win $_nWave2 {("dut" 0)}
wvSetPosition -win $_nWave2 {("dut" 19)}
wvSetPosition -win $_nWave2 {("dut" 19)}
wvZoomAll -win $_nWave2
verdiSetActWin -win $_nWave2
wvScrollUp -win $_nWave2 5
debExit
