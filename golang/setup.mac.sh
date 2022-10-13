#!/usr/bin/env bash
cd "$HOME/dotfiles"
echo "********************Setup Golang********************"
bat golang/README.md
stow golang
brew install golang
