#!/usr/bin/env bash
set -v
cd "$HOME/dotfiles"
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
cat neovim/README.md
