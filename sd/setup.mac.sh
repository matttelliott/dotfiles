#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat fd/README.md
brew install sd
stow --no-folding sd
