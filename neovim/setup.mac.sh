#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat neovim/README.md
rm -rf $HOME/.local/share/nvim
rm -rf $HOME/.local/state/nvim
stow neovim
rm -rf $HOME/.local/share/nvim
rm -rf $HOME/.local/state/nvim
brew install neovim
nvim +PackerSync
nvim +PackerSync
nvim +PackerSync +qa!


