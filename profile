alias ls="ls -FG"
alias ll="ls -lh"
alias la='ls -a'
alias lla="ll -a"
alias ..='cd ..'
alias gvim="mvim"
alias p="python"

alias gs="git status"
alias gd="git diff"
alias gco="git checkout"

#export PS1="\[\033[0;31m\]➜ \[\033[01;34m\]\W> \[\033[00m\]"

# Homebrew bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Git prompt
source ~/.dotfiles/git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="auto verbose"

export PS1='\[\e[0;32m\]\W\[\e[0;33m\]$(__git_ps1 " (%s)") \[\e[0;31m\]➜\[\e[0m\] '

