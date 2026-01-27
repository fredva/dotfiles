# autohide dock with no delay
defaults write com.apple.dock "autohide" -bool "true"
defaults write com.apple.dock autohide-delay -float 0 

# turn off user interface sounds effects
defaults write "Apple Global Domain" com.apple.sound.uiaudio.enabled -int 0

# fix keyboard press and hold and delays
defaults write NSGlobalDomain "ApplePressAndHoldEnabled" -bool "false"

defaults write com.apple.Accessibility KeyRepeatDelay -float 0.3
defaults write com.apple.Accessibility KeyRepeatInterval -float 0.06

# tap to clik trackpad
defaults -currentHost write -globalDomain com.apple.mouse.tapBehavior -int 0

# Specify the preferences directory for iTerm2
#defaults write com.googlecode.iterm2 PrefsCustomFolder -string "~/.dotfiles/iterm2"

# Tell iTerm2 to use the custom preferences in the directory
#defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
