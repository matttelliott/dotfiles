#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat neovim/README.md
rm -rf $HOME/.local/share/nvim
rm -rf $HOME/.local/state/nvim
stow --no-folding neovim
rm -rf $HOME/.local/share/nvim
rm -rf $HOME/.local/state/nvim
brew install neovim
nvim +PackerSync +qa!
