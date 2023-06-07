#include <stdio.h>

int main() {
    int firstNumber = 168, secondNumber = 72; /* given numbers */
    int remainder;
    
    while (secondNumber > 0) {
        remainder = firstNumber % secondNumber;
        firstNumber = secondNumber;
        secondNumber = remainder;
    }
    //printf("GCD = %d\n", firstNumber);
    
    // Answer should be 24
    
    return 0;
}

