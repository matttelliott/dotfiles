#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat w3m/README.md
stow w3m
brew install w3m
