`include "PARAM.vh"

module alu #(parameter WIDTH=32) (alu_op1, alu_op2, alu_func, alu_out);
    input [WIDTH-1:0] alu_op1, alu_op2;
    input [3:0] alu_func;

    output reg [WIDTH-1:0] alu_out;

    always @(*) begin
        case (alu_func)
            `ALU_OP_ADD:
                alu_out = alu_op1 + alu_op2;
            `ALU_OP_SUB:
                alu_out = alu_op1 - alu_op2;
            `ALU_OP_AND:
                alu_out = alu_op1 & alu_op2;
            `ALU_OP_OR:
                alu_out = alu_op1 | alu_op2;
            `ALU_OP_XOR:
                alu_out = alu_op1 ^ alu_op2;
            `ALU_OP_SLT:
                alu_out = {{(WIDTH-1){1'b0}} , $signed(alu_op1)<$signed(alu_op2)};
            `ALU_OP_SLTU:
                alu_out = {{(WIDTH-1){1'b0}} , alu_op1 < alu_op2 };
            `ALU_OP_SLL:
                alu_out = alu_op1 << alu_op2[4:0];
            `ALU_OP_SRA:
                alu_out = alu_op1 >> alu_op2[4:0];
            `ALU_OP_SRL:
                alu_out = alu_op1 >>> alu_op2[4:0];
            default:
                alu_out = {(WIDTH){1'b0}};
        endcase
    end

endmodule