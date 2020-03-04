#!/bin/bash 
#read -p "enter number" n
n=$1
pow=$2
for((i=1;i<=$1;i++))
do
	ec=$(($2**$i))
	echo "$ec"
done
