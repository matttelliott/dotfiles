#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat fzf/README.md
stow --no-folding fzf
brew install fzf
exit 0
