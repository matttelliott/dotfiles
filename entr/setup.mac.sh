#!/usr/bin/env bash
echo "********************Setup entr********************"
cd "$HOME/dotfiles"
stow entr
brew install entr
