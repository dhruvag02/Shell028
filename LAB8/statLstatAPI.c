#include<stdio.h>
#include<unistd.h>
#include<sys/stat.h>
#include<time.h>
#define S 100

void printFileProperties(struct stat stats);

int main()
{
	char path[S];
	struct stat stats;

	printf("Enter the path of file: ");
	scanf("%s", path);


	if(stat(path, &stats) == 0)
		printFileProperties(stats);
	if(lstat(path, &stats) == 0)
		printFileProperties(stats);
	else
	{
		printf("Unable to get File Properties.\n");
		exit(0);
	}
	
	return 0;
}

void printFileProperties(struct stat stats)
{
	struct tm dt;
	printf("\nFile Access: ");
	if(stats.st_mode & R_OK)
		printf("read ");
	if(stats.st_mode & W_OK)
		printf("write ");
	if(stats.st_mode & X_OK)
		printf("execute ");
	
	printf("Inode Number: %d\n",stats.st_ino);
	printf("UID: %d\n", stats.st_uid);
	printf("GID: %d\n", stats.st_gid);
	printf("Number of links: %d\n", stats.st_nlink);
	printf("Size in Bytes: %d\n", stats.st_size);
	printf("Blocks allocated: %d\n", stats.st_blocks);
}













