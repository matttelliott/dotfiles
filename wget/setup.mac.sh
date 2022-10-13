#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat wget/README.md
stow wget
brew install wget
