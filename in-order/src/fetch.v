/*--------------------------------------------------
Instruction Fetch Module
--------------------------------------------------*/
module fetch(
    input logic clk,
    input logic reset,
    input logic [1:0] pcsel,
    input logic [31:0] br_dest,
    output logic [31:0] pc_o,
    output logic [31:0] instr_o // Instruction output (32 bits)
);

    // Registers for storing the current program counter and instruction
    logic [31:0] instr_raw;
    logic [31:0] instrmem_o;

    reg [31:0] pc;

    // reg pc
    // TODO: ADD branch later
    always_ff @(posedge clk) begin
        if (reset)
            pc <= 0;
        else begin
            case (pcsel)
                `PC_PC4:
                    pc <=  pc + 4;
                `PC_BRANCH:
                    pc <=  br_dest + 4;
            endcase
        end
    end 

    // Instantiate the instruction cache module
    icache instruction_memory(
        .addr(pc),   // Use pc_o as address input, right-shifted by 2 to account for word addressing
        .data(instrmem_o)      // Connect instrmem_o as data output
    );

    // Reg IF-ID
    always_ff @(posedge clk) begin
        if (reset)
            pc_o <= 0;
        else
            pc_o <= pc;
    end

    always_ff @(posedge clk) begin
        if (reset)
            instr_o <= 0;
        else
            instr_o <= instrmem_o; // Use data output from Instruction Cache module
    end

endmodule
