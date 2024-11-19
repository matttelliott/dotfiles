#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat ripgrep/README.md
brew install ripgrep || true
stow --no-folding ripgrep
