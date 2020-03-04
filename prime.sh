#!/bin/bash 
read -p "enter number" num
temp=0
function isPrime(){
local n=$1
for(( i=1;i<$n/2;i++ ))
do
	if [ $(($n%$i)) -eq 0 ]
	then
		temp=1
	fi
done
		echo $temp
}
prime="$( isPrime $num )"
	if [ $prime -eq 1 ]
	then
		echo "not prime no."
	else
		echo "prime."
	fi

