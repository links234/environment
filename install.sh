#!/bin/bash

echo "Installing bashrc ..."
./scripts/ask_copy.sh res/bashrc ~/.bashrc
echo "Done!"

echo "Installing vim ..."
./scripts/install_vim.sh
./scripts/ask_copy.sh res/vimrc ~/.vimrc
echo "Done!"

echo "Installing gnome-terminal ..."
./scripts/install_gnometerminal.sh
echo "Done!"

echo "Installing powerline fonts ..."
./scripts/install_powerline_fonts.sh
echo "Done!"

echo "Installing vundle and plugins ..."
./scripts/install_vundle.sh
./scripts/install_plugins.sh
echo "Done!"

echo "Installing YCM ..."
./scripts/install_ycm.sh
./scripts/ask_copy.sh res/ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py
echo "Done!"

