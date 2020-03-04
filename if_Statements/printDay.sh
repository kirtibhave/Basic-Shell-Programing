#!/bin/bash
read -p "enter day" date
read -p "enter month" month
read -p "enter year" year

year1=`expr"$year-((14-$month)/12))"|bc-|`
x=`expr"$year1+$year1/4-$year1/100+$year1/400"|bc-|`
month1=`expr"month+12*(14-$month)/12-2"|bc-|`
day1=`expr"$date+x+31*month1/12%7"|bc-|`

if [ $x -eq  0 ]
then
		echo "Sunday"
elif[ $x -eq  1 ]
then
		echo "Monday"
elif[ $x -eq  2 ]
then
      echo "Tuesday"
elif[ $x -eq  3 ]
then
      echo "Wednesday"
elif[ $x -eq  4 ]
then
      echo "Thrusday"
elif[ $x -eq  5 ]
then
      echo "Friday"
else[ $x -eq  0 ]

      echo "Saturday"
fi


#echo "$year"
echo "$x"
#echo "$month"
#echo "$day"

