// calculator.c
#include <stdio.h>

// Function to add two numbers
int addition(int a, int b) {
    return a + b;
}

int main() {
    int num1 = 10, num2 = 20;
    printf("Sum: %d\n", addition(num1, num2));
    return 0;
}
