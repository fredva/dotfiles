set -g fish_greeting ""

fish_vi_key_bindings

# Enable fuzzy matching for completions
set -g fish_complete_style fuzzy

alias ll="ls -la"

abbr --add pn "pnpm"

abbr --add gd "git diff"
abbr --add gds "git diff --staged"
abbr --add gs "git status -sb"
abbr --add gl "git pull"
abbr --add gpu "git push"
abbr --add gco "git checkout"
abbr --add gci "git commit"
abbr --add gba "git branch -a"
abbr --add gbd "git branch -d"
abbr --add gstp "git stash pop"

abbr --add br "brew"

abbr --add cfg "cd ~/.config/fish"
abbr --add rep --set-cursor -- "cd ~/adsk/%"

abbr --add ws --set-cursor -- "webstorm % 1>/dev/null 2>&1 &"

alias vim="nvim"

set -gx EDITOR vim
set -gx PAGER less

starship init fish | source

set -gx STARSHIP_CONFIG ~/.dotfiles/starship.toml

source ~/.adsksetup
