alias ...='cd ../..'
# verbose / human-readable
alias df='df -h'
alias du='du -h'
alias cp='cp -v'
alias copy='rsync -r -v --progress'
alias ln='ln -v'
alias rm='rm -v'
alias mv='mv -v'
alias chown='chown -v'
alias mkdir='mkdir -v'

alias la='ls -a'
alias ls='ls -oxhCFl --color=auto'
alias sl='ls'

alias lc='wc -l'
alias ..='cd ..'
alias cx='chmod +x'
<<<<<<< HEAD
# alias pdf='okular'
alias pdf='evince'

# grep
alias grep='grep -i --color=auto'

alias please='sudo'

# pacman
alias pacupg='sudo pacman -Syu'        # Synchronize with repositories and then upgrade packages that are out of date on the local system.
alias pacin='sudo pacman -S'           # Install specific package(s) from the repositories
alias pacins='sudo pacman -U'          # Install specific package not from the repositories but from a file
alias pacre='sudo pacman -R'           # Remove the specified package(s), retaining its configuration(s) and required dependencies
alias pacrem='sudo pacman -Rns'        # Remove the specified package(s), its configuration(s) and unneeded dependencies
alias pacrep='pacman -Si'              # Display information about a given package in the repositories
alias pacreps='pacman -Ss'             # Search for package(s) in the repositories

alias rmvunused='sudo pacman -Rns $(pacman -Qqtd)' # remove unused packages
alias cf='echo $(($(ls -l | grep -v ^d| wc -l)-1))' # count files in a directory

alias sshuttle='sshuttle --dns -vvr m@n.zfix.net 0/0'

alias nfx='ssh -ND 11337 m@n.zfix.net'
alias tsb='sudo tlp-stat -b'

# apt
alias inst='sudo apt-get install'      # Install specific package(s) from the repositories
alias srch='sudo apt-cache search'     # Search for package(s) in the repositories
alias upd='sudo apt-get update'
alias upg='sudo apt-get upgrade'
alias dupg='sudo apt-get dist-upgrade'