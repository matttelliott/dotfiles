#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat nmap/README.md
stow --no-folding nmap
brew install nmap
