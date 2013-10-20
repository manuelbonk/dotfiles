alsi
echo "running <.zprofile>"
echo "shell: $SHELL"


if [ -n "$DISPLAY" ]; then
	export BROWSER=chromium
	echo "browser: $BROWSER"
fi
EDITOR=vim
echo "editor: $EDITOR"

PATH=$PATH:/home/manuel/Downloads/.dropbox-dist:/home/manuel/dev/scripts/
# echo $PATH
setterm -blank 0 -powerdown off
if [ -f ~/.zsh_aliases ]; then
	echo "found <.zsh_aliases>"
	. ~/.zsh_aliases
fi

# if [ -e /usr/share/terminfo/x/xterm-256color ]; then
# 	export TERM='xterm-256color'
# else
#        export TERM='xterm-color'
# fi

echo "terminal: $TERM"

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
