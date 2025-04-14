#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat wget/README.md
brew install wget
stow --no-folding wget
