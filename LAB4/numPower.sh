#! /bin/sh
# Find power of a number

echo "Enter a number"
read NUM
echo "Enter the power"
read POW
C=1
RES=1

if test $POW -eq 0
then
	RES=1
fi

if test $NUM -eq 0
then
	RES=0
fi

if [ $NUM -gt 0 ] && [ $POW -gt 0 ]
then
	while [ $C -le $POW ]
	do
		RES=$(($RES * $NUM))
		C=$(($C + 1))
	done
fi
echo "$NUM to the Power $POW is $RES"
