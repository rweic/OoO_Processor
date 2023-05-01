module cpu #(parameter WIDTH = 32, parameter INST_LEN = 32, parameter ADDR_LEN = 32) (
    clk, reset
);
    input clk, reset;

    // Internal Signals
    // IF stage
    wire [WIDTH-1:0] pc_if;

    // ID stage
    wire [WIDTH-1:0] pc_id;
    wire [INST_LEN-1:0] instruction_id;
    wire [4:0] rs1_addr, rs2_addr;  //temp value

    // EX stage
    wire [WIDTH-1:0] pc_ex;
    wire [4:0] rd_addr_ex;
    wire [WIDTH-1:0] rs1_data, rs2_data;    // temp value
    wire [WIDTH-1:0] rs1_data_ex, rs2_data_ex;
    wire rf_w_en_ex;
    wire [1:0] opsel1, opsel2;
    wire [1:0] wbsel_ex;
    wire [3:0] alu_func;
    wire mem_w_en;

    // MEM stage
    wire [WIDTH-1:0] pc_mem;
    wire [4:0] rd_addr_mem;
    wire rf_w_en_mem;
    wire [WIDTH-1:0] alu_out_mem;
    wire [WIDTH-1:0] dmem_rdata;    // temp value
    wire [WIDTH-1:0] imm_mem;
    wire [1:0] wbsel_mem;

    // WB stage
    wire [WIDTH-1:0] pc_wb;
    wire [4:0] rd_addr_wb;
    wire rf_w_en_wb;
    wire [WIDTH-1:0] alu_out_wb;
    wire [WIDTH-1:0] rf_wdata_wb;
    wire [WIDTH-1:0] load_data_wb;
    wire [WIDTH-1:0] imm_wb;
    wire [1:0] wbsel_wb;

    // Instruction Fetch
    fetch fetch0 (
        .clk(clk),          // Clock input
        .reset(reset),       // Reset input (active high)
        .pc_o(pc_id),
        .instr_o(instruction_id)); // Instruction output (32 bits)

    // Instruction Decode
    decode decode0 (
        .clk(clk), 
        .reset(reset), 
        .pc_i(pc_id), 
        .inst(instruction_id), 
        .rs1_value_i(rs1_data), 
        .rs2_value_i(rs2_data),
        .pc_o(pc_ex), 
        .alu_func(alu_func), 
        .opsel1(opsel1), 
        .opsel2(opsel2), 
        .wbsel(wbsel_ex), // also need to delay for 3 cycle
        .rs1_addr(rs1_addr), 
        .rs2_addr(rs2_addr), 
        .rd_addr(rd_addr_ex), 
        .rs1_value_o(rs1_data_ex), 
        .rs2_value_o(rs2_data_ex),
        .rf_w_en(rf_w_en_ex),
        .mem_w_en(mem_w_en), 
        .imm(imm_mem));

    // Regfile
    regfile regfile0 (
        .clk(clk), 
        .reset(reset), 
        .w_en(rf_w_en_wb),    // need to delay this data to write back stage, at decode stage now
        .ra_addr(rs1_addr), 
        .rb_addr(rs2_addr), 
        .rd_addr(rd_addr_wb),  // at write back stage
        .w_data(rf_wdata_wb), // at write back stage right now, one circle earlier than rd_addr now??
        .ra_value(rs1_data), 
        .rb_value(rs2_data));

    // Execution
    execute exec0 (
        // Inputs
        .clk(clk), 
        .reset(reset), 
        .opsel1(opsel1),
        .opsel2(opsel2),
        .alu_func(alu_func),
        .rs1_data(rs1_data_ex), 
        .rs2_data(rs2_data_ex), 
        .rd_addr_i(rd_addr_ex),
        .rf_w_en_i(rf_w_en_ex),
        .wbsel_i(wbsel_ex),
        // Outputs
        .imm(imm_mem),
        .pc_i(pc_ex), 
        .pc_o(pc_mem), 
        .alu_out(alu_out_mem),
        .rd_addr_o(rd_addr_mem),
        .rf_w_en_o(rf_w_en_mem),
        .wbsel_o(wbsel_mem));

    // Memory Access
    memoryaccess memaccess0 (
        // Inputs
        .clk(clk), 
        .reset(reset), 
        .pc_i(pc_mem), 
        .alu_result_i(alu_out_mem), 
        .mem_r_i(dmem_rdata), 
        .rd_addr_i(rd_addr_mem),
        .rf_w_en_i(rf_w_en_mem),
        .imm_i(imm_mem),
        .wbsel_i(wbsel_mem),
        // Outputs
        .pc_o(pc_wb), 
        .alu_result_o(alu_out_wb), 
        .load_data(load_data_wb),
        .rd_addr_o(rd_addr_wb),
        .rf_w_en_o(rf_w_en_wb),
        .imm_o(imm_wb),
        .wbsel_o(wbsel_wb));

    // Data Memory
    dcache dcache0 (
        .clk(clk), 
        .reset(reset), 
        .w_en(mem_w_en), 
        .wdata(rs2_data), 
        .raddr(alu_out_mem[7:2]), 
        .waddr(alu_out_mem[7:2]),
        .rdata(dmem_rdata));

    // Write back
    writeback wb0 (
        // Inputs
        .wbsel(wbsel_wb), 
        .alu_result(alu_out_wb), 
        .dmem_result(load_data_wb), 
        .imm(imm_wb),  // need the value for this
        .pc_i(pc_wb), 
        // Outputs
        .rf_wdata(rf_wdata_wb));

    // Hazard Handling
    control ctrl ();


endmodule