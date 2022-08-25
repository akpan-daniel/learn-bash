#!/bin/bash

function file_count() {
    local NUMBER=$(ls -1 ${PWD} | wc -l)
    echo "$NUMBER"
}

file_count
