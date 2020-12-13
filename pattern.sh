#!/bin/bash -x

echo "User Registration"

read -p "Enter the First name: " name
read -p "Enter the Last name: " lastname
pattern="^[A-Z][a-zA-Z]{2,}"
pattern1="^[A-Z][a-zA-Z]{2,}"

if [[ $name =~ $pattern && $lastname =~ $pattern1 ]]
then
	echo "$name" "$lastname"
else
	echo "please enter valid name"
fi
