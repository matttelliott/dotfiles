#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat postgres/README.md
stow --no-folding postgres
brew install postgresql@14 || true
