#!/bin/bash

mkdir -p ~/.vim/external
cd ~/.vim/external

if [ ! -d ~/.vim/external/fonts ]; then
    git clone https://github.com/powerline/fonts
    cd fonts
    ./install.sh
fi

