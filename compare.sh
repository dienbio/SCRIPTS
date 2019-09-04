#!/bin/bash
#Script to compare number of file in 2 existing folders

#Check if argument is 2 folders

if [[ $# -ne 2 ]]; then
    echo "Please type in 2 existing folder"
    exit 1
fi

#check if 2 folder existed?
if [[ ! -d $1 ]]; then
    echo "Folder $1 is not existed. Again"
    exit 1
fi

if [[ ! -d $2 ]]; then
    echo "Folder $2 is not existed. Again"
    exit 1
fi

dir1="$1"
dir2="$2"

#Get the number of files in 2 folder

count_1=$(ls -A1 "$dir1" | wc -l)
count_2=$(ls -A1 "$dir2" | wc -l)
if [[ $count_1 -eq $count_2 ]]; then
    echo "$dir1 and $dir2 have same files"
else
    echo "$dir and $dir2 doesnt have same files"
fi

exit 0