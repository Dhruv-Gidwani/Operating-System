#include<sys/types.h>
#include<unistd.h>
#include<stdio.h>
#include<stdlib.h>
#include<sys/wait.h>

int main() 
{
pid_t pid,tpid;
pid = fork();
if(pid == 0) 
{
	sleep(5);
	printf("\nChild process with ID=%d",getpid());
	printf("\nChilds parent ID=%d",getppid());
}
else 
{
	printf("\nParent process ID=%d",getpid());
}
return 0;
}
