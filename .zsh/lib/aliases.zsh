alias ...='cd ../..'
alias df='df -h'
alias du='du -h'
alias cp='cp -v'
alias copy='rsync -r -v --progress'
alias ln='ln -v'
alias rm='rm -v'
alias mv='mv -v'
alias chown='chown -v'
alias mkdir='mkdir -v'
alias la='lf -a'
alias lf='ls -xhFl --color=auto'
alias ls='ls --color=auto'
alias lc='wc -l'
alias ..='cd ..'
alias cx='chmod +x'
alias pdf='okular'
alias free='free -ms 1'
alias grep='grep -i --color=auto'

alias pacupg='sudo pacman -Syu'
alias pacin='sudo pacman -S'
alias pacins='sudo pacman -U'
alias pacre='sudo pacman -R'           # Remove the specified package(s), retaining its configuration(s) and required dependencies
alias pacrem='sudo pacman -Rns'        # Remove the specified package(s), its configuration(s) and unneeded dependencies
alias pacrep='pacman -Si'              # Display information about a given package in the repositories
alias pacreps='pacman -Ss'

alias rmvunused='sudo pacman -Rns $(pacman -Qqtd)' # remove unused packages
alias cf='echo $(($(ls -l | grep -v ^d| wc -l)-1))' # count files in a directory
alias tsb='sudo tlp-stat -b'

alias ta='tmux attach -t'
alias tn='tmux new -s'
alias tls='tmux list-sessions'

alias sc='sudo systemctl'
alias scs'sudo systemctl status'
alias sca'sudo systemctl start'
alias sco'sudo systemctl stop'
alias sce'sudo systemctl enable'
alias scd'sudo systemctl disable'

alias d='date +"%Y-%m-%d"'
alias serial='sudo screen /dev/ttyUSB0 115200'
alias gig='find ./ -executable ! -path "./.git/*">>.gitignore'
alias dup='ac.sh --working-directory "{PWD}"&'
alias ttc='tty-clock -csf "%Y-%m-%d"'
alias umount='sudo umount'
alias dup='alacritty --working-directory ${PWD}'
alias ip='ip -c'
alias zshedit='vim ~/.zshrc'
alias wifi='sudo wifi'

alias g='git'
alias gk='gitk --all'
