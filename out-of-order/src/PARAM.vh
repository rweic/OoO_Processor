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

// Write Back Selection
`define WB_ALU  2'b00
`define WB_DMEM 2'b01
`define WB_IMM  2'b10
`define WB_PC   2'b11
