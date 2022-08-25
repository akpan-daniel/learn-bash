#!/bin/bash

function hello() {
    for i in "$@" # loops through all the supplied arguments
    do
        echo "Hello $i"
    done
}

hello Daniel Joe Clara Sophie