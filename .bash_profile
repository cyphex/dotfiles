# Source .bashrc
[[ -f ~/.bashrc ]] && . ~/.bashrc

# User-defined script path
PATH="$HOME/bin:$PATH"

# German locale-settings with english language
export LANG="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_CTYPE="de_DE.UTF-8"
export LC_COLLATE="de_DE.UTF-8"
export LC_TIME="de_DE.UTF-8"
export LC_NUMERIC="de_DE.UTF-8"
export LC_MONETARY="de_DE.UTF-8"
export LC_PAPER="de_DE.UTF-8"
export LC_TELEPHONE="de_DE.UTF-8"
export LC_ADDRESS="de_DE.UTF-8"
export LC_MEASUREMENT="de_DE.UTF-8"
export LC_NAME="de_DE.UTF-8"
export LC_IDENTIFICATION="de_DE.UTF-8"

# Other env variables
export EDITOR=vim

# If we're local and on tty1, start X
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
