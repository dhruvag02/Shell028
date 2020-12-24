#include<stdio.h>
#include<unistd.h>
#include<stdlib.h>
#include<sys/wait.h>


int main()
{
	pid_t pid;
	printf("Before fork()\n");
	pid=fork();
	
	if(pid==0)
	{
		printf("In child process\n");
		execl("/bin/ls", "ls", "-l", (char*)0);
		printf("\n Attributes of current directories are printed");
		
	}
	else
	{
		wait(0);
		printf("In Parent process the 'ls' command is not executed\n");
	}
	return 0;
}
