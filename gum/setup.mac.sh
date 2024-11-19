#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat gum/README.md
stow --no-folding gum
brew install gum
exit 0
