verdiSetActWin -dock widgetDock_<Decl._Tree>
simSetSimulator "-vcssv" -exec \
           "/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/execute/sim/presyn/simv" \
           -args "+v2k +lint=all +neg_tchk +define+PRE_SYN=1 -a execute.log"
debImport "-dbdir" \
          "/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/execute/sim/presyn/simv.daidir"
debLoadSimResult \
           /home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/execute/sim/presyn/execute.fsdb
wvCreateWindow
verdiWindowResize -win $_Verdi_1 "308" "20" "900" "698"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcHBSelect "execute_tb.execute0" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "execute_tb.execute0" -win $_nTrace1
srcSetScope "execute_tb.execute0" -delim "." -win $_nTrace1
srcHBSelect "execute_tb.execute0" -win $_nTrace1
srcSignalView -on
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelect "execute_tb.execute0.clk"
srcSignalViewSelect "execute_tb.execute0.clk" "execute_tb.execute0.reset" \
           "execute_tb.execute0.opsel1\[1:0\]" \
           "execute_tb.execute0.opsel2\[1:0\]" \
           "execute_tb.execute0.alu_func\[3:0\]" \
           "execute_tb.execute0.rs1_data_i\[31:0\]" \
           "execute_tb.execute0.rs2_data_i\[31:0\]" \
           "execute_tb.execute0.rd_addr_i\[4:0\]" \
           "execute_tb.execute0.rf_w_en_i" "execute_tb.execute0.imm\[31:0\]" \
           "execute_tb.execute0.pc_i\[31:0\]" \
           "execute_tb.execute0.wbsel_i\[1:0\]" \
           "execute_tb.execute0.mem_w_en_i" "execute_tb.execute0.pc_o\[31:0\]" \
           "execute_tb.execute0.alu_out\[31:0\]" \
           "execute_tb.execute0.rd_addr_o\[4:0\]" \
           "execute_tb.execute0.rf_w_en_o" \
           "execute_tb.execute0.wbsel_o\[1:0\]" \
           "execute_tb.execute0.mem_w_en_o" \
           "execute_tb.execute0.rs2_data_o\[31:0\]" \
           "execute_tb.execute0.ADDR_LEN" "execute_tb.execute0.WIDTH" \
           "execute_tb.execute0.alu_op1\[31:0\]" \
           "execute_tb.execute0.alu_op2\[31:0\]" \
           "execute_tb.execute0.alu_out_temp\[31:0\]"
wvAddSignal -win $_nWave2 "execute_tb/execute0/ADDR_LEN"
wvAddSignal -win $_nWave2 "execute_tb/execute0/WIDTH"
wvAddSignal -win $_nWave2 "/execute_tb/execute0/clk" "/execute_tb/execute0/reset" \
           "/execute_tb/execute0/opsel1\[1:0\]" \
           "/execute_tb/execute0/opsel2\[1:0\]" \
           "/execute_tb/execute0/alu_func\[3:0\]" \
           "/execute_tb/execute0/rs1_data_i\[31:0\]" \
           "/execute_tb/execute0/rs2_data_i\[31:0\]" \
           "/execute_tb/execute0/rd_addr_i\[4:0\]" \
           "/execute_tb/execute0/rf_w_en_i" "/execute_tb/execute0/imm\[31:0\]" \
           "/execute_tb/execute0/pc_i\[31:0\]" \
           "/execute_tb/execute0/wbsel_i\[1:0\]" \
           "/execute_tb/execute0/mem_w_en_i" \
           "/execute_tb/execute0/pc_o\[31:0\]" \
           "/execute_tb/execute0/alu_out\[31:0\]" \
           "/execute_tb/execute0/rd_addr_o\[4:0\]" \
           "/execute_tb/execute0/rf_w_en_o" \
           "/execute_tb/execute0/wbsel_o\[1:0\]" \
           "/execute_tb/execute0/mem_w_en_o" \
           "/execute_tb/execute0/rs2_data_o\[31:0\]" \
           "/execute_tb/execute0/alu_op1\[31:0\]" \
           "/execute_tb/execute0/alu_op2\[31:0\]" \
           "/execute_tb/execute0/alu_out_temp\[31:0\]"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 23)}
