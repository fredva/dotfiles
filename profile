alias ls="ls -FG"
alias ll="ls -lh"
alias la='ls -a'
alias lla="ll -a"
alias ..='cd ..'
alias gvim="mvim"
alias p="python3"
alias grep="grep -i --color=auto"
export PATH=~/local/bin:/opt/homebrew/bin:$PATH
export EDITOR=vim

export PS1='\[\e[0;32m\]\W\[\e[0;33m\]$(__git_ps1 " (%s)") \[\e[0;31m\]➜\[\e[0m\] '

export BASH_SILENCE_DEPRECATION_WARNING=1

# Homebrew bash completion
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

# Git prompt
source ~/.dotfiles/git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUPSTREAM="auto verbose"

alias gs="git st"
alias gd="git diff"
alias gp="git push"
alias gco="git checkout"
alias gba="git branch -a"
alias gbd="git branch -d"
alias grs="git reset HEAD . && git checkout ."
alias pr="hub pull-request"

#__git_complete gco _git_checkout
#__git_complete gbd _git_branch

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

# Spacemaker stuff

alias scurl='curl -H "Authorization: Bearer $(spacemaker-cli api login token)"'

[[ -r ~/.bashrc ]] && . ~/.bashrc

#export AWS_SDK_LOAD_CONFIG=1

function getuser() {
    user_id="${1#auth0|}"
    scurl -s "https://app.spacemaker.ai/api/users/${user_id}" | jq
}

source ~/.smcredentials
