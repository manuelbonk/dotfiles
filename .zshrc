export ZSH=~/.zsh

# Load and run compinit
autoload -U compinit
compinit -i
autoload zmv
PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m%{$reset_color%}:%{$fg[yellow]%}%~%{$reset_color%}%{$fg[white]%} > %{$reset_color%}"
