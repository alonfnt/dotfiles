#!/bin/sh

set -x

if [ ! -d /usr/share/fonts/ibm-plex-mono-fonts/ ]
then
	sudo dnf install ibm-plex-fonts-all
fi

if [ ! -f /usr/bin/stow ]
then
	sudo dnf install stow
fi

if [ ! -f /usr/bin/nvim ]
then
	sudo dnf install neovim
fi


stow neovim
stow git
stow bash

dconf reset -f /
dconf load / < dconf
