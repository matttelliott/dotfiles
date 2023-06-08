#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat pandoc/README.md
stow --no-folding pandoc
brew install pandoc
