#!/bin/bash

function file_count() {
    DIR=$1
    if [ -d $DIR ]
    then
        echo "${DIR}:"
        local NUMBER=$(ls -1 ${DIR} | wc -l)
        echo "    $NUMBER"
    else
        echo "The path $DIR is not a directory."
        return 1
    fi
}

file_count /etc
file_count /var
file_count /usr/bin
