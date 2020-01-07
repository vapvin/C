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
}