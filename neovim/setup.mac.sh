#!/usr/bin/env bash
echo "********************Setup Neovim********************"
cd "$HOME/dotfiles"
rm -rf $HOME/.local/share/nvim
stow neovim

brew install neovim

nvim +PackerSync +qa!
nvim +PackerSync +qa!


