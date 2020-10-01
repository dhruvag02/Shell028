#! /bin/sh
# Use of EXPR Command

echo "Enter two numbers"
read NUM1
read NUM2

echo "Addition: `expr $NUM1 + $NUM2`"
echo "Subtraction: `expr $NUM1 - $NUM2`"
echo "Multiplication: `expr $NUM1 \* $NUM2`"
echo "Division: `expr $NUM1 / $NUM2`"
echo "Modulus: `expr $NUM1 % $NUM2`"

Enter two numbers
10
5
Addition: 15
Subtraction: 5
Multiplication: 50
Division: 2
Modulus: 0
