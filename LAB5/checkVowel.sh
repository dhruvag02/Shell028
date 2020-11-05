#! /bin/sh
# Check for consonant or vowel
# Can be done using case statement also

if [ $# -ne 1 ]
then
	echo "Only one argument is required"

elif [ `echo $1| grep -o "[aeiou]"` ]
then
	echo "Entered Character is a vowel"
else
	echo "Entered Character is a consonant"
fi 
