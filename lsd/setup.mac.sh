#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat lsd/README.md
brew install lsd
stow --no-folding lsd
