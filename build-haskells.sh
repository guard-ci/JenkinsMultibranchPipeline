#!/bin/sh

PROJS=$(find . -type f -name "stack.yaml" | sed "s/\.\/\(.*\)\/stack.yaml/\1/g")
DIR=$(pwd)

for pro in ${PROJS}; do
    proDir=$DIR/$pro
    cd $proDir
    if ! stack build; then
        cd $DIR
        exit 1
    fi
    cd $DIR
done
