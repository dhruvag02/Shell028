#include<stdio.h>
#include<sys/types.h>
#include<stdlib.h>
#include<unistd.h>


int main()
{

	int pid;
	
	printf("Before calling to fork()....\n");
	printf("\n");
	pid=fork();
	if(pid > 0)
	{
		sleep(3); //So that child execures first
		printf("PARENT --PID %d PPID %d Child PID %d\n", getpid(), 			getppid(), pid);
	}

	else if(pid==0)
	{
		printf("CHILD --PID %d PPID %d\n", getpid(), getppid());
	}
	else
	{
		printf("Fork ERROR\n");
		exit(1);
	}
	printf("Both Process continue form here\n");
	exit(0);
return 0;
}


Before calling to fork()....

CHILD --PID 18936 PPID 18935
Both Process continue form here
PARENT --PID 18935 PPID 11956 Child PID 18936
Both Process continue form here

