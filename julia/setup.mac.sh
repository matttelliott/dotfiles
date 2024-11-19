#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat julia/README.md
stow --no-folding julia
brew install julia
