#!/bin/bash

FILE=/etc/shadow

# check if the file exists
if test -e $FILE
then
    echo "Shadow passwords are enabled."
    # check if the file is writeable
    if test -w $FILE
    then
        echo "You have permissions to edit $FILE."
    else
        echo "You do NOT have permissions to edit $FILE."
    fi
fi