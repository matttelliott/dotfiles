#!/usr/bin/env bash
echo "********************Setup Iterm********************"
cd "$HOME/dotfiles"
brew install iterm2
rm -rf ~/.iterm2
rm -rf ~/.config/iterm2
stow iterm
