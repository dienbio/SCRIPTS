#!/bin/bash
# Simple note taking script
# Author: Dien Bio
#Usage: ./takenote.sh ARGUMENT, vi du ./takenote.sh shopping
#get the date
date=$(date)

#get the topic, note $1 is standard output, and will save output when you type in argument $1
topic="$1"
filename="/home/dienbio/SCRIPT/${topic}notes.txt"
#Ask user to input
read -p "Enter type of note here: " yournote

#Save content into $1_notes.txt.
echo $date: $yournote >> "$filename"
echo Note $note saved to $filename
