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
