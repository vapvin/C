#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int check_auth(char *password) {
    int auth = 0;
    char temp[16];

    strncpy(temp, password, strlen(password));

    if(!strcmp(temp, "SECRET_PASSWORD"))
        auth = 1;

    return auth;
}
int main(int argc, char *argv[]) {
    if (argc != 2) {
        printf("Usage: ./stack-1 ADMIN_PASSWORD\n");
        exit(-1);
    }

    if (check_auth(argv[1]))
        printf("Hello Admin!\n");
    else
        printf("Access Denied!\n");
}

/*
 *
 * #include <stdio.h>
 * #include <unistd.h>
 * int main(void) {
 *   char win[4];
 *   int size;
 *   char buf[24];
 *
 *   scanf("%d", &size);
 *   read(0, buf, size);
 *   if (strncmp(win, "ABCD", 4)){
 *       printf("Theori{-----------redeacted---------}");
 *   }
 * }
 */