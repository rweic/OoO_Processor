/*--------------------------------------------------
Instruction Decode Module
--------------------------------------------------*/
`include "PARAM.vh"

module decode #(parameter WIDTH = 32, parameter INST_LEN = 32, parameter ADDR_LEN = 32)  (
    clk, reset, pc_i, inst, rs1_value_i, rs2_value_i, pc_o, alu_func, opsel1, opsel2, wbsel,
    rs1_addr, rs2_addr, rd_addr, rs1_value_o, rs2_value_o, rf_w_en, mem_w_en, imm
);
    input clk, reset;
    input [ADDR_LEN-1:0] pc_i;
    input [WIDTH-1:0] inst;
    input [WIDTH-1:0] rs1_value_i, rs2_value_i;

    output reg [ADDR_LEN-1:0] pc_o;
    output reg [3:0] alu_func;
    output reg [1:0] opsel1, opsel2, wbsel;
    output reg [4:0] rs1_addr, rs2_addr;
    output reg [4:0] rd_addr;
    output [WIDTH-1:0] rs1_value_o, rs2_value_o;
    output reg rf_w_en, mem_w_en;
    output reg [WIDTH-1:0] imm;

    // Get the opcode, funct and imm from instruction
    wire [6:0] opcode = inst[6:0];
	wire [2:0] funct3 = inst[14:12];
	wire [6:0] funct7 = inst[31:25];
	wire [11:0] imm_i = inst[31:20];
	wire [19:0] imm_u = inst[31:12];
	wire [11:0] imm_s = {inst[31:25], inst[11:7]};

    // Get the register addresses from instruction
    wire[4:0] rd = inst[11:7];
	wire[4:0] rs1 = inst[19:15];
	wire[4:0] rs2 = inst[24:20];

    // Internal values
    reg [3:0] alu_func_id;
    reg [1:0] opsel1_id, opsel2_id, wbsel_id;
    reg [4:0] rd_addr_id;
    reg rf_w_en_id, mem_w_en_id;
    reg [WIDTH-1:0] imm_id;

    assign rs1_value_o = rs1_value_i;
    assign rs2_value_o = rs2_value_i;

    // Reg ID-EX
    always @(posedge clk) begin
        if (reset) begin
            pc_o <= 'b0;
            alu_func <= 'b0;
            opsel1 <= 'b0; 
            opsel2 <= 'b0;
            wbsel <= 'b0;
            rd_addr <= 'b0;
            rf_w_en <= 'b0;
            mem_w_en <= 'b0;
            imm <= 'b0;
        end else begin
            pc_o <= pc_i;
            alu_func <= alu_func_id;
            opsel1 <= opsel1_id; 
            opsel2 <= opsel2_id;
            wbsel <= wbsel_id;
            rd_addr <= rd_addr_id;
            rf_w_en <= rf_w_en_id;
            mem_w_en <= mem_w_en_id;
            imm <= imm_id;
        end
    end

    // Define the decoded regs
    // TODO: Need to add branch mux selection for jump
    `define DECODE_SET(alu_func_data, opsel1_data, opsel2_data, wbsel_data, rs1_addr_data, rs2_addr_data, rd_addr_data, rf_w_en_data, mem_w_en_data, imm_data) \
		alu_func_id = alu_func_data; \
		opsel1_id = opsel1_data; \
		opsel2_id = opsel2_data; \
		wbsel_id = wbsel_data; \
		rs1_addr = rs1_addr_data; \
		rs2_addr = rs2_addr_data; \
		rd_addr_id = rd_addr_data; \
		rf_w_en_id = rf_w_en_data; \
		mem_w_en_id = mem_w_en_data; \
		imm_id = imm_data;

    always @(*) begin
        if (reset) begin
            `DECODE_SET(0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
        end 
        else begin
            case(opcode)
                `OP_ITYPE:begin
                    case (funct3)
                        `FUNCT3_ADDI: begin
                            `DECODE_SET(`ALU_OP_ADD, `OPSEL_RS1, `OPSEL_IMM, `WB_ALU, rs1, 'b0, rd, 1'b1, 1'b0, {{20{imm_i[11]}}, imm_i})
                        end
                        `FUNCT3_SLLI: begin
                            `DECODE_SET(`ALU_OP_SLL, `OPSEL_RS1, `OPSEL_IMM, `WB_ALU, rs1, 'b0, rd, 1'b1, 1'b0, {{20{imm_i[11]}}, imm_i})
                        end
                        `FUNCT3_SLTI: begin
                            `DECODE_SET(`ALU_OP_SLT, `OPSEL_RS1, `OPSEL_IMM, `WB_ALU, rs1, 'b0, rd, 1'b1, 1'b0, {{20{imm_i[11]}}, imm_i})
                        end
                        `FUNCT3_SLTIU: begin
                            `DECODE_SET(`ALU_OP_SLTU, `OPSEL_RS1, `OPSEL_IMM, `WB_ALU, rs1, 'b0, rd, 1'b1, 1'b0, {{20{imm_i[11]}}, imm_i})
                        end
                        `FUNCT3_XORI: begin
                            `DECODE_SET(`ALU_OP_XOR, `OPSEL_RS1, `OPSEL_IMM, `WB_ALU, rs1, 'b0, rd, 1'b1, 1'b0, {20'b0, imm_i})
                        end
                        `FUNCT3_SRI:
                            case (funct7)
                                `FUNCT7_SRAI: begin
                                    `DECODE_SET(`ALU_OP_SRA, `OPSEL_RS1, `OPSEL_IMM, `WB_ALU, rs1, 'b0, rd, 1'b1, 1'b0, imm)
                                end
                                `FUNCT7_SRLI: begin 
                                    `DECODE_SET(`ALU_OP_SRL, `OPSEL_RS1, `OPSEL_IMM, `WB_ALU, rs1, 'b0, rd, 1'b1, 1'b0, imm)
                                end
                                default: begin end
                            endcase
                        `FUNCT3_ORI: begin
                            `DECODE_SET(`ALU_OP_OR, `OPSEL_RS1, `OPSEL_IMM, `WB_ALU, rs1, 'b0, rd, 1'b1, 1'b0, {20'b0, imm_i})
                        end
                        `FUNCT3_ANDI: begin
                            `DECODE_SET(`ALU_OP_AND, `OPSEL_RS1, `OPSEL_IMM, `WB_ALU, rs1, 'b0, rd, 1'b1, 1'b0, {20'b0, imm_i})
                        end
                        default: begin end
                    endcase
                end
                `OP_RTYPE:begin
                    case (funct3)
                        `FUNCT3_ADD_SUB:
                            case (funct7)
                                `FUNCT7_ADD: begin
                                    `DECODE_SET(`ALU_OP_ADD, `OPSEL_RS1, `OPSEL_RS2, `WB_ALU, rs1_addr, rs2_addr, rd, 1'b1, 1'b0, 0)
                                end
                                `FUNCT7_SUB: begin
                                    `DECODE_SET(`ALU_OP_SUB, `OPSEL_RS1, `OPSEL_RS2, `WB_ALU, rs1_addr, rs2_addr, rd, 1'b1, 1'b0, 0)
                                end
                                default: begin end
                            endcase
                        `FUNCT3_SLL: begin
                            `DECODE_SET(`ALU_OP_SLL, `OPSEL_RS1, `OPSEL_RS2, `WB_ALU, rs1_addr, rs2_addr, rd, 1'b1, 1'b0, 0)
                        end
                        `FUNCT3_SLT: begin
                            `DECODE_SET(`ALU_OP_SLT, `OPSEL_RS1, `OPSEL_RS2, `WB_ALU, rs1_addr, rs2_addr, rd, 1'b1, 1'b0, 0)
                        end
                        `FUNCT3_SLTU: begin
                            `DECODE_SET(`ALU_OP_SLTU, `OPSEL_RS1, `OPSEL_RS2, `WB_ALU, rs1_addr, rs2_addr, rd, 1'b1, 1'b0, 0)
                        end
                        `FUNCT3_XOR: begin
                            `DECODE_SET(`ALU_OP_XOR, `OPSEL_RS1, `OPSEL_RS2, `WB_ALU, rs1_addr, rs2_addr, rd, 1'b1, 1'b0, 0)
                        end
                        `FUNCT3_SR:
                            case (funct7)
                                `FUNCT7_SRA: begin
                                    `DECODE_SET(`ALU_OP_SRA, `OPSEL_RS1, `OPSEL_RS2, `WB_ALU, rs1_addr, rs2_addr, rd, 1'b1, 1'b0, 0)
                                end
                                `FUNCT7_SRL: begin
                                    `DECODE_SET(`ALU_OP_SRL, `OPSEL_RS1, `OPSEL_RS2, `WB_ALU, rs1_addr, rs2_addr, rd, 1'b1, 1'b0, 0)
                                end
                                default: begin end
                            endcase
                        `FUNCT3_OR: begin
                            `DECODE_SET(`ALU_OP_OR, `OPSEL_RS1, `OPSEL_RS2, `WB_ALU, rs1_addr, rs2_addr, rd, 1'b1, 1'b0, 0)
                        end
                        `FUNCT3_AND: begin
                            `DECODE_SET(`ALU_OP_AND, `OPSEL_RS1, `OPSEL_RS2, `WB_ALU, rs1_addr, rs2_addr, rd, 1'b1, 1'b0, 0)
                        end
                        default: begin end
                    endcase
                end
                `OP_BRANCH:begin
                    case (funct3)
                        `FUNCT3_BEQ: begin
                        end
                        `FUNCT3_BNE: begin 
                        end
                        `FUNCT3_BLT: begin 
                        end
                        `FUNCT3_BGE: begin 
                        end
                        `FUNCT3_BLTU: begin 
                        end
                        `FUNCT3_BGEU: begin 
                        end
                        default: begin end
                    endcase
                end
                `OP_LUI: begin 
                    `DECODE_SET(`ALU_OP_NOP, 0, 0, `WB_IMM, 0, 0, rd, 1'b1, 1'b0, {imm_u, 12'b0})
                end
                `OP_AUIPC: begin 
                    `DECODE_SET(`ALU_OP_ADD, `OPSEL_PC, 0, `WB_ALU, 0, 0, rd, 1'b1, 1'b0, {imm_u, 12'b0})
                end
                `OP_JAL: begin 

                end
                `OP_JALR: begin 
                    `DECODE_SET(`ALU_OP_ADD, `OPSEL_RS1, `OPSEL_IMM, `WB_PC, 0, 0, rd, 1'b1, 1'b0, {imm_u, 12'b0})
                end
                `OP_LOAD:
                    case (funct3)
                        `FUNCT3_LB: begin
                         end
                        `FUNCT3_LH: begin 
                        end
                        `FUNCT3_LW: begin 
                        end
                        `FUNCT3_LBU: begin 
                        end
                        `FUNCT3_LHU: begin 
                            `DECODE_SET(`ALU_OP_ADD, `OPSEL_RS1, 0, `WB_DMEM, rs1_addr, 0, rd, 1'b1, 1'b0, {{20{imm_i[11]}}, imm_i})
                        end
                        default: begin end
                    endcase
                `OP_STORE:
                    case (funct3)
                        `FUNCT3_SB: begin 

                        end
                        `FUNCT3_SH: begin 

                        end
                        `FUNCT3_SW: begin 

                        end
                        default: begin 
                            
                        end
                    endcase
                default: begin 
                    `DECODE_SET(0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
                end
            endcase 
        end

    end


endmodule