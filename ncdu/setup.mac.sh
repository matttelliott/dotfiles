#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat ncdu/README.md
stow ncdu
brew install ncdu
