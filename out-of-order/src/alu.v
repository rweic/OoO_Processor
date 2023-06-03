/* ALU
 * ALU module should handle ADD, SUB, AND, OR, XOR, SLT, SLTU, SLL, SRA and SRL
 * Inputs include the two operand values, the operation type, and should return the reslting value
 */
module alu #(parameter WIDTH=32) (
    // Inputs
    alu_op1_i, alu_op2_i, alu_func_i, 
    // Outputs
    alu_out_o
);
    // Inputs
    input [WIDTH-1:0] alu_op1_i, alu_op2_i;
    input [3:0] alu_func_i;
    // Outputs
    output reg [WIDTH-1:0] alu_out_o;

    always @(*) begin
        case (alu_func_i)
            `ALU_OP_ADD:
                alu_out_o = alu_op1_i + alu_op2_i;
            `ALU_OP_SUB:
                alu_out_o = alu_op1_i - alu_op2_i;
            `ALU_OP_AND:
                alu_out_o = alu_op1_i & alu_op2_i;
            `ALU_OP_OR:
                alu_out_o = alu_op1_i | alu_op2_i;
            `ALU_OP_XOR:
                alu_out_o = alu_op1_i ^ alu_op2_i;
            `ALU_OP_SLT:
                alu_out_o = {{(WIDTH-1){1'b0}} , $signed(alu_op1_i)<$signed(alu_op2_i)};
            `ALU_OP_SLTU:
                alu_out_o = {{(WIDTH-1){1'b0}} , alu_op1_i < alu_op2_i };
            `ALU_OP_SLL:
                alu_out_o = alu_op1_i << alu_op2_i[4:0];
            `ALU_OP_SRA:
                alu_out_o = alu_op1_i >> alu_op2_i[4:0];
            `ALU_OP_SRL:
                alu_out_o = alu_op1_i >>> alu_op2_i[4:0];
            default:
                alu_out_o = 'b0;
        endcase
    end

endmodule