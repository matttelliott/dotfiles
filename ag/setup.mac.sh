#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat ag/README.md
stow --no-folding ag
brew install ag
