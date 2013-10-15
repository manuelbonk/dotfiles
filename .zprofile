echo "running <.zprofile>"
echo "shell: $SHELL"

<<<<<<< HEAD
export VISUAL=vim
export EDITOR=vim
=======
EDITOR=vim
>>>>>>> 1a13c3990426117cd6912cbd043140b8f4d783da
echo "editor: $EDITOR"

PATH=$PATH:/home/manuel/Downloads/.dropbox-dist:/home/manuel/dev/scripts/
# echo $PATH
setterm -blank 0 -powerdown off
setterm -powersave off
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
