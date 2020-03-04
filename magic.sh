#!/bin/bash
read -p "enter number" num
low=1
high=100
mid=$(($low+$high/2))

while [[ $low -lt  $high ]]
do	
	if[ $mid -lt $num ]
	then
      echo "eiement1 is present"
	break
	elif [ $mid -gt $nun ]
	then
	  $low=$[ $mid+1 ]
		echo "element2 is present"
	break
	elif [	$mid -eq $num ]
   then
         echo $num
         break
		echo "ele3 is present"
	else
    echo $high=$[ $mid -1 ]
    $mid=($low + $high)/2
	fi
done

if [ $low>$high ]
then
     echo "element is not present"
fi
