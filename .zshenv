# Path settings
typeset -U path
path=(~/bin $path)

# Locale settings
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

# Other variables
export EDITOR="vim"
export PAGER="less"

# LSCOLORS for non-Linux systems
# (on Linux, this is handled via dircolors)
if [ $(uname -s) = "FreeBSD" ]; then
    export LSCOLORS=ExGxFxdxCxDxDxxbxdAeAe
fi
