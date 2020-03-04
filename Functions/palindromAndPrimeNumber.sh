#!/bin/bash

function isPrime() {
local num=$1
local flag=0
	for((i=2;i<=num/2;i++))
	do
		if [[ $((num % i)) -eq 0 ]]
		then
			flag=1
			break
		fi
	done

	if [ $flag -eq 1 ]
	then
		echo "Number is Not Prime"
	else
		echo "Number is Prime"
	fi
}

#it is used to get palindrome number
function isPalindrome(){
reverse=0
X=0
local num=$1
	while [[ $num -ne 0 ]]
	do
		X=$(($num%10))
		reverse=$(($reverse*10+$X))
		num=$(($num/10))
	done

if [ $num -eq $reverse ]
then
	echo "no. is palindrome"
else
	echo "no. is not palindrome"
fi
}

function getValue() {
	local num
	read -p "Enter Number" num
	isPrime $num
	isPalindrome $num
}
getValue




