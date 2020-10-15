#! /bin/sh
# Use of Loop, Factorial of a number

echo "Enter a number"
read NUM
if test $NUM -lt 0
then
	echo "Negative Numbers are not allowed"
else
	I=2
	RES=1
	echo $RES $I $NUM
	while test $I -le $NUM
	do 
		RES=`echo $RES \* $I|bc`
		I=`expr $I + 1`
	done
	echo "Factorial of number: $RES"
fi
