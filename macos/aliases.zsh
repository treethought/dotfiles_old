alias show_hidden="defaults write com.apple.Finder AppleShowAllFiles YES && killall Finder"
alias hide_hidden="defaults write com.apple.Finder AppleShowAllFiles NO && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false; killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true; killall Finder"

# Empty the Trash
alias emptytrash="rm -rfv ~/.Trash"