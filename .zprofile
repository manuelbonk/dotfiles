export VISUAL=vim
export EDITOR=vim
export BROWSER=chromium

setterm -blank 0 -powerdown off

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
