/* Arithmetic Unit
 * Number of stages: supposed to have 1 stage
 */
module arith ();
    input clk_i, reset_i;
    input [31:0] pc_i;
    // Should include the data that load/ store needs, or the original inst
    input [31:0] inst_i;
    // Value of registers should be known by this point
    input [31:0] rs1_value_i;
    input [31:0] rs2_value_i;


    wire [6:0] opcode = inst_i[6:0];
    wire [31:0] imm_i = {{20{inst_i[31]}}, inst_i[31:20]};
    wire [31:0] imm_u = {inst_i[31:12], 12'b0};
    wire [31:0] imm_b = {{20{inst_i[31]}}, inst_i[7], inst_i[30:25], inst_i[11:8], 1'b0};
    wire [31:0] imm_j = {{12{inst_i[31]}}, inst_i[19:12], inst_i[20], inst_i[30:21], 1'b0};
    wire [4:0]  shamt = {27'b0, inst_i[24:20]};

    // Temp stores the selected operands
    reg [31:0] alu_operand1;
    reg [31:0] alu_operand2;
    reg [3:0]  alu_func;
    wire [31:0] alu_out;

    alu alu (
        .alu_op1(alu_operand1), 
        .alu_op2(alu_operand2), 
        .alu_func(alu_func), 
        .alu_out(alu_out));

    // The two mux to choose the input to alu, and to set alu_func
    always @(*) begin
        case (opcode)
            default: begin end
        endcase
    end


endmodule