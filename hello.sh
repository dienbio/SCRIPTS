#!/bin/bash
echo $(date): $* >> ./note.txt
#echo $1 >> ./note.txt se chi ghi line khong co space. Vi du ./hello.sh teststring thay vi ./hello.sh test string
filename="file1 file2"
touch $filename