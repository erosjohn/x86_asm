#include<stdio.h>
#include<stdlib.h>
#include<string.h>
extern int myStrchr(char testString[],char testchar,int lens);
char *testString[100];
char testchar;
int lens = 0;
int main()
{
	int position = 0;
	printf("Please input test string and the char you want to find:\n");
	scanf("%s %c",testString,&testchar);
	lens = strlen(testString);
	position = myStrchr(testString,testchar,lens);
	printf("%d",position);
	return 0;	
}

