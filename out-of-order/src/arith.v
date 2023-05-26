/* Arithmetic Unit
 * Number of stages: supposed to get the result within 1 stage
 */
module arith (
    // Inputs
    clk_i, reset_i, pc_i, alu_request_i, inst_i, rs1_value_i, rs2_value_i,
    // Outputs
    writeback_value_o
);
    input clk_i, reset_i;
    input [31:0] pc_i;
    input alu_request_i;
    input [31:0] inst_i;
    input [31:0] rs1_value_i;
    input [31:0] rs2_value_i;

    //output busy_o;  // an output signal indicating that the resource is not valid
    output writeback_valid_o;
    output [31:0]  writeback_value_o;

    wire [6:0] opcode = inst_i[6:0];
    wire [2:0] funct3 = inst_i[14:12];
    wire [6:0] funct7 = inst_i[31:25];

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

    assign writeback_valid_o = alu_request_i;
    assign writeback_value_o = alu_out;

    alu alu (
        .alu_op1(alu_operand1), 
        .alu_op2(alu_operand2), 
        .alu_func(alu_func), 
        .alu_out(alu_out));

    // The two mux to choose the input to alu, and to set alu_func
    always @(*) begin
        case (opcode)
            `OP_OP_IMM:begin
                alu_operand1 = rs1_value_i;
                alu_operand2 = imm_i;
                case (funct3)
                    `FUNCT3_ADDI: begin
                        alu_func = `ALU_OP_ADD;
                    end
                    `FUNCT3_SLLI: begin
                        alu_func = `ALU_OP_SLL;
                        alu_operand2 = shamt;
                    end
                    `FUNCT3_SLTI: begin
                        alu_func = `ALU_OP_SLT;
                        alu_operand2 = shamt;
                    end
                    `FUNCT3_SLTIU: begin
                        alu_func = `ALU_OP_SLTU;
                        alu_operand2 = shamt;
                    end
                    `FUNCT3_XORI: begin
                        alu_func = `ALU_OP_XOR;
                    end
                    `FUNCT3_SRI: begin
                        alu_operand2 = shamt;
                        case (funct7)
                            `FUNCT7_SRAI: begin
                                alu_func = `ALU_OP_SRA;
                            end
                            `FUNCT7_SRLI: begin 
                                alu_func = `ALU_OP_SRL;
                            end
                            default: begin end
                        endcase
                    end
                    `FUNCT3_ORI: begin
                        alu_func = `ALU_OP_OR;
                    end
                    `FUNCT3_ANDI: begin
                        alu_func = `ALU_OP_AND;
                    end
                    default: begin end
                endcase
            end
            `OP_OP:begin
                alu_operand1 = rs1_value_i;
                alu_operand2 = rs2_value_i;
                case (funct3)
                    `FUNCT3_ADD_SUB:
                        case (funct7)
                            `FUNCT7_ADD: begin
                                alu_func = `ALU_OP_ADD;
                            end
                            `FUNCT7_SUB: begin
                                alu_func = `ALU_OP_SUB;
                            end
                            default: begin end
                        endcase
                    `FUNCT3_SLL: begin
                        alu_func = `ALU_OP_SLL;
                        alu_operand2 = shamt;
                    end
                    `FUNCT3_SLT: begin
                        alu_func = `ALU_OP_SLT;
                        alu_operand2 = shamt;
                    end
                    `FUNCT3_SLTU: begin
                        alu_func = `ALU_OP_SLTU;
                        alu_operand2 = shamt;
                    end
                    `FUNCT3_XOR: begin
                        alu_func = `ALU_OP_XOR;
                    end
                    `FUNCT3_SR: begin
                        alu_operand2 = shamt;
                        case (funct7)
                            `FUNCT7_SRA: begin
                                alu_func = `ALU_OP_SRA;
                            end
                            `FUNCT7_SRL: begin
                                alu_func = `ALU_OP_SRL;
                            end
                            default: begin end
                        endcase
                    end
                    `FUNCT3_OR: begin
                        alu_func = `ALU_OP_OR;
                    end
                    `FUNCT3_AND: begin
                        alu_func = `ALU_OP_AND;
                    end
                    default: begin end
                endcase
            end
            `OP_LUI: begin 
                alu_func = `ALU_OP_NOP;
            end
            `OP_AUIPC: begin 
                alu_func = `ALU_OP_ADD;
            end
            `OP_JAL: begin 
                alu_func = `ALU_OP_ADD;
                alu_operand1 = pc_i;
                alu_operand2 = rs2_value_i;
            end
            `OP_JALR: begin 
                alu_func = `ALU_OP_ADD;
                alu_operand1 = pc_i;
                alu_operand2 = 'h4;
            end
            default: begin end
        endcase 
    end


endmodule