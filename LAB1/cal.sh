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
