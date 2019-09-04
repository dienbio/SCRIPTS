#!/bin/bash
#Print out line of charactors
#First argument will be the lenght of characters, second will be character, if empty wil assign =

if [[ ! $1 ]]; then
	echo "Please type in 2 argument" >&2
	exit 1
fi

#Check if first argument is a number.
#Need to remember this
if [[ $1 =~ ^[0-9]+$ ]];then
	length=$1
else
	echo "First argument should be number" >&2
	exit 1
fi

char="="
if [[ $2 ]]; then
	char="$2"
fi

line=
for (( i=0; i<length; i++ )); do
	line="$line$char"
done
printf "$line\n"
exit 0
