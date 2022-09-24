#!/usr/bin/env bash
echo "********************Setup Homebrew********************"
cd "$HOME/dotfiles"
stow homebrew
brew update
brew tap homebrew/cask-versions

# nix already installed as core dependency
