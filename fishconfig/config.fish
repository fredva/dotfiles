set -g fish_greeting ""

fish_vi_key_bindings

# Enable fuzzy matching for completions
set -g fish_complete_style fuzzy

abbr --add pn "pnpm"
abbr --add ll "ls -la"
abbr --add less "less -N"

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
abbr --add c "claude"

abbr --add cfg "cd ~/.config/fish"

abbr --add ws --set-cursor -- "webstorm % 1>/dev/null 2>&1 &"

abbr --add vpnkill "launchctl unload /Library/LaunchAgents/com.paloaltonetworks.gp.pangp*"
abbr --add vpnstart "launchctl load /Library/LaunchAgents/com.paloaltonetworks.gp.pangp*"

abbr --add countlines 'find . -type f \( -name "*.ts" -o -name "*.tsx" -o -name "*.js" -o -name "*.jsx" \) -exec cat {} + | wc -l'

abbr --add vim "nvim"

abbr --add p "python3"

set -gx EDITOR vim
set -gx PAGER less
set -gx CLAUDE_CONFIG_DIR ~/.dotfiles/claude

starship init fish | source

set -gx STARSHIP_CONFIG ~/.dotfiles/starship.toml

set -gx ANTHROPIC_MODEL opusplan

source ~/.adsksetup

source ~/.config/fish/functions/__auto_source_venv.fish
__auto_source_venv

