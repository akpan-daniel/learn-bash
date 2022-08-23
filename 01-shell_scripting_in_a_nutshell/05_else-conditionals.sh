#!/bin/bash

FILE=/etc/profile

# check if the file exists
if [ -e $FILE ]
then
    echo "$FILE is present."
    
    # check if the file is writeable
    if [ -w $FILE ]
    then
        echo "You have permissions to edit $FILE."
    else
        echo "You do NOT have permissions to edit $FILE."
    fi
    
    # check if the file is readable
    if [ -r /etc/profile ]
    then
        echo "You have permissions to read $FILE."
    else
        echo "You do NOT have permissions to read $FILE."
    fi

    if [ -x /etc/profile ]
    then
        echo "You have permissions to execute $FILE."
    else
        echo "You do NOT have permissions to execute $FILE."
    fi
else
    echo "$FILE is not present."
fi

