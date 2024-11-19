#!/usr/bin/env bash
cd "$HOME/dotfiles"
brew update || true
stow --no-folding homebrew
