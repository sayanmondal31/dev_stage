#include<stdio.h>
#include<stdlib.h>

int main()
{
	int *ptr, *ptr1;
	int n, i;
	printf("Enter the no of elements:- ");
	scanf("%d", &n);

	ptr = (int *)malloc(n * sizeof(int));	
	ptr1 = (int *)calloc(n,  sizeof(int));
	
	if(ptr == NULL || ptr1 == NULL)
	{
		printf("Meory not allocated \n");
		exit(0);
	}
	else{
		printf("Memory sucessfully allocated using calloc. \n");
		free(ptr);
		printf("Malloc Memory successfully freed.\n"); 
		 
free(ptr1);
printf("Calloc Mem sucessfully freed.\n");
}
	return 0;
}
