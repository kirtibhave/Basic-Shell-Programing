#!/bin/bash -x
read -p "enter number which unit conversion you want to perform" number
case $number in
	1)
		read -p "enter value in inch" inch
		feet=`expr $inch / 12.00`
		;;
	2)
		read -p "enter value in feet" feet
		inch=`expr 12.00 \* $feet`
		;;
	3)
		read -p "enter value in meter" meter
		feet=`expr 3.2808 \* $meter`
		;;
	4)
		read -p "enter value in feet" feet
		meter=`expr $feet / 3.2808`
		;;
	*)
		echo "invalid input"
		;;
esac
