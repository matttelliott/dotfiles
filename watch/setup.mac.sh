#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat watch/README.md
brew install watch
stow --no-folding watch
