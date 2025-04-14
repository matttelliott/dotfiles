#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat cowsay/README.md
brew install cowsay
stow --no-folding cowsay
