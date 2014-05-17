if [ -n "$DISPLAY" ]; then
	export BROWSER=chromium
	echo "browser: $BROWSER"
fi
export VISUAL=vim
export EDITOR=vim
echo "editor: $EDITOR"

PATH=$PATH:/home/manuel/Downloads/.dropbox-dist:/home/manuel/dev/scripts/
setterm -blank 0 -powerdown off

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
