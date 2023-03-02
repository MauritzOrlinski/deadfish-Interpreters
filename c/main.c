#include <stdio.h>
#include "string.h"

int main(int argc, char **argv) {
    printf("%i \n", argc);
    if (argc != 2 && argc != 3) {
        printf("Illegal program arguments");
        return -1;
    }
    int counterStorage = 0;
    for (int i = 0; i < strlen(argv[1]); i++) {
        if (counterStorage == 256 || counterStorage == -1) {
            counterStorage = 0;
        }
        if (argv[1][i] == 'i') {
            counterStorage++;
        } else if (argv[1][i] == 'd') {
            counterStorage--;
        } else if (argv[1][i] == 's') {
            counterStorage *= counterStorage;
        } else if (argv[1][i] == 'o') {
            if (argc == 3 && strcmp(argv[2], "-s") == 0) {
                printf("%c", counterStorage);
            } else {
                printf("%i ", counterStorage);
            }
        } else {
            printf("Illegal Symbol: %c noticed", argv[1][i]);
            return -1;
        }
    }
    return 1;
}
