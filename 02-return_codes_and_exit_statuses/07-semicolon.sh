#!/bin.bash

# Second command runs irrespective of first command's exit status
cp test.txt /tmp/test.txt ; cp test.txt /tmp/test/test.txt
