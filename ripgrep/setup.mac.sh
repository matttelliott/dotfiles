#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat ripgrep/README.md
stow --no-folding ripgrep
brew install ripgrep
