#!/usr/bin/env bash
cd "$HOME/dotfiles"
echo "********************Setup lazygit********************"
bat lazygin/README.md
stow lazygit
brew install lazygit
