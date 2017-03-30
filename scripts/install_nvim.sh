#!/bin/bash
if ! which nvim >/dev/null ; then
    sudo apt-get install -y software-properties-common
    sudo apt-get install -y python-software-properties
    sudo add-apt-repository ppa:neovim-ppa/stable
    sudo apt-get update
    sudo apt-get install -y neovim
    sudo apt-get install -y python-dev
    sudo apt-get install -y python-pip
    sudo apt-get install -y python3-dev
    sudo apt-get install -y python3-pip
    sudo apt-get install -y python3-setuptools
    sudo easy_install3 pip
    pip install neovim
fi
