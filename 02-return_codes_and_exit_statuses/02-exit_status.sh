#!/bin/bash

HOST="google.com"

ping -c 1 $HOST

# Check exit status of previous command
if [ $? -ne 0 ]
then
    echo "$HOST is unreachable"
fi
