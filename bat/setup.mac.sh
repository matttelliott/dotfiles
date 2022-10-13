#!/usr/bin/env bash
cd "$HOME/dotfiles"
echo "********************Setup bat - better cat********************"
bat bat/README.md
stow bat
brew install bat
