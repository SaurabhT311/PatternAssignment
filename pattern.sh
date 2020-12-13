#!/bin/bash -x

echo "User Registration"

read -p "Enter the First name: " name
read -p "Enter the Last name: " lastname
read -p "enter User Email ID: " emailid
read -p "enter the  mobile no.: " phoneno

pattern="^[A-Z][a-zA-Z]{2,}"
pattern1="^[A-Z][a-zA-Z]{2,}"
emailpattern="^[a-zA-z]+([._][a-z0-9]+)?@[a-z]+.[a-z]+([.][a-z]+)$"
mobilepattern="^[0-9][1-9]" "[0-9]{10}"

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
