#!/bin/bash -x
read -p "enter number" number
function palindrome(){
original=$number
rev=0
R=0
while [ $number -ne 0 ]
do
	R=$((number%10))
	rev=$(($rev*10+$R))
	number=$(($number/10))
done
}

palindrome
if [ $original -eq $rev ]
then
	echo "palindrome"
else
	echo "not palindrome"
fi

#!/bin/bash -x

echo -n "enter a number"
read  num
original2=$num
function palindrome(){
rev=0
R=0
while [ $num -ne 0 ]
do
  R=$(($num%10))
  rev=$(($rev*10+$R))
  num=$(($num/10))
done
}
#palindrome $num
original1= "$( palindrome $num)"
if [ $original2 -eq $original1 ]
then
  echo "no. is palindrome"
else
  echo "no. is not palindrome"
fi

