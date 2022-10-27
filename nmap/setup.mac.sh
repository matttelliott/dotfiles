#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat nmap/README.md
stow nmap
brew install nmap
