#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat ripgrep/README.md
stow ripgrep
brew install ripgrep
