#!/bin/bash
if ! which gnome-terminal >/dev/null ; then
    apt-get install -y gnome-terminal
    gsettings set org.gnome.desktop.default-applications.terminal exec 'gnome-terminal'
fi

