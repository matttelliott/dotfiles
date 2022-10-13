#!/usr/bin/env bash
cd "$HOME/dotfiles"
echo "********************Setup entr********************"
bat entr/README.md
stow entr
brew install entr
