#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat mprocs/README.md
brew install mprocs
stow --no-folding mprocs
exit 0
