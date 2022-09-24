#!/usr/bin/env bash
echo "********************Setup Vim********************"
cd "$HOME/dotfiles"
stow vim

brew install neovim
nvim +PackerSync +qa
nvim +PackerSync +qa
