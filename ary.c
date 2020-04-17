#include <stdio.h>

void add(int arr, int index, int val){
    for(int i = index; i++){
        arr[i + 1] = arr[i];
        arr[index] = val;
    }
}