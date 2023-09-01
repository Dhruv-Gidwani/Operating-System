#include<sys/types.h>
#include<unistd.h>
#include<stdio.h>
#include<stdlib.h>
#include<sys/wait.h>

int main()
{
	pid_t pid,tpid;
	int status,n;
	
	printf("Enter the size of array");
	scanf("\n%d",&n);
	int arr [n] ;
	
	printf("Enter the number for sorting :-\n");
	for(int i=0;i<n;i++)
	{
		scanf("\n%d",&arr[i]);
	}
	
	pid = fork();
	
	if(pid == 0)
	{
		
		// Descending order
		for(int i=0; i<n; i++)
		{
			for(int j=i+1 ; j<n ; j++)
			{
				if(arr[j] > arr[i])
				{
					int temp = arr[j];
					arr[j]=arr[i];
					arr[i]=temp;
				}
			}
		}
		
		//Display
		printf("\nDESCENDING ORDER IS :-");
		for(int i=0 ;i<n ;i++)
		{
			printf("\n%d",arr[i]);
		}
		printf("\n");
	}
	
	else
	{
		
		// Aescending order
		
		for(int i=0; i<n; i++)
		{
			for(int j=i+1 ; j<n ; j++)
			{
				if(arr[j] < arr[i])
				{
					int temp = arr[j];
					arr[j]=arr[i];
					arr[i]=temp;
				}
			}
		}
		
		//Display
		printf("ASCENDING ORDER IS :-");
		for(int i=0 ;i<n ;i++)
		{
			printf("\n%d",arr[i]);
		}
	}
	
	return 0;
}
