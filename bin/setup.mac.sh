#!/usr/bin/env bash
cd "$HOME/dotfiles"
echo "********************Setup local bin********************"
bat bin/README.md
stow bin
