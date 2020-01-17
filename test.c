int main(void)
{
    int arr[10];
    int max, min;
    int sum = 0;
    int chdgkq = 0;

    printf("10개의 숫자를 입력하세요 / 예시: 10 21 14 15 120 40 7 1 2 31\n");
    printf("입력 :");
    for (int i = 0; i <= 9; i++)
    {
        scanf("%d", &arr[i]);
        sum += arr[i];
    }
    max = arr[0];
    min = arr[0];
    for (int i = 1; i <= 10; i++)
    {
        if (arr[i] > max)
        {
            max = arr[i];
        }
        if (arr[i] < min)
        {
            min = arr[i];
        }
    }
    chdgkq = sum - max - min;
    printf("중간값의 총합:%d", chdgkq);
    printf("중간값의 평균값:%d", chdgkq / 8);

    return 0;
}