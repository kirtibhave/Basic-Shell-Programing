#!/bin/bash -x
randomValue1=$((RANDOM%100+10))
randomValue2=$((RANDOM%100+10))
randomValue3=$((RANDOM%100+10))
randomValue4=$((RANDOM%100+10))
randomValue5=$((RANDOM%100+10))
sum=$(($randomValue1+$randomValue2+$randomValue3+$randomValue4+$randomValue5))
average=$(($sum/5)) 

echo "sum is: $sum"
echo "average is  $average"
