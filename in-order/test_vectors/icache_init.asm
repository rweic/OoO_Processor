# RISC-V Assembly code to try each instruction in the RV32I and RV32M ISA
# Compile with https://venus.kvakil.me/

#OP_ITYPE
ADDI x1, x2, 2
SLLI x3, x1, 3   # Dependency on x1 from ADDI
SLTI x5, x3, 7   # Dependency on x3 from SLLI
SLTIU x7, x5, 9  # Dependency on x5 from SLTI
XORI x9, x7, 12  # Dependency on x7 from SLTIU
SRAI x11, x9, 4  # Dependency on x9 from XORI
SRLI x13, x11, 5 # Dependency on x11 from SRAI
ORI x15, x11, 10 # Dependency on x11 from SRAI
ANDI x17, x7, 15 # No Dependency on x15 from ORI

#OP_RTYPE
ADD x1, x2, x3
SUB x4, x5, x6
SLL x7, x8, x9
SLT x10, x11, x12
SLTU x13, x14, x15
XOR x16, x17, x18
SRA x19, x20, x21
SRL x22, x23, x24
OR x25, x26, x27
AND x28, x29, x30

#OP_BRANCH
BEQ x1, x2, label1
label1:
BNE x3, x4, label2
label2:
BLT x5, x6, label3
label3:
BGE x7, x8, label4
label4:
BLTU x9, x10, label5
label5:
BGEU x11, x12, label6
label6:

#OP_LOAD
LB x1, 0(x2)
LH x3, 4(x1)     # Dependency on the result of LB x1
LW x5, -8(x11)   # Dependency on the result of LB x1
LBU x7, 16(x5)   # Dependency on the result of LW x5
LHU x9, 20(x7)   # Dependency on the result of LBU x7

#OP_STORE
SB x11, 24(x9)  # Dependency on the result of LHU x9
SH x13, -28(x11)
SW x15, 32(x13)

#OTHER
LUI x13, 0xABCD
AUIPC x14, 2
JAL x15, label7
label7:
JALR x16, x17, 0
