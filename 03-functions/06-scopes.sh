#!/bin/bash

function hello() {
    echo "Hello $VAR"
}

# Variable VAR is not defined in the environment yet.
# Therefore it will be null.
hello # This will print "Hello "

VAR="World"

function hello2() {
    echo "Hello $VAR"
}

hello2 # This will print "Hello World"
# Variables should be defined before they are used.
