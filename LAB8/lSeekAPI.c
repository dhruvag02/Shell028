#include<stdio.h>
#include<unistd.h>
#include<sys/stat.h>
#include<fcntl.h>
#include<stdlib.h>

int main(int argc, char* argv[])
{
	char buf;
	int size, fd;	
	
	fd=open(argv[1], O_RDONLY);
	size=lseek(fd, -1, SEEK_END);

	while(size-- >= 0)
	{
		read(fd, &buf, 1);
		write(STDOUT_FILENO, &buf, 1);
		lseek(fd, -2, SEEK_CUR);
	}

return 0;
}



