main:
    addi sp, sp, -32    # Reserve space on the stack for local variables
    addi s0, sp, 32     # Set s0 to the top of the stack frame
    li a5, 168          # Load the immediate value 168 into register a5
    addi s2, a5, 0      # Copy the value from a5 to s2
    li a5, 72           # Load the immediate value 72 into register a5
    addi s3, a5, 0      # Copy the value from a5 to s3
    addi t0, zero, 0    # Set t0 to zero
.L3:
    addi t1, s2, 0      # Copy the value from s2 to t1
    addi t2, s3, 0      # Copy the value from s3 to t2
    rem a5, t1, t2      # Calculate the remainder of t1 divided by t2 and store it in a5
    addi s4, a5, 0      # Copy the value from a5 to s4
    addi t3, s3, 0      # Copy the value from s3 to t3
    addi s2, t3, 0      # Copy the value from t3 to s2
    addi t4, s4, 0      # Copy the value from s4 to t4
    addi s3, t4, 0      # Copy the value from t4 to s3
.L2:
    addi t5, s3, 0      # Copy the value from s3 to t5
    bgt t5, zero, .L3   # Branch to label .L3 if t5 is greater than zero
    addi a5, zero, 0    # Set a5 to zero (clearing its value)
    addi a0, a5, 0      # Copy the value from a5 to a0
    addi sp, sp, 32     # Deallocate the stack space

