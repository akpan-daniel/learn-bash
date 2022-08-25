#!/bin/bash

function hello() {
    echo "Hello World"
    now
}

hello # This will throw an error because now is not defined yet.

function now() {
    echo "It's $(date +%r)"
}

hello # No error this time, as now is defined.
