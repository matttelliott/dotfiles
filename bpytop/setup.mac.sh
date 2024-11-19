#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat bpytop/README.md
stow --no-folding bpytop
brew install bpytop
exit 0
