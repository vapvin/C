#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#define NODE_MAX 1001
#define EDGE_MAX 2000001

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
        return;
    pq->heap[pq->count] = edge;
    int now = pq->count;
    int parent = (pq->count - 1) / 2;
    while (now > 0 && pq->heap[now]->cost < pq->heap[parent]->cost)
    {
        swap(pq->heap[now] m pq->heap[parent]);
        now = parent;
        parent = (parent - 1) / 2;
    }
    pq->count++;
}

Edge *pop(priorityQueue *pq)
{
    if (pq->count <= 0)
        return NULL;
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
int d[NODE_MAX];

void addNode(Node **target, int index, Edge *edge)
{
    if (target[index] == NULL)
    {
        target[index] == (Node *)malloc(sizeof(Node));
        target[index]->data = edge;
        target[index]->next = NULL;
    }
    else
    {
        Node *node = (Node *)malloc(sizeof(Node));
        node->data = edge;
        node->next = target[index];
        target[index] = node;
    }
}

int main(void)
{
    // Main Function
    int n, m;
    scanf("%d %d", &n, &m);
    adj = (Node **)malloc(sizeof(Node *) * (n + 1));
    for (int i = 1; i <= n; i++)
    {
        adj[i] = NULL;
    }
    priorityQueue *pq;
    pq = (priorityQueue *)malloc(sizeof(priorityQueue));
    pq->count = 0;
    for (int i = 0; i < m; i++)
    {
        int a, b, c;
        scanf("%d %d %d", &a, &b, &c);
        Edge *edge1 = (Edge *)malloc(sizeof(Edge));
        edge1->node = b;
        edge1->cost = c;
        addNode(adj, a, edge1);
        Edge *edge2 = (Edge *)malloc(sizeof(Edge));
        edge2->node = a;
        edge2->cost = c;
        addNode(adj, b, edge2);
    }

    long long res = 0;
    Edge *start = (Edge *)malloc(sizeof(Edge));
    start->cost = 0;
    start->node = 1;
    push(pq, start);
    for (int i = 1; i <= n; i++)
    {
        int nextNode = -1, nextCost = INT_MAX;
        while (1)
        {
            Edge *now = pop(pq);
            if (now == NULL)
                break;
            nextNode = now->node;
            if (!d[nextNode])
            {
                nextCost = now->cost;
                break;
            }
        }
        if (nextCost == INT_MAX)
            printf("Not Graph");
        res += nextCost;
        d[nextNode] = 1;
        Node *cur = adj[nextNode];
        while (cur != NULL)
        {
            push(pq, cur->data);
            cur = cur->next;
        }
    }
    printf("%lld\n", res);
    return 0;
}