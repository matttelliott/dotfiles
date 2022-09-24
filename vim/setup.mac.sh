#!/usr/bin/env bash
echo "********************Setup Vim********************"
cd "$HOME/dotfiles"
stow vim

brew install neovim

nvim +PackerInstall -c qa
nvim +PackerInstall -c qa


