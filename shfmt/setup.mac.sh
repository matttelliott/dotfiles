#!/usr/bin/env bash
cd "$HOME/dotfiles"
echo "********************Setup shfmt********************"
bat shfmt/README.md
stow shfmt
brew install shfmt
