/* Decode Module
 * This module pre-assign resource, rename reg to solve data dependencies
 */
module decode (
    // Inputs
    clk_i, reset_i, pc_i, inst_valid_i, inst_i,
    // Outputs
    pc_o, alu_o, lsu_o, mul_o, br_o,
    rs1_addr, rs2_addr, rd_addr
);
    // ----- Input/Output Ports -----
    // Inputs
    input clk_i, reset_i;
    input [31:0] pc_i;
    input inst_valid_i;
    input [31:0] inst_i;
    // Updates from cdb
    input cdb_en_i;
    input [4:0] cdb_reg_addr_i;
    // Outputs
    output [31:0] pc_o;
    output alu_o;
    output lsu_o;
    output mul_o;
    output br_o;
    output [4:0] rs1_addr;
    output [4:0] rs2_addr;
    output [4:0] rd_addr;

    // ----- Reg/wire Initialization -----
    // The register addr
    wire[4:0] rs1_addr = inst_i[19:15];
    wire[4:0] rs2_addr = inst_i[24:20];
    wire[4:0] rd_addr = inst_i[11:7];

    wire [4:0] prs1_addr;
    wire [4:0] prs2_addr;
    wire [4:0] prd_addr;

    // Predecode: decide which FU the inst goes into
    decoder dec0 (
        // Inputs
        .inst_i(inst_i),
        // Outputs
        .alu_o(alu_o), 
        .lsu_o(lsu_o), 
        .mul_o(mul_o), 
        .br_o(br_o));

    // Register rename
    rename rename0 (
        // Inputs
        .clk_i(clk_i), 
        .reset_i(reset_i), 
        .pc_i(pc_i), 
        .inst_valid_i(inst_valid_i), 
        .rs1_addr_i(rs1_addr), 
        .rs2_addr_i(rs2_addr), 
        .rd_addr_i(rd_addr), 
        .cdb_en_i(cdb_en_i), 
        .cdb_reg_addr_i(cdb_reg_addr_i),
        // Outputs
        .prs1_addr_o(prs1_addr), 
        .prs2_addr_o(prs2_addr), 
        .prd_addr_o(prd_addr)
    );

    // Dispatch
    //always @(*) begin
    //end

endmodule