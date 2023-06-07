/* Decode Module
 * This module pre-assign resource, rename reg to solve data dependencies
 */
module decode (
    // Inputs
    //clk_i, reset_i, pc_i, 
    inst_valid_i, inst_i, //cdb_en_i, cdb_reg_addr_i,
    // Outputs
    alu_o, lsu_o, mul_o, br_o,
    rs1_addr_o, rs2_addr_o, rd_addr_o
);
    // ----- Input/Output Ports -----
    // Inputs
    //input clk_i, reset_i;
    //input [31:0] pc_i;
    input inst_valid_i;
    input [31:0] inst_i;
    // Updates from cdb
    //input cdb_en_i;
    //input [4:0] cdb_reg_addr_i;
    // Outputs
    output alu_o;
    output lsu_o;
    output mul_o;
    output br_o;
    output [4:0] rs1_addr_o;
    output [4:0] rs2_addr_o;
    output [4:0] rd_addr_o;

    // ----- Reg/wire Initialization -----
    wire alu_request;
    wire lsu_request;
    wire mul_request;
    wire br_request;

    assign alu_o = alu_request & inst_valid_i;
    assign lsu_o = lsu_request & inst_valid_i;
    assign mul_o = mul_request & inst_valid_i;
    assign br_o = br_request & inst_valid_i;

    // Predecode: decide which FU the inst goes into
    decoder dec0 (
        // Inputs
        .inst_i(inst_i),
        // Outputs
        .alu_o(alu_request), 
        .lsu_o(lsu_request), 
        .mul_o(mul_request), 
        .br_o(br_request),
        .rs1_addr_o(rs1_addr_o), 
        .rs2_addr_o(rs2_addr_o), 
        .rd_addr_o(rd_addr_o)
    );

endmodule
