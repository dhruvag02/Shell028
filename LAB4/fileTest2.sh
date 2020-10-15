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

