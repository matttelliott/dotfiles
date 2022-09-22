#!/usr/bin/env bash
echo "********************Setup Git********************"
cd "$HOME/dotfiles"
$HOME/.nix-profile/bin/stow git
nix-env -i git
