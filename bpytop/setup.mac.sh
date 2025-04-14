#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat bpytop/README.md
brew install bpytop
stow --no-folding bpytop
