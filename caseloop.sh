#!/bin/bash
if [[ $# -ne 1 ]]; then
    echo "Please enter 1 arugment" >&2
    exit 1
fi
case $1 in
    meo)
        echo "Con meo";;
    cho)
        echo "Con cho";;
    *) #All remaining ones
        echo "Khong biet con gi";;
esac
exit 0