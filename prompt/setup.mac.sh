#!/usr/bin/env bash
cd "$HOME/dotfiles"
echo "********************Setup Prompt********************"
bat prompt/README.md
stow prompt
brew install starship
