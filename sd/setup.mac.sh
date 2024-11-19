#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat fd/README.md
brew install sd || true
stow --no-folding sd
