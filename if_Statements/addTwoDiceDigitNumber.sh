#!/bin/bash -x
firstDiceRandom=$((RANDOM%6+1))
secondDiceRandom=$((RANDOM%6+1))
echo "first dice value: $firstDiceRandom"
echo "second dice value: $secondDiceRandom"
result=$(($firstDiceRandom+$secondDiceRandom))
echo "result is $result"
