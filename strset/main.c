#include<stdio.h>
#include<stdlib.h>
#include<string.h>
extern char *myStrset(char testString[],char testchar); 
char testString[100];
char testchar;
char newString[100];

int main()
{
		printf("Please input the raw string and the character to be replaced:\n");
		scanf("%s %c",testString,&testchar);
		myStrset(testString,testchar);
		printf("%s",testString);
		return 0;
}
