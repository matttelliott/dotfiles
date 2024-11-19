#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat github/README.md
stow --no-folding github
brew install gh
exit 0
