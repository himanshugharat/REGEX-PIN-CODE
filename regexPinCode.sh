#!/bin/bash -x
shopt -s extglob
pinCode=0
function validatePinCode() {
	read -p "Enter PIN Code: " pinCode
	regexPattern="^[1-9]{1}[0-9]{2}\s?[0-9]{3}$"
	if [[ $pinCode =~ $regexPattern ]]
	then
		echo "Valid"
	else
		echo "Invalid"
	fi
}

validatePinCode
