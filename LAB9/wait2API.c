#include<stdio.h>
#include<unistd.h>
#include<stdlib.h>
#include<sys/wait.h>
#include<fcntl.h>

int main(int argc, char *argv[])
{
	int fd, exitStatus;
	int exitValue;

	fd=open(argv[1], O_WRONLY | O_CREAT | O_TRUNC, 0664);
	write(fd, "Original process written\n", 24);
	switch(fork())
	{
		case 0:
		write(fd, "Child writes\n", 13);
		close(fd);
		printf("Child terminating with exit value: %d\n", exitValue);
		exit(exitValue);
		default:
		wait(&exitStatus);
		printf("Parent:Child terminating with exit value: %d\n", 			WEXITSTATUS(exitStatus));
		write(fd, "Parent Writes\n", 14);
		exit(20);
	}
}
