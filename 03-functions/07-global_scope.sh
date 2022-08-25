#!/bin/bash

my_function() {
    GLOBAL_VAR=1
}

# GLOBAL_VAR is not defined in the environment yet.
echo $GLOBAL_VAR # This will print ""

# This will define GLOBAL_VAR in the environment.
my_function
echo $GLOBAL_VAR # This will print "1"
