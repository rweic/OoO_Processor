module cpu #(parameter WORD = 32, parameter INST_LEN = 32, parameter ADDR_LEN = 32) (
    clk, reset
);
    input clk, reset;

    // Internal signals
    wire [WORD-1:0] pc_if;
    wire [INST_LEN-1:0] instruction;

    wire [ADDR_LEN-1:0] rs1, rs2, rd;
    wire [WORD-1:0] rs1_value, rs2_value;
    wire rf_en;
    wire [WORD-1:0] rf_wdata;

    wire dmem_en;

    // Fetch
    instructfetch fetch(
        .clk(clk),          // Clock input
        .reset(reset),       // Reset input (active high)
        .pc_i(),   // Program counter input (32 bits)
        .nstr_o()); // Instruction output (32 bits)

    // Decode

    // Execution


    // Regfile
    regfile regfile #(parameter WIDTH=32) (
        .clk(clk), 
        .reset(reset), 
        .w_en(rf_en), 
        .ra_addr(rs1), 
        .rb_addr(rs2), 
        .rd_addr(rd), 
        .w_data(rf_wdata), 
        .ra_value(rs1_value), 
        .rb_value(rs2_value));

    // Memory
    dcache dcache0 (
        .clk(clk), 
        .reset(reset), 
        .w_en(dmem_en), 
        .wdata(), 
        .raddr(), 
        .waddr(),
        .rdata());

    // Control Unit

    // Hazard Detection


endmodule