#!/usr/bin/env bash
cd "$HOME/dotfiles"
echo "********************Setup wget********************"
bat wget/README.md
stow wget
brew install wget
