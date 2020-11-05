#! /bin/sh
# Perform Arithmetic operations on a set of two numbers using Case statement

echo "Menu is displayed....."
echo "1. Addition\t2. Subtraction\t3. Multiplication\t4. Division\t5. Modulus"

J=1

while [ $J -ne 0 ]
do

echo "Enter two numbers"
read NUM1 NUM2

echo "Enter Choice"
read CH

case $CH in

1) echo "Addition: `expr $NUM1 + $NUM2`"
;;

2) echo "Subtraction: `expr $NUM1 - $NUM2`"
;;

3) echo "Multiplication: `expr $NUM1 \* $NUM2`"
;;

4) echo "Division: `expr $NUM1 / $NUM2`"
;;

5) echo "Modulus: `expr $NUM1 % $NUM2`"
;;

*) echo "Enter a valid choice"
;;

esac

echo "Enter other than '0' to continue...."
read J
done


Menu is displayed.....
1. Addition	2. Subtraction	3. Multiplication	4. Division	5. Modulus
Enter two numbers
5 2
Enter Choice
1
Addition: 7
Enter other than '0' to continue....
0





Menu is displayed.....
1. Addition	2. Subtraction	3. Multiplication	4. Division	5. Modulus
Enter two numbers
-1 -2
Enter Choice
3
Multiplication: 2
Enter other than '0' to continue....
1
Enter two numbers
3 -5
Enter Choice
2
Subtraction: 8
Enter other than '0' to continue....
1
Enter two numbers
5 2
Enter Choice
5
Modulus: 1
Enter other than '0' to continue....
0




Menu is displayed.....
1. Addition	2. Subtraction	3. Multiplication	4. Division	5. Modulus
Enter two numbers
10 -2
Enter Choice
4
Division: -5
Enter other than '0' to continue....
0
