echo "running <appearance>"
# ls colors
autoload colors; colors;
export LSCOLORS="Gxfxcxdxbxegedabagacad"

#setopt no_beep
setopt auto_cd
setopt multios
setopt cdablevarS

if [[ x$WINDOW != x ]]
then
    SCREEN_NO="%B$WINDOW%b "
else
    SCREEN_NO=""
fi

# Apply theming defaults
PS1="%n@%m:%~%# "
