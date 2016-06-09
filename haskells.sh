#!/bin/sh

function runtask {
    local PROJS=$(find . -type f -name "stack.yaml" | sed "s/\.\/\(.*\)\/stack.yaml/\1/g")
    local DIR=$(pwd)

    for pro in ${PROJS}; do
        proDir=$DIR/$pro
        cd $proDir
        if ! $1; then
            cd $DIR
            exit 1
        fi
        cd $DIR
        echo "Succeeded to run haskell task at $pro"
    done
}

if [ $# -ne 1 ]; then
    echo "Invalid parameters"
    exit 1
fi

case $1 in
    "setup") runtask 'stack setup' 
        ;;
    "build") runtask 'stack build'
        ;;
    "test") runtask 'stack test'
        ;;
    *) 
        echo "Not supported task"
        exit 1
        ;;
esac
