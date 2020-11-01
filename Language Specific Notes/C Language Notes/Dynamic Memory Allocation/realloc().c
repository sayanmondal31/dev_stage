#include<stdio.h>
#include<stdlib.h>

int main()
{
	int *ptr, n, i;
	
	printf("Enter the no of elements:-\n");
	scanf("%d", &n);
	
	ptr = (int*)calloc(n, sizeof(int));
	
	if(ptr==NULL)
	{
		puts("Cannot Allocate Mem");
		exit(0);
	}
	else
	{
		printf("Memory successfully re-allocated using realloc.\n"); 
		for(i=0;i<n;i++)
			ptr[i] = 1;
		
		printf("The elements in the array is:-\n");
		for(i=0;i<n;i++)
			printf("%d ", ptr[i]);
		
		printf("\nEnter the no of elements:-\n");
		scanf("%d", &n);
		
		ptr = realloc(ptr, n * sizeof(int));
		for(i=0;i<n;i++)
			ptr[i] = 2;
		
		printf("The elements in the array is:-\n");
		for(i=0;i<n;i++)
			printf("%d ", ptr[i]);
	}
	free(ptr);
	return 0;
}
