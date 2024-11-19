#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat github/README.md
brew install gh || true
stow --no-folding github
