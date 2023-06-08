#!/usr/bin/env bash
# unmaintained -- need to find alternative
cd "$HOME/dotfiles"
bat spectacle/README.md
stow --no-folding spectacle
brew install spectacle
