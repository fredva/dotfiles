alias ls="ls -FG"
alias ll="ls -lh"
alias la='ls -a'
alias lla="ll -a"
alias ..='cd ..'
alias gvim="mvim"
alias p="python3"
alias tf="terraform"
alias grep="grep -i --color=auto"

export PYTHONUSERBASE=~/local

export PATH=~/local/bin:~/go/bin:/usr/local/opt/ruby/bin:/usr/local/sbin:$PATH

# Homebrew bash completion
if type brew &>/dev/null; then
  HOMEBREW_PREFIX="$(brew --prefix)"
  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]; then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  else
    for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*; do
      [[ -r "$COMPLETION" ]] && source "$COMPLETION"
    done
  fi
fi

# Git prompt
source ~/.dotfiles/git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWSTASHSTATE=1
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

alias restartaudio="sudo kill -9 `ps ax|grep 'coreaudio[a-z]' | awk '{print $1}'`"

# Spacemaker stuff

alias spacecurl='curl -H "Authorization: Bearer $(spacemaker-cli api login token)"'

[[ -r ~/.bashrc ]] && . ~/.bashrc

