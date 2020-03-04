#!/bin/bash -x
#readonly CELSIUSTOFAHRENHEIT=1
#readonly FAHRENHEITTOCELSIUS=2
read -p "enter choice:" choice

#it is used to convert celsius to fahrenheit
function celsiusToFahrenheitConversion(){
read -p "enter value in celsius" degC
	if [[ $degC -ge 0 || $degC -le 100 ]]
	then
		degF=` echo " scale=2; ($degC *9/5) + 32 " | bc `
		echo "fahreneheit to celsius is $degF"
	else
		echo "enter proper input"
	fi
}

#it is used to convert fahrenheit to Celsius
function fahrenheitToCelsiusConversion(){
read -p "enter value in Farenheit" degF
	if [[ $degF -ge 32 || $degF -le 212 ]]
	then
		degC=` echo " scale=2; ($degF - 32) *5/9 " | bc `
		echo "celsius to fahreneheit is $degC"
	else
		echo "enter proper input"
	fi
}

case $choice in
1)
   celsiusToFahrenheitConversion
   ;;
2)
   fahrenheitToCelsiusConversion
   ;;
*)
   echo "enter proper choice"
esac

