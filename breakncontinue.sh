#!/bin/bash
#break will quite the loop
#continue will skip the rest of command and repeat the loop from the scratch
#both can be used in for while and until

if [[ ! $1 ]]; then
	echo "Need first argument " >&2
fi

#read all line from a text file using <file.txt: .sh argument < file.txt, if match agument then print it out
while read -r; do
	if [[ $REPLY =~ $1 ]]; then
		echo "$REPLY"
		break
	fi
done
#then print out the rest of the file
while read -r; do
	echo "$REPLY"
done


#With continue

found=
#read upto first match
while read -r; do
	if [[ ! $found ]]; then
		if [[ $REPLY =~ $1 ]]; then
			found="yes"
		else 
			#continue loop without echo $REPLY
			continue
		fi
	fi
	echo "$REPLY"
done

exit 0