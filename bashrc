alias ls="ls -FG"
alias ll="ls -lh"
alias la='ls -a'
alias lla="ll -a"
alias ..='cd ..'
alias gvim="mvim"
alias p="python"

export PS1="\[\033[0;31m\]bash ➜ \[\033[01;34m\]\W> \[\033[00m\]"

[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh
