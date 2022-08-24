#!/bin/bash

cat /etc/shadow && echo "Command succeeded" && exit 0
echo "Command failed" && exit 1
