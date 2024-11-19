#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat ranger/README.md
brew install ranger || true
stow --no-folding ranger
