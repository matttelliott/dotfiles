#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat sqlite/README.md
stow sqlite
brew install sqlite
