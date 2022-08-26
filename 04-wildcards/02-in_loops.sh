#!/bin/bash

cd /var/www
for FILE in *.html
do
    echo "Cpoying $FILE"
    cp -v $FILE /tmp/www-just-html
done
