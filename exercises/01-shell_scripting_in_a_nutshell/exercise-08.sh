#!/bin/bash

for FILE in $@
do
    echo
    if [ -f $FILE ]
    then
        echo "$FILE is a regular file."
    elif [ -d $FILE ]
    then
        echo "$FILE is a directory."
    else
        echo "$FILE is neither a file nor directory"
    fi
    sleep 1
    ls -l $FILE
    sleep 1
done
