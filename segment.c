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
