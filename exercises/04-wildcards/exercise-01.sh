#!/bin/bash

# Appends date to all '.jpg' files in CWD.
# shopt -s nullglob
FILES=$(ls *.jpg)
if [ -n "$FILES" ]
then
    for FILE in $FILES
    do
        echo "Renaming $FILE"
        mv $FILE $(date +%Y-%m-%d)-$(basename $FILE .jpg).jpg
    done
else
    echo "No files found."
fi