# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

shopt -s histappend

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH=":$HOME/.local/bin:$HOME/bin:$PATH"
fi

# Add poetry if installed in the system
if [ -f "$HOME/.poetry" ]; then
	echo "IT exists!!"
	PATH="$HOME/.poetry/bin:$PATH"
fi
PATH="$HOME/.poetry/bin:$PATH"
export PATH

# Custom prompt
#export PS1='\[\033[01;32m\]\h:\u\[\033[00m\] \[\033[01;34m\]\w\[\033[00m\]\$ '

# Aliases
alias sudo='sudo '
alias open='xdg-open'
alias ce='python3 -m venv venv'
alias ae='source venv/bin/activate'
alias de='deactivate'
alias ll="ls -alrtF --color"
alias la="ls -A"
alias l="ls -CF"
alias ls="ls --color"
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias m='less'
alias ..='cd ..'
alias ...='cd ..;cd ..'
alias md='mkdir'
alias cl='clear'
alias du='du -ch --max-depth=1'

# Stop the terminal from quiting when Ctrl+D is pressed
set -o ignoreeof

# Turn off bell
set bell-style visible

shopt -s autocd

# Defaults
export EDITOR=nvim

# Set up bash completion
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
