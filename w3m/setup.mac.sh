#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat w3m/README.md
stow --no-folding w3m
brew install w3m
