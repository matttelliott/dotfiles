#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat neovim/README.md
rm -rf $HOME/.local/share/nvim
rm -rf $HOME/.local/state/nvim
stow neovim
rm -rf $HOME/.local/share/nvim
rm -rf $HOME/.local/state/nvim
cargo install bob-nvim
bob use stable
nvim +PackerSync +qa!
