# GCD OF 1440 and 550 is 10

main:
    addi x1, x0, 1440  # Load the first number
    addi x2, x0, 550   # Load the second number
    rem x5, x1, x2     # Calculate the remainder of x1 divided by x2 and store it in x5
    addi x1, x2, 0     # Set firstNumber = secondNumber
    addi x2, x5, 0     # Set secondNumber = remainder
    rem x5, x1, x2     # Calculate the remainder of x1 divided by x2 and store it in x5
    addi x1, x2, 0     # Set firstNumber = secondNumber
    addi x2, x5, 0     # Set secondNumber = remainder
    rem x5, x1, x2     # Calculate the remainder of x1 divided by x2 and store it in x5
    addi x1, x2, 0     # Set firstNumber = secondNumber
    addi x2, x5, 0     # Set secondNumber = remainder
    rem x5, x1, x2     # Calculate the remainder of x1 divided by x2 and store it in x5
    addi x1, x2, 0     # Set firstNumber = secondNumber
    addi x2, x5, 0     # Set secondNumber = remainder
    rem x5, x1, x2     # Calculate the remainder of x1 divided by x2 and store it in x5
    addi x1, x2, 0     # Set firstNumber = secondNumber
    addi x2, x5, 0     # Set secondNumber = remainder
    rem x5, x1, x2     # Calculate the remainder of x1 divided by x2 and store it in x5
    addi x1, x2, 0     # Set firstNumber = secondNumber
    addi x2, x5, 0     # Set secondNumber = remainder
    rem x5, x1, x2     # Calculate the remainder of x1 divided by x2 and store it in x5
    addi x1, x2, 0     # Set firstNumber = secondNumber
    addi x2, x5, 0     # Set secondNumber = remainder
    rem x5, x1, x2     # Calculate the remainder of x1 divided by x2 and store it in x5
    addi x1, x2, 0     # Set firstNumber = secondNumber
    addi x2, x5, 0     # Set secondNumber = remainder
    rem x5, x1, x2     # Calculate the remainder of x1 divided by x2 and store it in x5
    addi x1, x2, 0     # Set firstNumber = secondNumber
    addi x2, x5, 0     # Set secondNumber = remainder

