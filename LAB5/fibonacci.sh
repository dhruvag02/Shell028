#! /bin/sh
# Fibonacci Sequence using while loop

echo "Enter nth number"
read NUM

if [ $NUM -lt 0 ]
then
	echo "Enter positive numbers"
fi

#if [ $NUM -eq 0 ]
#then
#	echo "0"
#fi

I=0
A=0
B=1
echo "\n"
while [ $I -le $NUM ]
do 
	echo "$A "
	N=`expr $A + $B`
	A=$B
	B=$N
	I=`expr $I + 1`
done

