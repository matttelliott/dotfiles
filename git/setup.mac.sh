#!/usr/bin/env bash
cd "$HOME/dotfiles"
echo "********************Setup Git********************"
bat git/README.md
stow git
brew install git
