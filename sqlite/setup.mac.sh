#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat sqlite/README.md
stow --no-folding sqlite
brew install sqlite
exit 0
