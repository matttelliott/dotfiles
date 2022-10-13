#!/usr/bin/env bash
cd "$HOME/dotfiles"
echo "********************Setup Homebrew********************"
bat homebrew/README.md
stow homebrew
brew update
brew tap homebrew/cask-versions
