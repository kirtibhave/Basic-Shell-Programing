#!/bin/bash -x
read -p  "enter a number" number
original=$number

#it is used to get palindrome number
function palindrome(){
reverse=0
X=0

while [[ $number -ne 0 ]]
do
  X=$(($number%10))
  reverse=$(($reverse*10+$X))
  number=$(($number/10))
done
}

palindrome

if [ $original -eq $reverse ]
then
	echo "no. is palindrome"
else
	echo "no. is not palindrome"
fi
