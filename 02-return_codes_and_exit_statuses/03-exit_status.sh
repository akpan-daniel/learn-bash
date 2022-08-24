#!/bin/bash

HOST="google.com"

ping -c 1 $HOST
RETURN_CODE=$?

# Check exit status of previous command
if [ $RETURN_CODE -ne 0 ]
then
    echo "$HOST is unreachable"
fi
