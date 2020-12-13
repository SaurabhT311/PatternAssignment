#!/bin/bash -x

read -p "Enter the First name: " name
pattern="^[A-Z][a-zA-Z]{2,}"

if [[ $name =~ $pattern ]]
then
	echo "$name"
else
	echo "invalid name"
fi
