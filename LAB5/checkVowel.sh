#! /bin/sh
# Check for consonant or vowel
# Using command line argument
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


$ sh checkVowel.sh 
Only one argument is required

$ sh checkVowel.sh a
Entered Character is a vowel

$ sh checkVowel.sh d
Entered Character is a consonant
