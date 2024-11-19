#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat vscodium/README.md
brew install vscodium || true
stow --no-folding vscodium
