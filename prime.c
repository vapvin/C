#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#define NODE_MAX 1001
#define EDGE_MAX 200001

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
    if (pq->ciunt >= EDGE_MAX)
        return;
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