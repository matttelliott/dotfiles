#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat cowsay/README.md
stow cowsay
brew install cowsay
