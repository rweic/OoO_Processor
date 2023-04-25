module cpu #(parameter WIDTH = 32, parameter INST_LEN = 32, parameter ADDR_LEN = 32) (
    clk, reset
);
    input clk, reset;

    // Internal signals
    wire [WIDTH-1:0] pc_if, pc_id, pc_ex, pc_mem, pc_wb;
    wire [INST_LEN-1:0] instruction;

    wire [4:0] rs1, rs2, rd;
    wire [WIDTH-1:0] rs1_value, rs2_value;
    wire rf_en;
    wire [WIDTH-1:0] rf_wdata;


    wire [WIDTH-1:0] alu_out;

    wire dmem_en;

    // Instruction Fetch
    instructfetch if0 (
        .clk(clk),          // Clock input
        .reset(reset),       // Reset input (active high)
        .pc_i(pc_if),   // Program counter input (32 bits)
        .pc_o(pc_id),
        .instr_o(instruction)); // Instruction output (32 bits)

    // Instruction Decode
    decode id0 (
        .clk(clk), 
        .reset(reset), 
        .pc_i(pc_id), 
        .inst(instruction), 
        .pc_o(pc_ex), 
        .opsel1(), 
        .opsel2(), 
        .alu_func(), 
        .rs1_addr(rs1), 
        .rs2_addr(rs2), 
        .imm(), 
        .imm_id()
    );

    // Regfile
    regfile regfile0 (
        .clk(clk), 
        .reset(reset), 
        .w_en(rf_en), 
        .ra_addr(rs1), 
        .rb_addr(rs2), 
        .rd_addr(rd), 
        .w_data(rf_wdata), 
        .ra_value(rs1_value), 
        .rb_value(rs2_value));

    // Execution
    execute ex0 (
        .clk(clk), 
        .reset(reset), 
        .opsel1(), // should be from decode stage
        .opsel2(), // should be from decode stage
        .alu_func(), // should be from decode stage
        .rs1_value(rs1_value), 
        .rs2_value(rs2_value), 
        .imm(),  // should be from decode stage
        .imm_id(), // should be from decode stage
        .pc_i(pc_ex), 
        .pc_o(pc_mem), 
        .alu_out(alu_out));

    // Memory Access
    memoryaccess mem0 (
        .clk(clk), 
        .reset(reset), 
        .pc_i(pc_mem), 
        .alu_result_i(alu_out), 
        .mem_r_i(), 
        .pc_o(pc_wb), 
        .alu_result_o(), 
        .load_data());

    // Data Memory
    dcache dcache0 (
        .clk(clk), 
        .reset(reset), 
        .w_en(dmem_en), 
        .wdata(), 
        .raddr(), 
        .waddr(),
        .rdata());

    // Write back
    writeback wb0 (
        .wb_sel(), 
        .alu_result(alu_out), 
        .dmem_result(), 
        .imm_u(), 
        .pc_i(pc_wb), 
        .rf_wdata(rf_wdata));

    // Hazard Handling
    control ctrl ();


endmodule