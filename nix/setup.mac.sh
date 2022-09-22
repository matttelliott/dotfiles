#!/usr/bin/env bash
echo "********************Setup Nix********************"
cd "$HOME/dotfiles"
stow nix

# nix already installed as core dependency
