#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat obsidian/README.md
brew install obsidian || true
stow --no-folding obsidian
