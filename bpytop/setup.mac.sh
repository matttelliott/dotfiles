#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat bpytop/README.md
stow --no-folding bpytop
brew install bpytop
