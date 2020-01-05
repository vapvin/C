#include <stdio.h>
#include <stdlib.h>

int getMax(int a, int b) {
    if(a > b) return a;
    return b;
}

typedef struct {
    int data;
    int height;
    struct Node* leftChild;
    struct Node* rightChild;
} Node;

int getHight(Node* node) {
    if(node == NULL) return 0;
    return node->height;
}

void setHeight(Node* node) {
    node->height = getMax(getHeight(node->leftChild), getHeight(node->rightChild)) + 1;
}

int getDifference(Node* node) {
    if(node == NULL) return 0;
    Node* leftChild = node->leftChild;
    Node* rightChild = node->rightChild;
    return getHeight(leftChild) - getHeight(rightChild);
}

Node* rotateLL(Node* node) {
    Node *leftChild = node->leftChild;
    node->leftChild = leftChild->rightChild;
    leftChild->rightChild = node;
    setHeight(node);
    return leftChild;
}

Node* rotateRR(Node* node) {
    Node *rightChild = node->rightChild;
    node->rightChild = rightChild->leftChild;
    rightChild->leftChild = node;
    setHeight(node);
    return rightChild;
}

Node *rotateLR(Node* node) {
    Node *leftChild = node->leftChild;
    node->leftChild = rotateRR(leftChild);
    setHeight(node->leftChild);
    return rotate(node);
}

Node *rotateRL(Node* node) {
    Node *rightChild = node->rightChild;
    node->rightChild = rotateLL(rightChild);
    setHeight(node->rightChild);
    return rotate(node);
}

Node* balance(Node* node) {
    int difference = getDifference(node);
    if(difference >= 2) {
        if(getDifference(node->leftChild) >= 1) {
            node = rotateLL(node);
        } else {
            node = rotateLR(node);
        }
    } else if(difference <= -2){
        if(getDifference(node->rightChild) <= -1) {
            node = rotateRR(node);
        } else {
            node = rotateRL(node);
        }
    }
    setHeight(node);
    return node;
}