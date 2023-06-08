#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat git/README.md
stow --no-folding git
brew install git
