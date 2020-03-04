#!/bin/bash 
declare -A dict
dictValue=1
while [[ dict[$dictValue] -ne 10  ]]
do
	dictValue=$((RANDOM % 6 + 1))
	dict["$dictValue"]=$((${dict["$dictValue"]}+1))

done
echo "${!dict[@]} value= ${dict[@]}"

max=${dict[1]}
min=${dict[1]}
for((i=2;i<7;i++))
do
	if [[ ${dict[$i]} -gt $max  ]]
	then
		max=${dict[$i]}
		maxindex=$i
	fi
	if [[ ${dict[$i]} -lt $min  ]]
	then
		min=${dict[$i]}
		minindex=$i
	fi
done

echo "$max occure $maxindex"
echo "$min occure $minindex"
