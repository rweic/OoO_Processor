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

    wire rs_valid;
    wire [4:0] prs1_addr_issued;
    wire [4:0] prs2_addr_issued;
    wire [4:0] prd_addr_issued;
    wire [4:0] prs1_value_fu;
    wire [4:0] prs2_value_fu;

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
        .br_o(br_request)
    );

    // ----- Out-of-Order Control Blocks -----
    rs reservation_station (
        // Inputs
        .clk_i(clk_i), 
        .reset_i(reset_i),
        .rs_allocate_i(),
        .prs1_addr_i(), 
        .prs2_addr_i(), 
        .prd_addr_i(),
        .alu_valid_i(), 
        .mul_valid_i(), 
        .lsu_valid_i(),
        // Outputs
        .rs_valid(rs_valid),
        .prs1_addr_o(), 
        .prs2_addr_o(), 
        .prd_addr_o()
    );

    // Reorder Buffer


    // Regfile
    regfile regfile0 (
        .clk_i(clk_i), 
        .reset_i(reset_i), 
        .w_en_i(),
        .ra_addr_i(prs1_addr_issued), 
        .rb_addr_i(prs2_addr_issued), 
        .rd_addr_i(),
        .w_data_i(),
        .ra_value_o(prs1_value_fu), 
        .rb_value_o(prs2_value_fu)
    );
    
    // ----- Functional Units -----
    // Arithmetic Unit
    arith arith0 (
        // Inputs
        .clk_i(clk_i), 
        .reset_i(reset_i), 
        .pc_i(), 
        .alu_request_i(alu_request), 
        .inst_i(), 
        .rs1_value_i(prs1_value_fu), 
        .rs2_value_i(prs2_value_fu),
        // Outputs
        .writeback_value_o()
    );

    // Muliplexing Unit
    mul mul0(
        // Inputs
        .clk_i(clk_i), 
        .reset_i(reset_i), 
        .pc_i(), 
        .mul_request_i(mul_request), 
        .inst_i(), 
        .rs1_value_i(prs1_value_fu), 
        .rs2_value_i(prs2_value_fu),
        // Outputs
        .writeback_valid_o(), 
        .writeback_value_o()
    );

    // Load/Store Unit
    lsu lsu0 (
        // Inputs
        .clk_i(clk_i), 
        .reset_i(reset_i), 
        .pc_i(), 
        .lsu_request_i(lsu_request), 
        .inst_i(), 
        .rs1_value_i(prs1_value_fu), 
        .rs2_value_i(prs2_value_fu),
        // Outputs
        .busy_o(), 
        .writeback_valid_o(), 
        .writeback_value_o()
    );

endmodule