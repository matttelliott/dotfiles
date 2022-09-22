#!/usr/bin/env bash
echo "********************Setup Git********************"
cd "$HOME/dotfiles"
stow git
nix-env -i git
