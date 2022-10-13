#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat README.md
stow sqlite
brew install sqlite
