#!/bin/bash
temp=0
read -p "Enter number: " num
function isPrime(){
local n=$1
	for (( i=2; i<=$n/2; i++ ))
	do
		net=$(( $n % $i ));
			if [ $net -eq  0 ]
			then
				temp=1
   		fi
	done
   	 	echo $temp
paindrome

prime="$( isPrime $num )"

original2=$num
function palindrome(){
rev=0
R=0
while [[ $num -ne 0 ]]
do
  R=$(($num%10))
  rev=$(($rev*10+$R))
  num=$(($num/10))
done
}
palindrome
	if [ $original2 -eq $rev ]
	then
		echo "no. is palindrome"
	else
		echo "no. is not palindrome"
	fi

© 2020 GitHub, Inc.



	if [ $prime -eq 1 ]

	then
		echo "$number is a not Prime Number."
	else

		echo "$number is a Prime Number."
	fi

