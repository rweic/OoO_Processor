/*--------------------------------------------------
Instruction Decode Module
--------------------------------------------------*/
module decode #(parameter WIDTH = 32, parameter INST_LEN = 32, parameter ADDR_LEN = 32)  (
    clk, reset, pc_i, inst, pc_o, opsel1, opsel2, alu_func, rs1_addr, rs2_addr, imm, imm_id

);
    input clk, reset;
    input [ADDR_LEN-1:0] pc_i;
    input [WIDTH-1:0] inst;

    // read values from regfile

    output reg [ADDR_LEN-1:0] pc_o;
    output [1:0] opsel1, opsel2;
    output [3:0] alu_func;
    output [WIDTH-1:0] rs1_value, rs2_value, imm, imm_id;

    wire [6:0] opcode = inst[6:0];
	wire [2:0] funct3 = inst[14:12];
	wire [6:0] funct7 = inst[31:25];
	wire [11:0] imm_i = inst[31:20];
	wire [19:0] imm_u = inst[31:12];
	wire [11:0] imm_s = {inst[31:25], inst[11:7]};

    // Reg ID-EX
    always @(posedge clk) begin
        if (reset) begin
            pc_o <= 32'b0;
        end else begin
            pc_o <= pc_i;
        end
    end

    always @(*) begin
        if (reset) begin
        end else begin
            case(opcode)
                `OP_ITYPE:begin
                    case (funct3)
                        `FUNCT3_ADDI: 
                        `FUNCT3_SLLI:
                        `FUNCT3_SLTI:
                        `FUNCT3_SLTIU:
                        `FUNCT3_XORI:
                        `FUNCT3_SRI:
                            case (funct7)
                                default: begin end
                            endcase
                        `FUNCT3_ORI:
                        `FUNCT3_ANDI:
                        default: begin end
                    endcase
                end
                `OP_RTYPE:begin
                    case (funct3)
                        `FUNCT3_ADD_SUB:
                            case (funct7)
                                default: begin end
                            endcase
                        `FUNCT3_SLL:
                        `FUNCT3_SLT:
                        `FUNCT3_SLTU:
                        `FUNCT3_XOR:
                        `FUNCT3_SR:
                            case (funct7)
                                default: begin end
                            endcase
                        `FUNCT3_OR:
                        `FUNCT3_AND:
                        default: begin end
                    endcase
                end
                `OP_BRANCH:begin
                    case (funct3)
                        `FUNCT3_BEQ:
                        `FUNCT3_BNE:
                        `FUNCT3_BLT:
                        `FUNCT3_BGE:
                        `FUNCT3_BLTU:
                        `FUNCT3_BGEU:
                        default: begin end
                    endcase
                end
                `OP_LUI:
                `OP_AUIPC:
                `OP_JAL:
                `OP_JALR:
                `OP_LOAD:
                    case (funct3)
                        `FUNCT3_LB:
                        `FUNCT3_LH:
                        `FUNCT3_LW:
                        `FUNCT3_LBU:
                        `FUNCT3_LHU:
                        default: begin end
                    endcase
                `OP_STORE:
                    case (funct3)
                        `FUNCT3_SB:
                        `FUNCT3_SH:
                        `FUNCT3_SW:
                        default: begin end
                    endcase
                default: begin end
            endcase 
        end

    end


endmodule