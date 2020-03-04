#!/bin/bash 

# Generating 10 Random Numbers
for((i=0;i<10;i++))
do
	arr[i]=$((RANDOM % 900 + 100))
done

echo "All Numbers = ${arr[@]}"

#Sort Function code
for((i=0;i<10;i++))
do
	for((j=i+1;j<10;j++))
	do
		if((arr[i] > arr[j] ))
		then
			temp=${arr[j]}
			arr[j]=${arr[i]}
			arr[i]=$temp
		fi
	done
done

echo "Array after Sort ${arr[@]}"

echo "Second Highest= ${arr[8]}"
echo "Second Minimum= ${arr[1]}"

