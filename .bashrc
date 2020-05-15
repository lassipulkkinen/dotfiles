# ~/.bashrc

set -o vi

PS1='[\u@\h \W]\$ '

HISTFILE="$XDG_CACHE_HOME/bash_history"
HISTCONTROL=ignorespace

alias ls='ls --color=auto'
alias vim='nvim'
