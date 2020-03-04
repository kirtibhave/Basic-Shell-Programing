#!/bin/bash -x
echo "**********Welcome to Gambling Simulator Problem**********"
#CONSTANTS
STAKE_PER_DAY=100
BET_PER_GAME=1
WIN=1
LOSE=0
MINIMUM_AMOUNT=50
MAXIMUM_AMOUNT=150

#VARIABLES
cash=$STAKE_PER_DAY

function calculateGambler(){
	while [[ $cash -ne $MINIMUM_AMOUNT && $cash -ne $MAXIMUM_AMOUNT ]]
	do
 		RandomCheck=$((RANDOM%2))
			if [ $WIN -eq $RandomCheck ]
			then
				cash=$(($cash+$BET_PER_GAME))
			else
				cash=$(($cash-$BET_PER_GAME))
			fi
	done
}
calculateGambler
#calculateTotalAmount
if [ $cash -ge $MAXIMUM_AMOUNT ]
then
   echo "YOU WON,WOULD RESIGN FOR THE DAY"
else
   echo "YOU LOOSE,WOULD RESIGN FOR THE DAY"
fi



