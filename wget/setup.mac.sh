#!/usr/bin/env bash
echo "********************Setup wget********************"
cd "$HOME/dotfiles"
stow wget
brew install wget
