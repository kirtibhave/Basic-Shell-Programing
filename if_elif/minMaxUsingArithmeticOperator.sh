 #!/bin/bash -x 
read -p "enter first number" a
read -p "enter second number" b
read -p "enter third number" c

result1=`echo "scale=2; $a+$b*$c" | bc`
result2=`echo "scale=2; ($a%$b)+$c" | bc`
result3=`echo "scale=2; $c+$a/$b" | bc`
result4=`echo "scale=2; $a*$b+$c" | bc`


if [[ $result1 -ge $result2 &&  $result1 -ge $result3 && $result1 -ge $result4  ]]
then
	echo "operation1 is greater"
elif [[  $result2 -ge $result1 &&  $result2 -ge $result3 && $result2 -ge $result4 ]]
then
   echo "operation2 is greater"
elif [[  $result3 -ge $result1 &&  $result3 -ge $result2 && $result3 -ge $result4 ]]
then
   echo "operation3 is greater"
elif [[  $result4 -ge $result1 &&  $result4 -ge $result2 && $result4 -ge $result3 ]]
then
   echo "operation4 is greater"
fi


if [[ $result1 -le $result2 &&  $result1 -le $result3 && $result1 -le $result4  ]]
then
   echo "operation1 is smaller"
elif [[  $result2 -le $result1 &&  $result2 -le $result3 && $result2 -le $result4 ]]
then
   echo "operation2 is smaller"
elif [[  $result3 -le $result1 &&  $result3 -le $result2 && $result3 -le $result4 ]]
then
   echo "operation2 is smallerr"
elif [[  $result4 -le $result1 &&  $result4 -le $result2 && $result4 -le $result3 ]]
then
   echo "operation2 is smaller"
fi





