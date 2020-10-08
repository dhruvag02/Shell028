#! /bin/sh
# Demonstrating use of if ladder

echo "Enter a number"
read NUM
if test $NUM -gt 0
then
echo "Positive Number"
elif test $NUM -lt 0
then
echo "Negative Number"
else
echo "Number entered is 0"
fi

Enter a number
-11
Negative Number

Enter a number
0
Number entered is 0

Enter a number
2
Positive Number
