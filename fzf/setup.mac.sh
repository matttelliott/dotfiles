#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat fzf/README.md
stow --no-folding fzf
brew install fzf
