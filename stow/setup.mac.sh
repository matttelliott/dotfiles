#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat stow/README.md
brew install stow
stow stow
