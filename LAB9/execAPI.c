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
		execl("/bin/ls", "ls", "-l", "shortlist", (char*)0);
		printf("\n Attributes of current directories are printed");
		
	}
	else
	{
		wait(0);
		printf("In Parent process the 'ls' command is not executed\n");
	}
	return 0;
}

Before fork()
In child process
-rw-r--r-- 1 dhruv dhruv 11 Dec 10 14:29 shortlist
In Parent process the 'ls' command is not executed

