#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat bpytop/README.md
brew install bpytop || true
stow --no-folding bpytop
