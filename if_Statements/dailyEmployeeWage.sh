#!/bin/bash -x
isPresent=1
randomCheck=$((RANDOM%2))
if [ $isPresent -eq $randomCheck ];
then
		empRate=20;
		empHrs=8;
		salary=$(($empHrs*$empRate));
else
		salary=0;
fi
