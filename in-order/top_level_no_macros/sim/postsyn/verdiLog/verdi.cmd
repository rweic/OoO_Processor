simSetSimulator "-vcssv" -exec \
           "/home/projects/ee478.2023spr/ecarino/OoO_Processor/in-order/top_level_no_macros/sim/postsyn/simv" \
           -args \
           "+v2k +lint=all +neg_tchk +define+POST_SYN=1 -a top_level_no_macros_tb.log"
debImport "-dbdir" \
          "/home/projects/ee478.2023spr/ecarino/OoO_Processor/in-order/top_level_no_macros/sim/postsyn/simv.daidir"
debLoadSimResult \
           /home/projects/ee478.2023spr/ecarino/OoO_Processor/in-order/top_level_no_macros/sim/postsyn/top_level_no_macros_tb.fsdb
wvCreateWindow
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcHBSelect "top_level_no_macros_tb" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "top_level_no_macros_tb.cpu0" -win $_nTrace1
srcHBSelect "top_level_no_macros_tb.cpu0.memaccess0" -win $_nTrace1
srcHBDrag -win $_nTrace1
wvSetPosition -win $_nWave2 {("regfile0" 0)}
wvRenameGroup -win $_nWave2 {G1} {regfile0}
wvAddSignal -win $_nWave2 "/top_level_no_macros_tb/cpu0/regfile0/clk" \
           "/top_level_no_macros_tb/cpu0/regfile0/reset" \
           "/top_level_no_macros_tb/cpu0/regfile0/w_en" \
           "/top_level_no_macros_tb/cpu0/regfile0/ra_addr\[4:0\]" \
           "/top_level_no_macros_tb/cpu0/regfile0/rb_addr\[4:0\]" \
           "/top_level_no_macros_tb/cpu0/regfile0/rd_addr\[4:0\]" \
           "/top_level_no_macros_tb/cpu0/regfile0/w_data\[31:0\]" \
           "/top_level_no_macros_tb/cpu0/regfile0/ra_value\[31:0\]" \
           "/top_level_no_macros_tb/cpu0/regfile0/rb_value\[31:0\]" \
           "/top_level_no_macros_tb/cpu0/regfile0/regfile_o\[1023:0\]"
wvSetPosition -win $_nWave2 {("regfile0" 0)}
wvSetPosition -win $_nWave2 {("regfile0" 10)}
wvSetPosition -win $_nWave2 {("regfile0" 10)}
wvSetCursor -win $_nWave2 1186.252463 -snap {("regfile0" 5)}
verdiSetActWin -win $_nWave2
wvZoomAll -win $_nWave2
wvSelectSignal -win $_nWave2 {( "regfile0" 6 )} 
wvSelectSignal -win $_nWave2 {( "regfile0" 7 )} 
wvSelectSignal -win $_nWave2 {( "regfile0" 7 )} 
wvSetRadix -win $_nWave2 -format UDec
wvZoom -win $_nWave2 317.179803 36856.293103
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 0.000000 38569.064039
wvZoom -win $_nWave2 18738.295275 37714.084787
wvZoom -win $_nWave2 29546.549770 29745.187960
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 15541.810345 42184.913793
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 24549.716749 -snap {("regfile0" 7)}
wvSetCursor -win $_nWave2 34065.110837 -snap {("regfile0" 7)}
wvSetCursor -win $_nWave2 35651.009852 -snap {("regfile0" 7)}
wvSetCursor -win $_nWave2 37807.832512 -snap {("regfile0" 7)}
wvSetCursor -win $_nWave2 27784.950739 -snap {("regfile0" 8)}
wvSetCursor -win $_nWave2 19094.224138 -snap {("regfile0" 7)}
wvSetCursor -win $_nWave2 22392.894089 -snap {("regfile0" 7)}
wvSetCursor -win $_nWave2 37427.216749 -snap {("regfile0" 7)}
wvSetCursor -win $_nWave2 20172.635468 -snap {("regfile0" 8)}
wvSetCursor -win $_nWave2 18332.992611 -snap {("regfile0" 7)}
wvSetCursor -win $_nWave2 20553.251232 -snap {("regfile0" 7)}
wvZoom -win $_nWave2 18269.556650 37934.704433
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
verdiSetActWin -dock widgetDock_<Inst._Tree>
verdiSetActWin -win $_nWave2
wvScrollUp -win $_nWave2 2
wvScrollDown -win $_nWave2 3
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBDrag -win $_nTrace1
wvSetPosition -win $_nWave2 {("regfile0" 5)}
wvSetPosition -win $_nWave2 {("regfile0" 8)}
wvSetPosition -win $_nWave2 {("regfile0" 9)}
wvSetPosition -win $_nWave2 {("regfile0" 10)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("regfile0" 0)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("alu0" 0)}
wvRenameGroup -win $_nWave2 {G2} {alu0}
wvAddSignal -win $_nWave2 "/top_level_no_macros_tb/cpu0/exec0/alu0/funct7\[6:0\]" \
           "/top_level_no_macros_tb/cpu0/exec0/alu0/funct3\[2:0\]" \
           "/top_level_no_macros_tb/cpu0/exec0/alu0/alu_op1\[31:0\]" \
           "/top_level_no_macros_tb/cpu0/exec0/alu0/alu_op2\[31:0\]" \
           "/top_level_no_macros_tb/cpu0/exec0/alu0/alu_func\[3:0\]" \
           "/top_level_no_macros_tb/cpu0/exec0/alu0/alu_out\[31:0\]"
wvSetPosition -win $_nWave2 {("alu0" 0)}
wvSetPosition -win $_nWave2 {("alu0" 6)}
wvSetPosition -win $_nWave2 {("alu0" 6)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
verdiSetActWin -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "alu0" 1 2 3 4 5 6 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetCursor -win $_nWave2 23452.243381 -snap {("alu0" 4)}
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 20172.635468 25628.128079
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 21060.738916 23978.793103
wvZoom -win $_nWave2 21518.930922 21633.928132
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 20680.123153 36729.421182
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 34699.470443 -snap {("alu0" 5)}
wvZoom -win $_nWave2 20844.640631 37764.827316
wvSetCursor -win $_nWave2 24780.756566 -snap {("alu0" 3)}
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 16495.649547 40616.646526
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 33129.943604 -snap {("regfile0" 8)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoom -win $_nWave2 16495.649547 38698.659757
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 0.000000 40725.886700
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 0.000000 53984.002463
wvSelectSignal -win $_nWave2 {( "regfile0" 4 )} 
wvSelectSignal -win $_nWave2 {( "regfile0" 4 5 6 7 8 9 10 )} 
wvSelectSignal -win $_nWave2 {( "regfile0" 4 5 6 7 8 9 10 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetCursor -win $_nWave2 39889.656992 -snap {("regfile0" 7)}
wvSetCursor -win $_nWave2 45740.140018 -snap {("regfile0" 7)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoom -win $_nWave2 4753.517458 38194.346570
wvZoom -win $_nWave2 16696.670713 24459.720328
wvZoom -win $_nWave2 20181.438674 20826.766074
wvZoom -win $_nWave2 20539.468223 20582.781454
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 4503.953202 39330.295567
debExit
