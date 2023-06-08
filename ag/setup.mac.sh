#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat ag/README.md
stow --no-folding ag
brew install ag