wvSetPosition -win $_nWave2 {("G1" 23)}
wvUnknownSaveResult -win $_nWave2 -clear
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
verdiSetActWin -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoomAll -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectGroup -win $_nWave2 {G2}
srcSelect -win $_nTrace1 -range {11 11 4 7 1 3}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "opsel1" -line 12 -pos 1 -win $_nTrace1
srcSelect -signal "reset" -line 11 -pos 1 -win $_nTrace1
srcSelect -signal "clk" -line 11 -pos 1 -win $_nTrace1
srcSelect -signal "opsel2" -line 12 -pos 1 -win $_nTrace1
srcSelect -signal "alu_func" -line 13 -pos 1 -win $_nTrace1
srcSelect -signal "rs1_data_i" -line 14 -pos 1 -win $_nTrace1
srcSelect -signal "rs2_data_i" -line 14 -pos 1 -win $_nTrace1
srcSelect -signal "imm" -line 14 -pos 1 -win $_nTrace1
srcSelect -signal "pc_i" -line 15 -pos 1 -win $_nTrace1
srcSelect -signal "rd_addr_i" -line 16 -pos 1 -win $_nTrace1
srcSelect -signal "rf_w_en_i" -line 17 -pos 1 -win $_nTrace1
srcSelect -signal "wbsel_i" -line 18 -pos 1 -win $_nTrace1
srcSelect -signal "mem_w_en_i" -line 19 -pos 1 -win $_nTrace1
srcSelect -signal "pc_o" -line 21 -pos 1 -win $_nTrace1
srcSelect -signal "alu_out" -line 22 -pos 1 -win $_nTrace1
srcSelect -signal "rd_addr_o" -line 23 -pos 1 -win $_nTrace1
srcSelect -signal "rf_w_en_o" -line 24 -pos 1 -win $_nTrace1
srcSelect -signal "wbsel_o" -line 25 -pos 1 -win $_nTrace1
srcSelect -signal "mem_w_en_o" -line 26 -pos 1 -win $_nTrace1
srcSelect -signal "rs2_data_o" -line 27 -pos 1 -win $_nTrace1
verdiSetActWin -win $_nWave2
wvScrollUp -win $_nWave2 9
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSelectGroup -win $_nWave2 {G1}
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 0)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvCreateWindow
wvSetPosition -win $_nWave3 {("G1" 0)}
wvOpenFile -win $_nWave3 \
           {/home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/execute/sim/presyn/execute.fsdb}
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
verdiSetActWin -win $_nWave3
wvZoomAll -win $_nWave3
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "G1" 1 )} 
wvSetPosition -win $_nWave3 {("G1" 1)}
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSelectSignal -win $_nWave3 {( "G1" 2 )} 
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSetPosition -win $_nWave3 {("G1" 1)}
wvSetPosition -win $_nWave3 {("G1" 0)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 0)}
wvSetPosition -win $_nWave3 {("G1" 1)}
wvZoomAll -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G1" 15 )} 
wvSelectSignal -win $_nWave3 {( "G1" 16 )} 
wvSelectSignal -win $_nWave3 {( "G1" 14 )} 
wvSelectSignal -win $_nWave3 {( "G1" 13 )} 
wvSelectSignal -win $_nWave3 {( "G1" 8 )} 
wvSelectSignal -win $_nWave3 {( "G1" 3 )} 
wvSelectSignal -win $_nWave3 {( "G1" 4 )} 
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcSignalViewSelect "execute_tb.execute0.alu_out\[31:0\]"
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelect "execute_tb.execute0.alu_op1\[31:0\]"
srcSignalViewSelect "execute_tb.execute0.alu_op1\[31:0\]"
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 0)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvAddSignal -win $_nWave3 "/execute_tb/execute0/alu_op1\[31:0\]"
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 4)}
srcSignalViewSelect "execute_tb.execute0.alu_op2\[31:0\]"
srcSignalViewSelect "execute_tb.execute0.alu_op2\[31:0\]"
wvSetPosition -win $_nWave3 {("G1" 5)}
wvAddSignal -win $_nWave3 "/execute_tb/execute0/alu_op2\[31:0\]"
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetPosition -win $_nWave3 {("G1" 6)}
wvZoomAll -win $_nWave3
verdiSetActWin -win $_nWave3
wvZoomAll -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G1" 4 )} 
wvScrollDown -win $_nWave3 3
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvSelectSignal -win $_nWave3 {( "G1" 11 )} 
wvSetPosition -win $_nWave3 {("G1" 11)}
wvSetPosition -win $_nWave3 {("G1" 10)}
wvSetPosition -win $_nWave3 {("G1" 9)}
wvSetPosition -win $_nWave3 {("G1" 8)}
wvSetPosition -win $_nWave3 {("G1" 7)}
wvSetPosition -win $_nWave3 {("G1" 6)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSetPosition -win $_nWave3 {("G1" 1)}
wvSetPosition -win $_nWave3 {("G1" 0)}
wvSetPosition -win $_nWave3 {("G1" 1)}
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSetPosition -win $_nWave3 {("G1" 1)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 1)}
wvSetPosition -win $_nWave3 {("G1" 2)}
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 6
wvScrollDown -win $_nWave3 5
wvSelectSignal -win $_nWave3 {( "G1" 16 )} 
wvSetPosition -win $_nWave3 {("G1" 16)}
wvSetPosition -win $_nWave3 {("G1" 15)}
wvSetPosition -win $_nWave3 {("G1" 14)}
wvSetPosition -win $_nWave3 {("G1" 13)}
wvSetPosition -win $_nWave3 {("G1" 12)}
wvSetPosition -win $_nWave3 {("G1" 13)}
wvSetPosition -win $_nWave3 {("G1" 12)}
wvSetPosition -win $_nWave3 {("G1" 11)}
wvSetPosition -win $_nWave3 {("G1" 10)}
wvSetPosition -win $_nWave3 {("G1" 9)}
wvSetPosition -win $_nWave3 {("G1" 8)}
wvSetPosition -win $_nWave3 {("G1" 7)}
wvSetPosition -win $_nWave3 {("G1" 6)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSetPosition -win $_nWave3 {("G1" 1)}
wvSetPosition -win $_nWave3 {("G1" 0)}
wvSetPosition -win $_nWave3 {("G1" 1)}
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 2)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvScrollDown -win $_nWave3 3
wvScrollDown -win $_nWave3 4
wvSelectSignal -win $_nWave3 {( "G1" 10 )} 
wvSelectSignal -win $_nWave3 {( "G1" 12 )} 
wvSetPosition -win $_nWave3 {("G1" 12)}
wvSetPosition -win $_nWave3 {("G1" 11)}
wvSetPosition -win $_nWave3 {("G1" 10)}
wvSetPosition -win $_nWave3 {("G1" 9)}
wvSetPosition -win $_nWave3 {("G1" 8)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 8)}
wvSetPosition -win $_nWave3 {("G1" 9)}
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvSetPosition -win $_nWave3 {("G1" 8)}
wvSetPosition -win $_nWave3 {("G1" 7)}
wvSetPosition -win $_nWave3 {("G1" 8)}
wvSetPosition -win $_nWave3 {("G1" 7)}
wvSetPosition -win $_nWave3 {("G1" 8)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 8)}
wvSetPosition -win $_nWave3 {("G1" 9)}
wvSelectSignal -win $_nWave3 {( "G1" 12 )} 
wvSetPosition -win $_nWave3 {("G1" 12)}
wvSetPosition -win $_nWave3 {("G1" 11)}
wvSetPosition -win $_nWave3 {("G1" 10)}
wvSetPosition -win $_nWave3 {("G1" 9)}
wvSetPosition -win $_nWave3 {("G1" 8)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 8)}
wvSetPosition -win $_nWave3 {("G1" 9)}
wvSelectSignal -win $_nWave3 {( "G1" 8 )} 
wvSelectSignal -win $_nWave3 {( "G1" 8 )} 
wvSetPosition -win $_nWave3 {("G1" 8)}
wvSetPosition -win $_nWave3 {("G1" 9)}
wvSetPosition -win $_nWave3 {("G1" 10)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 10)}
wvScrollDown -win $_nWave3 10
wvScrollUp -win $_nWave3 14
wvScrollDown -win $_nWave3 1
wvSelectSignal -win $_nWave3 {( "G1" 7 )} 
wvScrollUp -win $_nWave3 1
wvSelectSignal -win $_nWave3 {( "G1" 5 )} 
wvScrollDown -win $_nWave3 3
wvSelectSignal -win $_nWave3 {( "G1" 12 )} 
wvSetPosition -win $_nWave3 {("G1" 12)}
wvSetPosition -win $_nWave3 {("G1" 11)}
wvSetPosition -win $_nWave3 {("G1" 10)}
wvSetPosition -win $_nWave3 {("G1" 9)}
wvSetPosition -win $_nWave3 {("G1" 7)}
wvSetPosition -win $_nWave3 {("G1" 6)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSetPosition -win $_nWave3 {("G1" 1)}
wvSetPosition -win $_nWave3 {("G1" 0)}
wvSetPosition -win $_nWave3 {("G1" 1)}
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetPosition -win $_nWave3 {("G1" 6)}
wvScrollDown -win $_nWave3 1
wvSelectSignal -win $_nWave3 {( "G1" 2 )} 
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSelectSignal -win $_nWave3 {( "G1" 7 )} 
wvScrollDown -win $_nWave3 1
wvSelectSignal -win $_nWave3 {( "G1" 4 )} 
wvScrollDown -win $_nWave3 7
wvScrollDown -win $_nWave3 8
