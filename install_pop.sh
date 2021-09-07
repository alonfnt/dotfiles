#!/bin/sh

set -x

if [ ! -d /usr/share/fonts/ibm-plex-mono-fonts/ ]
then
	sudo apt-get install fonts-ibm-plex
fi

if [ ! -f /usr/bin/stow ]
then
	sudo apt-get install stow
fi

if [ ! -f /usr/bin/nvim ]
then
	sudo apt-get install vim-gtk3
fi


stow neovim
stow git
stow bash

dconf reset -f /
if [ ! -f dconf_pop ]
then
	dconf load / < dconf_pop
fi
