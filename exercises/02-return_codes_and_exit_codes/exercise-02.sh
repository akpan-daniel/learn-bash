#!/bin/bash

INPUT=$1

if [ -f $INPUT ] ; then
    echo "$INPUT is a file."
    exit 0
elif [ -d $INPUT ] ; then
    echo "$INPUT is a directory"
    exit 1
else
    echo "$INPUT is something other than a file or directory"
    exit 2
fi
