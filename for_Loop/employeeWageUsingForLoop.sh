#!/bin/bash -x 
isFullTime=1
isPartTime=2
empRate=20
numWorkingDays=20
totalSalary=0

randomCheck=$(($RANDOM%3))
for(( day=1;day<=numWorkingDays;day++ ))
do
	case $randomCheck in
		$isFullTime)
				empHrs=8;;
		$isPartTime)
				empHrs=4;;
		*)
				empHrs=0;;
	esac
			salary=$(($empHrs*$empRate))
			totalSalary=$(($totalSalary+$salary))
		echo "salary is:$salary"
		echo "total salary is:$totalSalary"
done
