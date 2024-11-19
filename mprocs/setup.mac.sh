#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat mprocs/README.md
brew install mprocs || true
stow --no-folding mprocs
