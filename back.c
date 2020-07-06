#include <stdio.h>
#include <stdlib.h>

#define MAX_X 4
#define MAX_Y 9

#define END_X 3
#define END_Y 8


typedef struct P{int x,y;};


void presentPath(P[],int);
int tryC(int m[][MAX_Y],int,int);
void checkPaths(int m[][MAX_Y],int,int,P[],int);

int
main()
{

  int sX=0, sY=0,
  	m[MAX_X][MAX_Y]=
     {
      {0,0,0,1,1,1,0,0,0},
  	{1,1,0,0,0,0,0,0,0},
  	{1,0,1,0,0,1,0,1,0},
  	{0,0,1,1,0,1,1,1,0}
     };
  

  P Path[MAX_X+MAX_Y+1];
  
 
  checkPaths(m,sX,sY,Path,0);

  return 0;
}

void 
presentPath(P   Path[MAX_X+MAX_Y+1],
			int k)
{
  for(int i=0; i<k; i++)
    printf("%d, %d",Path[i].x,Path[i].y);
  
  printf("\n\n");
}

int tryC(int m[MAX_X][MAX_Y],int x, int y)
{return ((x>=0)&&(x<MAX_X)&&(y>=0)&&(y<MAX_Y)&&m[x][y]==0);}

void 
checkPaths(int m[MAX_X][MAX_Y],
		   int c_x, int c_y,
		   P Path[MAX_X+MAX_Y+1],int l)
{

  if(!tryC(m,c_x,c_y)) return ;
  

  m[c_x][c_y]=2; 
  Path[l].x=c_x;Path[l].y=c_y;
  

  if((c_x==END_X)&&(c_y==END_Y))
  	presentPath(Path,l+1);
  else
  {

  	checkPaths(m,c_x+1,c_y+1,Path,l+1);
  	checkPaths(m,c_x+1,c_y,Path,l+1);
  	checkPaths(m,c_x,c_y+1,Path,l+1);
  }
  
  m[c_x][c_y]=0;
}