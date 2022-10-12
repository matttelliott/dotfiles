#!/usr/bin/env bash
echo "********************Setup htop********************"
cd "$HOME/dotfiles"
stow htop
brew install htop
