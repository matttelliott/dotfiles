#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat nmap/README.md
brew install nmap
stow --no-folding nmap
