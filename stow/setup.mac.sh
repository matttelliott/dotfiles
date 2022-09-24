#!/usr/bin/env bash
echo "********************Setup Stow********************"
cd "$HOME/dotfiles"
brew install stow
stow stow
