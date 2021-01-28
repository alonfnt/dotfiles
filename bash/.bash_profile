# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

if [ -f ~/.config/X11/xresources ]; then
  xrdb -merge ~/.config/X11/xresources
fi

# User specific environment and startup programs
export TERMINAL=alacritty
