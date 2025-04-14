#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat fzf/README.md
brew install fzf
stow --no-folding fzf
