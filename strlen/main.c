#include<stdio.h>
#include<stdlib.h>

char testString[100];
extern int myStrlen(char testString[]);

int main()
{
		int lens = 0;
		printf("Please input the test string:\n");
		scanf("%s",testString);
		//printf("%s",testString);
		lens = myStrlen(testString);
		printf("%d",lens);
		return 0;

}
