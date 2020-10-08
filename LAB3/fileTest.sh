#! /bin/sh
# File test 

echo "Programme: $0"
echo "Number of arguments specified: $#"
echo "Arguments are: $*"
if test $# -eq 2
then
	if test -f $1
	then
		echo "Attributes of 1st file are displayed"
		ls -l $1
	else
		echo "$1 Not a file name"
	fi
	if test -f $2
	then
		echo "Attributes of 2nd file are displayed"
		ls -l $2
	else
		echo "$2 Not a file name"
	fi
	
else
	echo "specify two arguments aa two files"
fi


Programme: fileTest.sh
Number of arguments specified: 2
Arguments are: fil2 file
Attributes of 1st file are displayed
-rw-r--r-- 1 dhruv dhruv 16 Oct  1 14:36 fil2
Attributes of 2nd file are displayed
-rw-r--r-- 1 dhruv dhruv 115 Oct  8 15:05 file

Programme: fileTest.sh
Number of arguments specified: 2
Arguments are: fil2 file2
Attributes of 1st file are displayed
-rw-r--r-- 1 dhruv dhruv 16 Oct  1 14:36 fil2
file2 Not a file name

Programme: fileTest.sh
Number of arguments specified: 0
Arguments are: 
specify two arguments aa two files

	
