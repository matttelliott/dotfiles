#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat julia/README.md
brew install julia || true
stow --no-folding julia
