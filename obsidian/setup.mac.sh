#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat obsidian/README.md
stow --no-folding obsidian
brew install obsidian
exit 0
