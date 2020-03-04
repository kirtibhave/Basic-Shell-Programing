#!/bin/bash -x

function farToCel() {
read -p "Enter Value between 32 to 212 F" degF
	if [[ $degF -le 32 || $degF -ge 212  ]]
	then
		echo "Enter valid input"
	else 
		degC=` echo "scale=2;($degF - 32) *5/9" | bc `
		echo "$degF Far = $degC Cel" 
	fi
}

function celToFar() {
read -p "Enter Value between 0 to 100 Cel" degC
	if [[ $degC -le 0 || $degC -ge 100  ]]
	then
		echo "Enter valid input"
	else 
		degF=` echo "scale=2;($degC * 9/5) + 32" | bc `
		echo "$degC Cel = $degF Far" 
	fi
}


function userChoice() {
	echo -e "1 for Convert Far to Cel \n2 for convert Cel to Far"
	read value
	
	case $value in
			1)
				farToCel
			;;
			2)
				celToFar
			;;
			*)
				echo "Wrong Input"
			;;
	esac
}

userChoice

