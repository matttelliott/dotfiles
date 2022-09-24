#!/usr/bin/env bash
echo "********************Setup Git********************"
cd "$HOME/dotfiles"
stow git
brew install git
