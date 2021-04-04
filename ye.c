/* ye
 * by bbaovanc
 * https://github.com/BBaoVanC/ye
 */

#include <stdio.h>

int main(int argc, char *argv[]) {
    if (argc <= 1) { /* <= 1 because the one argument is the executable name */
        while (1) {
            printf("y");
        }

    } else {
        while (1) {
            printf("%s", argv[1]);
            for (int i = 2; i < argc; i++) {
                printf(" %s", argv[i]);
            }
        }
    }
}
