#! /bin/sh
# Use of file test

if test $# -ne 1
then 
	echo "Incorrect arguments specified on command line"
else
	if test -f $1
	then
		echo "File Name is entered"
		echo "Details of file is displayed"
		ls -l $1
	else if test -d $1
	then
		echo "Name is a directory"
		echo "Details are displayed"
		ls -l $1
	else
		echo "You entered incorrect argument"
	fi
fi
fi


$ sh fileTest2.sh
Incorrect arguments specified on command line

$ sh fileTest2.sh DirTest
Name is a directory
Details are displayed
total 0

$ sh fileTest2.sh file
File Name is entered
Details of file is displayed
-rw-r--r-- 1 dhruv dhruv 115 Oct  8 15:05 file

$ sh fileTest2.sh fil
You entered incorrect argument


