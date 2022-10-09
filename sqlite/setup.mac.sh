#!/usr/bin/env bash
echo "********************Setup sqlite********************"
cd "$HOME/dotfiles"
stow sqlite
brew install sqlite
