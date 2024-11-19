#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat watch/README.md
brew install watch || true
stow --no-folding watch
