#!/usr/bin/env bash
# File: guessinggame.sh

echo "How many files are in the current directory?"
echo "Please enter guess:"
read response
num=$(ls | wc -l)

function guessinggame {
	while [[ $response -ne $num ]]
	do
		if [[ $response -gt $num ]]
		then
			echo "Incorrect, guess was too high. Please enter next guess:"
			read response
		elif [[ $response -lt $num ]]
		then
			echo "Incorrect, guess was too low. Please enter next guess:"
			read response	
		fi
	done
}

guessinggame

echo "That is correct. Congratulations!"
