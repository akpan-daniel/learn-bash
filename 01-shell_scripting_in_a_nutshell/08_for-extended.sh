#!/bin/bash

cd "${PWD}/images"
IMAGES=$(ls Screenshot*png)
DATE=$(date +%F)

for IMAGE in $IMAGES
do
    echo "Renaming ${IMAGE} to ${DATE}-${IMAGE}"
    cp "${IMAGE}" "${DATE}-${IMAGE}"
    sleep 1
done
