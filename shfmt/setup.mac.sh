#!/usr/bin/env bash
echo "********************Setup shfmt********************"
cd "$HOME/dotfiles"
stow shfmt
brew install shfmt
