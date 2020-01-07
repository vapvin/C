#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#define NODE_MAX 20001
#define EDGE_MAX 600001

typedef struct
{
    int cost;
    int node;
} Edge;

typedef struct
{
    Edge *heap[EDGE_MAX];
    int count;
} priorityQueue;

typedef struct
{
    Edge *data;
    struct Node *next;
} Node;

void swap(Edge *a, Edge *b)
{
    Edge temp;
    temp.cost = a->cost;
    temp.node = a->node;
    a->cost = b->cost;
    a->node = b->node;
    b->cost = temp.cost;
    b->node = temp.node;
}

void push(priorityQueue *pq, Edge *edge)
{
    if (pq->count >= EDGE_MAX)
    {
        return;
    }
    pq->heap[pq->count] = edge;
    int now = pq->count;
    int parent = (pq->count - 1) / 2;
    while (now > 0 && pq->heap[now]->cost < pq->heap[parent]->cost)
    {
        swap(pq->heap[now], pq->heap[parent]);
        now = parent;
        parent = (parent - 1) / 2;
    }
    pq->count++;
}

Edge *pop(priorityQueue *pq)
{
    if (pq->count <= 0)
    {
        return NULL;
    }
    Edge *res = pq->heap[0];
    pq->count--;
    pq->heap[0] = pq->heap[pq->count];
    int now = 0, leftChild = 1, rightChild = 2;
    int target = now;
    while (leftChild < pq->count)
    {
        if (pq->heap[target]->cost > pq->heap[leftChild]->cost)
        {
            target = leftChild;
        }
        if (pq->heap[target]->cost > pq->heap[rightChild]->cost && rightChild < pq->count)
        {
            target = rightChild;
        }
        if (target == now)
        {
            break;
        }
        else
        {
            swap(pq->heap[now], pq->heap[target]);
            now = target;
            leftChild = now * 2 + 1;
            rightChild = now * 2 + 2;
        }
    }
    return res;
}

Node **adj;
int ans[NODE_MAX];
