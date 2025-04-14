#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat w3m/README.md
brew install w3m
stow --no-folding w3m
