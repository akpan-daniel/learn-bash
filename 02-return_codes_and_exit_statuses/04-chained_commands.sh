#!/bin/bash

# Second command runs if first returns 0 exit status
mkdir /tmp/test && touch /tmp/test/test.txt

# Second command runs if first returns non-zero exit status
cp test.txt /tmp/test/test.txt || echo "$?"
