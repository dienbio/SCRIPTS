#!/bin/bash
echo "Are you sure (Y/N)?"
answer=
while [[ ! $answer ]]; do
    read -r -n 1 -s answer
    if [[ $answer = [Yy] ]]; then
        answer="yes"
    elif [[ $answer = [Nn] ]]; then
        answer="no"
    else
        echo "Wrong answer"
        exit 1
    fi
done
printf "answer is %s\n" $answer