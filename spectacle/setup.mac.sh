#!/usr/bin/env bash
# unmaintained -- need to find alternative
cd "$HOME/dotfiles"
cat spectacle/README.md
brew install spectacle || true
stow --no-folding spectacle
