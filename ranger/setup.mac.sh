#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat ranger/README.md
stow --no-folding ranger
brew install ranger
exit 0
