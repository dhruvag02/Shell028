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
	
