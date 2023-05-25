verdiSetActWin -dock widgetDock_<Decl._Tree>
simSetSimulator "-vcssv" -exec \
           "/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/execute/sim/presyn/simv" \
           -args "+v2k +lint=all +neg_tchk +define+PRE_SYN=1 -a execute.log"
debImport "-dbdir" \
          "/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/execute/sim/presyn/simv.daidir"
debLoadSimResult \
           /home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/execute/sim/presyn/execute.fsdb
wvCreateWindow
verdiWindowResize -win $_Verdi_1 "500" "150" "900" "700"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -line 3 -pos 1 -win $_nTrace1
srcSignalView -on
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelect "execute_tb.clk"
srcSignalViewSelect "execute_tb.clk" "execute_tb.mem_w_en_i" "execute_tb.reset"
srcSignalViewSelect "execute_tb.reset"
srcSignalViewSelect "execute_tb.clk"
srcSignalViewSelect "execute_tb.clk" "execute_tb.reset"
srcSignalViewSelect "execute_tb.clk" "execute_tb.reset" "execute_tb.pc_i\[31:0\]"
srcSignalViewSelect "execute_tb.clk" "execute_tb.reset" "execute_tb.pc_i\[31:0\]" \
           "execute_tb.rs1_data_i\[31:0\]"
srcSignalViewSelect "execute_tb.clk" "execute_tb.reset" "execute_tb.pc_i\[31:0\]"
srcSignalViewSelect "execute_tb.clk" "execute_tb.reset" "execute_tb.pc_i\[31:0\]" \
           "execute_tb.opsel1\[1:0\]"
srcSignalViewSelect "execute_tb.clk" "execute_tb.reset" "execute_tb.pc_i\[31:0\]" \
           "execute_tb.opsel1\[1:0\]" "execute_tb.rs1_data_i\[31:0\]"
srcSignalViewSelect "execute_tb.clk" "execute_tb.reset" \
           "execute_tb.opsel1\[1:0\]" "execute_tb.rs1_data_i\[31:0\]"
srcSignalViewSelect "execute_tb.clk" "execute_tb.reset" \
           "execute_tb.opsel1\[1:0\]" "execute_tb.rs1_data_i\[31:0\]" \
           "execute_tb.pc_i\[31:0\]"
srcSignalViewSelect "execute_tb.clk" "execute_tb.reset" \
           "execute_tb.opsel1\[1:0\]" "execute_tb.rs1_data_i\[31:0\]" \
           "execute_tb.pc_i\[31:0\]" "execute_tb.opsel2\[1:0\]"
srcSignalViewSelect "execute_tb.clk" "execute_tb.reset" \
           "execute_tb.opsel1\[1:0\]" "execute_tb.rs1_data_i\[31:0\]" \
           "execute_tb.pc_i\[31:0\]" "execute_tb.opsel2\[1:0\]" \
           "execute_tb.rs2_data_i\[31:0\]"
srcSignalViewSelect "execute_tb.clk" "execute_tb.reset" \
           "execute_tb.opsel1\[1:0\]" "execute_tb.rs1_data_i\[31:0\]" \
           "execute_tb.pc_i\[31:0\]" "execute_tb.opsel2\[1:0\]" \
           "execute_tb.rs2_data_i\[31:0\]" "execute_tb.imm\[31:0\]"
srcHBSelect "execute_tb.execute0" -win $_nTrace1
srcSetScope "execute_tb.execute0" -delim "." -win $_nTrace1
srcHBSelect "execute_tb.execute0" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcSignalViewSelect "execute_tb.execute0.clk"
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelect "execute_tb.execute0.clk" "execute_tb.execute0.reset"
srcSignalViewSelect "execute_tb.execute0.clk" "execute_tb.execute0.reset" \
           "execute_tb.execute0.rs1_data_i\[31:0\]"
srcSignalViewSelect "execute_tb.execute0.clk" "execute_tb.execute0.reset"
srcSignalViewSelect "execute_tb.execute0.clk" "execute_tb.execute0.reset" \
           "execute_tb.execute0.opsel1\[1:0\]"
srcSignalViewSelect "execute_tb.execute0.clk" "execute_tb.execute0.reset" \
           "execute_tb.execute0.opsel1\[1:0\]" \
           "execute_tb.execute0.rs1_data_i\[31:0\]"
srcSignalViewSelect "execute_tb.execute0.clk" "execute_tb.execute0.reset" \
           "execute_tb.execute0.opsel1\[1:0\]" \
           "execute_tb.execute0.rs1_data_i\[31:0\]" \
           "execute_tb.execute0.pc_i\[31:0\]"
srcSignalViewSelect "execute_tb.execute0.clk" "execute_tb.execute0.reset" \
           "execute_tb.execute0.opsel1\[1:0\]" \
           "execute_tb.execute0.rs1_data_i\[31:0\]" \
           "execute_tb.execute0.pc_i\[31:0\]" \
           "execute_tb.execute0.alu_op1\[31:0\]"
srcSignalViewSelect "execute_tb.execute0.clk" "execute_tb.execute0.reset" \
           "execute_tb.execute0.opsel1\[1:0\]" \
           "execute_tb.execute0.rs1_data_i\[31:0\]" \
           "execute_tb.execute0.pc_i\[31:0\]" \
           "execute_tb.execute0.alu_op1\[31:0\]" \
           "execute_tb.execute0.opsel2\[1:0\]"
