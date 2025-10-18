//simple ascii check 
#include <stdio.h>

int main() {
    char ch;
    
    printf("Enter a character: ");
    scanf("%c", &ch);
    
    printf("\nCharacter: %c\n", ch);
    printf("ASCII value: %d\n", ch);
    printf("Hexadecimal: 0x%X\n", ch);
    
    // Check character type
    if (ch >= 'A' && ch <= 'Z') {
        printf("Type: Uppercase letter\n");
    }
    else if (ch >= 'a' && ch <= 'z') {
        printf("Type: Lowercase letter\n");
    }
    else if (ch >= '0' && ch <= '9') {
        printf("Type: Digit\n");
    }
    else if (ch == ' ') {
        printf("Type: Space\n");
    }
    else {
        printf("Type: Special character\n");
    }
    
    return 0;
}
