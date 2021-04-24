#!/bin/bash

#Header

echo "Excelent password generator"
echo "==========================="
echo "RECOMMENDED LENGTH - 20 CHARACTERS"
echo "Enter the length of the password:"

#Creating password

read PASS_LENGTH

i=1

for p in $(seq 1 5);
do
	echo "Password option $i:"
	openssl rand -base64 48 | cut -c1-$PASS_LENGTH
	if [ $i -ne 5 ];then printf "\n";fi
	i=$((i+1))
done



