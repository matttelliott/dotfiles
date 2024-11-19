#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat ag/README.md
brew install ag || true
stow --no-folding ag
