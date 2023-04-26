module cpu #(parameter WIDTH = 32, parameter INST_LEN = 32, parameter ADDR_LEN = 32) (
    clk, reset
);
    input clk, reset;

    // Internal signals
    wire [WIDTH-1:0] pc_if, pc_id, pc_ex, pc_mem, pc_wb;
    wire [INST_LEN-1:0] instruction;

    wire [4:0] rs1_addr, rs2_addr, rd_addr;
    wire [1:0] opsel1, opsel2, wbsel;
    wire [3:0] alu_func;
    wire [WIDTH-1:0] rs1_data, rs2_data;
    wire rf_w_en, mem_w_en;
    wire [WIDTH-1:0] rf_wdata;


    wire [WIDTH-1:0] alu_out, alu_out_wb;
    wire [WIDTH-1:0] dmem_rdata;
    wire [WIDTH-1:0] imm;

    wire [WIDTH-1:0] load_data;
    wire [WIDTH-1:0] imm_wb;

    // Instruction Fetch
    fetch fetch0 (
        .clk(clk),          // Clock input
        .reset(reset),       // Reset input (active high)
        .pc_i(pc_if),   // Program counter input (32 bits)
        .pc_o(pc_id),
        .instr_o(instruction)); // Instruction output (32 bits)

    // Instruction Decode
    decode decode0 (
        .clk(clk), 
        .reset(reset), 
        .pc_i(pc_id), 
        .inst(instruction), 
        .pc_o(pc_ex), 
        .alu_func(alu_func), 
        .opsel1(opsel1), 
        .opsel2(opsel2), 
        .wbsel(wbsel), 
        .rs1_addr(rs1_addr), 
        .rs2_addr(rs2_addr), 
        .rd_addr(rd_addr), 
        .rf_w_en(rf_w_en), 
        .mem_w_en(mem_w_en), 
        .imm(imm));

    // Regfile
    regfile regfile0 (
        .clk(clk), 
        .reset(reset), 
        .w_en(rf_w_en), 
        .ra_addr(rs1_addr), 
        .rb_addr(rs2_addr), 
        .rd_addr(rd_addr), 
        .w_data(rf_wdata), 
        .ra_value(rs1_data), 
        .rb_value(rs2_data));

    // Execution
    execute exec0 (
        .clk(clk), 
        .reset(reset), 
        .opsel1(opsel1),
        .opsel2(opsel2),
        .alu_func(alu_func),
        .rs1_data(rs1_data), 
        .rs2_data(rs2_data), 
        .imm(imm),
        .pc_i(pc_ex), 
        .pc_o(pc_mem), 
        .alu_out(alu_out));

    // Memory Access
    memoryaccess mem0 (
        .clk(clk), 
        .reset(reset), 
        .pc_i(pc_mem), 
        .alu_result_i(alu_out), 
        .mem_r_i(dmem_rdata), 
        .pc_o(pc_wb), 
        .alu_result_o(alu_out_wb), 
        .load_data(load_data));

    // Data Memory
    dcache dcache0 (
        .clk(clk), 
        .reset(reset), 
        .w_en(mem_w_en), 
        .wdata(rs2_data), 
        .raddr(alu_out[7:2]), 
        .waddr(alu_out[7:2]),
        .rdata(dmem_rdata));

    // Write back
    writeback wb0 (
        .wbsel(wbsel), 
        .alu_result(alu_out_wb), 
        .dmem_result(load_data), 
        .imm(imm_wb), 
        .pc_i(pc_wb), 
        .rf_wdata(rf_wdata));

    // Hazard Handling
    control ctrl ();


endmodule