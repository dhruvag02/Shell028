#! /bin/sh
# Use of loop, Sum of even numbers

echo "Enter a number"
read NUM
SUM=0
I=2
while test $I -le $NUM
do 
	SUM=`expr $SUM + $I`
	I=`expr $I + 2`
done
echo "Sum of even numbers upto $NUM: $SUM"

Enter a number
7
Sum of even numbers upto 7: 12

Enter a number
5
Sum of even numbers upto 5: 6

 
