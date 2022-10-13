#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat neovim/README.md
rm -rf $HOME/.local/share/nvim
stow neovim
brew install neovim
nvim +PackerSync
nvim +PackerSync +qa!
nvim +PackerSync +qa!


