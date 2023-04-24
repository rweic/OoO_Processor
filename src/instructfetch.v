/*--------------------------------------------------
Instruction Fetch Module
--------------------------------------------------*/
module instructfetch(
    input logic clk,          // Clock input
    input logic reset,       // Reset input (active high)
    input logic [31:0] pc_i,   // Program counter input (32 bits)
    output logic [31:0] pc_o,
    output logic [31:0] instr_o // Instruction output (32 bits)
);

    // Registers for storing the current program counter and instruction
    logic [31:0] instr_raw;
    logic [31:0] instrmem_o;

    // Instantiate the instruction cache module
    icache instruction_memory(
        .addr(pc_i >> 2),   // Use pc_o as address input, right-shifted by 2 to account for word addressing
        .data(instrmem_o)      // Connect instrmem_o as data output
    );

    // Reg IF-ID
    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            pc_o <= 0;
        else
            pc_o <= pc_i;
    end

    always_ff @(posedge clk) begin
        if (reset)
            instr_raw <= 0;
        else
            instr_raw <= instrmem_o; // Use data output from Instruction Cache module
    end

    assign instr_o = instr_raw;

endmodule
