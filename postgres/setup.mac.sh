#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat postgres/README.md
stow postgres
brew install postgresql@14
