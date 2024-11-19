#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat ranger/README.md
stow --no-folding vifm
brew install vifm
exit 0
