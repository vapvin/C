#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char *parent = "acabcdabac";
char *pattern = "abacdab";

int *makeTble(char *pattern)
{
    int patternSize = strlen(pattern);
    int *table = (int *)malloc(sizeof(int) * patternSize);
    for (int i = 0; i < patternSize; i++)
    {
        table[i] = 0;
    }
    int j = 0;
    for (int i = 1; i < patternSize; i++)
    {
        while (j > 0 && pattern[i] != pattern[j])
        {
            j = table[j - 1];
        }
        if (pattern[i] == pattern[j])
        {
            table[i] = ++j;
        }
    }
    return table;
}