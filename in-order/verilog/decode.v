/*--------------------------------------------------
Instruction Decode Module
--------------------------------------------------*/
module decode #(parameter WIDTH = 32, parameter INST_LEN = 32, parameter ADDR_LEN = 32)  (
    clk, reset, pc_i, inst, rs1_value_i, rs2_value_i, pc_o, alu_func, opsel1, opsel2, wbsel,
    rs1_addr, rs2_addr, rd_addr, rs1_value_o, rs2_value_o, rf_w_en, mem_w_en, imm, pcsel,
    branch_tar, StallDecode_i
);
    input clk, reset;
    input [ADDR_LEN-1:0] pc_i;
    input [WIDTH-1:0] inst;
    input [WIDTH-1:0] rs1_value_i, rs2_value_i;
    input StallDecode_i;

    output reg [ADDR_LEN-1:0] pc_o;
    output reg [3:0] alu_func;
    output reg [1:0] opsel1, opsel2, wbsel;
    output reg [4:0] rs1_addr, rs2_addr;
    output reg [4:0] rd_addr;
    output reg [WIDTH-1:0] rs1_value_o, rs2_value_o;
    output reg rf_w_en, mem_w_en;
    output reg [WIDTH-1:0] imm;
    output reg [1:0] pcsel;
    output reg [ADDR_LEN-1:0] branch_tar;
    
    // Get the register addresses from instruction
	wire[4:0] rs1 = inst[19:15];
	wire[4:0] rs2 = inst[24:20];
    wire[4:0] rd = inst[11:7];

    // Get the opcode, funct and imm from instruction
    wire [6:0] opcode = inst[6:0];
	wire [2:0] funct3 = inst[14:12];
	wire [6:0] funct7 = inst[31:25];
	wire [11:0] imm_i = inst[31:20];
	wire [19:0] imm_u = inst[31:12];
	wire [11:0] imm_s = {inst[31:25], inst[11:7]};
    wire [ADDR_LEN-1:0] br_addr = pc_i + {{20{inst[31]}}, inst[7], inst[30:25], inst[11:8], 1'b0};
    wire [ADDR_LEN-1:0] jal_addr = pc_i + {{12{inst[31]}}, inst[19:12], inst[20], inst[30:21], 1'b0};
    wire [ADDR_LEN-1:0] jalr_addr =  rs1 + {{20{imm_i[11]}}, imm_i};

    // Declaration for branch condition
    wire branch_cond_eq;
    wire branch_cond_ne;
    wire branch_cond_lt;
    wire branch_cond_ge;
    wire branch_cond_ltu;
    wire branch_cond_geu;

    // Internal values
    reg [3:0] alu_func_id;
    reg [1:0] opsel1_id, opsel2_id, wbsel_id;
    reg [4:0] rd_addr_id;
    reg rf_w_en_id, mem_w_en_id;
    reg [WIDTH-1:0] imm_id;

    // Set branch condition rs1 & rs2 comparison
    assign branch_cond_eq = rs1_value_i == rs2_value_i;
    assign branch_cond_ne = rs1_value_i != rs2_value_i;
	  assign branch_cond_lt = $signed(rs1_value_i) < $signed(rs2_value_i);
	  assign branch_cond_ge = $signed(rs1_value_i) >= $signed(rs2_value_i);
	  assign branch_cond_ltu = rs1_value_i < rs2_value_i;
	  assign branch_cond_geu = rs1_value_i >= rs2_value_i;

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
            rs1_value_o <= 'b0;
            rs2_value_o <= 'b0;
        end else if (StallDecode_i) begin
            pc_o <= pc_o;
            alu_func <= alu_func;
            opsel1 <= opsel1; 
            opsel2 <= opsel2;
            wbsel <= wbsel;
            rd_addr <= rd_addr;
            rf_w_en <= rf_w_en;
            mem_w_en <= mem_w_en;
            imm <= imm;
            rs1_value_o <= rs1_value_o;
            rs2_value_o <= rs2_value_o;
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
            rs1_value_o <= rs1_value_i;
            rs2_value_o <= rs2_value_i;
        end
    end

    // Define the decoded regs
    // TODO: Need to add branch mux selection for jump
    `define SET_CTRL(alu_func_data, opsel1_data, opsel2_data, wbsel_data, rs1_addr_data, rs2_addr_data, rd_addr_data, rf_w_en_data, mem_w_en_data, imm_data) \
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
    
    `define SET_BRANCH(pcsel_data, branch_tar_data) \
		pcsel = pcsel_data; \
        branch_tar = branch_tar_data;

    /*`define SET_MEM_ACCESS() \
		= ; \
        = ;*/

    always @(*) begin
        if (reset) begin
            `SET_CTRL(0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
            `SET_BRANCH(0, 0)
        end 
        else begin
            `SET_CTRL(0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
            `SET_BRANCH(0, 0)
            case(opcode)
                `OP_OP_IMM:begin
                    case (funct3)
                        `FUNCT3_ADDI: begin
                            `SET_CTRL(`ALU_OP_ADD, `OPSEL_RS1, `OPSEL_IMM, `WB_ALU, rs1, 'b0, rd, 1'b1, 1'b0, {{20{imm_i[11]}}, imm_i})
                        end
                        `FUNCT3_SLLI: begin
                            `SET_CTRL(`ALU_OP_SLL, `OPSEL_RS1, `OPSEL_IMM, `WB_ALU, rs1, 'b0, rd, 1'b1, 1'b0, {{20{imm_i[11]}}, imm_i})
                        end
                        `FUNCT3_SLTI: begin
                            `SET_CTRL(`ALU_OP_SLT, `OPSEL_RS1, `OPSEL_IMM, `WB_ALU, rs1, 'b0, rd, 1'b1, 1'b0, {{20{imm_i[11]}}, imm_i})
                        end
                        `FUNCT3_SLTIU: begin
                            `SET_CTRL(`ALU_OP_SLTU, `OPSEL_RS1, `OPSEL_IMM, `WB_ALU, rs1, 'b0, rd, 1'b1, 1'b0, {{20{imm_i[11]}}, imm_i})
                        end
                        `FUNCT3_XORI: begin
                            `SET_CTRL(`ALU_OP_XOR, `OPSEL_RS1, `OPSEL_IMM, `WB_ALU, rs1, 'b0, rd, 1'b1, 1'b0, {20'b0, imm_i})
                        end
                        `FUNCT3_SRI:
                            case (funct7)
                                `FUNCT7_SRAI: begin
                                    `SET_CTRL(`ALU_OP_SRA, `OPSEL_RS1, `OPSEL_IMM, `WB_ALU, rs1, 'b0, rd, 1'b1, 1'b0, imm)
                                end
                                `FUNCT7_SRLI: begin 
                                    `SET_CTRL(`ALU_OP_SRL, `OPSEL_RS1, `OPSEL_IMM, `WB_ALU, rs1, 'b0, rd, 1'b1, 1'b0, imm)
                                end
                                default: begin end
                            endcase
                        `FUNCT3_ORI: begin
                            `SET_CTRL(`ALU_OP_OR, `OPSEL_RS1, `OPSEL_IMM, `WB_ALU, rs1, 'b0, rd, 1'b1, 1'b0, {20'b0, imm_i})
                        end
                        `FUNCT3_ANDI: begin
                            `SET_CTRL(`ALU_OP_AND, `OPSEL_RS1, `OPSEL_IMM, `WB_ALU, rs1, 'b0, rd, 1'b1, 1'b0, {20'b0, imm_i})
                        end
                        default: begin end
                    endcase
                end
                `OP_OP:begin
                    case (funct3)
                        `FUNCT3_ADD_SUB:
                            case (funct7)
                                `FUNCT7_ADD: begin
                                    `SET_CTRL(`ALU_OP_ADD, `OPSEL_RS1, `OPSEL_RS2, `WB_ALU, rs1, rs2, rd, 1'b1, 1'b0, 0)
                                end
                                `FUNCT7_SUB: begin
                                    `SET_CTRL(`ALU_OP_SUB, `OPSEL_RS1, `OPSEL_RS2, `WB_ALU, rs1, rs2, rd, 1'b1, 1'b0, 0)
                                end
                                default: begin end
                            endcase
                        `FUNCT3_SLL: begin
                            `SET_CTRL(`ALU_OP_SLL, `OPSEL_RS1, `OPSEL_RS2, `WB_ALU, rs1, rs2, rd, 1'b1, 1'b0, 0)
                        end
                        `FUNCT3_SLT: begin
                            `SET_CTRL(`ALU_OP_SLT, `OPSEL_RS1, `OPSEL_RS2, `WB_ALU, rs1, rs2, rd, 1'b1, 1'b0, 0)
                        end
                        `FUNCT3_SLTU: begin
                            `SET_CTRL(`ALU_OP_SLTU, `OPSEL_RS1, `OPSEL_RS2, `WB_ALU, rs1, rs2, rd, 1'b1, 1'b0, 0)
                        end
                        `FUNCT3_XOR: begin
                            `SET_CTRL(`ALU_OP_XOR, `OPSEL_RS1, `OPSEL_RS2, `WB_ALU, rs1, rs2, rd, 1'b1, 1'b0, 0)
                        end
                        `FUNCT3_SR:
                            case (funct7)
                                `FUNCT7_SRA: begin
                                    `SET_CTRL(`ALU_OP_SRA, `OPSEL_RS1, `OPSEL_RS2, `WB_ALU, rs1, rs2, rd, 1'b1, 1'b0, 0)
                                end
                                `FUNCT7_SRL: begin
                                    `SET_CTRL(`ALU_OP_SRL, `OPSEL_RS1, `OPSEL_RS2, `WB_ALU, rs1, rs2, rd, 1'b1, 1'b0, 0)
                                end
                                default: begin end
                            endcase
                        `FUNCT3_OR: begin
                            `SET_CTRL(`ALU_OP_OR, `OPSEL_RS1, `OPSEL_RS2, `WB_ALU, rs1, rs2, rd, 1'b1, 1'b0, 0)
                        end
                        `FUNCT3_AND: begin
                            `SET_CTRL(`ALU_OP_AND, `OPSEL_RS1, `OPSEL_RS2, `WB_ALU, rs1, rs2, rd, 1'b1, 1'b0, 0)
                        end
                        default: begin end
                    endcase
                end
                `OP_BRANCH:begin
                    case (funct3)
                        `FUNCT3_BEQ: begin
                            if (branch_cond_eq) `SET_BRANCH(`PC_BRANCH, br_addr)
                        end
                        `FUNCT3_BNE: begin 
                            if (branch_cond_ne) `SET_BRANCH(`PC_BRANCH, br_addr)
                        end
                        `FUNCT3_BLT: begin 
                            if (branch_cond_lt) `SET_BRANCH(`PC_BRANCH, br_addr)
                        end
                        `FUNCT3_BGE: begin 
                            if (branch_cond_ge) `SET_BRANCH(`PC_BRANCH, br_addr)
                        end
                        `FUNCT3_BLTU: begin 
                            if (branch_cond_ltu) `SET_BRANCH(`PC_BRANCH, br_addr)
                        end
                        `FUNCT3_BGEU: begin 
                            if (branch_cond_geu) `SET_BRANCH(`PC_BRANCH, br_addr)
                        end
                        default: begin end
                    endcase
                end
                `OP_LUI: begin 
                    `SET_CTRL(`ALU_OP_NOP, 0, 0, `WB_IMM, 'b0, 'b0, rd, 1'b1, 1'b0, {imm_u, 12'b0})
                end
                `OP_AUIPC: begin 
                    `SET_CTRL(`ALU_OP_ADD, `OPSEL_PC, 0, `WB_ALU, 'b0, 'b0, rd, 1'b1, 1'b0, {imm_u, 12'b0})
                end
                `OP_JAL: begin 
                    `SET_CTRL(`ALU_OP_ADD, `OPSEL_RS1, `OPSEL_IMM, `WB_ALU, 'b0, 'b0, rd, 1'b1, 1'b0, {imm_u, 12'b0})
                    `SET_BRANCH(`PC_BRANCH, jal_addr)
                end
                `OP_JALR: begin 
                    `SET_CTRL(`ALU_OP_ADD, `OPSEL_RS1, `OPSEL_IMM, `WB_ALU, 'b0, 'b0, rd, 1'b1, 1'b0, {imm_u, 12'b0})
                    `SET_BRANCH(`PC_BRANCH, jalr_addr)
                end
                // TODO: for load and store need additional signal to interact with memory
                `OP_LOAD:
                    case (funct3)
                        `FUNCT3_LB: begin
                            `SET_CTRL(`ALU_OP_ADD, `OPSEL_RS1, 0, `WB_DMEM, rs1, 'b0, rd, 1'b1, 1'b0, {{20{imm_i[11]}}, imm_i})
                         end
                        `FUNCT3_LH: begin
                            `SET_CTRL(`ALU_OP_ADD, `OPSEL_RS1, 0, `WB_DMEM, rs1, 'b0, rd, 1'b1, 1'b0, {{20{imm_i[11]}}, imm_i})
                        end
                        `FUNCT3_LW: begin 
                            `SET_CTRL(`ALU_OP_ADD, `OPSEL_RS1, 0, `WB_DMEM, rs1, 'b0, rd, 1'b1, 1'b0, {{20{imm_i[11]}}, imm_i})
                        end
                        `FUNCT3_LBU: begin 
                            `SET_CTRL(`ALU_OP_ADD, `OPSEL_RS1, 0, `WB_DMEM, rs1, 'b0, rd, 1'b1, 1'b0, {{20{imm_i[11]}}, imm_i})
                        end
                        `FUNCT3_LHU: begin 
                            `SET_CTRL(`ALU_OP_ADD, `OPSEL_RS1, 0, `WB_DMEM, rs1, 'b0, rd, 1'b1, 1'b0, {{20{imm_i[11]}}, imm_i})
                        end
                        default: begin end
                    endcase
                `OP_STORE:
                    case (funct3)
                        `FUNCT3_SB: begin 
                            `SET_CTRL(`ALU_OP_ADD, `OPSEL_RS1, `OPSEL_RS2, 0, rs1, rs2, 0, 1'b0, 1'b1, {{20{imm_s[11]}}, imm_s})
                        end
                        `FUNCT3_SH: begin 
                            `SET_CTRL(`ALU_OP_ADD, `OPSEL_RS1, `OPSEL_RS2, 0, rs1, rs2, 0, 1'b0, 1'b1, {{20{imm_s[11]}}, imm_s})
                        end
                        `FUNCT3_SW: begin 
                            `SET_CTRL(`ALU_OP_ADD, `OPSEL_RS1, `OPSEL_RS2, 0, rs1, rs2, 0, 1'b0, 1'b1, {{20{imm_s[11]}}, imm_s})
                        end
                        default: begin end
                    endcase
                default: begin end
            endcase 
        end
    end

endmodule
