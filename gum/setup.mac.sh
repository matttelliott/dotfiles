#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat golang/README.md
stow golang
brew install golang
