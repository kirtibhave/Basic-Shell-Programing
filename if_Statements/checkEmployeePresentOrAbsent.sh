#!/bin/bash -x
#isPresent=1
randomCheck=$(( RANDOM%2 ))
if [ $randomCheck -eq 1 ]
then
		echo "employee is present"
else
		echo "employee is absent"
fi
