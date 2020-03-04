#!/bin/bash -x
function myFun(){
	echo $1
}

result="$( myFun $((RANDOM%2)) )"
if [ $result == 1 ]
then
	echo "success"
else
	echo "faiure"
fi 
