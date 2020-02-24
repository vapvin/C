#include <stdio.h>
#include <string.h>
 
void chck(char* tet, int len){
     int count = 0;
for (int i = 0; i < len / 2; i++){
          if (tet[i] == tet[len - i - 1])
               count++;
          else{
               printf("회문이 아닙니다.");
               break;
          }
     }
 if (count == len / 2)
      printf("회문입니다.");
} 

int main(void){
     char str[100];
     int length;
     printf("문자열 입력 : ");
     scanf("%s", str);
     length = strlen(str);
     chck(str, length); 
     printf("\n");
     return 0;
}