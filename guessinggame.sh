#!/usr/bin/env bash
# File: guessinggame.sh

clear
echo "Guess how many files are in the current directory and then press Enter:"
read response

function nfpwd {
	local number=$(ls | wc -l)-1
	echo $number
}

nf=$(nfpwd)

while [[ $response -ne $nf ]]
do
	if [[ $response -gt $nf ]]
	then
		echo "You guessed too high. Guess again!"
	elif [[ $response -lt $nf ]]
	then
		echo "You guessed too low. Guess again!"
	else 
		echo "You guessed incorrectly. Integers only!"
	fi
	echo
	echo "Try another guess: "
	read response
done 

echo "Contgrats! You guessed correctly!"
