#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat vim/README.md
brew install vim || true
stow --no-folding vim


