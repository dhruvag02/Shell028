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


$ ./a.out sortfile

00.0546 :YRALAS SSORG //GROSS SALARY: 6450.00
00.0034 :YRALAS SSORG
00.0002 :YRALAS SSORG
00.0546 :YRALAS SSORG



$ ./a.out Sfile.txt
. txt.elpmas sa deman dna yrotcerid 820llehs ni detacol si eliF
.sdnammoC xinU suoirav gnisu rof detaerC .elif txet elpmas a si sihT


