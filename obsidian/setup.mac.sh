#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat obsidian/README.md
stow --no-folding obsidian
brew install obsidian
