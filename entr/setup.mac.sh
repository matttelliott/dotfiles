#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat entr/README.md
stow --no-folding entr
brew install entr
