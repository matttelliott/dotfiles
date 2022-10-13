#!/usr/bin/env bash
cd "$HOME/dotfiles"
echo "********************Setup sqlite********************"
bat README.md
stow sqlite
brew install sqlite
