/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP3
// Date      : Thu Jun  8 16:26:17 2023
/////////////////////////////////////////////////////////////


module lsu ( clk_i, reset_i, pc_i, lsu_request_i, inst_i, rs1_value_i, 
        rs2_value_i, rob_idx_i, busy_o, writeback_valid_o, writeback_value_o, 
        rob_idx_o, dmem_csb_write_o, dmem_wmask_o, dmem_waddr_o, dmem_din_o, 
        dmem_csb_read_o, dmem_raddr_o, dmem_dout_i );
  input [31:0] pc_i;
  input [31:0] inst_i;
  input [31:0] rs1_value_i;
  input [31:0] rs2_value_i;
  input [4:0] rob_idx_i;
  output [31:0] writeback_value_o;
  output [4:0] rob_idx_o;
  output [3:0] dmem_wmask_o;
  output [7:0] dmem_waddr_o;
  output [31:0] dmem_din_o;
  output [7:0] dmem_raddr_o;
  input [31:0] dmem_dout_i;
  input clk_i, reset_i, lsu_request_i;
  output busy_o, writeback_valid_o, dmem_csb_write_o, dmem_csb_read_o;
  wire   N34, lsu_out_addr_1_, lsu_out_ls, lsu_out_signed, lsu_out_h, mem_ls,
         intadd_0_CI, intadd_0_SUM_0_, intadd_0_n4, intadd_0_n3, intadd_0_n2,
         intadd_0_n1, intadd_1_CI, intadd_1_n4, intadd_1_n3, intadd_1_n2,
         intadd_1_n1, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n140, n141, n142, n144, n152, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n178, n179, n181, n182, n183,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8;
  wire   [1:0] mem_addr_r;

  DFF_X1 rob_idx_o_reg_4_ ( .D(rob_idx_i[4]), .CK(clk_i), .Q(rob_idx_o[4]) );
  DFF_X1 rob_idx_o_reg_3_ ( .D(rob_idx_i[3]), .CK(clk_i), .Q(rob_idx_o[3]) );
  DFF_X1 rob_idx_o_reg_2_ ( .D(rob_idx_i[2]), .CK(clk_i), .Q(rob_idx_o[2]) );
  DFF_X1 rob_idx_o_reg_1_ ( .D(rob_idx_i[1]), .CK(clk_i), .Q(rob_idx_o[1]) );
  DFF_X1 rob_idx_o_reg_0_ ( .D(rob_idx_i[0]), .CK(clk_i), .Q(rob_idx_o[0]) );
  FA_X1 intadd_0_U5 ( .A(inst_i[8]), .B(rs1_value_i[1]), .CI(intadd_0_CI), 
        .CO(intadd_0_n4), .S(intadd_0_SUM_0_) );
  FA_X1 intadd_0_U4 ( .A(inst_i[9]), .B(rs1_value_i[2]), .CI(intadd_0_n4), 
        .CO(intadd_0_n3), .S(dmem_waddr_o[0]) );
  FA_X1 intadd_0_U3 ( .A(inst_i[10]), .B(rs1_value_i[3]), .CI(intadd_0_n3), 
        .CO(intadd_0_n2), .S(dmem_waddr_o[1]) );
  FA_X1 intadd_0_U2 ( .A(inst_i[11]), .B(rs1_value_i[4]), .CI(intadd_0_n2), 
        .CO(intadd_0_n1), .S(dmem_waddr_o[2]) );
  FA_X1 intadd_1_U5 ( .A(inst_i[21]), .B(rs1_value_i[1]), .CI(intadd_1_CI), 
        .CO(intadd_1_n4), .S(mem_addr_r[1]) );
  FA_X1 intadd_1_U4 ( .A(inst_i[22]), .B(rs1_value_i[2]), .CI(intadd_1_n4), 
        .CO(intadd_1_n3), .S(dmem_raddr_o[0]) );
  FA_X1 intadd_1_U3 ( .A(inst_i[23]), .B(rs1_value_i[3]), .CI(intadd_1_n3), 
        .CO(intadd_1_n2), .S(dmem_raddr_o[1]) );
  FA_X1 intadd_1_U2 ( .A(inst_i[24]), .B(rs1_value_i[4]), .CI(intadd_1_n2), 
        .CO(intadd_1_n1), .S(dmem_raddr_o[2]) );
  DFF_X1 mem_load_success_reg ( .D(N34), .CK(clk_i), .Q(writeback_valid_o) );
  NOR3_X2 U135 ( .A1(intadd_0_SUM_0_), .A2(dmem_csb_write_o), .A3(n132), .ZN(
        dmem_wmask_o[1]) );
  AOI211_X2 U136 ( .C1(n133), .C2(n106), .A(dmem_csb_write_o), .B(n132), .ZN(
        dmem_wmask_o[3]) );
  XNOR2_X2 U138 ( .A(n131), .B(n110), .ZN(dmem_raddr_o[5]) );
  XNOR2_X2 U139 ( .A(n109), .B(n113), .ZN(dmem_raddr_o[4]) );
  XNOR2_X2 U140 ( .A(intadd_1_n1), .B(n111), .ZN(dmem_raddr_o[3]) );
  NOR3_X2 U141 ( .A1(n140), .A2(n144), .A3(n114), .ZN(n174) );
  AND2_X1 U142 ( .A1(n133), .A2(mem_ls), .ZN(n93) );
  INV_X1 U143 ( .A(dmem_csb_write_o), .ZN(n99) );
  INV_X1 U144 ( .A(n102), .ZN(n103) );
  INV_X1 U146 ( .A(n127), .ZN(n107) );
  INV_X1 U147 ( .A(lsu_out_addr_1_), .ZN(n144) );
  INV_X1 U148 ( .A(n115), .ZN(n124) );
  INV_X1 U149 ( .A(n140), .ZN(n178) );
  INV_X1 U150 ( .A(intadd_0_SUM_0_), .ZN(n106) );
  CLKBUF_X1 U151 ( .A(rs2_value_i[0]), .Z(dmem_din_o[0]) );
  CLKBUF_X1 U152 ( .A(rs2_value_i[1]), .Z(dmem_din_o[1]) );
  CLKBUF_X1 U153 ( .A(rs2_value_i[16]), .Z(dmem_din_o[16]) );
  CLKBUF_X1 U154 ( .A(rs2_value_i[31]), .Z(dmem_din_o[31]) );
  NOR2_X1 U155 ( .A1(inst_i[6]), .A2(inst_i[3]), .ZN(n94) );
  NAND3_X1 U156 ( .A1(inst_i[1]), .A2(inst_i[0]), .A3(n94), .ZN(n95) );
  NOR3_X1 U157 ( .A1(inst_i[4]), .A2(inst_i[2]), .A3(n95), .ZN(N34) );
  NAND2_X1 U158 ( .A1(N34), .A2(inst_i[5]), .ZN(dmem_csb_write_o) );
  INV_X1 U159 ( .A(rs1_value_i[0]), .ZN(n97) );
  INV_X1 U160 ( .A(inst_i[20]), .ZN(n96) );
  NOR2_X1 U161 ( .A1(n97), .A2(n96), .ZN(intadd_1_CI) );
  AOI21_X1 U162 ( .B1(n97), .B2(n96), .A(intadd_1_CI), .ZN(mem_addr_r[0]) );
  INV_X1 U163 ( .A(inst_i[5]), .ZN(n98) );
  NAND2_X1 U164 ( .A1(N34), .A2(n98), .ZN(dmem_csb_read_o) );
  AND2_X1 U165 ( .A1(inst_i[7]), .A2(rs1_value_i[0]), .ZN(intadd_0_CI) );
  INV_X1 U166 ( .A(inst_i[13]), .ZN(n133) );
  NOR2_X1 U167 ( .A1(rs1_value_i[0]), .A2(inst_i[7]), .ZN(n100) );
  OAI21_X1 U168 ( .B1(intadd_0_CI), .B2(n100), .A(n99), .ZN(n101) );
  OAI21_X1 U169 ( .B1(mem_addr_r[0]), .B2(dmem_csb_read_o), .A(n101), .ZN(n105) );
  OAI22_X1 U170 ( .A1(n101), .A2(intadd_0_SUM_0_), .B1(dmem_csb_read_o), .B2(
        mem_addr_r[1]), .ZN(n102) );
  AOI221_X1 U171 ( .B1(inst_i[12]), .B2(inst_i[13]), .C1(n103), .C2(inst_i[13]), .A(inst_i[14]), .ZN(n104) );
  OAI211_X1 U172 ( .C1(inst_i[13]), .C2(inst_i[12]), .A(n105), .B(n104), .ZN(
        n132) );
  CLKBUF_X1 U173 ( .A(dmem_wmask_o[3]), .Z(dmem_wmask_o[2]) );
  CLKBUF_X1 U174 ( .A(dmem_wmask_o[1]), .Z(dmem_wmask_o[0]) );
  CLKBUF_X1 U175 ( .A(rs2_value_i[30]), .Z(dmem_din_o[30]) );
  CLKBUF_X1 U176 ( .A(rs2_value_i[29]), .Z(dmem_din_o[29]) );
  CLKBUF_X1 U177 ( .A(rs2_value_i[28]), .Z(dmem_din_o[28]) );
  CLKBUF_X1 U178 ( .A(rs2_value_i[27]), .Z(dmem_din_o[27]) );
  CLKBUF_X1 U179 ( .A(rs2_value_i[26]), .Z(dmem_din_o[26]) );
  CLKBUF_X1 U180 ( .A(rs2_value_i[25]), .Z(dmem_din_o[25]) );
  CLKBUF_X1 U181 ( .A(rs2_value_i[24]), .Z(dmem_din_o[24]) );
  CLKBUF_X1 U182 ( .A(rs2_value_i[23]), .Z(dmem_din_o[23]) );
  CLKBUF_X1 U183 ( .A(rs2_value_i[22]), .Z(dmem_din_o[22]) );
  CLKBUF_X1 U184 ( .A(rs2_value_i[21]), .Z(dmem_din_o[21]) );
  CLKBUF_X1 U185 ( .A(rs2_value_i[20]), .Z(dmem_din_o[20]) );
  CLKBUF_X1 U186 ( .A(rs2_value_i[19]), .Z(dmem_din_o[19]) );
  CLKBUF_X1 U187 ( .A(rs2_value_i[18]), .Z(dmem_din_o[18]) );
  CLKBUF_X1 U188 ( .A(rs2_value_i[17]), .Z(dmem_din_o[17]) );
  CLKBUF_X1 U189 ( .A(rs2_value_i[15]), .Z(dmem_din_o[15]) );
  CLKBUF_X1 U190 ( .A(rs2_value_i[14]), .Z(dmem_din_o[14]) );
  CLKBUF_X1 U191 ( .A(rs2_value_i[13]), .Z(dmem_din_o[13]) );
  CLKBUF_X1 U192 ( .A(rs2_value_i[12]), .Z(dmem_din_o[12]) );
  CLKBUF_X1 U193 ( .A(rs2_value_i[11]), .Z(dmem_din_o[11]) );
  CLKBUF_X1 U194 ( .A(rs2_value_i[2]), .Z(dmem_din_o[2]) );
  CLKBUF_X1 U195 ( .A(rs2_value_i[3]), .Z(dmem_din_o[3]) );
  CLKBUF_X1 U196 ( .A(rs2_value_i[4]), .Z(dmem_din_o[4]) );
  CLKBUF_X1 U197 ( .A(rs2_value_i[5]), .Z(dmem_din_o[5]) );
  CLKBUF_X1 U198 ( .A(rs2_value_i[6]), .Z(dmem_din_o[6]) );
  CLKBUF_X1 U199 ( .A(rs2_value_i[7]), .Z(dmem_din_o[7]) );
  CLKBUF_X1 U200 ( .A(rs2_value_i[8]), .Z(dmem_din_o[8]) );
  CLKBUF_X1 U201 ( .A(rs2_value_i[9]), .Z(dmem_din_o[9]) );
  CLKBUF_X1 U202 ( .A(rs2_value_i[10]), .Z(dmem_din_o[10]) );
  OR2_X1 U203 ( .A1(inst_i[25]), .A2(rs1_value_i[5]), .ZN(n112) );
  AOI22_X1 U204 ( .A1(inst_i[25]), .A2(rs1_value_i[5]), .B1(intadd_1_n1), .B2(
        n112), .ZN(n109) );
  NAND2_X1 U205 ( .A1(inst_i[26]), .A2(rs1_value_i[6]), .ZN(n127) );
  NOR2_X1 U206 ( .A1(inst_i[26]), .A2(rs1_value_i[6]), .ZN(n129) );
  NOR2_X1 U207 ( .A1(n107), .A2(n129), .ZN(n113) );
  NAND2_X1 U208 ( .A1(inst_i[25]), .A2(rs1_value_i[5]), .ZN(n108) );
  NAND2_X1 U209 ( .A1(n108), .A2(n112), .ZN(n111) );
  XNOR2_X1 U210 ( .A(inst_i[27]), .B(rs1_value_i[7]), .ZN(n131) );
  OAI21_X1 U211 ( .B1(n129), .B2(n109), .A(n127), .ZN(n110) );
  XNOR2_X1 U212 ( .A(intadd_0_n1), .B(n111), .ZN(dmem_waddr_o[3]) );
  AOI22_X1 U213 ( .A1(inst_i[25]), .A2(rs1_value_i[5]), .B1(intadd_0_n1), .B2(
        n112), .ZN(n128) );
  XNOR2_X1 U214 ( .A(n128), .B(n113), .ZN(dmem_waddr_o[4]) );
  NAND2_X1 U215 ( .A1(writeback_valid_o), .A2(lsu_out_ls), .ZN(n140) );
  INV_X1 U216 ( .A(lsu_out_h), .ZN(n114) );
  NAND2_X1 U223 ( .A1(n178), .A2(n136), .ZN(n141) );
  INV_X1 U224 ( .A(n141), .ZN(n173) );
  AOI22_X1 U225 ( .A1(dmem_dout_i[6]), .A2(n124), .B1(n173), .B2(
        dmem_dout_i[22]), .ZN(n117) );
  NAND2_X1 U228 ( .A1(lsu_out_signed), .A2(dmem_dout_i[15]), .ZN(n175) );
  NOR2_X1 U229 ( .A1(n134), .A2(n175), .ZN(n157) );
  NAND2_X1 U230 ( .A1(n178), .A2(n157), .ZN(n125) );
  NAND2_X1 U231 ( .A1(n117), .A2(n125), .ZN(writeback_value_o[22]) );
  AOI22_X1 U232 ( .A1(dmem_dout_i[0]), .A2(n124), .B1(n173), .B2(
        dmem_dout_i[16]), .ZN(n118) );
  NAND2_X1 U233 ( .A1(n118), .A2(n125), .ZN(writeback_value_o[16]) );
  AOI22_X1 U234 ( .A1(dmem_dout_i[1]), .A2(n124), .B1(n173), .B2(
        dmem_dout_i[17]), .ZN(n119) );
  NAND2_X1 U235 ( .A1(n119), .A2(n125), .ZN(writeback_value_o[17]) );
  AOI22_X1 U236 ( .A1(dmem_dout_i[4]), .A2(n124), .B1(n173), .B2(
        dmem_dout_i[20]), .ZN(n120) );
  NAND2_X1 U237 ( .A1(n120), .A2(n125), .ZN(writeback_value_o[20]) );
  AOI22_X1 U238 ( .A1(dmem_dout_i[3]), .A2(n124), .B1(n173), .B2(
        dmem_dout_i[19]), .ZN(n121) );
  NAND2_X1 U239 ( .A1(n121), .A2(n125), .ZN(writeback_value_o[19]) );
  AOI22_X1 U240 ( .A1(dmem_dout_i[7]), .A2(n124), .B1(n173), .B2(
        dmem_dout_i[23]), .ZN(n122) );
  NAND2_X1 U241 ( .A1(n122), .A2(n125), .ZN(writeback_value_o[23]) );
  AOI22_X1 U242 ( .A1(dmem_dout_i[2]), .A2(n124), .B1(n173), .B2(
        dmem_dout_i[18]), .ZN(n123) );
  NAND2_X1 U243 ( .A1(n123), .A2(n125), .ZN(writeback_value_o[18]) );
  AOI22_X1 U244 ( .A1(dmem_dout_i[5]), .A2(n124), .B1(n173), .B2(
        dmem_dout_i[21]), .ZN(n126) );
  NAND2_X1 U245 ( .A1(n126), .A2(n125), .ZN(writeback_value_o[21]) );
  OAI21_X1 U246 ( .B1(n129), .B2(n128), .A(n127), .ZN(n130) );
  XNOR2_X1 U247 ( .A(n131), .B(n130), .ZN(dmem_waddr_o[5]) );
  NOR2_X1 U248 ( .A1(dmem_csb_read_o), .A2(n132), .ZN(mem_ls) );
  INV_X1 U250 ( .A(dmem_dout_i[0]), .ZN(n159) );
  OAI21_X1 U252 ( .B1(n136), .B2(n135), .A(n178), .ZN(n137) );
  NOR2_X1 U253 ( .A1(n159), .A2(n137), .ZN(writeback_value_o[0]) );
  INV_X1 U254 ( .A(dmem_dout_i[1]), .ZN(n161) );
  NOR2_X1 U255 ( .A1(n137), .A2(n161), .ZN(writeback_value_o[1]) );
  INV_X1 U256 ( .A(dmem_dout_i[2]), .ZN(n163) );
  NOR2_X1 U257 ( .A1(n137), .A2(n163), .ZN(writeback_value_o[2]) );
  INV_X1 U258 ( .A(dmem_dout_i[3]), .ZN(n165) );
  NOR2_X1 U259 ( .A1(n137), .A2(n165), .ZN(writeback_value_o[3]) );
  INV_X1 U260 ( .A(dmem_dout_i[4]), .ZN(n167) );
  NOR2_X1 U261 ( .A1(n137), .A2(n167), .ZN(writeback_value_o[4]) );
  INV_X1 U262 ( .A(dmem_dout_i[5]), .ZN(n169) );
  NOR2_X1 U263 ( .A1(n137), .A2(n169), .ZN(writeback_value_o[5]) );
  INV_X1 U264 ( .A(dmem_dout_i[6]), .ZN(n172) );
  NOR2_X1 U265 ( .A1(n137), .A2(n172), .ZN(writeback_value_o[6]) );
  INV_X1 U266 ( .A(dmem_dout_i[7]), .ZN(n183) );
  NOR2_X1 U267 ( .A1(n137), .A2(n183), .ZN(writeback_value_o[7]) );
  NAND2_X1 U269 ( .A1(n178), .A2(n144), .ZN(n142) );
  OAI21_X1 U270 ( .B1(n114), .B2(n142), .A(n141), .ZN(n152) );
  AOI22_X1 U290 ( .A1(n174), .A2(dmem_dout_i[8]), .B1(n173), .B2(
        dmem_dout_i[24]), .ZN(n158) );
  AOI22_X1 U293 ( .A1(n174), .A2(dmem_dout_i[9]), .B1(n173), .B2(
        dmem_dout_i[25]), .ZN(n160) );
  AOI22_X1 U295 ( .A1(n174), .A2(dmem_dout_i[10]), .B1(n173), .B2(
        dmem_dout_i[26]), .ZN(n162) );
  AOI22_X1 U297 ( .A1(n174), .A2(dmem_dout_i[11]), .B1(n173), .B2(
        dmem_dout_i[27]), .ZN(n164) );
  AOI22_X1 U299 ( .A1(n174), .A2(dmem_dout_i[12]), .B1(n173), .B2(
        dmem_dout_i[28]), .ZN(n166) );
  AOI22_X1 U301 ( .A1(n174), .A2(dmem_dout_i[13]), .B1(n173), .B2(
        dmem_dout_i[29]), .ZN(n168) );
  AOI22_X1 U303 ( .A1(n174), .A2(dmem_dout_i[14]), .B1(n173), .B2(
        dmem_dout_i[30]), .ZN(n171) );
  AOI22_X1 U305 ( .A1(dmem_dout_i[15]), .A2(n174), .B1(n173), .B2(
        dmem_dout_i[31]), .ZN(n182) );
  fifo_WIDTH12_DEPTH4_ADDR_LEN2 lsu_fifo ( .clk_i(clk_i), .reset_i(reset_i), 
        .data_in_i({dmem_raddr_o[5:0], mem_addr_r, mem_ls, 1'b0, n93, 1'b0}), 
        .wr_i(lsu_request_i), .rd_i(writeback_valid_o), .data_out_o({
        SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, 
        SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, 
        lsu_out_addr_1_, SYNOPSYS_UNCONNECTED_7, lsu_out_ls, lsu_out_signed, 
        lsu_out_h, SYNOPSYS_UNCONNECTED_8}) );
  AND2_X1 U125 ( .A1(dmem_dout_i[8]), .A2(n152), .ZN(writeback_value_o[8]) );
  AND2_X1 U126 ( .A1(dmem_dout_i[10]), .A2(n152), .ZN(writeback_value_o[10])
         );
  AND2_X1 U127 ( .A1(dmem_dout_i[11]), .A2(n152), .ZN(writeback_value_o[11])
         );
  AND2_X1 U128 ( .A1(dmem_dout_i[12]), .A2(n152), .ZN(writeback_value_o[12])
         );
  AND2_X1 U129 ( .A1(dmem_dout_i[14]), .A2(n152), .ZN(writeback_value_o[14])
         );
  AND2_X1 U130 ( .A1(dmem_dout_i[15]), .A2(n152), .ZN(writeback_value_o[15])
         );
  AND2_X1 U131 ( .A1(dmem_dout_i[9]), .A2(n152), .ZN(writeback_value_o[9]) );
  AND2_X1 U132 ( .A1(dmem_dout_i[13]), .A2(n152), .ZN(writeback_value_o[13])
         );
  INV_X1 U133 ( .A(1'b1), .ZN(dmem_raddr_o[6]) );
  INV_X1 U137 ( .A(1'b1), .ZN(dmem_raddr_o[7]) );
  INV_X1 U217 ( .A(1'b1), .ZN(dmem_waddr_o[6]) );
  INV_X1 U219 ( .A(1'b1), .ZN(dmem_waddr_o[7]) );
  INV_X1 U221 ( .A(1'b1), .ZN(busy_o) );
  NAND2_X1 U226 ( .A1(n182), .A2(n181), .ZN(writeback_value_o[31]) );
  NAND2_X1 U227 ( .A1(n171), .A2(n170), .ZN(writeback_value_o[30]) );
  NAND2_X1 U251 ( .A1(n168), .A2(n170), .ZN(writeback_value_o[29]) );
  NAND2_X1 U268 ( .A1(n166), .A2(n170), .ZN(writeback_value_o[28]) );
  NAND2_X1 U271 ( .A1(n164), .A2(n170), .ZN(writeback_value_o[27]) );
  NAND2_X1 U272 ( .A1(n162), .A2(n170), .ZN(writeback_value_o[26]) );
  NAND2_X1 U273 ( .A1(n160), .A2(n170), .ZN(writeback_value_o[25]) );
  NAND2_X1 U274 ( .A1(n158), .A2(n170), .ZN(writeback_value_o[24]) );
  NOR2_X1 U275 ( .A1(n114), .A2(n175), .ZN(n179) );
  INV_X1 U281 ( .A(n174), .ZN(n115) );
  NAND2_X1 U282 ( .A1(n179), .A2(n178), .ZN(n181) );
  NAND2_X1 U283 ( .A1(n157), .A2(n178), .ZN(n170) );
  NAND2_X1 U284 ( .A1(lsu_out_h), .A2(n144), .ZN(n134) );
  INV_X1 U285 ( .A(n134), .ZN(n135) );
  NOR2_X1 U286 ( .A1(lsu_out_h), .A2(lsu_out_signed), .ZN(n136) );
endmodule


module fifo_WIDTH12_DEPTH4_ADDR_LEN2 ( clk_i, reset_i, data_in_i, wr_i, rd_i, 
        data_out_o, empty_o, full_o );
  input [11:0] data_in_i;
  output [11:0] data_out_o;
  input clk_i, reset_i, wr_i, rd_i;
  output empty_o, full_o;
  wire   n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n1, n3, n5, n7, n9, n11, n13, n14,
         n15, n17, n18, n19, n20, n21, n22, n23, n25, n27, n28, n29, n30, n31,
         n32, n33, n34, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n65, n77, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n129,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164;
  wire   [1:0] wr_ptr;
  wire   [1:0] rd_ptr;
  wire   [44:0] mem;

  DFF_X1 rd_ptr_reg_0_ ( .D(n104), .CK(clk_i), .Q(rd_ptr[0]), .QN(n126) );
  DFF_X1 rd_ptr_reg_1_ ( .D(n103), .CK(clk_i), .Q(rd_ptr[1]), .QN(n125) );
  DFF_X1 wr_ptr_reg_0_ ( .D(n102), .CK(clk_i), .Q(wr_ptr[0]), .QN(n139) );
  DFF_X1 wr_ptr_reg_1_ ( .D(n101), .CK(clk_i), .Q(wr_ptr[1]), .QN(n140) );
  DFF_X1 mem_reg_0__11_ ( .D(n100), .CK(clk_i), .Q(mem[44]), .QN(n152) );
  DFF_X1 mem_reg_0__10_ ( .D(n99), .CK(clk_i), .Q(mem[43]), .QN(n151) );
  DFF_X1 mem_reg_0__9_ ( .D(n98), .CK(clk_i), .Q(mem[42]), .QN(n150) );
  DFF_X1 mem_reg_0__8_ ( .D(n97), .CK(clk_i), .Q(mem[41]), .QN(n149) );
  DFF_X1 mem_reg_0__7_ ( .D(n96), .CK(clk_i), .Q(mem[40]), .QN(n148) );
  DFF_X1 mem_reg_0__6_ ( .D(n95), .CK(clk_i), .Q(mem[39]), .QN(n147) );
  DFF_X1 mem_reg_0__5_ ( .D(n94), .CK(clk_i), .Q(mem[38]), .QN(n146) );
  DFF_X1 mem_reg_0__4_ ( .D(n93), .CK(clk_i), .Q(mem[37]), .QN(n145) );
  DFF_X1 mem_reg_0__3_ ( .D(n92), .CK(clk_i), .Q(mem[36]), .QN(n144) );
  DFF_X1 mem_reg_0__2_ ( .D(n91), .CK(clk_i), .Q(mem[35]), .QN(n143) );
  DFF_X1 mem_reg_0__1_ ( .D(n90), .CK(clk_i), .Q(mem[34]), .QN(n142) );
  DFF_X1 mem_reg_1__11_ ( .D(n88), .CK(clk_i), .Q(mem[32]), .QN(n124) );
  DFF_X1 mem_reg_1__10_ ( .D(n87), .CK(clk_i), .Q(mem[31]), .QN(n123) );
  DFF_X1 mem_reg_1__9_ ( .D(n86), .CK(clk_i), .Q(mem[30]), .QN(n122) );
  DFF_X1 mem_reg_1__8_ ( .D(n85), .CK(clk_i), .Q(mem[29]), .QN(n121) );
  DFF_X1 mem_reg_1__7_ ( .D(n84), .CK(clk_i), .Q(mem[28]), .QN(n120) );
  DFF_X1 mem_reg_1__6_ ( .D(n83), .CK(clk_i), .Q(mem[27]), .QN(n119) );
  DFF_X1 mem_reg_1__5_ ( .D(n82), .CK(clk_i), .Q(mem[26]), .QN(n115) );
  DFF_X1 mem_reg_1__4_ ( .D(n81), .CK(clk_i), .Q(mem[25]), .QN(n117) );
  DFF_X1 mem_reg_1__3_ ( .D(n80), .CK(clk_i), .Q(mem[24]), .QN(n116) );
  DFF_X1 mem_reg_1__2_ ( .D(n79), .CK(clk_i), .Q(mem[23]), .QN(n118) );
  DFF_X1 mem_reg_1__1_ ( .D(n78), .CK(clk_i), .Q(mem[22]), .QN(n114) );
  DFF_X1 mem_reg_2__11_ ( .D(n76), .CK(clk_i), .Q(mem[21]), .QN(n158) );
  DFF_X1 mem_reg_2__10_ ( .D(n75), .CK(clk_i), .Q(mem[20]), .QN(n157) );
  DFF_X1 mem_reg_2__9_ ( .D(n74), .CK(clk_i), .Q(mem[19]), .QN(n156) );
  DFF_X1 mem_reg_2__8_ ( .D(n73), .CK(clk_i), .Q(mem[18]), .QN(n155) );
  DFF_X1 mem_reg_2__7_ ( .D(n72), .CK(clk_i), .Q(mem[17]), .QN(n154) );
  DFF_X1 mem_reg_2__6_ ( .D(n71), .CK(clk_i), .Q(mem[16]), .QN(n153) );
  DFF_X1 mem_reg_2__5_ ( .D(n70), .CK(clk_i), .Q(mem[15]), .QN(n134) );
  DFF_X1 mem_reg_2__4_ ( .D(n69), .CK(clk_i), .Q(mem[14]), .QN(n135) );
  DFF_X1 mem_reg_2__3_ ( .D(n68), .CK(clk_i), .Q(mem[13]), .QN(n136) );
  DFF_X1 mem_reg_2__2_ ( .D(n67), .CK(clk_i), .Q(mem[12]), .QN(n138) );
  DFF_X1 mem_reg_2__1_ ( .D(n66), .CK(clk_i), .Q(mem[11]), .QN(n133) );
  DFF_X1 mem_reg_3__11_ ( .D(n64), .CK(clk_i), .Q(mem[10]), .QN(n164) );
  DFF_X1 mem_reg_3__10_ ( .D(n63), .CK(clk_i), .Q(mem[9]), .QN(n163) );
  DFF_X1 mem_reg_3__9_ ( .D(n62), .CK(clk_i), .Q(mem[8]), .QN(n162) );
  DFF_X1 mem_reg_3__8_ ( .D(n61), .CK(clk_i), .Q(mem[7]), .QN(n161) );
  DFF_X1 mem_reg_3__7_ ( .D(n60), .CK(clk_i), .Q(mem[6]), .QN(n160) );
  DFF_X1 mem_reg_3__6_ ( .D(n59), .CK(clk_i), .Q(mem[5]), .QN(n159) );
  DFF_X1 mem_reg_3__5_ ( .D(n58), .CK(clk_i), .Q(mem[4]), .QN(n129) );
  DFF_X1 mem_reg_3__4_ ( .D(n57), .CK(clk_i), .Q(mem[3]), .QN(n132) );
  DFF_X1 mem_reg_3__3_ ( .D(n56), .CK(clk_i), .Q(mem[2]), .QN(n131) );
  DFF_X1 mem_reg_3__2_ ( .D(n55), .CK(clk_i), .Q(mem[1]), .QN(n137) );
  DFF_X1 mem_reg_3__1_ ( .D(n54), .CK(clk_i), .Q(mem[0]), .QN(n127) );
  OAI21_X1 U7 ( .B1(wr_ptr[0]), .B2(n29), .A(n53), .ZN(n30) );
  OAI21_X1 U8 ( .B1(wr_ptr[1]), .B2(n49), .A(n53), .ZN(n44) );
  OAI21_X1 U9 ( .B1(n139), .B2(n29), .A(n53), .ZN(n28) );
  INV_X1 U10 ( .A(data_in_i[1]), .ZN(n34) );
  INV_X1 U11 ( .A(data_in_i[11]), .ZN(n46) );
  NAND2_X1 U12 ( .A1(rd_ptr[1]), .A2(n126), .ZN(n51) );
  NOR2_X1 U13 ( .A1(rd_ptr[0]), .A2(rd_ptr[1]), .ZN(n25) );
  NAND2_X1 U14 ( .A1(rd_ptr[0]), .A2(rd_ptr[1]), .ZN(n23) );
  NAND2_X1 U15 ( .A1(rd_ptr[0]), .A2(n125), .ZN(n50) );
  OAI22_X1 U16 ( .A1(n164), .A2(n23), .B1(n124), .B2(n50), .ZN(n1) );
  AOI21_X1 U17 ( .B1(mem[44]), .B2(n25), .A(n1) );
  OAI22_X1 U19 ( .A1(n163), .A2(n23), .B1(n123), .B2(n50), .ZN(n3) );
  AOI21_X1 U20 ( .B1(mem[43]), .B2(n25), .A(n3) );
  OAI22_X1 U22 ( .A1(n162), .A2(n23), .B1(n122), .B2(n50), .ZN(n5) );
  AOI21_X1 U23 ( .B1(mem[42]), .B2(n25), .A(n5) );
  OAI22_X1 U25 ( .A1(n161), .A2(n23), .B1(n121), .B2(n50), .ZN(n7) );
  AOI21_X1 U26 ( .B1(mem[41]), .B2(n25), .A(n7) );
  OAI22_X1 U28 ( .A1(n160), .A2(n23), .B1(n120), .B2(n50), .ZN(n9) );
  AOI21_X1 U29 ( .B1(mem[40]), .B2(n25), .A(n9) );
  OAI22_X1 U31 ( .A1(n159), .A2(n23), .B1(n119), .B2(n50), .ZN(n11) );
  AOI21_X1 U32 ( .B1(mem[39]), .B2(n25), .A(n11) );
  OAI22_X1 U34 ( .A1(n129), .A2(n23), .B1(n115), .B2(n50), .ZN(n13) );
  AOI21_X1 U35 ( .B1(mem[38]), .B2(n25), .A(n13), .ZN(n14) );
  OAI21_X1 U36 ( .B1(n134), .B2(n51), .A(n14), .ZN(data_out_o[5]) );
  OAI22_X1 U37 ( .A1(n132), .A2(n23), .B1(n117), .B2(n50), .ZN(n15) );
  AOI21_X1 U38 ( .B1(mem[37]), .B2(n25), .A(n15) );
  OAI22_X1 U40 ( .A1(n131), .A2(n23), .B1(n116), .B2(n50), .ZN(n17) );
  AOI21_X1 U41 ( .B1(mem[36]), .B2(n25), .A(n17), .ZN(n18) );
  OAI21_X1 U42 ( .B1(n136), .B2(n51), .A(n18), .ZN(data_out_o[3]) );
  OAI22_X1 U43 ( .A1(n137), .A2(n23), .B1(n118), .B2(n50), .ZN(n19) );
  AOI21_X1 U44 ( .B1(mem[35]), .B2(n25), .A(n19), .ZN(n20) );
  OAI21_X1 U45 ( .B1(n138), .B2(n51), .A(n20), .ZN(data_out_o[2]) );
  OAI22_X1 U46 ( .A1(n127), .A2(n23), .B1(n114), .B2(n50), .ZN(n21) );
  AOI21_X1 U47 ( .B1(mem[34]), .B2(n25), .A(n21), .ZN(n22) );
  OAI21_X1 U48 ( .B1(n133), .B2(n51), .A(n22), .ZN(data_out_o[1]) );
  AOI21_X1 U50 ( .B1(1'b0), .B2(n25), .A(1'b0) );
  INV_X1 U53 ( .A(reset_i), .ZN(n53) );
  NAND2_X1 U54 ( .A1(wr_i), .A2(wr_ptr[1]), .ZN(n29) );
  NAND2_X1 U55 ( .A1(n53), .A2(n28), .ZN(n27) );
  OAI22_X1 U56 ( .A1(n28), .A2(n127), .B1(n27), .B2(n34), .ZN(n54) );
  OAI22_X1 U58 ( .A1(n28), .A2(n137), .B1(n27), .B2(n34), .ZN(n55) );
  INV_X1 U59 ( .A(data_in_i[3]), .ZN(n36) );
  OAI22_X1 U60 ( .A1(n28), .A2(n131), .B1(n27), .B2(n36), .ZN(n56) );
  INV_X1 U61 ( .A(data_in_i[4]), .ZN(n37) );
  OAI22_X1 U62 ( .A1(n28), .A2(n132), .B1(n27), .B2(n37), .ZN(n57) );
  INV_X1 U63 ( .A(data_in_i[5]), .ZN(n38) );
  OAI22_X1 U64 ( .A1(n28), .A2(n129), .B1(n27), .B2(n38), .ZN(n58) );
  INV_X1 U65 ( .A(data_in_i[6]), .ZN(n39) );
  OAI22_X1 U66 ( .A1(n28), .A2(n159), .B1(n27), .B2(n39), .ZN(n59) );
  INV_X1 U67 ( .A(data_in_i[7]), .ZN(n40) );
  OAI22_X1 U68 ( .A1(n28), .A2(n160), .B1(n27), .B2(n40), .ZN(n60) );
  INV_X1 U69 ( .A(data_in_i[8]), .ZN(n41) );
  OAI22_X1 U70 ( .A1(n28), .A2(n161), .B1(n27), .B2(n41), .ZN(n61) );
  INV_X1 U71 ( .A(data_in_i[9]), .ZN(n42) );
  OAI22_X1 U72 ( .A1(n28), .A2(n162), .B1(n27), .B2(n42), .ZN(n62) );
  INV_X1 U73 ( .A(data_in_i[10]), .ZN(n43) );
  OAI22_X1 U74 ( .A1(n28), .A2(n163), .B1(n27), .B2(n43), .ZN(n63) );
  OAI22_X1 U75 ( .A1(n28), .A2(n164), .B1(n27), .B2(n46), .ZN(n64) );
  NAND2_X1 U76 ( .A1(n53), .A2(n30), .ZN(n31) );
  OAI22_X1 U77 ( .A1(n34), .A2(n31), .B1(n30), .B2(n133), .ZN(n66) );
  OAI22_X1 U78 ( .A1(n34), .A2(n31), .B1(n30), .B2(n138), .ZN(n67) );
  OAI22_X1 U79 ( .A1(n36), .A2(n31), .B1(n30), .B2(n136), .ZN(n68) );
  OAI22_X1 U80 ( .A1(n37), .A2(n31), .B1(n30), .B2(n135), .ZN(n69) );
  OAI22_X1 U81 ( .A1(n38), .A2(n31), .B1(n30), .B2(n134), .ZN(n70) );
  OAI22_X1 U82 ( .A1(n39), .A2(n31), .B1(n30), .B2(n153), .ZN(n71) );
  OAI22_X1 U83 ( .A1(n40), .A2(n31), .B1(n30), .B2(n154), .ZN(n72) );
  OAI22_X1 U84 ( .A1(n41), .A2(n31), .B1(n30), .B2(n155), .ZN(n73) );
  OAI22_X1 U85 ( .A1(n42), .A2(n31), .B1(n30), .B2(n156), .ZN(n74) );
  OAI22_X1 U86 ( .A1(n43), .A2(n31), .B1(n30), .B2(n157), .ZN(n75) );
  OAI22_X1 U87 ( .A1(n46), .A2(n31), .B1(n30), .B2(n158), .ZN(n76) );
  NAND3_X1 U88 ( .A1(wr_ptr[0]), .A2(wr_i), .A3(n140), .ZN(n47) );
  NAND2_X1 U89 ( .A1(n53), .A2(n47), .ZN(n32) );
  NAND2_X1 U90 ( .A1(n53), .A2(n32), .ZN(n33) );
  OAI22_X1 U91 ( .A1(n34), .A2(n33), .B1(n32), .B2(n114), .ZN(n78) );
  OAI22_X1 U92 ( .A1(n34), .A2(n33), .B1(n32), .B2(n118), .ZN(n79) );
  OAI22_X1 U93 ( .A1(n36), .A2(n33), .B1(n32), .B2(n116), .ZN(n80) );
  OAI22_X1 U94 ( .A1(n37), .A2(n33), .B1(n32), .B2(n117), .ZN(n81) );
  OAI22_X1 U95 ( .A1(n38), .A2(n33), .B1(n32), .B2(n115), .ZN(n82) );
  OAI22_X1 U96 ( .A1(n39), .A2(n33), .B1(n32), .B2(n119), .ZN(n83) );
  OAI22_X1 U97 ( .A1(n40), .A2(n33), .B1(n32), .B2(n120), .ZN(n84) );
  OAI22_X1 U98 ( .A1(n41), .A2(n33), .B1(n32), .B2(n121), .ZN(n85) );
  OAI22_X1 U99 ( .A1(n42), .A2(n33), .B1(n32), .B2(n122), .ZN(n86) );
  OAI22_X1 U100 ( .A1(n43), .A2(n33), .B1(n32), .B2(n123), .ZN(n87) );
  OAI22_X1 U101 ( .A1(n46), .A2(n33), .B1(n32), .B2(n124), .ZN(n88) );
  NAND2_X1 U102 ( .A1(wr_i), .A2(n139), .ZN(n49) );
  NAND2_X1 U103 ( .A1(n53), .A2(n44), .ZN(n45) );
  OAI22_X1 U104 ( .A1(n34), .A2(n45), .B1(n44), .B2(n142), .ZN(n90) );
  OAI22_X1 U105 ( .A1(n34), .A2(n45), .B1(n44), .B2(n143), .ZN(n91) );
  OAI22_X1 U106 ( .A1(n36), .A2(n45), .B1(n44), .B2(n144), .ZN(n92) );
  OAI22_X1 U107 ( .A1(n37), .A2(n45), .B1(n44), .B2(n145), .ZN(n93) );
  OAI22_X1 U108 ( .A1(n38), .A2(n45), .B1(n44), .B2(n146), .ZN(n94) );
  OAI22_X1 U109 ( .A1(n39), .A2(n45), .B1(n44), .B2(n147), .ZN(n95) );
  OAI22_X1 U110 ( .A1(n40), .A2(n45), .B1(n44), .B2(n148), .ZN(n96) );
  OAI22_X1 U111 ( .A1(n41), .A2(n45), .B1(n44), .B2(n149), .ZN(n97) );
  OAI22_X1 U112 ( .A1(n42), .A2(n45), .B1(n44), .B2(n150), .ZN(n98) );
  OAI22_X1 U113 ( .A1(n43), .A2(n45), .B1(n44), .B2(n151), .ZN(n99) );
  OAI22_X1 U114 ( .A1(n46), .A2(n45), .B1(n44), .B2(n152), .ZN(n100) );
  INV_X1 U115 ( .A(wr_i), .ZN(n65) );
  NOR2_X1 U116 ( .A1(n65), .A2(n139), .ZN(n48) );
  AOI221_X1 U117 ( .B1(n48), .B2(n47), .C1(n140), .C2(n47), .A(reset_i), .ZN(
        n101) );
  AOI221_X1 U118 ( .B1(wr_i), .B2(n49), .C1(n139), .C2(n49), .A(reset_i), .ZN(
        n102) );
  AND2_X1 U119 ( .A1(n51), .A2(n50), .ZN(n52) );
  INV_X1 U120 ( .A(rd_i), .ZN(n77) );
  AOI221_X1 U121 ( .B1(rd_i), .B2(n52), .C1(n77), .C2(n125), .A(reset_i), .ZN(
        n103) );
  AOI221_X1 U122 ( .B1(rd_i), .B2(rd_ptr[0]), .C1(n77), .C2(n126), .A(reset_i), 
        .ZN(n104) );
endmodule

