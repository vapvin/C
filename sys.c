#include <stdio.h>
#include<stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <netinet/in.h>

int main(){
    int current_socket = socket(PF_INET, SOCK_STREAM, 0); // << Create Socket

    struct sockaddr_in saddr = {0, }; // Binding to Addr
    saddr.sin_family = AF_INET;
}