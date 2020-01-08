#include <stdio.h>
#define NUMBER 7

int tree[NUMBER];

int sum(int i)
{
    int res = 0;
    while (i > 0)
    {
        res += tree[i];

        i -= (i & -i);
    }
    return res;
}