#!/usr/bin/env bash
set -v
cd "$HOME/dotfiles"
cat iterm/README.md
brew install iterm2
rm -rf ~/.iterm2
rm -rf ~/.config/iterm2/AppSupport
rm -rf ~/.config/iterm2
stow --no-folding iterm
# Specify the preferences directory
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "~/.iterm2"

# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
