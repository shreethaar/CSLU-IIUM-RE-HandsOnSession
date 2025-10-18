#include <stdio.h>

int main() {
    int num1, num2, result;
    int choice;

    printf("Enter two numbers: \n"); 
    scanf("%d", &num1);    
    scanf("%d", &num2);   


    printf("Enter choice\n"); 
    printf("1 - Add\n");
    printf("2 - Sub\n");
    scanf("%d", &choice);  
    
    if (choice == 1) {             
        result = num1 + num2;
        printf("Result: %d\n", result);
    }
    else if (choice == 2) {         
        result = num1 - num2;
        printf("Result: %d\n", result);
    }
    else {
        printf("Invalid choice\n");
    }
    return 0;
}