srcSignalViewSelect "execute_tb.execute0.clk" "execute_tb.execute0.reset" \
           "execute_tb.execute0.opsel1\[1:0\]" \
           "execute_tb.execute0.rs1_data_i\[31:0\]" \
           "execute_tb.execute0.pc_i\[31:0\]" \
           "execute_tb.execute0.alu_op1\[31:0\]" \
           "execute_tb.execute0.opsel2\[1:0\]" \
           "execute_tb.execute0.rs2_data_i\[31:0\]"
srcSignalViewSelect "execute_tb.execute0.clk" "execute_tb.execute0.reset" \
           "execute_tb.execute0.opsel1\[1:0\]" \
           "execute_tb.execute0.rs1_data_i\[31:0\]" \
           "execute_tb.execute0.pc_i\[31:0\]" \
           "execute_tb.execute0.alu_op1\[31:0\]" \
           "execute_tb.execute0.opsel2\[1:0\]" \
           "execute_tb.execute0.rs2_data_i\[31:0\]" \
           "execute_tb.execute0.imm\[31:0\]"
srcSignalViewSelect "execute_tb.execute0.clk" "execute_tb.execute0.reset" \
           "execute_tb.execute0.opsel1\[1:0\]" \
           "execute_tb.execute0.rs1_data_i\[31:0\]" \
           "execute_tb.execute0.pc_i\[31:0\]" \
           "execute_tb.execute0.alu_op1\[31:0\]" \
           "execute_tb.execute0.opsel2\[1:0\]" \
           "execute_tb.execute0.rs2_data_i\[31:0\]" \
           "execute_tb.execute0.imm\[31:0\]" \
           "execute_tb.execute0.alu_op2\[31:0\]"
srcSignalViewSelect "execute_tb.execute0.clk" "execute_tb.execute0.reset" \
           "execute_tb.execute0.opsel1\[1:0\]" \
           "execute_tb.execute0.rs1_data_i\[31:0\]" \
           "execute_tb.execute0.pc_i\[31:0\]" \
           "execute_tb.execute0.alu_op1\[31:0\]" \
           "execute_tb.execute0.opsel2\[1:0\]" \
           "execute_tb.execute0.rs2_data_i\[31:0\]" \
           "execute_tb.execute0.imm\[31:0\]" \
           "execute_tb.execute0.alu_op2\[31:0\]" \
           "execute_tb.execute0.alu_func\[3:0\]"
srcSignalViewSelect "execute_tb.execute0.clk" "execute_tb.execute0.reset" \
           "execute_tb.execute0.opsel1\[1:0\]" \
           "execute_tb.execute0.rs1_data_i\[31:0\]" \
           "execute_tb.execute0.pc_i\[31:0\]" \
           "execute_tb.execute0.alu_op1\[31:0\]" \
           "execute_tb.execute0.opsel2\[1:0\]" \
           "execute_tb.execute0.rs2_data_i\[31:0\]" \
           "execute_tb.execute0.imm\[31:0\]" \
           "execute_tb.execute0.alu_op2\[31:0\]" \
           "execute_tb.execute0.alu_func\[3:0\]" \
           "execute_tb.execute0.alu_out_temp\[31:0\]"
srcSignalViewSelect "execute_tb.execute0.clk" "execute_tb.execute0.reset" \
           "execute_tb.execute0.opsel1\[1:0\]" \
           "execute_tb.execute0.rs1_data_i\[31:0\]" \
           "execute_tb.execute0.pc_i\[31:0\]" \
           "execute_tb.execute0.alu_op1\[31:0\]" \
           "execute_tb.execute0.opsel2\[1:0\]" \
           "execute_tb.execute0.rs2_data_i\[31:0\]" \
           "execute_tb.execute0.imm\[31:0\]" \
           "execute_tb.execute0.alu_op2\[31:0\]" \
           "execute_tb.execute0.alu_func\[3:0\]" \
           "execute_tb.execute0.alu_out_temp\[31:0\]" \
           "execute_tb.execute0.alu_out\[31:0\]"
wvAddSignal -win $_nWave2 "/execute_tb/execute0/clk" "/execute_tb/execute0/reset" \
           "/execute_tb/execute0/opsel1\[1:0\]" \
           "/execute_tb/execute0/rs1_data_i\[31:0\]" \
           "/execute_tb/execute0/pc_i\[31:0\]" \
           "/execute_tb/execute0/alu_op1\[31:0\]" \
           "/execute_tb/execute0/opsel2\[1:0\]" \
           "/execute_tb/execute0/rs2_data_i\[31:0\]" \
           "/execute_tb/execute0/imm\[31:0\]" \
           "/execute_tb/execute0/alu_op2\[31:0\]" \
           "/execute_tb/execute0/alu_func\[3:0\]" \
           "/execute_tb/execute0/alu_out_temp\[31:0\]" \
           "/execute_tb/execute0/alu_out\[31:0\]"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 13)}
verdiSetActWin -win $_nWave2
wvScrollUp -win $_nWave2 2
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 327.125506 -snap {("G2" 0)}
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 205.621747 -snap {("G2" 0)}
wvSaveSignal -win $_nWave2 \
           "/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/execute/sim/execute_wave"
debExit
