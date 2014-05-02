echo "running <.zshrc>"
export ZSH=~/.zsh

for conf ($ZSH/lib/*.zsh) source $conf

# for config_file ($ZSH/lib/*.zsh) source $config_file
# Load and run compinit
autoload -U compinit
compinit -i
autoload zmv
PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m%{$reset_color%}:%{$fg[yellow]%}%~%{$reset_color%}%{$fg[white]%} > %{$reset_color%}"
