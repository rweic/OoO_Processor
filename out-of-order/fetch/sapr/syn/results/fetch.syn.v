/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP3
// Date      : Tue Jun  6 21:41:04 2023
/////////////////////////////////////////////////////////////


module fetch ( clk_i, reset_i, stall_i, pc_sel_i, br_dest, pc_o, inst_o, 
        inst_valid_o, imem_addr_o, imem_inst_i );
  input [31:0] br_dest;
  output [31:0] pc_o;
  output [31:0] inst_o;
  output [7:0] imem_addr_o;
  input [31:0] imem_inst_i;
  input clk_i, reset_i, stall_i, pc_sel_i;
  output inst_valid_o;
  wire   pc_1, pc_0, inst_valid_0_, N6, N7, N8, N9, N10, N11, N12, N13, N14,
         N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28,
         N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42,
         N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56,
         N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226;
  wire   [31:10] pc;

  DFF_X1 inst_o_reg_31_ ( .D(N69), .CK(clk_i), .Q(inst_o[31]) );
  DFF_X1 inst_o_reg_30_ ( .D(N68), .CK(clk_i), .Q(inst_o[30]) );
  DFF_X1 inst_o_reg_29_ ( .D(N67), .CK(clk_i), .Q(inst_o[29]) );
  DFF_X1 inst_o_reg_28_ ( .D(N66), .CK(clk_i), .Q(inst_o[28]) );
  DFF_X1 inst_o_reg_27_ ( .D(N65), .CK(clk_i), .Q(inst_o[27]) );
  DFF_X1 inst_o_reg_26_ ( .D(N64), .CK(clk_i), .Q(inst_o[26]) );
  DFF_X1 inst_o_reg_25_ ( .D(N63), .CK(clk_i), .Q(inst_o[25]) );
  DFF_X1 inst_o_reg_24_ ( .D(N62), .CK(clk_i), .Q(inst_o[24]) );
  DFF_X1 inst_o_reg_23_ ( .D(N61), .CK(clk_i), .Q(inst_o[23]) );
  DFF_X1 inst_o_reg_22_ ( .D(N60), .CK(clk_i), .Q(inst_o[22]) );
  DFF_X1 inst_o_reg_21_ ( .D(N59), .CK(clk_i), .Q(inst_o[21]) );
  DFF_X1 inst_o_reg_20_ ( .D(N58), .CK(clk_i), .Q(inst_o[20]) );
  DFF_X1 inst_o_reg_19_ ( .D(N57), .CK(clk_i), .Q(inst_o[19]) );
  DFF_X1 inst_o_reg_18_ ( .D(N56), .CK(clk_i), .Q(inst_o[18]) );
  DFF_X1 inst_o_reg_17_ ( .D(N55), .CK(clk_i), .Q(inst_o[17]) );
  DFF_X1 inst_o_reg_16_ ( .D(N54), .CK(clk_i), .Q(inst_o[16]) );
  DFF_X1 inst_o_reg_15_ ( .D(N53), .CK(clk_i), .Q(inst_o[15]) );
  DFF_X1 inst_o_reg_14_ ( .D(N52), .CK(clk_i), .Q(inst_o[14]) );
  DFF_X1 inst_o_reg_13_ ( .D(N51), .CK(clk_i), .Q(inst_o[13]) );
  DFF_X1 inst_o_reg_12_ ( .D(N50), .CK(clk_i), .Q(inst_o[12]) );
  DFF_X1 inst_o_reg_11_ ( .D(N49), .CK(clk_i), .Q(inst_o[11]) );
  DFF_X1 inst_o_reg_10_ ( .D(N48), .CK(clk_i), .Q(inst_o[10]) );
  DFF_X1 inst_o_reg_9_ ( .D(N47), .CK(clk_i), .Q(inst_o[9]) );
  DFF_X1 inst_o_reg_8_ ( .D(N46), .CK(clk_i), .Q(inst_o[8]) );
  DFF_X1 inst_o_reg_7_ ( .D(N45), .CK(clk_i), .Q(inst_o[7]) );
  DFF_X1 inst_o_reg_6_ ( .D(N44), .CK(clk_i), .Q(inst_o[6]) );
  DFF_X1 inst_o_reg_5_ ( .D(N43), .CK(clk_i), .Q(inst_o[5]) );
  DFF_X1 inst_o_reg_4_ ( .D(N42), .CK(clk_i), .Q(inst_o[4]) );
  DFF_X1 inst_o_reg_3_ ( .D(N41), .CK(clk_i), .Q(inst_o[3]) );
  DFF_X1 inst_o_reg_2_ ( .D(N40), .CK(clk_i), .Q(inst_o[2]) );
  DFF_X1 inst_o_reg_1_ ( .D(N39), .CK(clk_i), .Q(inst_o[1]) );
  DFF_X1 inst_o_reg_0_ ( .D(N38), .CK(clk_i), .Q(inst_o[0]) );
  DFF_X1 inst_valid_reg_0_ ( .D(n226), .CK(clk_i), .Q(inst_valid_0_) );
  DFF_X1 inst_valid_o_reg ( .D(N70), .CK(clk_i), .Q(inst_valid_o) );
  DFF_X1 pc_reg_31_ ( .D(n32), .CK(clk_i), .Q(pc[31]) );
  DFF_X1 pc_o_reg_31_ ( .D(N37), .CK(clk_i), .Q(pc_o[31]) );
  DFF_X1 pc_reg_30_ ( .D(n31), .CK(clk_i), .Q(pc[30]), .QN(n224) );
  DFF_X1 pc_o_reg_30_ ( .D(N36), .CK(clk_i), .Q(pc_o[30]) );
  DFF_X1 pc_reg_29_ ( .D(n30), .CK(clk_i), .Q(pc[29]), .QN(n222) );
  DFF_X1 pc_o_reg_29_ ( .D(N35), .CK(clk_i), .Q(pc_o[29]) );
  DFF_X1 pc_reg_28_ ( .D(n29), .CK(clk_i), .Q(pc[28]), .QN(n221) );
  DFF_X1 pc_o_reg_28_ ( .D(N34), .CK(clk_i), .Q(pc_o[28]) );
  DFF_X1 pc_reg_27_ ( .D(n28), .CK(clk_i), .QN(n214) );
  DFF_X1 pc_o_reg_27_ ( .D(N33), .CK(clk_i), .Q(pc_o[27]) );
  DFF_X1 pc_reg_26_ ( .D(n27), .CK(clk_i), .Q(pc[26]) );
  DFF_X1 pc_o_reg_26_ ( .D(N32), .CK(clk_i), .Q(pc_o[26]) );
  DFF_X1 pc_reg_25_ ( .D(n26), .CK(clk_i), .Q(pc[25]) );
  DFF_X1 pc_o_reg_25_ ( .D(N31), .CK(clk_i), .Q(pc_o[25]) );
  DFF_X1 pc_reg_24_ ( .D(n25), .CK(clk_i), .Q(pc[24]), .QN(n220) );
  DFF_X1 pc_o_reg_24_ ( .D(N30), .CK(clk_i), .Q(pc_o[24]) );
  DFF_X1 pc_reg_23_ ( .D(n24), .CK(clk_i), .QN(n213) );
  DFF_X1 pc_o_reg_23_ ( .D(N29), .CK(clk_i), .Q(pc_o[23]) );
  DFF_X1 pc_reg_22_ ( .D(n23), .CK(clk_i), .Q(pc[22]) );
  DFF_X1 pc_o_reg_22_ ( .D(N28), .CK(clk_i), .Q(pc_o[22]) );
  DFF_X1 pc_reg_21_ ( .D(n22), .CK(clk_i), .Q(pc[21]) );
  DFF_X1 pc_o_reg_21_ ( .D(N27), .CK(clk_i), .Q(pc_o[21]) );
  DFF_X1 pc_reg_20_ ( .D(n21), .CK(clk_i), .Q(pc[20]), .QN(n219) );
  DFF_X1 pc_o_reg_20_ ( .D(N26), .CK(clk_i), .Q(pc_o[20]) );
  DFF_X1 pc_reg_19_ ( .D(n20), .CK(clk_i), .QN(n212) );
  DFF_X1 pc_o_reg_19_ ( .D(N25), .CK(clk_i), .Q(pc_o[19]) );
  DFF_X1 pc_reg_18_ ( .D(n19), .CK(clk_i), .Q(pc[18]) );
  DFF_X1 pc_o_reg_18_ ( .D(N24), .CK(clk_i), .Q(pc_o[18]) );
  DFF_X1 pc_reg_17_ ( .D(n18), .CK(clk_i), .Q(pc[17]) );
  DFF_X1 pc_o_reg_17_ ( .D(N23), .CK(clk_i), .Q(pc_o[17]) );
  DFF_X1 pc_reg_16_ ( .D(n17), .CK(clk_i), .Q(pc[16]), .QN(n218) );
  DFF_X1 pc_o_reg_16_ ( .D(N22), .CK(clk_i), .Q(pc_o[16]) );
  DFF_X1 pc_reg_15_ ( .D(n16), .CK(clk_i), .QN(n211) );
  DFF_X1 pc_o_reg_15_ ( .D(N21), .CK(clk_i), .Q(pc_o[15]) );
  DFF_X1 pc_reg_14_ ( .D(n15), .CK(clk_i), .Q(pc[14]) );
  DFF_X1 pc_o_reg_14_ ( .D(N20), .CK(clk_i), .Q(pc_o[14]) );
  DFF_X1 pc_reg_13_ ( .D(n14), .CK(clk_i), .Q(pc[13]) );
  DFF_X1 pc_o_reg_13_ ( .D(N19), .CK(clk_i), .Q(pc_o[13]) );
  DFF_X1 pc_reg_12_ ( .D(n13), .CK(clk_i), .Q(pc[12]), .QN(n217) );
  DFF_X1 pc_o_reg_12_ ( .D(N18), .CK(clk_i), .Q(pc_o[12]) );
  DFF_X1 pc_reg_11_ ( .D(n12), .CK(clk_i), .QN(n210) );
  DFF_X1 pc_o_reg_11_ ( .D(N17), .CK(clk_i), .Q(pc_o[11]) );
  DFF_X1 pc_reg_10_ ( .D(n11), .CK(clk_i), .Q(pc[10]) );
  DFF_X1 pc_o_reg_10_ ( .D(N16), .CK(clk_i), .Q(pc_o[10]) );
  DFF_X1 pc_o_reg_9_ ( .D(N15), .CK(clk_i), .Q(pc_o[9]) );
  DFF_X1 pc_o_reg_8_ ( .D(N14), .CK(clk_i), .Q(pc_o[8]) );
  DFF_X1 pc_reg_7_ ( .D(n8), .CK(clk_i), .Q(imem_addr_o[5]), .QN(n209) );
  DFF_X1 pc_o_reg_7_ ( .D(N13), .CK(clk_i), .Q(pc_o[7]) );
  DFF_X1 pc_o_reg_6_ ( .D(N12), .CK(clk_i), .Q(pc_o[6]) );
  DFF_X1 pc_o_reg_5_ ( .D(N11), .CK(clk_i), .Q(pc_o[5]) );
  DFF_X1 pc_o_reg_4_ ( .D(N10), .CK(clk_i), .Q(pc_o[4]) );
  DFF_X1 pc_o_reg_3_ ( .D(N9), .CK(clk_i), .Q(pc_o[3]) );
  DFF_X1 pc_o_reg_2_ ( .D(N8), .CK(clk_i), .Q(pc_o[2]) );
  DFF_X1 pc_reg_1_ ( .D(n2), .CK(clk_i), .Q(pc_1) );
  DFF_X1 pc_o_reg_1_ ( .D(N7), .CK(clk_i), .Q(pc_o[1]) );
  DFF_X1 pc_reg_0_ ( .D(n1), .CK(clk_i), .Q(pc_0) );
  DFF_X1 pc_o_reg_0_ ( .D(N6), .CK(clk_i), .Q(pc_o[0]) );
  DFF_X1 pc_reg_3_ ( .D(n4), .CK(clk_i), .Q(imem_addr_o[1]), .QN(n225) );
  DFF_X1 pc_reg_2_ ( .D(n3), .CK(clk_i), .Q(imem_addr_o[0]), .QN(n223) );
  DFF_X1 pc_reg_8_ ( .D(n9), .CK(clk_i), .Q(imem_addr_o[6]), .QN(n216) );
  DFF_X1 pc_reg_4_ ( .D(n5), .CK(clk_i), .Q(imem_addr_o[2]), .QN(n215) );
  DFF_X1 pc_reg_9_ ( .D(n10), .CK(clk_i), .Q(imem_addr_o[7]) );
  DFF_X1 pc_reg_6_ ( .D(n7), .CK(clk_i), .Q(imem_addr_o[4]) );
  DFF_X1 pc_reg_5_ ( .D(n6), .CK(clk_i), .Q(imem_addr_o[3]) );
  CLKBUF_X1 U183 ( .A(n85), .Z(n206) );
  INV_X1 U184 ( .A(n199), .ZN(n186) );
  INV_X1 U185 ( .A(n195), .ZN(n190) );
  INV_X1 U186 ( .A(n102), .ZN(n105) );
  INV_X1 U187 ( .A(reset_i), .ZN(n99) );
  INV_X1 U188 ( .A(n84), .ZN(n1) );
  INV_X1 U189 ( .A(n87), .ZN(n2) );
  CLKBUF_X1 U190 ( .A(n99), .Z(n226) );
  AND2_X1 U191 ( .A1(n99), .A2(pc[18]), .ZN(N24) );
  AND2_X1 U192 ( .A1(n99), .A2(pc[14]), .ZN(N20) );
  AND2_X1 U193 ( .A1(n99), .A2(pc[10]), .ZN(N16) );
  AND2_X1 U194 ( .A1(n99), .A2(pc[22]), .ZN(N28) );
  AND2_X1 U195 ( .A1(imem_inst_i[3]), .A2(n99), .ZN(N41) );
  AND2_X1 U196 ( .A1(imem_inst_i[9]), .A2(n99), .ZN(N47) );
  AND2_X1 U197 ( .A1(imem_inst_i[7]), .A2(n99), .ZN(N45) );
  AND2_X1 U198 ( .A1(imem_inst_i[11]), .A2(n99), .ZN(N49) );
  AND2_X1 U199 ( .A1(imem_inst_i[15]), .A2(n99), .ZN(N53) );
  AND2_X1 U200 ( .A1(imem_inst_i[13]), .A2(n99), .ZN(N51) );
  AND2_X1 U201 ( .A1(imem_inst_i[17]), .A2(n99), .ZN(N55) );
  AND2_X1 U202 ( .A1(imem_inst_i[21]), .A2(n99), .ZN(N59) );
  AND2_X1 U203 ( .A1(imem_inst_i[19]), .A2(n99), .ZN(N57) );
  AND2_X1 U204 ( .A1(imem_inst_i[5]), .A2(n99), .ZN(N43) );
  AND2_X1 U205 ( .A1(imem_inst_i[6]), .A2(n99), .ZN(N44) );
  AND2_X1 U206 ( .A1(imem_inst_i[12]), .A2(n99), .ZN(N50) );
  AND2_X1 U207 ( .A1(imem_inst_i[14]), .A2(n99), .ZN(N52) );
  AND2_X1 U208 ( .A1(imem_inst_i[4]), .A2(n99), .ZN(N42) );
  AND2_X1 U209 ( .A1(imem_inst_i[18]), .A2(n99), .ZN(N56) );
  AND2_X1 U210 ( .A1(imem_inst_i[0]), .A2(n99), .ZN(N38) );
  AND2_X1 U211 ( .A1(imem_inst_i[2]), .A2(n99), .ZN(N40) );
  AND2_X1 U212 ( .A1(imem_inst_i[20]), .A2(n99), .ZN(N58) );
  AND2_X1 U213 ( .A1(imem_inst_i[8]), .A2(n99), .ZN(N46) );
  AND2_X1 U214 ( .A1(imem_inst_i[10]), .A2(n99), .ZN(N48) );
  AND2_X1 U215 ( .A1(imem_inst_i[16]), .A2(n99), .ZN(N54) );
  AND2_X1 U216 ( .A1(n99), .A2(imem_addr_o[3]), .ZN(N11) );
  AND2_X1 U217 ( .A1(n99), .A2(imem_addr_o[7]), .ZN(N15) );
  INV_X1 U218 ( .A(pc_sel_i), .ZN(n83) );
  NOR3_X1 U219 ( .A1(stall_i), .A2(reset_i), .A3(n83), .ZN(n85) );
  NOR3_X1 U220 ( .A1(pc_sel_i), .A2(stall_i), .A3(reset_i), .ZN(n111) );
  CLKBUF_X2 U221 ( .A(n111), .Z(n199) );
  NAND2_X1 U222 ( .A1(stall_i), .A2(n226), .ZN(n195) );
  NAND2_X1 U223 ( .A1(n186), .A2(n195), .ZN(n86) );
  AOI22_X1 U224 ( .A1(n206), .A2(br_dest[0]), .B1(pc_0), .B2(n86), .ZN(n84) );
  AOI22_X1 U225 ( .A1(n206), .A2(br_dest[1]), .B1(pc_1), .B2(n86), .ZN(n87) );
  NOR4_X1 U226 ( .A1(imem_inst_i[11]), .A2(imem_inst_i[10]), .A3(
        imem_inst_i[9]), .A4(imem_inst_i[8]), .ZN(n91) );
  NOR4_X1 U227 ( .A1(imem_inst_i[15]), .A2(imem_inst_i[14]), .A3(
        imem_inst_i[13]), .A4(imem_inst_i[12]), .ZN(n90) );
  NOR4_X1 U228 ( .A1(imem_inst_i[3]), .A2(imem_inst_i[2]), .A3(imem_inst_i[1]), 
        .A4(imem_inst_i[0]), .ZN(n89) );
  NOR4_X1 U229 ( .A1(imem_inst_i[7]), .A2(imem_inst_i[6]), .A3(imem_inst_i[5]), 
        .A4(imem_inst_i[4]), .ZN(n88) );
  NAND4_X1 U230 ( .A1(n91), .A2(n90), .A3(n89), .A4(n88), .ZN(n97) );
  NOR4_X1 U231 ( .A1(imem_inst_i[27]), .A2(imem_inst_i[26]), .A3(
        imem_inst_i[25]), .A4(imem_inst_i[24]), .ZN(n95) );
  NOR4_X1 U232 ( .A1(imem_inst_i[31]), .A2(imem_inst_i[30]), .A3(
        imem_inst_i[29]), .A4(imem_inst_i[28]), .ZN(n94) );
  NOR4_X1 U233 ( .A1(imem_inst_i[19]), .A2(imem_inst_i[18]), .A3(
        imem_inst_i[17]), .A4(imem_inst_i[16]), .ZN(n93) );
  NOR4_X1 U234 ( .A1(imem_inst_i[23]), .A2(imem_inst_i[22]), .A3(
        imem_inst_i[21]), .A4(imem_inst_i[20]), .ZN(n92) );
  NAND4_X1 U235 ( .A1(n95), .A2(n94), .A3(n93), .A4(n92), .ZN(n96) );
  OAI21_X1 U236 ( .B1(n97), .B2(n96), .A(inst_valid_0_), .ZN(n98) );
  NOR2_X1 U237 ( .A1(reset_i), .A2(n98), .ZN(N70) );
  AND2_X1 U238 ( .A1(imem_inst_i[1]), .A2(n226), .ZN(N39) );
  AND2_X1 U239 ( .A1(imem_inst_i[22]), .A2(n226), .ZN(N60) );
  AND2_X1 U240 ( .A1(imem_inst_i[23]), .A2(n226), .ZN(N61) );
  AND2_X1 U241 ( .A1(imem_inst_i[24]), .A2(n226), .ZN(N62) );
  AND2_X1 U242 ( .A1(imem_inst_i[25]), .A2(n226), .ZN(N63) );
  AND2_X1 U243 ( .A1(imem_inst_i[26]), .A2(n226), .ZN(N64) );
  AND2_X1 U244 ( .A1(imem_inst_i[27]), .A2(n226), .ZN(N65) );
  AND2_X1 U245 ( .A1(imem_inst_i[28]), .A2(n226), .ZN(N66) );
  AND2_X1 U246 ( .A1(imem_inst_i[29]), .A2(n226), .ZN(N67) );
  AND2_X1 U247 ( .A1(imem_inst_i[30]), .A2(n226), .ZN(N68) );
  AND2_X1 U248 ( .A1(imem_inst_i[31]), .A2(n226), .ZN(N69) );
  AND2_X1 U249 ( .A1(pc_0), .A2(n226), .ZN(N6) );
  AND2_X1 U250 ( .A1(pc_1), .A2(n226), .ZN(N7) );
  NOR2_X1 U251 ( .A1(reset_i), .A2(n223), .ZN(N8) );
  NOR2_X1 U252 ( .A1(reset_i), .A2(n225), .ZN(N9) );
  NOR2_X1 U253 ( .A1(reset_i), .A2(n215), .ZN(N10) );
  AND2_X1 U254 ( .A1(n226), .A2(imem_addr_o[4]), .ZN(N12) );
  NOR2_X1 U255 ( .A1(reset_i), .A2(n209), .ZN(N13) );
  NOR2_X1 U256 ( .A1(reset_i), .A2(n216), .ZN(N14) );
  NOR2_X1 U257 ( .A1(reset_i), .A2(n210), .ZN(N17) );
  NOR2_X1 U258 ( .A1(reset_i), .A2(n217), .ZN(N18) );
  AND2_X1 U259 ( .A1(n99), .A2(pc[13]), .ZN(N19) );
  NOR2_X1 U260 ( .A1(reset_i), .A2(n211), .ZN(N21) );
  NOR2_X1 U261 ( .A1(reset_i), .A2(n218), .ZN(N22) );
  AND2_X1 U262 ( .A1(n99), .A2(pc[17]), .ZN(N23) );
  NOR2_X1 U263 ( .A1(reset_i), .A2(n212), .ZN(N25) );
  NOR2_X1 U264 ( .A1(reset_i), .A2(n219), .ZN(N26) );
  AND2_X1 U265 ( .A1(n99), .A2(pc[21]), .ZN(N27) );
  NOR2_X1 U266 ( .A1(reset_i), .A2(n213), .ZN(N29) );
  NOR2_X1 U267 ( .A1(reset_i), .A2(n220), .ZN(N30) );
  AND2_X1 U268 ( .A1(n99), .A2(pc[25]), .ZN(N31) );
  AND2_X1 U269 ( .A1(n226), .A2(pc[26]), .ZN(N32) );
  NOR2_X1 U270 ( .A1(reset_i), .A2(n214), .ZN(N33) );
  NOR2_X1 U271 ( .A1(reset_i), .A2(n221), .ZN(N34) );
  NOR2_X1 U272 ( .A1(reset_i), .A2(n222), .ZN(N35) );
  NOR2_X1 U273 ( .A1(reset_i), .A2(n224), .ZN(N36) );
  AND2_X1 U274 ( .A1(n226), .A2(pc[31]), .ZN(N37) );
  INV_X1 U275 ( .A(n111), .ZN(n204) );
  AOI22_X1 U276 ( .A1(imem_addr_o[0]), .A2(n190), .B1(n206), .B2(br_dest[2]), 
        .ZN(n100) );
  OAI21_X1 U277 ( .B1(imem_addr_o[0]), .B2(n204), .A(n100), .ZN(n3) );
  AOI21_X1 U278 ( .B1(n199), .B2(n223), .A(n190), .ZN(n106) );
  NOR2_X1 U279 ( .A1(n186), .A2(imem_addr_o[1]), .ZN(n102) );
  AOI22_X1 U280 ( .A1(imem_addr_o[0]), .A2(n102), .B1(n206), .B2(br_dest[3]), 
        .ZN(n101) );
  OAI21_X1 U281 ( .B1(n106), .B2(n225), .A(n101), .ZN(n4) );
  NAND2_X1 U282 ( .A1(imem_addr_o[1]), .A2(imem_addr_o[0]), .ZN(n107) );
  NOR3_X1 U283 ( .A1(imem_addr_o[2]), .A2(n107), .A3(n204), .ZN(n103) );
  AOI21_X1 U284 ( .B1(n206), .B2(br_dest[4]), .A(n103), .ZN(n104) );
  OAI221_X1 U285 ( .B1(n215), .B2(n106), .C1(n215), .C2(n105), .A(n104), .ZN(
        n5) );
  NOR2_X1 U286 ( .A1(n107), .A2(n215), .ZN(n115) );
  NAND2_X1 U287 ( .A1(n199), .A2(n115), .ZN(n110) );
  OAI21_X1 U288 ( .B1(n115), .B2(n204), .A(n195), .ZN(n108) );
  AOI22_X1 U289 ( .A1(imem_addr_o[3]), .A2(n108), .B1(n206), .B2(br_dest[5]), 
        .ZN(n109) );
  OAI21_X1 U290 ( .B1(imem_addr_o[3]), .B2(n110), .A(n109), .ZN(n6) );
  NAND3_X1 U291 ( .A1(n199), .A2(n115), .A3(imem_addr_o[3]), .ZN(n114) );
  OAI221_X1 U292 ( .B1(n204), .B2(n115), .C1(n204), .C2(imem_addr_o[3]), .A(
        n195), .ZN(n112) );
  AOI22_X1 U293 ( .A1(imem_addr_o[4]), .A2(n112), .B1(n206), .B2(br_dest[6]), 
        .ZN(n113) );
  OAI21_X1 U294 ( .B1(imem_addr_o[4]), .B2(n114), .A(n113), .ZN(n7) );
  NAND3_X1 U295 ( .A1(n115), .A2(imem_addr_o[4]), .A3(imem_addr_o[3]), .ZN(
        n122) );
  AOI21_X1 U296 ( .B1(n111), .B2(n122), .A(n190), .ZN(n118) );
  NOR2_X1 U297 ( .A1(n186), .A2(n122), .ZN(n116) );
  AOI22_X1 U298 ( .A1(br_dest[7]), .A2(n85), .B1(n116), .B2(n209), .ZN(n117)
         );
  OAI21_X1 U299 ( .B1(n118), .B2(n209), .A(n117), .ZN(n8) );
  AOI221_X1 U300 ( .B1(n122), .B2(n199), .C1(n209), .C2(n199), .A(n190), .ZN(
        n121) );
  NOR4_X1 U301 ( .A1(imem_addr_o[6]), .A2(n122), .A3(n204), .A4(n209), .ZN(
        n119) );
  AOI21_X1 U302 ( .B1(n206), .B2(br_dest[8]), .A(n119), .ZN(n120) );
  OAI21_X1 U303 ( .B1(n121), .B2(n216), .A(n120), .ZN(n9) );
  NOR3_X1 U304 ( .A1(n122), .A2(n216), .A3(n209), .ZN(n129) );
  NAND2_X1 U305 ( .A1(n199), .A2(n129), .ZN(n125) );
  OAI21_X1 U306 ( .B1(n129), .B2(n204), .A(n195), .ZN(n123) );
  AOI22_X1 U307 ( .A1(imem_addr_o[7]), .A2(n123), .B1(n206), .B2(br_dest[9]), 
        .ZN(n124) );
  OAI21_X1 U308 ( .B1(imem_addr_o[7]), .B2(n125), .A(n124), .ZN(n10) );
  NAND3_X1 U309 ( .A1(n199), .A2(n129), .A3(imem_addr_o[7]), .ZN(n128) );
  OAI221_X1 U310 ( .B1(n186), .B2(n129), .C1(n204), .C2(imem_addr_o[7]), .A(
        n195), .ZN(n126) );
  AOI22_X1 U311 ( .A1(pc[10]), .A2(n126), .B1(n85), .B2(br_dest[10]), .ZN(n127) );
  OAI21_X1 U312 ( .B1(pc[10]), .B2(n128), .A(n127), .ZN(n11) );
  NAND3_X1 U313 ( .A1(n129), .A2(pc[10]), .A3(imem_addr_o[7]), .ZN(n136) );
  AOI21_X1 U314 ( .B1(n111), .B2(n136), .A(n190), .ZN(n132) );
  NOR2_X1 U315 ( .A1(n186), .A2(n136), .ZN(n130) );
  AOI22_X1 U316 ( .A1(br_dest[11]), .A2(n206), .B1(n130), .B2(n210), .ZN(n131)
         );
  OAI21_X1 U317 ( .B1(n132), .B2(n210), .A(n131), .ZN(n12) );
  AOI221_X1 U318 ( .B1(n136), .B2(n199), .C1(n210), .C2(n199), .A(n190), .ZN(
        n135) );
  NOR4_X1 U319 ( .A1(pc[12]), .A2(n136), .A3(n204), .A4(n210), .ZN(n133) );
  AOI21_X1 U320 ( .B1(n206), .B2(br_dest[12]), .A(n133), .ZN(n134) );
  OAI21_X1 U321 ( .B1(n135), .B2(n217), .A(n134), .ZN(n13) );
  NOR3_X1 U322 ( .A1(n136), .A2(n217), .A3(n210), .ZN(n143) );
  NAND2_X1 U323 ( .A1(n199), .A2(n143), .ZN(n139) );
  OAI21_X1 U324 ( .B1(n143), .B2(n204), .A(n195), .ZN(n137) );
  AOI22_X1 U325 ( .A1(pc[13]), .A2(n137), .B1(n206), .B2(br_dest[13]), .ZN(
        n138) );
  OAI21_X1 U326 ( .B1(pc[13]), .B2(n139), .A(n138), .ZN(n14) );
  NAND3_X1 U327 ( .A1(n111), .A2(n143), .A3(pc[13]), .ZN(n142) );
  OAI221_X1 U328 ( .B1(n186), .B2(n143), .C1(n204), .C2(pc[13]), .A(n195), 
        .ZN(n140) );
  AOI22_X1 U329 ( .A1(pc[14]), .A2(n140), .B1(n85), .B2(br_dest[14]), .ZN(n141) );
  OAI21_X1 U330 ( .B1(pc[14]), .B2(n142), .A(n141), .ZN(n15) );
  NAND3_X1 U331 ( .A1(n143), .A2(pc[14]), .A3(pc[13]), .ZN(n150) );
  AOI21_X1 U332 ( .B1(n199), .B2(n150), .A(n190), .ZN(n146) );
  NOR2_X1 U333 ( .A1(n186), .A2(n150), .ZN(n144) );
  AOI22_X1 U334 ( .A1(br_dest[15]), .A2(n206), .B1(n144), .B2(n211), .ZN(n145)
         );
  OAI21_X1 U335 ( .B1(n146), .B2(n211), .A(n145), .ZN(n16) );
  AOI221_X1 U336 ( .B1(n150), .B2(n199), .C1(n211), .C2(n199), .A(n190), .ZN(
        n149) );
  NOR4_X1 U337 ( .A1(pc[16]), .A2(n150), .A3(n204), .A4(n211), .ZN(n147) );
  AOI21_X1 U338 ( .B1(n206), .B2(br_dest[16]), .A(n147), .ZN(n148) );
  OAI21_X1 U339 ( .B1(n149), .B2(n218), .A(n148), .ZN(n17) );
  NOR3_X1 U340 ( .A1(n150), .A2(n218), .A3(n211), .ZN(n157) );
  NAND2_X1 U341 ( .A1(n199), .A2(n157), .ZN(n153) );
  OAI21_X1 U342 ( .B1(n157), .B2(n204), .A(n195), .ZN(n151) );
  AOI22_X1 U343 ( .A1(pc[17]), .A2(n151), .B1(n206), .B2(br_dest[17]), .ZN(
        n152) );
  OAI21_X1 U344 ( .B1(pc[17]), .B2(n153), .A(n152), .ZN(n18) );
  NAND3_X1 U345 ( .A1(n199), .A2(n157), .A3(pc[17]), .ZN(n156) );
  OAI221_X1 U346 ( .B1(n186), .B2(n157), .C1(n204), .C2(pc[17]), .A(n195), 
        .ZN(n154) );
  AOI22_X1 U347 ( .A1(pc[18]), .A2(n154), .B1(n85), .B2(br_dest[18]), .ZN(n155) );
  OAI21_X1 U348 ( .B1(pc[18]), .B2(n156), .A(n155), .ZN(n19) );
  NAND3_X1 U349 ( .A1(n157), .A2(pc[18]), .A3(pc[17]), .ZN(n164) );
  AOI21_X1 U350 ( .B1(n199), .B2(n164), .A(n190), .ZN(n160) );
  NOR2_X1 U351 ( .A1(n186), .A2(n164), .ZN(n158) );
  AOI22_X1 U352 ( .A1(br_dest[19]), .A2(n206), .B1(n158), .B2(n212), .ZN(n159)
         );
  OAI21_X1 U353 ( .B1(n160), .B2(n212), .A(n159), .ZN(n20) );
  AOI221_X1 U354 ( .B1(n164), .B2(n199), .C1(n212), .C2(n199), .A(n190), .ZN(
        n163) );
  NOR4_X1 U355 ( .A1(pc[20]), .A2(n164), .A3(n204), .A4(n212), .ZN(n161) );
  AOI21_X1 U356 ( .B1(n206), .B2(br_dest[20]), .A(n161), .ZN(n162) );
  OAI21_X1 U357 ( .B1(n163), .B2(n219), .A(n162), .ZN(n21) );
  NOR3_X1 U358 ( .A1(n164), .A2(n219), .A3(n212), .ZN(n171) );
  NAND2_X1 U359 ( .A1(n199), .A2(n171), .ZN(n167) );
  OAI21_X1 U360 ( .B1(n171), .B2(n204), .A(n195), .ZN(n165) );
  AOI22_X1 U361 ( .A1(pc[21]), .A2(n165), .B1(n85), .B2(br_dest[21]), .ZN(n166) );
  OAI21_X1 U362 ( .B1(pc[21]), .B2(n167), .A(n166), .ZN(n22) );
  NAND3_X1 U363 ( .A1(n199), .A2(n171), .A3(pc[21]), .ZN(n170) );
  OAI221_X1 U364 ( .B1(n186), .B2(n171), .C1(n204), .C2(pc[21]), .A(n195), 
        .ZN(n168) );
  AOI22_X1 U365 ( .A1(pc[22]), .A2(n168), .B1(n206), .B2(br_dest[22]), .ZN(
        n169) );
  OAI21_X1 U366 ( .B1(pc[22]), .B2(n170), .A(n169), .ZN(n23) );
  NAND3_X1 U367 ( .A1(n171), .A2(pc[22]), .A3(pc[21]), .ZN(n178) );
  AOI21_X1 U368 ( .B1(n199), .B2(n178), .A(n190), .ZN(n174) );
  NOR2_X1 U369 ( .A1(n186), .A2(n178), .ZN(n172) );
  AOI22_X1 U370 ( .A1(br_dest[23]), .A2(n206), .B1(n172), .B2(n213), .ZN(n173)
         );
  OAI21_X1 U371 ( .B1(n174), .B2(n213), .A(n173), .ZN(n24) );
  AOI221_X1 U372 ( .B1(n178), .B2(n199), .C1(n213), .C2(n199), .A(n190), .ZN(
        n177) );
  NOR4_X1 U373 ( .A1(pc[24]), .A2(n178), .A3(n204), .A4(n213), .ZN(n175) );
  AOI21_X1 U374 ( .B1(n206), .B2(br_dest[24]), .A(n175), .ZN(n176) );
  OAI21_X1 U375 ( .B1(n177), .B2(n220), .A(n176), .ZN(n25) );
  NOR3_X1 U376 ( .A1(n178), .A2(n220), .A3(n213), .ZN(n185) );
  NAND2_X1 U377 ( .A1(n199), .A2(n185), .ZN(n181) );
  OAI21_X1 U378 ( .B1(n185), .B2(n204), .A(n195), .ZN(n179) );
  AOI22_X1 U379 ( .A1(pc[25]), .A2(n179), .B1(n206), .B2(br_dest[25]), .ZN(
        n180) );
  OAI21_X1 U380 ( .B1(pc[25]), .B2(n181), .A(n180), .ZN(n26) );
  NAND3_X1 U381 ( .A1(n199), .A2(n185), .A3(pc[25]), .ZN(n184) );
  OAI221_X1 U382 ( .B1(n186), .B2(n185), .C1(n204), .C2(pc[25]), .A(n195), 
        .ZN(n182) );
  AOI22_X1 U383 ( .A1(pc[26]), .A2(n182), .B1(n206), .B2(br_dest[26]), .ZN(
        n183) );
  OAI21_X1 U384 ( .B1(pc[26]), .B2(n184), .A(n183), .ZN(n27) );
  NAND3_X1 U385 ( .A1(n185), .A2(pc[26]), .A3(pc[25]), .ZN(n194) );
  AOI21_X1 U386 ( .B1(n199), .B2(n194), .A(n190), .ZN(n189) );
  NOR2_X1 U387 ( .A1(n186), .A2(n194), .ZN(n187) );
  AOI22_X1 U388 ( .A1(br_dest[27]), .A2(n206), .B1(n187), .B2(n214), .ZN(n188)
         );
  OAI21_X1 U389 ( .B1(n189), .B2(n214), .A(n188), .ZN(n28) );
  AOI221_X1 U390 ( .B1(n194), .B2(n111), .C1(n214), .C2(n199), .A(n190), .ZN(
        n193) );
  NOR4_X1 U391 ( .A1(pc[28]), .A2(n194), .A3(n204), .A4(n214), .ZN(n191) );
  AOI21_X1 U392 ( .B1(n206), .B2(br_dest[28]), .A(n191), .ZN(n192) );
  OAI21_X1 U393 ( .B1(n193), .B2(n221), .A(n192), .ZN(n29) );
  NOR3_X1 U394 ( .A1(n194), .A2(n221), .A3(n214), .ZN(n196) );
  NAND2_X1 U395 ( .A1(n111), .A2(n196), .ZN(n200) );
  OAI21_X1 U396 ( .B1(n196), .B2(n204), .A(n195), .ZN(n198) );
  AOI22_X1 U397 ( .A1(pc[29]), .A2(n198), .B1(n206), .B2(br_dest[29]), .ZN(
        n197) );
  OAI21_X1 U398 ( .B1(pc[29]), .B2(n200), .A(n197), .ZN(n30) );
  AOI21_X1 U399 ( .B1(n199), .B2(n222), .A(n198), .ZN(n203) );
  NOR2_X1 U400 ( .A1(n222), .A2(n200), .ZN(n202) );
  AOI22_X1 U401 ( .A1(br_dest[30]), .A2(n85), .B1(n202), .B2(n224), .ZN(n201)
         );
  OAI21_X1 U402 ( .B1(n203), .B2(n224), .A(n201), .ZN(n31) );
  NAND2_X1 U403 ( .A1(pc[30]), .A2(n202), .ZN(n208) );
  OAI21_X1 U404 ( .B1(pc[30]), .B2(n204), .A(n203), .ZN(n205) );
  AOI22_X1 U405 ( .A1(br_dest[31]), .A2(n206), .B1(pc[31]), .B2(n205), .ZN(
        n207) );
  OAI21_X1 U406 ( .B1(pc[31]), .B2(n208), .A(n207), .ZN(n32) );
endmodule

