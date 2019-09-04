Tong hop kien va ghi chu tu course https://app.pluralsight.com/player?course=bash-shell-scripting&author=reindertjan-ekker&name=bash-shell-scripting-m6-control&clip=6&mode=live
- Group command { cmd1; cmd2; cmd3 } ket qua return la cua cmd3
- || and &&: && execute next statement if previous one succeeded, nguoc lai || execute neu previous command failed.

#Debug scripting
    set -x
    code
    set +x
Debug từ đầu #!/bin/bash -x
${topic}_notes.txt, nếu để $topic_notes.txt thì nó hiểu topic_notes.txt là biến k phải topic là biến nên cần thêm {}\
Good habit:
 - Use "$x" thay vi $x
 - Use $HOME thay vi ~
 - Su dung brace {} de phan tach bien trong 1 string: "${foo}bar" # voi "$foobar" : bien foo va bien foobar.
 - Khong dung spacebar khi assign bien, nên sử dụng "" để tránh lỗi (string có space bảr, có dấu $ dùng '' sẽ k đọc được $)
 - exit 0 khi chạy xong, exit 1 nếu muốn báo fail.
 - Nen dung double [[ ]] thay vi [] để hạn chế lỗi, cú pháp đặc biệt này cũng cho phép k cần double quote biến trong [[ ]]. help [[ 

Truyen output cua 1 command vao 1 bien: var=$(command) vi du count_1=$(ls -A1 "$dir1" | wc -l)

Expression:
 - [[ expression ]]
 - [[ $str ]] true if string not empty, [[ $str="something" ]]  true neu str=something
 - [[$str="something]] luon luon true, can co space [[ $str="something" ]] 
 - [[ -e $filename ]] [[ -d $dirname ]] check if filename/dirname existed.
Comparision
 - Integers:
    - -eq -lt -ne -gt
    - $# number of script arguments
    - $? exit status of last command
    - ${#var} length of string var (giong strlen() trong java)
    - && || ! for and/or/not, khong su dung -a -o se lam chuong trinh loi
 - String:
    - d
Printf command: https://wiki.bash-hackers.org/commands/builtin/printf
 - printf "hello %s %s\n" $str1 $str2
 - printf "p%st\n" a e i o u 
 - printf "|%20s | %20s | \n" $(ls)
 - printf -v greeting "hello %s\n" $USER --> save output of printf command to var greeting

READ command
 - read var: read value and save to var, if no var, save to $REPLY
 - read -n or read -N define num of char to read.
 - read -s hide what you type (for password)
 - read -r disallows escape sequences, line continuation, should always use -r
 - read x y 1 2 3 -> x=1, y="2 3" use IFS= to separate 
   Vi du IFS=: read a b -> User input 1:2 -> a=1 b=2

   STREAM
 - /dev/stdin 0
 - /dev/stdout 1
 - /dev/stderr 2
 - /dev/null