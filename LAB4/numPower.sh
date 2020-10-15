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

Enter a number
4
Enter the power
0
4 to the Power 0 is 1

Enter a number
0
Enter the power
3
0 to the Power 3 is 0

Enter a number
2
Enter the power
4
2 to the Power 4 is 16


