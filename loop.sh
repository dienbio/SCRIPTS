#!/bin/bash

#SCRIPTING with while, until
#While loop till condition is false
#Read file name from argument and print out all line

while read -r; do
	printf "%s\n" "$REPLY"
done <"$1"

#Game to guess a random number using util
#Until loop till condition is true

number=$(( $RANDOM % 10 ))
guess=
until [[ $guess -eq $number ]]; do
	read -p "Enter your guess number " guess
	if [[ $guess -lt $number ]]; then
		echo "Higher"
	elif [[ $guess -gt $number ]]; then
		echo "Lower"
	else
		echo "Found it"
	fi
done

#FOR LOOP
#for i in words; do command; done
for i in a list of word; do echo $i; done
#Result:
#a
#list
#of 
#word
for i in "a list of word"; do echo $i; done
#will only display 1 line.

#Change the filename extension
#Create a list of .txt file
touch {a..h}.txt

if [[ $# -ne 2 ]]; then
	echo "Please enter 2 argument: Eg .txt .zip"
	exit 1;
fi

for f in *"$1"; do
	"This is to spit filename extension and get the name of the file only"
	base=$( basename "$f" "$1" )
	echo mv "$f" "$base$2"
done

exit 0