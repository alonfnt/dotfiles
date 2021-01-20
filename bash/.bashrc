# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH=":$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Declutter HOME
export ANDROID_SDK_HOME=$XDG_CONFIG_HOME/android
export ANDROID_PREFS_ROOT="$XDG_CONFIG_HOME"/android
export ANDROID_EMULATOR_HOME="$XDG_DATA_HOME"/android/emulator
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export GOPATH="$XDG_DATA_HOME"/go
export IPYTHONDIR="$XDG_CONFIG_HOME"/jupyter
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter
export NVM_DIR="$XDG_DATA_HOME"/nvm
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export XSERVERRC="$XDG_CONFIG_HOME"/X11/xserverrc

export BASH_COMPLETION_USER_FILE="$XDG_CONFIG_HOME"/bash/bash_completion
export HISTFILE="$XDG_DATA_HOME"/bash/history

alias nvidia-settings='nvidia-settings --config="$XDG_CONFIG_HOME"/nvidia/settings'

# Aliases
alias sudo='sudo '
alias open='xdg-open'
alias ce='python3 -m venv venv'
alias ae='source venv/bin/activate'
alias de='deactivate'
alias vim='nvim'
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
alias treeacl='tree -A -C -L 2'

# Stop the terminal from quiting when Ctrl+D is pressed
set -o ignoreeof

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/albert/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/home/albert/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/albert/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/home/albert/Downloads/google-cloud-sdk/completion.bash.inc'; fi

# No noise on bell
set bell-style visible

# Defaults
export EDITOR=nvim
export TERMINAL=alacritty
