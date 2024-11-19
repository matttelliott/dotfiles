#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat vscodium/README.md
stow --no-folding vscodium
brew install vscodium
