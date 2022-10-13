#!/usr/bin/env bash
cd "$HOME/dotfiles"
echo "********************Setup Neovim********************"
rm -rf $HOME/.local/share/nvim
stow neovim
brew install neovim
nvim +PackerSync +qa!
nvim +PackerSync +qa!


