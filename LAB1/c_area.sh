#! /bin/sh
# Area of a Circle
echo "Enter Radius of a circle: "
read r
area=`echo 3.1415 \* $r \* $r|bc`
echo "Area of a circle: $area"
