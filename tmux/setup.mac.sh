#!/usr/bin/env bash
echo "********************Setup Tmux********************"
cd "$HOME/dotfiles"
stow tmux
nix-env -i tmux
