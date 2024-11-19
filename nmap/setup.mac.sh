#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat nmap/README.md
stow --no-folding nmap
brew install nmap
exit 0
