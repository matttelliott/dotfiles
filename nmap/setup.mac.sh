#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat nmap/README.md
brew install nmap || true
stow --no-folding nmap
