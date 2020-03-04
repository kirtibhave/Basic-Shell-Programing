#!/bin/bash -x
number1=$((RANDOM % 900 + 100))
number2=$((RANDOM % 900 + 100))
number3=$((RANDOM % 900 + 100))
number4=$((RANDOM % 900 + 100))
number5=$((RANDOM % 900 + 100))
max=$number1
min=$number1
#for maximum number
if [ $max -le $number2 ]
then
	max=$number2
fi
if [ $max -le $number3 ]
then
	max=$number3
fi
if [ $max -le $number4 ]
then
	max=$number4
fi
if [ $max -le $number5 ]
then
	max=$number5
fi
#for minimum number
if [ $min -ge $number2 ]
then
	min=$number2
fi
if [ $min -ge $number3 ]
then
	min=$number3
fi
if [ $min -ge $number4 ]
then
	min=$number4
fi
if [ $min -ge $number5 ]
then
	min=$number5
fi
echo "$number1 $number2 $number3 $number4 $number5"
echo "Max = $max"
echo "Min= $min"
