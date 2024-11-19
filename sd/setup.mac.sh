#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat fd/README.md
stow --no-folding sd
brew install sd
exit 0
