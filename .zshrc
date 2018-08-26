export ZSH=~/.zsh

export EDITOR="vim"
export VISUAL="vim"
export BROWSER="chromium"
export VAGRANT_DEFAULT_PROVIDER="libvirt"
#export GPG_TTY="$(tty)"

# Load all of the config files in ~/oh-my-zsh that end in .zsh
for config_file ($ZSH/lib/*.zsh) source $config_file

# Load and run compinit
autoload -U compinit
compinit -i

autoload zmv

PATH=$PATH:/home/m/scripts:/home/m/.screenlayout:/home/m/.gem/ruby/2.4.0/bin:/opt/makeself/
export GOPATH=/home/m/dev/go

set -o vi

# extract stuff easily
x () {
   if [ -f $1 ] ; then
      case $1 in
         *.tar.bz2)   tar vxjf $1      ;;
         *.tar.gz)   tar xvzf $1      ;;
         *.bz2)      bunzip2 -v $1      ;;
         *.rar)      unrar e $1      ;;
         *.gz)      gunzip $1      ;;
         *.tar)      tar xvf $1      ;;
         *.tbz2)      tar xvjf $1      ;;
         *.tgz)      tar xvzf $1      ;;
         *.zip)      7z e $1      ;;
         *.Z)      uncompress $1   ;;
		 *.7z)		7z e $1 ;;
         *)         echo "'$1' cannot be extracted via extract()" ;;
      esac
   else
      echo "'$1' is not a valid file"
   fi
}

man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;246m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}

PS1="%{$fg[white]%}┌─[%{$reset_color%}%{$fg[red]%}%n%{$reset_color%}%{$fg[white]%}@%{$reset_color%}%{$fg[blue]%}%m%{$reset_color%}%{$fg[white]%}]─[%{$reset_color%}%{$fg[yellow]%}%~%{$reset_color%}%{$fg[white]%}]%{$reset_color%}
%{$fg[white]%}└──╼ %{$reset_color%}"

setopt prompt_subst
. ~/.zsh/lib/git-prompt.sh
export RPROMPT=$'$(__git_ps1 "%s")'

# funky search
bindkey -M vicmd 'K' history-beginning-search-backward
bindkey -M vicmd 'J' history-beginning-search-forward

export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh
