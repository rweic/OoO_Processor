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
    output [4:0] rs1_addr, rs2_addr;
    output [WIDTH-1:0] imm, imm_id;

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
                        `FUNCT3_ADDI: begin end
                        `FUNCT3_SLLI: begin end
                        `FUNCT3_SLTI: begin end
                        `FUNCT3_SLTIU: begin end
                        `FUNCT3_XORI: begin end
                        `FUNCT3_SRI: begin
                            case (funct7)
                                default: begin end
                            endcase
                        end
                        `FUNCT3_ORI: begin end
                        `FUNCT3_ANDI: begin end
                        default: begin end
                    endcase
                end
                `OP_RTYPE:begin
                    case (funct3)
                        `FUNCT3_ADD_SUB:
                            case (funct7)
                                default: begin end
                            endcase
                        `FUNCT3_SLL: begin end
                        `FUNCT3_SLT: begin end
                        `FUNCT3_SLTU: begin end
                        `FUNCT3_XOR: begin end
                        `FUNCT3_SR:
                            case (funct7)
                                default: begin end
                            endcase
                        `FUNCT3_OR: begin end
                        `FUNCT3_AND: begin end
                        default: begin end
                    endcase
                end
                `OP_BRANCH:begin
                    case (funct3)
                        `FUNCT3_BEQ: begin end
                        `FUNCT3_BNE: begin end
                        `FUNCT3_BLT: begin end
                        `FUNCT3_BGE: begin end
                        `FUNCT3_BLTU: begin end
                        `FUNCT3_BGEU: begin end
                        default: begin end
                    endcase
                end
                `OP_LUI: begin end
                `OP_AUIPC: begin end
                `OP_JAL: begin end
                `OP_JALR: begin end
                `OP_LOAD:
                    case (funct3)
                        `FUNCT3_LB: begin end
                        `FUNCT3_LH: begin end
                        `FUNCT3_LW: begin end
                        `FUNCT3_LBU: begin end
                        `FUNCT3_LHU: begin end
                        default: begin end
                    endcase
                `OP_STORE:
                    case (funct3)
                        `FUNCT3_SB: begin end
                        `FUNCT3_SH: begin end
                        `FUNCT3_SW: begin end
                        default: begin end
                    endcase
                default: begin end
            endcase 
        end

    end


endmodule