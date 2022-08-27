#!/bin/bash

# Simple case statement.

VAR="one"

case "$VAR" in
    "three")
        echo "three"
        ;;
    "two")
        echo "two"
        ;;
    "one")
        echo "one"
        ;;
esac
