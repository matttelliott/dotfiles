#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat ranger/README.md
stow --no-folding ranger
brew install ranger
