#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat gum/README.md
brew install gum
stow --no-folding gum
