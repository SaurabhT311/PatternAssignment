#!/bin/bash -x
shopt -s extglob
echo "User Registration"

read -p "Enter the First name: " name
read -p "Enter the Last name: " lastname
read -p "enter User Email ID: " emailid
read -p "enter the  mobile no.: " phoneno
read -p "enter the password with minimum length 8: " pass

pattern="^[A-Z][a-zA-Z]{2,}"
pattern1="^[A-Z][a-zA-Z]{2,}"
emailpattern="^[a-zA-z]+([._][a-z0-9]+)?@[a-z]+.[a-z]+([.][a-z]+)$"
mobilepattern="^[0-9][1-9]" "[0-9]{10}"
minimumpasswordlength="[\$.#@a-zA-Z0-9]{8}[a-zA-Z]*"
passwordInUpperCase="[a-zA-Z]*[A-Z]+[a-zA-Z]*"
passInNumber="[a-zA-Z0-9]*[0-9]+[a-zA-Z0-9]*"
passwordInSpecialCharacter="[a-zA-Z0-9]*[#|\$|\@|\!]+[a-zA-Z0-9]*"

if [[ $name =~ $pattern && $lastname =~ $pattern1 ]]
then
	echo "$name" "$lastname"
else
	echo "please enter valid name"
fi

if [[ $emailid =~ $emailpattern ]]
then
	echo "$emailid"
else
	echo "enter valid Email-ID"
fi

if [[ $phoneno =~ $mobilepattern ]]
then
	echo "+$phoneno"
else
	echo "please enter valid phone number with correct country code"
fi

if [[ $pass =~ $minimumpasswordlength ]]
then
	if [[ $pass =~ $passwordInUpperCase ]]
	then
		if [[ $pass =~ $passInNumber ]]
		then
			if [[ $pass =~ $passwordInSpecialCharacter ]]
			then
				echo "password is: " $pass*****
			else
				echo "Please enter special character in password"
			fi
		else
			echo "please enter numeric value in password"
	fi
	else
		echo "please enter valid password"
	fi
	else
		echo "Please enter minimum 8 character password"
fi
