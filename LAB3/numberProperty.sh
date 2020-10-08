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
