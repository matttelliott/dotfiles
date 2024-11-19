#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat keepass/README.md
brew install keepassxc || true
stow --no-folding keepass
