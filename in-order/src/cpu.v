module cpu #(parameter WORD = 32, parameter INST_LEN = 32, parameter ADDR_LEN = 32) (
    clk, reset
);
    input clk, reset;

    // Internal signals
    wire [WORD-1:0] pc_if, pc_id, pc_ex, pc_mem, pc_wb;
    wire [INST_LEN-1:0] instruction;

    wire [ADDR_LEN-1:0] rs1, rs2, rd;
    wire [WORD-1:0] rs1_value, rs2_value;
    wire rf_en;
    wire [WORD-1:0] rf_wdata;


    wire [WORD-1:0] alu_out;

    wire dmem_en;

    // Instruction Fetch
    instructfetch fetch(
        .clk(clk),          // Clock input
        .reset(reset),       // Reset input (active high)
        .pc_i(pc_if),   // Program counter input (32 bits)
        .pc_o(pc_id),
        .nstr_o()); // Instruction output (32 bits)

    // Instruction Decode

    // Regfile
    regfile #(.WIDTH(32)) regfile0 (
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
    execute #(.WIDTH(32)) execute0 (
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
    writeback writeback0 (
        .wb_sel(), 
        .alu_result(alu_out), 
        .dmem_result(), 
        .imm_u(), 
        .pc_i(pc_wb), 
        .rf_wdata(rf_wdata));

    // Hazard Handling


endmodule