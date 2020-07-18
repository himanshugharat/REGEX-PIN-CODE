#!/bin/bash -x
shopt -s extglob
pinCode=0
function validatePinCode() {
	pin=$1
	regexPattern="^[1-9]{1}[0-9]{5}$"
	if [[ $pin =~ $regexPattern ]]
	then
		echo "Valid"
	else
		echo "Invalid"
	fi
}
function enterPinCode() {
	read -p "Enter PIN Code: " pinCode
	validatePinCode $pinCode
}
enterPinCode
