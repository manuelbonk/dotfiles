## smart urls
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

## pager
export PAGER=bat
export LC_CTYPE=$LANG
