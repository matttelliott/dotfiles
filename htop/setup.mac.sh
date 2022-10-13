#!/usr/bin/env bash
cd "$HOME/dotfiles"
echo "********************Setup htop********************"
bat htop/README.md
stow htop
brew install htop
