/* Out-of-Order Processor Core */

module core (
    clk_i, reset_i,
    // imem
    imem_addr_o,
    imem_inst_i,

    // dmem
    dmem_csb_write_o,
    dmem_wmask_o,
    dmem_waddr_o,
    dmem_din_o,
    dmem_csb_read_o,
    dmem_raddr_o,
    dmem_dout_i
);
    // ----- Input/Output Ports -----
    input clk_i;
    input reset_i;

    // imem
    output reg [7:0] imem_addr_o;
    input [31:0] imem_inst_i;

    // dmem
    output dmem_csb_write_o;
    output [3:0] dmem_wmask_o;
    output [7:0] dmem_waddr_o;
    output [31:0] dmem_din_o;
    output dmem_csb_read_o;
    output [7:0] dmem_raddr_o;
    input [31:0] dmem_dout_i;

    // ----- Reg/wire Initialization -----
    wire fetch_stall;
    wire [31:0] pc_fetch;
    wire [31:0] inst_fetch;
    wire inst_valid_fetch;

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
    wire [4:0] rob_idx_allocated;
    wire prs1_valid;
    wire prs2_valid;

    wire rs_alu_valid;
    wire [31:0] alu_pc_issued;
    wire [31:0] alu_inst_issued;
    wire [4:0] alu_prs1_addr_issued;
    wire [4:0] alu_prs2_addr_issued;
    wire [4:0] alu_rob_idx_issued;
    wire [31:0] alu_prs1_value;
    wire [31:0] alu_prs2_value;

    wire rs_lsu_valid;
    wire [31:0] lsu_pc_issued;
    wire [31:0] lsu_inst_issued;
    wire [4:0] lsu_prs1_addr_issued;
    wire [4:0] lsu_prs2_addr_issued;
    wire [4:0] lsu_rob_idx_issued;
    wire [31:0] lsu_prs1_value;
    wire [31:0] lsu_prs2_value;

    wire rs_mul_valid;
    wire [31:0] mul_pc_issued;
    wire [31:0] mul_inst_issued;
    wire [4:0] mul_prs1_addr_issued;
    wire [4:0] mul_prs2_addr_issued;
    wire [4:0] mul_rob_idx_issued;
    wire [31:0] mul_prs1_value;
    wire [31:0] mul_prs2_value;

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
    wire cdb_en;
    wire [4:0] cdb_tag;
    wire [31:0] cdb_data;

    // Stall
    reg stall_fetch;

    assign inst_valid_decode = alu_request | lsu_request | mul_request;
    assign fetch_stall = br_request | (~rs_alu_valid) | (~rs_lsu_valid) | (~rs_mul_valid);

    // ----- Fetch & Decode -----
    fetch fetch (
        // Inputs
        .clk_i(clk_i), 
        .reset_i(reset_i), 
        .stall_i(fetch_stall), 
        .pc_sel_i(br_request), 
        .br_dest(),
        // Outputs
        .pc_o(pc_fetch), 
        .inst_o(inst_fetch), 
        .inst_valid_o(inst_valid_fetch),

        //imem
        .imem_addr_o(imem_addr_o),
        .imem_inst_i(imem_inst_i)
    );

    decode decode (
        // Inputs
        //.clk_i(clk_i), 
        //.reset_i(reset_i), 
        //.pc_i(pc_fetch), 
        .inst_valid_i(inst_valid_fetch),
        .inst_i(inst_fetch),
        //.cdb_en_i(cdb_en),
        //.cdb_reg_addr_i(cdb_tag),
        // Outputs
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
    rename rename0 (
        .clk_i(clk_i), 
        .reset_i(reset_i), 
        //.pc_i(pc_fetch), 0
        .inst_valid_i(inst_valid_fetch), 
        .rs1_addr_i(rs1_addr_decoded), 
        .rs2_addr_i(rs2_addr_decoded), 
        .rd_addr_i(rd_addr_decoded), 
        .cdb_en_i(cdb_en), 
        .cdb_reg_addr_i(cdb_tag),
        // Outputs
        .prs1_addr_o(prs1_addr_decoded), 
        .prs2_addr_o(prs2_addr_decoded), 
        .prd_addr_o(prd_addr_decoded),
        .prs1_valid_o(prs1_valid), 
        .prs2_valid_o(prs2_valid)
    );

    // Reservation Station
    rs reservation_station (
        // Inputs
        .clk_i(clk_i), 
        .reset_i(reset_i),
        //.rs_allocate_i(inst_valid_fetch),
        .pc_i(pc_fetch),
        .inst_i(inst_fetch),
        .prs1_addr_i(prs1_addr_decoded), 
        .prs2_addr_i(prs2_addr_decoded), 
        .rob_idx_i(rob_idx_allocated),
        .prs1_valid_i(prs1_valid), 
        .prs2_valid_i(prs2_valid),
        .alu_request_i(alu_request), 
        .lsu_request_i(lsu_request), 
        .mul_request_i(mul_request),
        //.alu_valid_i(1'b1), 
        //.mul_valid_i(1'b1), 
        .lsu_valid_i(!lsu_busy),
        .cdb_en_i(cdb_en), 
        .cdb_tag_i(cdb_tag),
        
        // Outputs
        .alu_free_o(rs_alu_valid), 
        .lsu_free_o(rs_lsu_valid), 
        .mul_free_o(rs_mul_valid),
        
        .alu_request_o(alu_exe_request), 
        .alu_pc_o(alu_pc_issued), 
        .alu_inst_o(alu_inst_issued), 
        .alu_prs1_addr_o(alu_prs1_addr_issued), 
        .alu_prs2_addr_o(alu_prs2_addr_issued), 
        .alu_rob_idx_o(alu_rob_idx_issued),

        .lsu_request_o(lsu_exe_request), 
        .lsu_pc_o(lsu_pc_issued), 
        .lsu_inst_o(lsu_inst_issued), 
        .lsu_prs1_addr_o(lsu_prs1_addr_issued), 
        .lsu_prs2_addr_o(lsu_prs2_addr_issued), 
        .lsu_rob_idx_o(lsu_rob_idx_issued),

        .mul_request_o(mul_exe_request), 
        .mul_pc_o(mul_pc_issued), 
        .mul_inst_o(mul_inst_issued), 
        .mul_prs1_addr_o(mul_prs1_addr_issued), 
        .mul_prs2_addr_o(mul_prs2_addr_issued), 
        .mul_rob_idx_o(mul_rob_idx_issued)
    );

    // Reorder Buffer
    rob reorder_buf (
        .clk_i(clk_i), 
        .reset_i(reset_i), 
        // Enable Signals (Allocate & Update)
        .allocate_req_i(alu_request | mul_request | lsu_request), 
        .update_req_alu_i(wb_valid_alu), 
        .update_req_lsu_i(wb_valid_lsu), 
        .update_req_mul_i(wb_valid_mul), 
        // Allocate Value
        .prd_addr_i(prd_addr_decoded), 
        .pc_i(pc_fetch), 
        .inst_i(alu_inst_issued),
        // Update Value (ALU)
        .rob_idx_alu_i(), 
        .reg_value_alu_i(wb_value_alu),
        // Update Value (LSU)
        .rob_idx_lsu_i(), 
        .reg_value_lsu_i(wb_value_lsu),
        // Update Value (MUL)
        .rob_idx_mul_i(), 
        .reg_value_mul_i(wb_value_mul),
        
        // ROB Status
        .empty_o(), 
        .full_o(),
        // Allocated ROB Index
        .rob_idx_o(),
        // Commitment
        .commitment_valid_o(cdb_en), 
        .inst_committed_o(), 
        .pc_committed_o(), 
        .prd_addr_committed_o(cdb_tag), 
        .prd_value_committed_o(cdb_data)
    );

    // Regfile
    regfile regfile0 (
        .clk_i(clk_i), 
        .reset_i(reset_i), 
        .w_en_i(cdb_en),  // this should happens while during commitment stage
        .ra1_addr_i(alu_prs1_addr_issued), .rb1_addr_i(alu_prs2_addr_issued), 
        .ra2_addr_i(lsu_prs1_addr_issued), .rb2_addr_i(lsu_prs2_addr_issued), 
        .ra3_addr_i(mul_prs1_addr_issued), .rb3_addr_i(mul_prs2_addr_issued), 
        .rd_addr_i(cdb_tag),  // this should happens while during commitment stage
        .w_data_i(cdb_data),  // this should happens while during commitment stage

        .ra1_value_o(alu_prs1_value), .rb1_value_o(alu_prs2_value),
        .ra2_value_o(lsu_prs1_value), .rb2_value_o(lsu_prs2_value),
        .ra3_value_o(mul_prs1_value), .rb3_value_o(mul_prs2_value)
    );

    // ----- Functional Units -----
    // Arithmetic Unit
    arith arith0 (
        // Inputs
        .clk_i(clk_i), 
        .reset_i(reset_i), 
        .pc_i(alu_pc_issued), 
        .alu_request_i(alu_exe_request), 
        .inst_i(alu_inst_issued), 
        .rs1_value_i(alu_prs1_value), 
        .rs2_value_i(alu_prs2_value),
        // Outputs
        .writeback_valid_o(wb_valid_alu), 
        .writeback_value_o(wb_value_alu)
    );

    // Muliplexing Unit
    mul mul0(
        // Inputs
        .clk_i(clk_i), 
        .reset_i(reset_i), 
        .pc_i(mul_pc_issued),  // not needed?
        .mul_request_i(mul_exe_request), 
        .inst_i(mul_inst_issued), 
        .rs1_value_i(mul_prs1_value), 
        .rs2_value_i(mul_prs2_value),
        // Outputs
        .writeback_valid_o(wb_valid_mul), 
        .writeback_value_o(wb_value_mul)
    );

    // Load/Store Unit
    lsu lsu0 (
        // Inputs
        .clk_i(clk_i), 
        .reset_i(reset_i), 
        .pc_i(lsu_pc_issued),  // not needed?
        .lsu_request_i(lsu_exe_request), 
        .inst_i(lsu_inst_issued), 
        .rs1_value_i(lsu_prs1_value), 
        .rs2_value_i(lsu_prs2_value),
        // Outputs
        .busy_o(lsu_busy), 
        .writeback_valid_o(wb_valid_lsu), 
        .writeback_value_o(wb_value_lsu),

        .dmem_csb_write_o(dmem_csb_write_o),
        .dmem_wmask_o(dmem_wmask_o),
        .dmem_waddr_o(dmem_waddr_o),
        .dmem_din_o(dmem_din_o),
        .dmem_csb_read_o(dmem_csb_read_o),
        .dmem_raddr_o(dmem_raddr_o),
        .dmem_dout_i(dmem_dout_i)
    );

endmodule
