#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat stow/README.md
brew install stow || true
stow --no-folding stow
