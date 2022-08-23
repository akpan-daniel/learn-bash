#!/bin/bash

MY_SHELL="Bash"
echo "I am using $MY_SHELL"
echo "I am ${MY_SHELL}ing"

SERVER_NAME=$(hostname) # Newer
SERVER_NAME_2=`hostname` # Older
echo "Server name $SERVER_NAME"
echo "Server name is $SERVER_NAME_2"
