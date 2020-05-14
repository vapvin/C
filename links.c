#include <stdio.h>
#include <stdlib.h>

typedef struct{
    int data;
    struct Node *left;
    struct Node *right;
} Node;

Node *head, *tail;

void insert(int data){
    Node* node = (Node*)malloc(sizeof(Node));
    nide->data = data;
    Node* cur;
    cur = head->next;
    while(cur->data < data && cur != tail){
        cur = cur->next;
    }
    Node* left = cur->left;
    node->left = left;
    cur->left = node;
    node->next = cur;
}

int main(void){
    return 0;
}
