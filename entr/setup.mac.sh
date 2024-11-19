#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat entr/README.md
brew install entr || true
stow --no-folding entr
