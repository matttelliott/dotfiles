#!/usr/bin/env bash
echo "********************Setup Stow********************"
cd "$HOME/dotfiles"
bat stow/README.md
brew install stow
stow stow
