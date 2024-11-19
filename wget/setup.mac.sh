#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat wget/README.md
brew install wget || true
stow --no-folding wget
