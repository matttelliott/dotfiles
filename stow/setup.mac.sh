#!/usr/bin/env bash
echo "********************Setup Stow********************"
cd $HOME/dotfiles
stow stow
brew install stow
