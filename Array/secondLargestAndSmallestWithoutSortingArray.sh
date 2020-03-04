#!/bin/bash -x

# Generating 10 Random Numbers
for((i=0;i<10;i++))
do
	arr[i]=$((RANDOM % 900 + 100))
done
echo "All Numbers = ${arr[@]}"

#Finding Second Highest Number
firstMax=${arr[0]}
secondMax=${arr[0]}

for((i=0;i<10;i++))
do
	if((arr[i] > firstMax ))
	then
		secondMax=$firstMax
		firstMax=${arr[i]}
	elif((arr[i] > $secondMax && arr[i] != $firstMax ))
	then
		secondMax=${arr[i]}
	fi
done

echo "Highest Number = $firstMax"
echo "Second Highest Number = $secondMax"


#Finding Second Minimum Number
firstMin=${arr[0]}
secondMin=${arr[0]}

for((i=0;i<10;i++))
do
	if((arr[i] < firstMin ))
	then
		secondMin=$firstMin
		firstMin=${arr[i]}
	elif((arr[i] < $secondMin && arr[i] != $firstMin ))
	then
		secondMin=${arr[i]}
	fi
done

echo "Smallest Number = $firstMin"
echo "Second Smallest Number = $secondMin"


