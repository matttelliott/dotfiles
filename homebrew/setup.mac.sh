#!/usr/bin/env bash
cd "$HOME/dotfiles"
brew update
brew tap homebrew/cask-versions
stow --no-folding homebrew
