#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat homebrew/README.md
stow --no-folding homebrew
brew update
brew tap homebrew/cask-versions
