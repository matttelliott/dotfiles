#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat golang/README.md
brew install golang
stow --no-folding golang
