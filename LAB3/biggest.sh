#! /bin/sh
#Biggest of three numbers using test and if ladder

echo "Enter three numbers"
read NUM1 NUM2 NUM3

echo "$NUM1 $NUM2 $NUM3"

if test $NUM1 -gt $NUM2
then
	if test $NUM1 -gt $NUM3
	then
		echo "Greatest Number: $NUM1"
	fi

elif test $NUM2 -gt $NUM1
then
	if test $NUM2 -gt $NUM3
	then
		echo "Greatest Number: $NUM2"
	fi
else
echo "Greatest Number: $NUM3"
fi

Enter three numbers
40 99 2
40 99 2
Greatest Number: 99

-1 -30 -2
-1 -30 -2
Greatest Number: -1

20 45 -30
20 45 -30
Greatest Number: 45
