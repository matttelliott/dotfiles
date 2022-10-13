#!/usr/bin/env bash
echo "********************Setup Watch********************"
cd "$HOME/dotfiles"
bat watch/README.md
brew install watch
stow watch
