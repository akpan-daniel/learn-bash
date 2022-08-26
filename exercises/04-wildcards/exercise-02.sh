#!/bin/bash

# Rename files based on extension and prefix provided by user.
read -p "Enter a file extension: " EXTENSION
DATE=$(date +%Y-%m-%d)
read -p "Enter a prefix: (Press ENTER for $DATE) " PREFIX
PREFIX=${PREFIX:-$DATE}
FILES=$(ls *.$EXTENSION)
if [ -n "$FILES" ]
then
    for FILE in $FILES
    do
        echo "Renaming $FILE"
        mv $FILE $PREFIX-$(basename $FILE .$EXTENSION).$EXTENSION
    done
else
    echo "No files found."
fi
