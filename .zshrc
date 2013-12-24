echo "running <.zshrc>"
# Path to your oh-my-zsh configuration.
ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/ # Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

# ZSH_THEME="robbyrussell"
ZSH_THEME="minimal"
echo "theme: <$ZSH_THEME>"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git extract) 

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/bin:/home/manuel/dev/scripts/:/home/manuel/Downloads/tor-browser_en-US:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/manuel/Downloads/.dropbox-dist:/home/manuel/.screenlayout/:/home/manuel/.genymotion/

PS1="%{$fg[red]%}%n %{$reset_color%}at %{$fg[blue]%}%m %{$reset_color%}in %{$fg[yellow]%}%~ %{$reset_color%}%{$fg[white]%}> %{$reset_color%}"

export PYTHONPATH=/usr/lib/python3.3/site-packages

# enables zmv
autoload -U zmv

# syntax highlighting in less
export LESSOPEN="|/usr/bin/src-hilite-lesspipe.sh %s"
export LESS=' -R '


export PERL_LOCAL_LIB_ROOT="$PERL_LOCAL_LIB_ROOT:/home/manuel/perl5";
export PERL_MB_OPT="--install_base /home/manuel/perl5";
export PERL_MM_OPT="INSTALL_BASE=/home/manuel/perl5";
export PERL5LIB="/home/manuel/perl5/lib/perl5:$PERL5LIB";
export PATH="/home/manuel/perl5/bin:$PATH";

. ~/.zsh_aliases

doge
source /home/manuel/.fzf.zsh
