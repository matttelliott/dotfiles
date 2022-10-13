#!/usr/bin/env bash
rm -rf ~/.iterm2
rm -rf ~/.config/iterm2
cd "$HOME/dotfiles"
echo "********************Setup iTerm********************"
bat iterm/README.md
brew install iterm2
stow iterm
# Specify the preferences directory
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "~/.iterm2"

# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
