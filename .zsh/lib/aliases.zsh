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
alias cx='chmod +x'
alias pdf='okular'
alias free='free -ms 1'
alias grep='grep -i --color=auto'

alias pacupg='sudo pacman -Syu'
alias pacin='sudo pacman -S'
alias pacins='sudo pacman -U'
alias pacre='sudo pacman -R'           # Remove the specified package(s), retaining its configuration(s) and required dependencies
alias pacrem='sudo pacman -Rnsc'        # Remove the specified package(s), its configuration(s) and unneeded dependencies
alias pacrep='pacman -Si'              # Display information about a given package in the repositories
alias pacreps='pacman -Ss'

alias rmvunused='sudo pacman -Rns $(pacman -Qqtd)' # remove unused packages
alias cf='echo $(($(ls -l | grep -v ^d| wc -l)-1))' # count files in a directory
alias tsb='sudo tlp-stat -b'

alias ta='tmux attach -t'
alias tn='tmux new -s'
alias tls='tmux list-sessions'

alias serial='sudo screen /dev/ttyUSB0 115200'
alias sudo='sudo '
alias gig='find ./ -executable ! -path "./.git/*">>.gitignore'
alias dup='(alacritty --working-directory $(pwd)  2>&1 >/dev/null)&'
alias ip='ip -c'
alias mount='sudo mount'
alias umount='sudo umount'
alias wifi='sudo wifi'
alias zshedit='vim ~/.zshrc'
alias gk='gitk --all'
alias v='vagrant'
alias g='git'
alias ap='ansible-playbook'
alias a='ansible'
alias d='docker'
alias k='kubectl'
alias c='cloudctl'
alias kga='kubectl get all'
alias kx='kubectx'
alias m='molecule'
alias sprunge="curl -s -F 'sprunge=<-' http://sprunge.us | xclip -sel c"
alias cat='cat -v'
alias flux='xflux -l 11.576124'
alias p='pass'
alias tree='tree -C'
alias kon='kubeon'
alias kof='kubeoff'
