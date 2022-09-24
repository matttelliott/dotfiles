#!/usr/bin/env bash
echo "********************Setup Nix********************"
cd "$HOME/dotfiles"
stow nix
# sh <(curl -L https://nixos.org/nix/install)
