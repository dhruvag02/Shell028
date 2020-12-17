#include<stdio.h>
#include<unistd.h>
#include<sys/stat.h>
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


Enter the path of file: sortfile //Not a symbolic Link

File Access: read Inode Number: 393244
UID: 1000
GID: 1000
Number of links: 1
Size in Bytes: 88
Blocks allocated: 8

File Access: read Inode Number: 393244
UID: 1000
GID: 1000
Number of links: 1
Size in Bytes: 88
Blocks allocated: 8

// Both stat() and lstat() functions have same output
	
	
Enter the path of file: shortcutfile  //Symbolic Link

File Access: read Inode Number: 393222
UID: 1000
GID: 1000
Number of links: 1
Size in Bytes: 16
Blocks allocated: 8

File Access: read write execute Inode Number: 408157
UID: 1000
GID: 1000
Number of links: 1
Size in Bytes: 4
Blocks allocated: 0


// So, stat() function shows actual file it is pointing to and lstat() function shows 
// attributes of symbolic link file






