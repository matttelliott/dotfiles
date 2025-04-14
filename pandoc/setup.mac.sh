#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat pandoc/README.md
brew install pandoc
stow --no-folding pandoc
