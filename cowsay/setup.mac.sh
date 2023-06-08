#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat cowsay/README.md
stow --no-folding cowsay
brew install cowsay
