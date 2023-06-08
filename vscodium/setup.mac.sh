#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat vscodium/README.md
stow --no-folding vscodium
brew install vscodium
