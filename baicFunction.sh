#!/bin/bash -x
function bahu(){
	echo "hello $1"
}
bahu "John"

bahu1(){
	echo "hiii $1"
}

bahu1 "kkkl"

bahu2(){
	local result="oj"
	echo $result;
}
reason="$(bahu2)"
