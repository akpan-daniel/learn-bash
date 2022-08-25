#!/bin/bash

function backup_file() {
    if [ -f $1 ]
    then
        # Make BACK local to the function.
        local BACK="/tmp/$(basename ${1}).$(date +%F).$$"
        echo "Backing up ${1} to ${BACK}"
        # The exit status of the function,
        #  is the exit status of cp.
        cp -v $1 $BACK
    else
        echo "File ${1} does not exist"
        return 1
    fi
}

backup_file /etc/hosts

if [ $? -eq 0 ]
then
    echo "Backup succeeded"
else
    echo "Backup failed"
    exit 1
fi
