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

