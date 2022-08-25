#!/bin/bash

function my_func() {
    # local keyword should be used to declare a local variable.
    # * note: should be used inside a function.
    local MY_VAR=1
    echo $MY_VAR
}

echo $MY_VAR # This will print ""
my_func
# * Local variables are not visible outside the function.
echo $MY_VAR # This will still print ""
