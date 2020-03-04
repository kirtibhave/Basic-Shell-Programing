#!/bin/bash -x
read -p "enter num" num
sum=1
readonly TOTAL=1
for(( i=1;i<=$TOTAL;i++ ))
do
	sum=$(($sum+1/$i))
done
	echo "sum is $sum"
