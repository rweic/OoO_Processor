/*--------------------------------------------------
Instruction Fetch Module
--------------------------------------------------*/
module instructfetch(
    input logic clk,          // Clock input
    input logic reset,       // Reset input (active high)
    input logic [31:0] pc_i,   // Program counter input (32 bits)
    output logic [31:0] instr_o // Instruction output (32 bits)
);

    // Registers for storing the current program counter and instruction
    logic [31:0] reg_pc;
    logic [31:0] instr_raw;
    logic [31:0] instrmem_o;

    // Instantiate the InstructionMemory module
    instructmem instruction_memory(
        .addr(reg_pc >> 2),   // Use reg_pc as address input, right-shifted by 2 to account for word addressing
        .data(instrmem_o)      // Connect instrmem_o as data output
    );

    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            reg_pc <= 0;
        else
            reg_pc <= pc_i;
    end

    always_ff @(posedge clk) begin
        if (reset)
            instr_raw <= 0;
        else
            instr_raw <= instrmem_o; // Use data output from Instruction Memory module
    end

    assign instr_o = instr_raw;

endmodule

module instructmem(
    input logic [31:0] addr,     // Address input (32 bits)
    output logic [31:0] data     // Data output (32 bits)
);

    // Instruction memory implemented using registers
    reg [31:0] instr_mem [0:63] = '{
        32'b00001000110000000000000011101111,
        32'b11111110000000010000000100010011,
        32'b00000000000100010010111000100011,
        // Add more instructions as needed
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000
    };

    // Read operation
    assign data = instr_mem[addr];

endmodule

