#!/bin/bash

function my_func() {
    echo "Hello World"
    # * if no return statement is present,
    # * the function will the exit code of the last command executed.
    return 1
}

my_func
echo $? # This will print "1"
