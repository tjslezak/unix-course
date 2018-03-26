#!/usr/bin/env bash
# File: guessinggame.sh

function nfpwd () {
ls | wc -l
}

nf="$(nfpwd)"
#echo $nf

echo "Guess how many files are in the current directory and then press Enter:"
read response

if [[$response -eq $nf]] 
then
	echo "You guessed correctly!"
elif [[$response -gt $nf]]
then
	echo "You guessed too high. Guess again!"
elif [[$response -lt $nf]]
then
	echo "You guessed too low. Guess again!"
else 
	echo "You guessed incorrectly. Guess again!"
fi

while [ $response -ne $nf ]
do
echo "Enter your guess: "

done 
