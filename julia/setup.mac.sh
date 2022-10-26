#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat julia/README.md
stow julia
brew install julia
