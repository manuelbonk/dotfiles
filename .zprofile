echo "running <.zprofile>"
echo "shell: $SHELL"

EDITOR=vim
echo "editor: $EDITOR"
PATH=$PATH:/home/manuel/Downloads/.dropbox-dist
if [ -f ~/.zsh_aliases ]; then
 . ~/.zsh_aliases
fi

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
