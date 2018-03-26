#!/usr/bin/env bash
# File: guessinggame.sh

echo "Guess how many files are in the current directory and then press Enter:"
read response
pwdir = echo | pwd
nfpwdir = grep pwd | wc -l

if [[$response -eq nfpwdir]] 
then
	echo "You guessed correctly!"
elif [[$response -gt nfpwdir]]
then
	echo "You guessed too high. Guess again!"
elif [[$response -lt nfpwdir]]
then
	echo "You guessed too low. Guess again!"
else 
	echo "You guessed incorrectly. Guess again!"
fi

