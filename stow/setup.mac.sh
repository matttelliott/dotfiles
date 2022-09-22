#!/usr/bin/env bash
echo "********************Setup Stow********************"
cd "$HOME/dotfiles"
nix-env -i stow
stow stow
