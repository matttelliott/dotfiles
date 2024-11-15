#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat gum/README.md
stow --no-folding gum
brew install gum
