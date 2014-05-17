# ls colors
autoload colors; colors;
export LSCOLORS="Gxfxcxdxbxegedabagacad"
#export LS_COLORS

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

PS1="%{$fg[white]%}┌─[%{$reset_color%}%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m%{$reset_color%}%{$fg[white]%}]─[%{$reset_color%}%{$fg[yellow]%}%~%{$reset_color%}%{$fg[white]%}]%{$reset_color%}
%{$fg[white]%}└──╼ %{$reset_color%}"
