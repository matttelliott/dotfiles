#!/usr/bin/env bash
echo "********************Setup Stow********************"
cd $HOME/dotfiles
stow stow
nix-env -i stow
