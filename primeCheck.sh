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
}
prime="$( isPrime $num )"
if [ $prime -eq 1 ]
then
	echo "$number is a not Prime Number."
else
	echo "$number is a Prime Number."
fi

