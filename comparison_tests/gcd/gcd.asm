main:
    addi sp,sp,-32
    addi s0,sp,32
    li a5,168
    addi s2,a5,0
    li a5,72
    addi s3,a5,0
    addi t0,zero,0
.L3:
    addi t1,s2,0
    addi t2,s3,0
    rem a5,t1,t2
    addi s4,a5,0
    addi t3,s3,0
    addi s2,t3,0
    addi t4,s4,0
    addi s3,t4,0
.L2:
    addi t5,s3,0
    bgt t5,zero,.L3
    addi a5,zero,0
    addi a0,a5,0
    addi sp,sp,32
