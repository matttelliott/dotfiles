#!/usr/bin/env bash
cd "$HOME/dotfiles"
echo "********************Setup lazygit********************"
bat lazygit/README.md
stow lazygit
brew install lazygit
