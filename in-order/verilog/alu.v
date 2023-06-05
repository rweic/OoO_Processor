module alu #(parameter WIDTH=32) (funct7, funct3, alu_op1, alu_op2, alu_func, alu_out);
		input [6:0] funct7;
		input [2:0] funct3;  
		input [WIDTH-1:0] alu_op1, alu_op2;
    input [3:0] alu_func;
    output reg [WIDTH-1:0] alu_out;

		reg [63:0] alu_out_temp;

    always @(*) begin
        case (alu_func)
            `ALU_OP_ADD:
                alu_out_temp = alu_op1 + alu_op2;
            `ALU_OP_SUB:
                alu_out_temp = alu_op1 - alu_op2;
            `ALU_OP_AND:
                alu_out_temp = alu_op1 & alu_op2;
            `ALU_OP_OR:
                alu_out_temp = alu_op1 | alu_op2;
            `ALU_OP_XOR:
                alu_out_temp = alu_op1 ^ alu_op2;
            `ALU_OP_SLT:
                alu_out_temp = {{(WIDTH-1){1'b0}} , $signed(alu_op1)<$signed(alu_op2)};
            `ALU_OP_SLTU:
                alu_out_temp = {{(WIDTH-1){1'b0}} , alu_op1 < alu_op2 };
            `ALU_OP_SLL:
                alu_out_temp = alu_op1 << alu_op2[4:0];
            `ALU_OP_SRA:
                alu_out_temp = alu_op1 >> alu_op2[4:0];
            `ALU_OP_SRL:
                alu_out_temp = alu_op1 >>> alu_op2[4:0];
            `ALU_OP_MUL:
								alu_out_temp = alu_op1 * alu_op2;
            `ALU_OP_DIV:
								alu_out_temp = alu_op1 / alu_op2;
            default:
                alu_out_temp = 'b0;
        endcase
    end

		assign alu_out = ((funct7 == `FUNCT7_MULDIV) && (funct3 != `FUNCT3_MUL)) ? alu_out_temp[31:0] : alu_out_temp[31:0];

endmodule
