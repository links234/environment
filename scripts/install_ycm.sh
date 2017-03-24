#!/bin/bash

if ! which cmake >/dev/null ; then
    echo "~~~~~Installing cmake~~~~~"
    sudo apt-get install -y cmake
fi

if [ ! -d /usr/lib/python2.7/config-x86_64-linux-gnu ]; then
    echo "~~~~~Installing python-dev~~~~~"
    echo "/usr/lib/python2.7/config-x86_64-linux-gnu not found"
    sudo apt install python-dev
fi

cd ~/.vim/bundle/YouCompleteMe
sudo ./install.py --clang-completer
