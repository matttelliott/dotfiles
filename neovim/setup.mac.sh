#!/usr/bin/env bash
cd "$HOME/dotfiles"
rm -rf $HOME/.local/share/nvim
stow neovim
brew install neovim
nvim +PackerSync
nvim +PackerSync


