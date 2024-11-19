#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat pandoc/README.md
stow --no-folding pandoc
brew install pandoc
