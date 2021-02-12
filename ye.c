/* ye
 * by bbaovanc
 * https://github.com/BBaoVanC/ye
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char *argv[]) {
    char *str;
    if (argc > 1) {
        int i;
        int totalsize = -1; /* start at -1 since we don't need
                               a space on the last item */

        for (i = 1; i < argc; i++) {
            totalsize += strlen(argv[i]) + 1; /* + 1 is for the space */
        }

        str = malloc(totalsize);
        strcpy(str, argv[1]);

        for (i = 2; i < argc; i++) {
            strcat(str, " ");
            strcat(str, argv[i]);
        }
    } else {
        str = "y";
    }

    while (1) {
        printf("%s", str);
    }

    return 0;
}
