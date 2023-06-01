/*--------------------------------------------------
Instruction Fetch Module
--------------------------------------------------*/
module fetch(
    input logic clk,
    input logic reset,
    input logic [1:0] pcsel,
    input logic [31:0] br_dest,
    input logic [31:0] instr_if,
    output logic [31:0] pc_if,
    output logic [31:0] pc_o, // pc_id
    output logic [31:0] instr_o, // Instruction output (32 bits)
    input logic hazard_flag_i,
    input StallFetch_i
);

    // Registers for storing the current program counter and instruction
    // logic [31:0] instr_raw;
    // logic [31:0] instrmem_o;

    reg [31:0] pc;

    assign pc_if = pc;

    // reg pc
    // TODO: ADD branch later
    always_ff @(posedge clk) begin
        if (reset) begin
            pc <= 32'b0;
        end else if (!hazard_flag_i) begin // dont increase counter if hazard
            pc <= pc + 32'b0;
        end else begin
            case (pcsel)
                `PC_PC4:
                    pc <= pc + 4;
                `PC_BRANCH:
                    pc <= br_dest + 4;
                // default: 
                //     pc <= pc;
            endcase
        end
    end 


    // Reg IF-ID
    always_ff @(posedge clk) begin
        if (reset) begin
            pc_o <= 0;
        end else if (StallFetch_i) begin
            pc_o <= pc_o;
        end else begin
            pc_o <= pc;
        end
    end

    always_ff @(posedge clk) begin
        if (reset) // output zero instruction on reset
            instr_o <= 0;
        else if (StallFetch_i)
            instr_o <= instr_o; // Use data output from Instruction Cache module
        else
            instr_o <= instr_if; // Use data output from Instruction Cache module
    end

endmodule

