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
export PATH=$PATH:$HOME/.local/share/bob/nvim-bin
echo "export PATH=$PATH:$HOME/.local/share/bob/nvim-bin" >> $HOME/.bashrc
nvim +PackerSync +qa!
