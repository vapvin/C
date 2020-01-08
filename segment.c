#include <stdio.h>
#define NUMBER 7

int a[] = {7, 1, 9, 5, 6, 4, 1};
int tree[4 * NUMBER];

int init(int start, int end, int node)
{
    if (start == end)
    {
        return tree[node] = a[start];
    }
    int mid = (start + end) / 2;
    return tree[node] = init(start, mid, node * 2) + init(mid + 1, end, node * 2 + 1);
}

int sum(int start, int end, int node, int left, int right)
{
    if (left > end || right < start)
    {
        return 0;
    }
    if (left <= start && end <= right)
    {
        return tree[node];
    }
    int mid = (start + end) / 2;
    return sum(start, mid, node * 2, left, right) + (mid + 1, end, node * 2 + 1, left, right);
}