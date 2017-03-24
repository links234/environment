#!/bin/bash

PATH_TO_SRC=$1
PATH_TO_DST=$2

function ask_copy {
    filename=$(basename $PATH_TO_DST)
    read -p "Do you want to override current $filename file? (y, n) " -n 1 -r
    echo    # (optional) move to a new line
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        cp $PATH_TO_SRC $PATH_TO_DST
    fi
}

if [ ! -f $PATH_TO_SRC ]; then
    cp $PATH_TO_SRC $PATH_TO_DST
else
    cmp --silent $PATH_TO_SRC $PATH_TO_DST || ask_copy
fi
 
