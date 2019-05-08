alias ls="ls -FG"
alias ll="ls -lh"
alias la='ls -a'
alias lla="ll -a"
alias ..='cd ..'
alias gvim="mvim"
alias p="python"
alias tf="terraform"
alias grep="grep -i --color=auto"

export PYTHONUSERBASE=~/local

export PATH=~/local/bin:~/go/bin:/usr/local/opt/ruby/bin:$PATH

#export PS1="\[\033[0;31m\]➜ \[\033[01;34m\]\W> \[\033[00m\]"

# Homebrew bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Git prompt
source ~/.dotfiles/git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="auto verbose"

export PS1='\[\e[0;32m\]\W\[\e[0;33m\]$(__git_ps1 " (%s)") \[\e[0;31m\]➜\[\e[0m\] '

alias gs="git st"
alias gd="git diff"
alias gp="git push"
alias gco="git checkout"
alias gba="git branch -a"
alias gbd="git branch -d"
alias pr="hub pull-request"

__git_complete gco _git_checkout
__git_complete gbd _git_branch


# Cycle through matches with cd
# bind '"\t":menu-complete'
# or match up to first unambiguous match
bind '"\t":complete'

# Ignore case in cd etc
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

# History search with arrow keys
#bind '"M-[A":history-search-backward'
#bind '"M-[B":history-search-forward'

bind '"^[[A":history-search-backward'
bind '"^[[B":history-search-forward'

# Initialize thefuck
eval $(thefuck --alias)

# Spacemaker stuff

alias spacecurl='curl -H "Authorization: Bearer $(spacemaker-cli api login token)"'

[[ -r ~/.bashrc ]] && . ~/.bashrc
