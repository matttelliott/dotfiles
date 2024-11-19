#!/usr/bin/env bash
set -v
cd "$HOME/dotfiles"
cat neovim/README.md
rm -rf $HOME/.local/share/nvim
rm -rf $HOME/.local/state/nvim
stow --no-folding neovim
rm -rf $HOME/.local/share/nvim
rm -rf $HOME/.local/state/nvim
brew install neovim
echo 'install neovim packages'
nvim +PackerSync +qa!
sleep 2
echo 'installed neovim'
