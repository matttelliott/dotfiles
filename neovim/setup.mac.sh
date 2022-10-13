#!/usr/bin/env bash
cd "$HOME/dotfiles"
rm -rf $HOME/.local/share/nvim
bat neovim/README.md
stow neovim
brew install neovim
nvim +PackerSync +qa!
nvim +PackerSync +qa!
nvim +PackerSync +qa!


