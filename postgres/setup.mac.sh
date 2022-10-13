#!/usr/bin/env bash
cd "$HOME/dotfiles"
echo "********************Setup postgres********************"
bat postgres/README.md
stow postgres
brew install postgresql@14
