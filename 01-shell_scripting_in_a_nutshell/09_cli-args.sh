#!/bin/bash
echo "Executing script: $0"

for USER in $@
do
    echo "Archiving user: $USER"

    # Lock the account
    passwd -l $USER

    # Archive the home directory
    tar cf /archives/${USER}.tar.gz /home/$USER
done
