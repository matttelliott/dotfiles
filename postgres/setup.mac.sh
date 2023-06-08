#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat postgres/README.md
stow --no-folding postgres
brew install postgresql@14
