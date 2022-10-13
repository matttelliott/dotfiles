#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat prompt/README.md
stow prompt
brew install starship
