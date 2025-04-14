#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat entr/README.md
brew install entr
stow --no-folding entr
