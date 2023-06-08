#!/usr/bin/env bash
cd "$HOME/dotfiles"
brew install bat
bat bat/README.md
stow --no-folding bat
