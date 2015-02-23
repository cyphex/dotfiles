# If we're local and on tty1, start X
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
