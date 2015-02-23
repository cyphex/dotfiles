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
    COLOR_USERHOST="\[\033[1;33m\]"
fi
COLOR_PATH="\[\033[0;34m\]"
COLOR_RESET="\[\033[0;m\]"

PS1="$COLOR_USERHOST\u@\h $COLOR_PATH\w$COLOR_RESET\n\\$ "

# History: ignore duplicates and cmds starting with spaces
export HISTCONTROL=ignoreboth

# Import coloring for ls
eval $(dircolors ~/.dircolors)

# Source aliases
[[ -f ~/.aliases ]] && . ~/.aliases