/* Mul/div Module
 * MUL lower 32 bits
 * MULH/ MULHU/ MULHSU upper 32 bits (signed×signed, unsigned×unsigned, signed×unsigned)
 * Booth Wallace Dadda Array multiplexer?
 *
 * DIV/DIVU division round towards zero
 * REM/REMU remainder (REM has the same sign as the div result)
 */

module mul(
    // Inputs
    clk_i, reset_i, pc_i, mul_request_i, inst_i, rs1_value_i, rs2_value_i,
    // Outputs
    writeback_valid_o, writeback_value_o
);
    input clk_i, reset_i;
    input [31:0] pc_i;
    // Should include the data that load/ store needs, or the original inst
    input mul_request_i;
    input [31:0] inst_i;
    // Value of registers should be known by this point
    input [31:0] rs1_value_i;
    input [31:0] rs2_value_i;
    
    // Outputs
    output writeback_valid_o;
    output reg [31:0]  writeback_value_o;

    /*
    `define FUNCT3_MUL      3'b000
    `define FUNCT3_MULH     3'b001
    `define FUNCT3_MULHSU   3'b010s
    `define FUNCT3_MULHU    3'b011
    `define FUNCT3_DIV      3'b100
    `define FUNCT3_DIVU     3'b101
    `define FUNCT3_REM      3'b110
    `define FUNCT3_REMU     3'b111
    */

    wire [2:0] funct3 = inst_i[14:12];

    reg [32:0] operand1;
    reg [32:0] operand2;
    reg high_low_sel;
    wire [64:0] mult_result;

    assign mult_result = operand1 * operand2;

    always @(posedge clk_i) begin
        if (reset_i) begin
            operand1 <= 'h0;
            operand2 <= 'h0;
            high_low_sel <= 1'b0;
        end
        else begin
            case (funct3)
                `FUNCT3_MULH: // signed×signed
                begin
                    operand1 <= {rs1_value_i[31], rs1_value_i};
                    operand2 <= {rs2_value_i[31], rs2_value_i};
                    high_low_sel <= 1;
                end
                `FUNCT3_MULHU: // unsigned×unsigned
                begin
                    operand1 <= {1'b0, rs1_value_i};
                    operand2 <= {1'b0, rs2_value_i};
                    high_low_sel <= 1;
                end
                `FUNCT3_MULHSU: // signed×unsigned
                begin
                    operand1 <= {rs1_value_i[31], rs1_value_i};
                    operand2 <= {1'b0, rs2_value_i};
                    high_low_sel <= 1;
                end
                `FUNCT3_MUL: // lower bits
                begin
                    operand1 <= {1'b0, rs1_value_i};
                    operand2 <= {1'b0, rs2_value_i};
                    high_low_sel <= 0;
                end
                default: begin end
            endcase
        end
    end

    always @(*) begin
        if (high_low_sel)
            writeback_value_o = mult_result[63:32];
        else
            writeback_value_o = mult_result[31:0];
    end
    

endmodule