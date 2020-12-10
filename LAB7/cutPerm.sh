#!/bin/sh
#Demonstrate Cut command

echo "Number of arguments specified: $#"
echo "Arguments: $*"

if [ $# -ne 2 ]
then
	echo "Two arguments are required"
else
	if [ -f $1 ] && [ -f $2 ]
	then
		echo "Both arguments are file"
		P1=`ls -l $1|cut -c 2-10`
		P2=`ls -l $2|cut -c 2-10`
		if [ $P1 = $P2 ]
		then
			echo "Both files have same permissions"
			echo "$P1"
		else
			echo "Permissions are different"
			echo "Permission of file 1:"
			echo ""
			echo "$P1"
			echo "Permission of file 2:"
			echo ""
			echo "$P2"
		fi
	else
		echo "Both arguments are not file"
	fi
fi

$ sh cutPerm.sh sortfile sortfile2
Number of arguments specified: 2
Arguments: sortfile sortfile2
Both arguments are file
Permissions are different
Permission of file 1:

rw-r--r--
Permission of file 2:

rwxr--r--

$ sh cutPerm.sh sortfile sortfile3
Number of arguments specified: 2
Arguments: sortfile sortfile2
Both arguments are file
Both files have same permissions
rw-r--r--

$ sh cutPerm.sh sortfile Dirtest
Number of arguments specified: 2
Arguments: sortfile Dirtest
Both arguments are not file


$ sh cutPerm.sh
Number of arguments specified: 0
Arguments: 
Two arguments are required



