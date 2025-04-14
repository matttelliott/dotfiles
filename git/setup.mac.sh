#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat git/README.md
brew install git
stow --no-folding git
