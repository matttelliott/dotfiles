#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat ag/README.md
stow ag
brew install ag
