#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat postgres/README.md
brew install postgresql@14 || true
stow --no-folding postgres
