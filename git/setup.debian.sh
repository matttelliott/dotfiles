#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat git/README.md
stow git
brsudo apt install git
