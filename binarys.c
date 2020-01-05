#include <stdio.h>
#include <stdlib.h>

typedef struct {
    int data;
    struct Node* leftChild;
    struct Node* rightChild;
} Node;

Node* insertNode(Node* root, int data) {
    if(root == NULL) {
        root = (Node*)malloc(sizeof(Node));
        root->leftChild = root->rightChild = NULL;
        root->data = data;
        return root;
    } else {
        if(root->data > data) {
            root->leftChild = insertNode(root->leftChild, data);
        } else {
            root->rightChild = insertNode(root->rightChild, data);
        }
    }
    return root;
}

Node* searchNode(Node* root, int data) {
    if(root == NULL) return NULL;
    if(root->data == data) return root;
    else if (root->data > data) return searchNode(root->leftChild, data);
    else return searchNode(root->rightChild, data);
}

void preorder(Node* root){
    if(root == NULL) return;
    printf("%d", root->data);
    preorder(root->leftChild);
    preorder(root->rightChild);
}

int main(void) {
    Node* root = NULL;
    root = insertNode(root, 30);
    root = insertNode(root, 17);
    root = insertNode(root, 48);
    root = insertNode(root, 5);
    root = insertNode(root, 23);
    root = insertNode(root, 37);
    root = insertNode(root, 50);
    preorder(root);

    return 0;
}