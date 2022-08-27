#!/bin/bash

# Simple case showing wildcard * usage as default.
VAR=$1

case "$VAR" in
    "one")
        echo "one"
        ;;
    "two")
        echo "two"
        ;;
    *)
        echo "Usage: $0 one|two"
        exit 1
        ;;
esac
