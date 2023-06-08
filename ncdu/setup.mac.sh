#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat ncdu/README.md
stow --no-folding ncdu
brew install ncdu
