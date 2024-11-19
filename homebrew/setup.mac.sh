#!/usr/bin/env bash
cd "$HOME/dotfiles"
brew update
stow --no-folding homebrew
exit 0
