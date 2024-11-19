#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat spotify/README.md
brew install spotify || true
stow --no-folding spotify
