# RISC-V Assembly code to try each instruction in the RV32I and RV32M ISA
# Compile with https://venus.kvakil.me/
.globl _start

_start:
    # Load immediate
    li x1, 123
    
    # Addi
    addi x2, x1, 456
    
    # Add
    add x2, x1, x2
    
    # Subtract
    sub x2, x2, x1
    
    # Bitwise AND
    and x2, x2, x1
    
    # Bitwise ANDI
    andi x2, x2, 1
    
    # Bitwise OR
    or x2, x2, x1
    
    # Bitwise ORI
    ori x2, x2, 1
    
    # Bitwise XOR
    xor x2, x2, x1
    
    # Bitwise XORI
    xori x2, x2, 1
    
    # Shift left logical
    slli x2, x2, 2
    
    # Shift right logical
    srli x2, x2, 1
    
    # Shift right arithmetic
    srai x2, x2, 2
    
    # Set less than
    slti x2, x1, 200
    
    # Set less than unsigned
    sltiu x2, x1, 200
    
    # Load byte
    lb x2, 0(x1)
    
    # Load halfword
    lh x2, 0(x1)
    
    # Load word
    lw x2, 0(x1)
    
    # Load byte unsigned
    lbu x2, 0(x1)
    
    # Load halfword unsigned
    lhu x2, 0(x1)
    
    # Store byte
    sb x2, 0(x1)
    
    # Store halfword
    sh x2, 0(x1)
    
    # Store word
    sw x2, 0(x1)
    
    # Branch equal
    beq x1, x2, done
    
    # Branch not equal
    bne x1, x2, done
    
    # Branch less than
    blt x1, x2, done
    
    # Branch less than unsigned
    bltu x1, x2, done
    
    # Jump and link
    jal x2, done
    
    # Jump and link register
    jalr x2, x1, 0
    
    # Return
    ret
    
    # sll
    sll x1, x2, x3
    
    # slt
    slt x1, x2, x3
    
    # sltu
    sltu x1, x2, x3
    
    # sra
    sra x1, x2, x3
    
    # bne
    bne x1, x2, forward

back:
    
    # sltu
    sltu x1, x2, x3
    
forward:

    # sltu
    sltu x1, x2, x3
    
    # sltu
    sltu x1, x3, x2
    
	# blt
    blt x1, x2, back
    
    # bltu
    bltu x1, x2, back
    
    # bge
    bge x1, x2, back
    
    # bgeu
    bgeu x1, x2, back
    
    # Multiply
    mul x2, x1, x1
    
    # Multiply unsigned
    mulh x2, x1, x1
    
    # Multiply unsigned
    mulhsu x2, x1, x1
    
    # Multiply unsigned
    mulhu x2, x1, x1
    
    # Divide
    div x2, x1, x1
    
    # Divide unsigned
    divu x2, x1, x1
    
    # Remainder
    rem x2, x1, x1
    
    # Remainder unsigned
    remu x2, x1, x1

done:
