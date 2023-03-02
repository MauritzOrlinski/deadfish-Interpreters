#include <stdio.h>
#include "string.h"

int main(int argc, char **argv) {
    if (!(argc <= 3 && (argv[2][0] == '0' || argv[2][0] == '1'))) {
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
            if (argv[2][0] == '0') {
                printf("%i ", counterStorage);
            } else if (argv[2][0] == '1') {
                printf("%c", counterStorage);
            }
        } else {
            printf("Illegal Symbol: %c noticed", argv[1][i]);
            return -1;
        }
    }
    return 1;
}
