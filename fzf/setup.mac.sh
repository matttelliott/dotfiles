#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat fzf/README.md
stow fzf
brew install fzf
