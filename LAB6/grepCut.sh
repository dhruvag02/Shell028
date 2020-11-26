#! /bin/sh
# Script for demonstrating filter commands like grep and cut

VAR=`grep -c "$1" /etc/passwd`
if [ $VAR -eq 0 ]
then
	echo "Invalid Name"
else
	echo "List of Home directories: "
	grep "$1" /etc/passwd|cut -d ":" -f 6
fi

$ sh grepCut.sh gani
Invalid Name

$ sh grepCut.sh dhruv
List of Home directories: 
/home/dhruv

