#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat git/README.md
stow --no-folding git
brew install git
exit 0
