#!/usr/bin/env bash
cd "$HOME/dotfiles"
brew install trash
bat trash/README.md
stow --no-folding trash
