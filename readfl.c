#include <fcntl.h>
#include <unistd.h>
#include <stdlin.h>
#include <stdio.h>

int main(void){
    int rfd, wfd, n;
    char buf[10];

    rfd = open("unix.txt", O_RDONLY);
    if(rfd == -1){
        perror("Open unix.txt");
        exit(1);
    }
}