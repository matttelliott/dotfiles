#!/usr/bin/env bash
echo "********************Setup local bin********************"
cd "$HOME/dotfiles"
$HOME/.nix-profile/bin/stow bin
