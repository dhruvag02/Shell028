#!/bin/sh
#Demonstrate tr command

echo "Enter File Name"
read FILENAME

#COUNT=`tr '[a-z]' '[A-Z]' < $FILENAME|tr -sc 'AEIOU' '[\012*]'|sort|uniq -c`
#echo "`wc -c $COUNT`"

cat $FILENAME | tr -dc "aeiouAEIOU" |wc -c
