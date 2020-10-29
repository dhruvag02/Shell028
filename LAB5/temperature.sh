#! /bin/sh
# Temperature Conversion

echo "Enter temperature in Fahrenheit"
read TEMP

TEM=`echo $TEMP - 32|bc`
echo "$TEM"
C=`echo  $TEM \* 5 / 9|bc`
echo "Temperature in Celcius: $C"

