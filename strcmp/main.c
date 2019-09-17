#include<stdio.h>
#include<stdlib.h>
#include<string.h>
extern int myStrcmp(char testStringA[],char testStringB[]);
char testStringA[100];
char testStringB[100];

int main()
{
	int result = 0;
	printf("Please String A and String B:\n");
	scanf("%s %s",testStringA,testStringB);
	result = myStrcmp(testStringA,testStringB);
	printf("%d",result);
	return 0;
}
