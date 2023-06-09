simSetSimulator "-vcssv" -exec \
           "/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/out-of-order/rob/sim/presyn/simv" \
           -args "+v2k +lint=all +neg_tchk +define+PRE_SYN=1 -a rob.log"
debImport "-dbdir" \
          "/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/out-of-order/rob/sim/presyn/simv.daidir"
debLoadSimResult \
           /home/projects/ee478.2023spr/gbeatty3/OoO_Processor/out-of-order/rob/sim/presyn/rob.fsdb
wvCreateWindow
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcHBSelect "rob_tb.rob0" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBDrag -win $_nTrace1
wvSetPosition -win $_nWave2 {("rob0" 0)}
wvRenameGroup -win $_nWave2 {G1} {rob0}
wvAddSignal -win $_nWave2 "/rob_tb/rob0/clk_i" "/rob_tb/rob0/reset_i" \
           "/rob_tb/rob0/allocate_req_i" "/rob_tb/rob0/update_req_alu_i" \
           "/rob_tb/rob0/update_req_lsu_i" "/rob_tb/rob0/update_req_mul_i" \
           "/rob_tb/rob0/prd_addr_i\[4:0\]" "/rob_tb/rob0/pc_i\[31:0\]" \
           "/rob_tb/rob0/inst_i\[31:0\]" "/rob_tb/rob0/rob_idx_alu_i\[4:0\]" \
           "/rob_tb/rob0/reg_value_alu_i\[31:0\]" \
           "/rob_tb/rob0/rob_idx_lsu_i\[4:0\]" \
           "/rob_tb/rob0/reg_value_lsu_i\[31:0\]" \
           "/rob_tb/rob0/rob_idx_mul_i\[4:0\]" \
           "/rob_tb/rob0/reg_value_mul_i\[31:0\]" "/rob_tb/rob0/empty_o" \
           "/rob_tb/rob0/full_o" "/rob_tb/rob0/rob_idx_o\[4:0\]" \
           "/rob_tb/rob0/commitment_valid_o" \
           "/rob_tb/rob0/inst_committed_o\[31:0\]" \
           "/rob_tb/rob0/pc_committed_o\[31:0\]" \
           "/rob_tb/rob0/prd_addr_committed_o\[4:0\]" \
           "/rob_tb/rob0/prd_value_committed_o\[31:0\]"
wvSetPosition -win $_nWave2 {("rob0" 0)}
wvSetPosition -win $_nWave2 {("rob0" 23)}
wvSetPosition -win $_nWave2 {("rob0" 23)}
wvZoomAll -win $_nWave2
verdiSetActWin -win $_nWave2
debExit
