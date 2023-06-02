/* Out-of-Order Processor Core
 * 
 */

module core (
    // Inputs
    clk_i, reset_i
    // Outputs
);
    // ----- Input/Output Ports -----
    // Inputs
    input clk_i;
    input reset_i;
    // Outputs

    // ----- Reg/wire Initialization -----
    wire fetch_stall = 1'b0;
    wire [31:0] pc_fetch;
    wire [31:0] inst_fetch;
    wire inst_valid_fetch;

    wire [31:0] pc_decode;
    wire alu_request;
    wire lsu_request;
    wire mul_request;
    wire br_request;
    wire [4:0] rs1_addr_decoded;
    wire [4:0] rs2_addr_decoded;
    wire [4:0] rd_addr_decoded;
    wire inst_valid_decode;
    wire [4:0] prs1_addr_decoded;
    wire [4:0] prs2_addr_decoded;
    wire [4:0] prd_addr_decoded;
    wire prs1_valid_o;
    wire prs2_valid_o;

    wire rs_valid;
    wire [31:0] pc_issued;
    wire [31:0] inst_issued;
    wire [4:0] prs1_addr_issued;
    wire [4:0] prs2_addr_issued;
    wire [4:0] prd_addr_issued;
    wire [4:0] prs1_value_fu;
    wire [4:0] prs2_value_fu;
    wire alu_exe_request;
    wire lsu_exe_request;
    wire mul_exe_request;

    wire lsu_busy;

    wire wb_valid_alu;
    wire wb_valid_lsu;
    wire wb_valid_mul;
    wire [31:0] wb_value_alu;
    wire [31:0] wb_value_lsu;
    wire [31:0] wb_value_mul;

    // Commitment
    wire wb_en;
    wire [4:0] wb_reg_addr;
    wire [31:0] wb_data;

    assign inst_valid_decode = alu_request | lsu_request | mul_request;

    // ----- Fetch & Decode -----
    fetch fetch (
        // Inputs
        .clk_i(clk_i), 
        .reset_i(reset_i), 
        .stall_i(fetch_stall), 
        .pc_sel_i(1'b0), 
        .br_dest('b0),
        // Outputs
        .pc_o(pc_fetch), 
        .inst_o(inst_fetch), 
        .inst_valid_o(inst_valid_fetch)
    );

    decode decode (
        // Inputs
        .clk_i(clk_i), 
        .reset_i(reset_i), 
        .pc_i(pc_fetch), 
        .inst_valid_i(inst_valid_fetch),
        .inst_i(inst_fetch),
        // Outputs
        .pc_o(pc_decode), 
        .alu_o(alu_request), 
        .lsu_o(lsu_request), 
        .mul_o(mul_request), 
        .br_o(br_request),
        .rs1_addr(rs1_addr_decoded), 
        .rs2_addr(rs2_addr_decoded), 
        .rd_addr(rd_addr_decoded)
    );

    // ----- Out-of-Order Control Blocks -----
    // Rename Block
    rename rename (
        .clk_i(clk_i), 
        .reset_i(reset_i), 
        .pc_i(pc_decode), 
        .inst_valid_i(inst_valid_decode), 
        .rs1_addr_i(rs1_addr_decoded), 
        .rs2_addr_i(rs2_addr_decoded), 
        .rd_addr_i(rd_addr_decoded), 
        .cdb_en_i(wb_en), 
        .cdb_reg_addr_i(wb_reg_addr),
        // Outputs
        .prs1_addr_o(prs1_addr_decoded), 
        .prs2_addr_o(prs2_addr_decoded), 
        .prd_addr_o(prd_addr_decoded),
        .prs1_valid_o(prs1_valid_o), 
        .prs2_valid_o(prs2_valid_o)
    );

    // Reservation Station
    rs reservation_station (
        // Inputs
        .clk_i(clk_i), 
        .reset_i(reset_i),
        .rs_allocate_i(inst_valid_decode),
        .pc_i(pc_decode),
        .prs1_addr_i(prs1_addr_decoded), 
        .prs2_addr_i(prs2_addr_decoded), 
        .prd_addr_i(prd_addr_decoded),
        .prs1_valid_i(prs1_valid_o), 
        .prs2_valid_i(prs2_valid_o),
        .alu_valid_i(1'b1), 
        .mul_valid_i(1'b1), 
        .lsu_valid_i(!lsu_busy),
        // Outputs
        .rs_free_o(rs_valid),
        .pc_o(pc_issued),
        .inst_o(inst_issued),
        .prs1_addr_o(prs1_addr_issued), 
        .prs2_addr_o(prs2_addr_issued), 
        .prd_addr_o(prd_addr_issued),
        .alu_request_o(alu_exe_request), 
        .mul_request_o(mul_exe_request), 
        .lsu_request_o(lsu_exe_request)
    );

    // Reorder Buffer
    rob reorder_buf (
        .clk_i(clk_i), 
        .reset_i(reset_i), 
        .allocate_req_i(alu_exe_request|mul_exe_request|lsu_exe_request), 
        .update_req_i(), 
        .prd_addr_i(), 
        .pc_i(pc_issued), 
        .inst_i(inst_issued),
        // Outputs
        .empty_o(), 
        .full_o(),
        .inst_committed_o(), 
        .pc_o(), 
        .prd_addr_o(wb_reg_addr)
    );

    // Regfile
    regfile regfile0 (
        .clk_i(clk_i), 
        .reset_i(reset_i), 
        .w_en_i(wb_en),  // this should happens while during commitment stage
        .ra_addr_i(prs1_addr_issued), 
        .rb_addr_i(prs2_addr_issued), 
        .rd_addr_i(wb_reg_addr),  // this should happens while during commitment stage
        .w_data_i(wb_data),  // this should happens while during commitment stage
        .ra_value_o(prs1_value_fu), 
        .rb_value_o(prs2_value_fu)
    );

    // ----- Functional Units -----
    // Arithmetic Unit
    arith arith0 (
        // Inputs
        .clk_i(clk_i), 
        .reset_i(reset_i), 
        .pc_i(pc_issued), 
        .alu_request_i(alu_exe_request), 
        .inst_i(inst_issued), 
        .rs1_value_i(prs1_value_fu), 
        .rs2_value_i(prs2_value_fu),
        // Outputs
        .writeback_valid_o(wb_valid_alu), 
        .writeback_value_o(wb_value_alu)
    );

    // Muliplexing Unit
    mul mul0(
        // Inputs
        .clk_i(clk_i), 
        .reset_i(reset_i), 
        .pc_i(pc_issued),  // not needed?
        .mul_request_i(mul_exe_request), 
        .inst_i(inst_issued), 
        .rs1_value_i(prs1_value_fu), 
        .rs2_value_i(prs2_value_fu),
        // Outputs
        .writeback_valid_o(wb_valid_mul), 
        .writeback_value_o(wb_value_mul)
    );

    // Load/Store Unit
    lsu lsu0 (
        // Inputs
        .clk_i(clk_i), 
        .reset_i(reset_i), 
        .pc_i(pc_issued),  // not needed?
        .lsu_request_i(lsu_exe_request), 
        .inst_i(inst_issued), 
        .rs1_value_i(prs1_value_fu), 
        .rs2_value_i(prs2_value_fu),
        // Outputs
        .busy_o(lsu_busy), 
        .writeback_valid_o(wb_valid_lsu), 
        .writeback_value_o(wb_value_lsu)
    );

endmodule