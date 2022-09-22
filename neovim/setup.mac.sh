#!/usr/bin/env bash
echo "********************Setup Neovim********************"
cd "$HOME/dotfiles"
stow neovim

nix-env -i neovim
