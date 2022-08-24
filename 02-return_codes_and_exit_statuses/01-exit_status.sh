#!/bin/bash

HOST="google.com"

ping -c 1 $HOST

# Check exit status of previous command
if [ $? -eq 0 ]
then
    echo "$HOST is reachable"
else
    echo "$HOST is unreachable"
fi
