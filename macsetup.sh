# no delay when showing dock
defaults write com.apple.Dock autohide-delay -float 0 

# turn off user interface sounds effects
defaults write "Apple Global Domain" com.apple.sound.uiaudio.enabled -int 0

defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)
