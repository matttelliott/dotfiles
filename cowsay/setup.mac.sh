#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat cowsay/README.md
stow --no-folding cowsay
brew install cowsay
exit 0
