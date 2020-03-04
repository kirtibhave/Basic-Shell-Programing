#!/bin/bash -x
day=$1
month=$2
year=$3

y=$((year -((14 - month)) / 12))
x=$((y + y/ 4 - y / 100 + y / 400))
m=$((month + 12 * ((((14 - month )) / 12)) - 2))
d=$((((day + x  + 31*m / 12 ))%7))

if [ $d -eq 0 ]
then
  echo "Sunday"
elif [ $d -eq 1 ]
then
  echo "Monday"
elif [ $d -eq 2 ]
then 
	echo "Tuesday"
elif [ $d -eq 3 ]
then
	echo "Wednesday"
elif [ $d -eq 4 ]
then
	echo "Thursday"
elif [ $d -eq 5 ]
then 
	echo "Friday"
else
	echo "Saturday"
fi
