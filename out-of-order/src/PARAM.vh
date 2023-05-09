// Word Width Config
`define WORD_WIDTH  32

// ALU Operations
`define ALU_OP_NOP  4'b0000
`define ALU_OP_ADD  4'b0001
`define ALU_OP_SUB  4'b0010
`define ALU_OP_AND  4'b0011
`define ALU_OP_OR   4'b0100
`define ALU_OP_XOR  4'b0101
`define ALU_OP_SLT  4'b0110     // Less then signed
`define ALU_OP_SLTU 4'b0111     // Less then unsigned
`define ALU_OP_SLL  4'b1000     // Shift Left
`define ALU_OP_SRA  4'b1001     // Shift right arithmatic
`define ALU_OP_SRL  4'b1010     // Shift right

// Opcode
`define OP_OP_IMM   7'b0010011  // OP-IMM  (NOP also use this: addi x0, x0, 0)
`define OP_OP       7'b0110011  // OP
`define OP_LUI      7'b0110111
`define OP_AUIPC    7'b0010111
`define OP_JAL      7'b1101111
`define OP_JALR     7'b1100111
`define OP_BRANCH   7'b1100011
`define OP_LOAD     7'b0000011
`define OP_STORE    7'b0100011

// FUNCT 3
// OP_IMM
`define FUNCT3_ADDI     3'b000
`define FUNCT3_SLLI     3'b001
`define FUNCT3_SLTI     3'b010
`define FUNCT3_SLTIU    3'b011
`define FUNCT3_XORI     3'b100
`define FUNCT3_SRI      3'b101  //including SRA & SRL
`define FUNCT3_ORI      3'b110
`define FUNCT3_ANDI     3'b111
// OP
// OP (basic)
`define FUNCT3_ADD_SUB  3'b000
`define FUNCT3_SLL      3'b001
`define FUNCT3_SLT      3'b010
`define FUNCT3_SLTU     3'b011
`define FUNCT3_XOR      3'b100
`define FUNCT3_SR       3'b101  //including SRA & SRL
`define FUNCT3_OR       3'b110
`define FUNCT3_AND      3'b111
// OP (muldiv)
// OP-32 (muldiv)

// BRANCH
`define FUNCT3_BEQ      3'b000
`define FUNCT3_BNE      3'b001
`define FUNCT3_BLT      3'b100
`define FUNCT3_BGE      3'b101
`define FUNCT3_BLTU     3'b110
`define FUNCT3_BGEU     3'b111
// LOAD/ STORE
`define FUNCT3_LB_SB    3'b000
`define FUNCT3_LH_SH    3'b001
`define FUNCT3_LW_SW    3'b010
`define FUNCT3_LBU      3'b100
`define FUNCT3_LHU      3'b101
// MULDIV
`define FUNCT3_MUL      3'b000
`define FUNCT3_MULH     3'b001
`define FUNCT3_MULHSU   3'b010
`define FUNCT3_MULHU    3'b011
`define FUNCT3_DIV      3'b100
`define FUNCT3_DIVU     3'b101
`define FUNCT3_REM      3'b110
`define FUNCT3_REMU     3'b111

// FUNCT 7
`define FUNCT7_SLLI 7'b0000000
// SRI
`define FUNCT7_SRLI 7'b0000000
`define FUNCT7_SRAI 7'b0100000
// ADD_SUB
`define FUNCT7_ADD  7'b0000000
`define FUNCT7_SUB  7'b0100000
`define FUNCT7_SLL  7'b0000000
`define FUNCT7_SLT  7'b0000000
`define FUNCT7_SLTU 7'b0000000
`define FUNCT7_XOR  7'b0000000
// SR
`define FUNCT7_SRL 7'b0000000
`define FUNCT7_SRA 7'b0100000
`define FUNCT7_OR  7'b0000000
`define FUNCT7_AND 7'b0000000
// MULDIV
`define FUNCT7_MULDIV 7'b0000001