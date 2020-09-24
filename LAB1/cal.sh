#! /bin/sh
# Use of BC

echo "Enter two numbers"
read num1
read num2

add=`echo $num1 + $num2|bc`
echo "Addition: $add"

subtract=`echo $num1 - $num2|bc`
echo "Subtraction: $subtract"

product=`echo $num1 \* $num2|bc`
echo "Multiplication: $product"

quoteint=`echo $num1 / $num2|bc`
echo "Division: $quoteint"

Enter two numbers
10
5
Addition: 15
Subtraction: 5
Multiplication: 50
Division: 2

