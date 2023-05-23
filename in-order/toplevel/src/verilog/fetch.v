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
    output logic [31:0] pc_o,
    output logic [31:0] instr_o, // Instruction output (32 bits)
    input logic hazard_flag_i
);

    // Registers for storing the current program counter and instruction
    // logic [31:0] instr_raw;
    // logic [31:0] instrmem_o;

    reg [31:0] pc;

    assign pc_if = pc;

    // reg pc
    // TODO: ADD branch later
    always_ff @(posedge clk) begin
        if (reset)
            pc <= 0;
      //  else if (!hazard_flag_i) // dont increase counter if hazard
       //     pc <= pc;
        else begin
            case (pcsel)
                `PC_PC4:
                    pc <=  pc + 4;
                `PC_BRANCH:
                    pc <=  br_dest + 4;
              //  default: 
                   // pc <= pc;
            endcase
        end
    end 


    // Reg IF-ID
    always_ff @(posedge clk) begin
        if (reset)
            pc_o <= 0;
        else
            pc_o <= pc;
    end

    always_ff @(posedge clk) begin
        if (reset) // output zero instruction on reset or hazard
            instr_o <= 0;
        else
            instr_o <= instr_if; // Use data output from Instruction Cache module
    end

endmodule
