#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat sqlite/README.md
stow --no-folding sqlite
brew install sqlite
