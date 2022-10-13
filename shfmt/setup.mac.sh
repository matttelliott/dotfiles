#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat shfmt/README.md
stow shfmt
brew install shfmt
