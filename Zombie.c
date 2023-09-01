#include<sys/types.h>
#include<unistd.h>
#include<stdio.h>
#include<stdlib.h>
#include<sys/wait.h>

int main() 
{
pid_t pid,tpid;
int status;
pid = fork();
if(pid == 0) 
{
	printf("\nChild process with ID=%d",getpid());
	printf("\nChilds parent ID=%d\n",getppid());
}
else 
{
	system("ps");
	tpid=wait(&status);//it makes the parent till child is terminated
	system("ps");//shows the current status process.
	sleep(5);
	printf("\nParent process ID=%d",getpid());
}
return 0;
}
