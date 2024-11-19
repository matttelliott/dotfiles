#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat wget/README.md
stow --no-folding wget
brew install wget
exit 0
