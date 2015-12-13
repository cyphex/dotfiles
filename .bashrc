# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# On CentOS, the system-wide bashrc must be sourced manually
if [ -z "$PROMPT_COMMAND" ]; then
    if [ -f /etc/bashrc ]; then
        . /etc/bashrc
    fi
fi

# Set up prompt
if [ $(whoami) == "root" ]; then
    COLOR_USERHOST="\[\033[1;31m\]"
else
    if [[ -z "$SSH_CLIENT" ]]; then
        COLOR_USERHOST="\[\033[1;32m\]"
    else
        COLOR_USERHOST="\[\033[1;33m\]"
    fi
fi
COLOR_PATH="\[\033[0;34m\]"
COLOR_RESET="\[\033[0;m\]"

if [[ -z "$SSH_CLIENT" ]]; then
    PS1="$COLOR_USERHOST\u $COLOR_PATH\w$COLOR_RESET\n\\$ "
else
    PS1="$COLOR_USERHOST\u@\h $COLOR_PATH\w$COLOR_RESET\n\\$ "
fi

# History: ignore duplicates and cmds starting with spaces
export HISTCONTROL=ignoreboth

# Import coloring for ls
if [ $(uname -s) = "Linux" ]; then
    eval $(dircolors ~/.dircolors)
fi

# Source aliases
[[ -f ~/.aliases ]] && . ~/.aliases
