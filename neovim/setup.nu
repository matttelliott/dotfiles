#!/usr/bin/env nu
cd "$HOME/dotfiles"
cat neovim/README.md
cargo install bob-nvim
bob use stable
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
