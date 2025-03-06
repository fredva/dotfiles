alias ls="ls -FG"
alias ll="ls -lh"
alias la='ls -a'
alias lla="ll -a"
alias ..='cd ..'
alias gvim="mvim"
alias p="python3"
alias tf="terraform"
alias grep="grep -i --color=auto"
alias pn="pnpm"

alias yys="yarn && yarn start"
alias ys="yarn start"
alias yyse="yarn && REGION=eu yarn start"
alias yse="REGION=eu yarn start"
alias yysc="yarn && REGION=chaos yarn start"
alias yysu="yarn && REGION=us yarn start"
alias pse="pnpm install && REGION=eu pnpm start"

export PATH=~/local/bin:~/.local/bin:/opt/homebrew/bin:$PATH
export EDITOR=vim

# Homebrew bash completion
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

export PS1='\[\e[0;32m\]\W\[\e[0;33m\]$(__git_ps1 " (%s)") \[\e[0;31m\]➜\[\e[0m\] '

# Git prompt
source ~/.dotfiles/git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUPSTREAM="auto verbose"

GIT_COMPLETION_SHOW_ALL_COMMANDS=1

alias gs="git st"
alias gd="git diff"
alias gp="git push"
alias gco="git checkout"
alias gba="git branch -a"
alias gbd="git branch -d"
alias grs="git reset HEAD . && git checkout ."
alias pull="git pull"

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

# Spacemaker stuff

alias scurl='curl -H "Authorization: Bearer $(spacemaker-cli api login token)"'

[[ -r ~/.bashrc ]] && . ~/.bashrc

#export AWS_SDK_LOAD_CONFIG=1

source ~/.smcredentials

#alias keeper='/opt/homebrew/bin/keeper --config ~/.keeper/config.json'


eval $(thefuck --alias)

