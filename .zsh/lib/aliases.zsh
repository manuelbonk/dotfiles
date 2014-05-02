alias ll='ls -la'
alias lh='ls -lah'
alias ...='cd ../..'# verbose / human-readable
alias df='df -h'
alias du='du -h'
alias cp='cp -v'
alias copy='rsync -r -v --progress'
alias ln='ln -v'
alias rm='rm -v'
alias mv='mv -v'

alias la='ls -a'
alias ls='ls -oxhCFl --color=auto'
alias sl='ls'

alias lc='wc -l'
alias ..='cd ..'
alias cx='chmod +x'
alias pdf='okular'
# alias pdf='evince'
alias free='free -ms 1'

# grep
alias grep='grep -i --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# alias cdvirt='cd /var/www/virtual/bonkii/'
alias lock='xscreensaver-command --lock'

alias please='sudo'

# pacman
alias pacupg='sudo pacman -Syu'        # Synchronize with repositories and then upgrade packages that are out of date on the local system.
alias pacin='sudo pacman -S'           # Install specific package(s) from the repositories
alias pacins='sudo pacman -U'          # Install specific package not from the repositories but from a file 
alias pacre='sudo pacman -R'           # Remove the specified package(s), retaining its configuration(s) and required dependencies
alias pacrem='sudo pacman -Rns'        # Remove the specified package(s), its configuration(s) and unneeded dependencies
alias pacrep='pacman -Si'              # Display information about a given package in the repositories
alias pacreps='pacman -Ss'             # Search for package(s) in the repositories
alias pacloc='pacman -Qi'              # Display information about a given package in the local database
alias paclocs='pacman -Qs'             # Search for package(s) in the local database

# apt
alias inst='sudo apt-get install'      # Install specific package(s) from the repositories
alias srch='sudo apt-cache search'     # Search for package(s) in the repositories
alias upd='sudo apt-get update'
alias upg='sudo apt-get upgrade'
alias dupg='sudo apt-get dist-upgrade'

alias x='extract'

# ssh
alias sshus='ssh bonkii@lynx.uberspace.de'
alias rmvunused='sudo pacman -Rns $(pacman -Qqtd)' # remove unused packages
alias ddprogress='while true; do sudo pkill -USR1 dd; sleep 1; done'
alias cf='echo $(($(ls -l | grep -v ^d| wc -l)-1))' # count files in a directory
