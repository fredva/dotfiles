set -g fish_greeting ""

fish_vi_key_bindings

alias ll="ls -la"

abbr --add pn "pnpm"

abbr --add gd "git diff"
abbr --add gds "git diff --staged"
abbr --add gs "git status -sb"
abbr --add gl "git pull"
abbr --add gpu "git push"
abbr --add gco "git checkout"
abbr --add gci "git commit"

abbr --add ws "webstorm"

abbr --add cfg "cd ~/.config/fish"

alias vim="nvim"

set -gx EDITOR vim
set -gx PAGER less

starship init fish | source

set -gx STARSHIP_CONFIG ~/.dotfiles/starship.toml

source ~/.adsksetup
