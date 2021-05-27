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
alias grep='grep -i --color=auto'

alias pacupg='sudo pacman -Syu'
alias pacin='sudo pacman -S'
alias pacins='sudo pacman -U'
alias pacre='sudo pacman -R'           # Remove the specified package(s), retaining its configuration(s) and required dependencies
alias pacrem='sudo pacman -Rnsc'        # Remove the specified package(s), its configuration(s) and unneeded dependencies
alias pacrep='pacman -Si'              # Display information about a given package in the repositories
alias pacreps='pacman -Ss'

alias rmvunused='sudo pacman -Rns (pacman -Qqtd)' # remove unused packages
alias tsb='sudo tlp-stat -b'

alias ta='tmux attach -t'
alias tn='tmux new -s'
alias tls='tmux list-sessions'

alias gig='find ./ -executable ! -path "./.git/*">>.gitignore'
alias ip='ip -c'
alias mount='sudo mount'
alias umount='sudo umount'
alias wifi='sudo wifi'
alias gk='gitk --all'
alias v='vagrant'
alias g='git'
alias ap='ansible-playbook'
alias a='ansible'
alias d='docker'
alias k='kubectl'
alias m='molecule'
alias sprunge="curl -s -F 'sprunge=<-' http://sprunge.us | xclip -sel c"
alias cat='cat -v'
alias kon='kube_ps on'
alias koff='kube_ps off'
alias kx='kubectx'
alias kns='kubens'
alias lf='ls -xhFl --color=auto'

# disable vi mode indicator in ps1
function fish_mode_prompt
end

# hide kubecontext in ps1 by default
koff

set -gx PAGER less
set -gx EDITOR vim
set -gx BROWSER firefox
set -gx PATH $PATH $HOME/.screenlayout $HOME/scripts
set fish_greeting ""


function fish_prompt
    set_color normal
    # https://stackoverflow.com/questions/24581793/ps1-prompt-in-fish-friendly-interactive-shell-show-git-branch
    set -l git_branch (git branch 2>/dev/null | sed -n '/\* /s//on /p')
    set_color blue
    echo -n (__kube_prompt) ""
    set_color red
    echo -n (whoami)'@'(hostname)':'
    set_color $fish_color_cwd
    echo -n (prompt_pwd)
    set_color normal
    echo -n ' '
    set_color purple
    echo -n "$git_branch"
    set_color normal
    echo -e ' \n$ '
end
