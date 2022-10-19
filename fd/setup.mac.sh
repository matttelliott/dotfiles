#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat fd/README.md
stow fd
brew install fd
