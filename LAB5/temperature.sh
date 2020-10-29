#! /bin/sh
# Temperature Conversion

echo "Enter temperature in Fahrenheit"
read TEMP

TEM=`echo $TEMP - 32|bc`
echo "$TEM"
C=`echo  $TEM \* 5 / 9|bc`
echo "Temperature in Celcius: $C"



Enter temperature in Fahrenheit
-40
-72
Temperature in Celcius: -40

Enter temperature in Fahrenheit
30
-2
Temperature in Celcius: -1


Enter temperature in Fahrenheit
32
0
Temperature in Celcius: 0


