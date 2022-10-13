#!/usr/bin/env bash
cd "$HOME/dotfiles"
echo "********************Setup rg - RipGrep********************"
bat ripgrep/README.md
stow ripgrep
brew install ripgrep
