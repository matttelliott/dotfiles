#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat cowsay/README.md
brew install cowsay || true
stow --no-folding cowsay
