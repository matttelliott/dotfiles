#!/usr/bin/env bash
cd "$HOME/dotfiles"
brew install ripgrep
stow --no-folding ripgrep
