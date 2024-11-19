#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat stow/README.md
brew install stow
stow --no-folding stow
exit 0
