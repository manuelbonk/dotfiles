<<<<<<< HEAD
export ZSH=~/.zsh

export EDITOR="vim"
export VISUAL="vim"
# Load all of the config files in ~/oh-my-zsh that end in .zsh
for config_file ($ZSH/lib/*.zsh) source $config_file

# Load and run compinit
autoload -U compinit
compinit -i
#PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m%{$reset_color%}:%{$fg[yellow]%}%~%{$reset_color%}%{$fg[white]%} > %{$reset_color%}"
PS1="%{$fg[white]%}┌─[%{$reset_color%}%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m%{$reset_color%}%{$fg[white]%}]─[%{$reset_color%}%{$fg[yellow]%}%~%{$reset_color%}%{$fg[white]%}]%{$reset_color%}
%{$fg[white]%}└──╼ %{$reset_color%}"
PATH=$PATH:/home/m/dev/scripts/:/home/m/dev/scripts:/home/m/.screenlayout

set -o vi

# extract stuff easily
x () {
   if [ -f $1 ] ; then
      case $1 in
         *.tar.bz2)   tar vxjf $1      ;;
         *.tar.gz)   tar xvzf $1      ;;
         *.bz2)      bunzip2 -v $1      ;;
         *.rar)      rar x $1      ;;
         *.gz)      gunzip $1      ;;
         *.tar)      tar xvf $1      ;;
         *.tbz2)      tar xvjf $1      ;;
         *.tgz)      tar xvzf $1      ;;
         *.zip)      unzip -v $1      ;;
         *.Z)      uncompress $1   ;;
         *)         echo "'$1' cannot be extracted via extract()" ;;
      esac
   else
      echo "'$1' is not a valid file"
   fi
}
=======
echo "running <.zshrc>"
export ZSH=~/.zsh

for conf ($ZSH/lib/*.zsh) source $conf

# for config_file ($ZSH/lib/*.zsh) source $config_file
# Load and run compinit
autoload -U compinit
compinit -i
autoload zmv
PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m%{$reset_color%}:%{$fg[yellow]%}%~%{$reset_color%}%{$fg[white]%} > %{$reset_color%}"
>>>>>>> 838b99a12818fd28a3be0f8faf47d346f408f590
