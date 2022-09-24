#!/usr/bin/env bash
echo "********************Setup Neovim********************"
cd "$HOME/dotfiles"
stow neovim

brew install neovim
nvim +PackerSync +qa
nvim +PackerSync +qa
