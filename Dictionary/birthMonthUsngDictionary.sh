#!/bin/bash -x
declare -A Month

for (( i=0;i<50;i++ ))
do
	month=$(($((RANDOM %12))+1))
	Month[Person:"$i"]=$month
done

for (( i=1; i<=12; i++ ))
do
	echo "**month:$i**"
	for (( j=1;j<50;j++ ))
	do
		if [[ ${Month[Person:"$j"]} -eq $i ]]
		then
			echo "Person:"$j
		fi
	done
done

