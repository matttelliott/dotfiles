#!/usr/bin/env bash
cd "$HOME/dotfiles"


title="NeoVim \n"
description= "More modern Vim \n"
url="https://neovim.io/ \n"
color=5
gum style --foreground $color --border-foreground $color --border double --align center --width 50 --margin "1 2" --padding "2 4" $title $description $url

rm -rf $HOME/.local/share/nvim
rm -rf $HOME/.local/state/nvim
stow neovim
rm -rf $HOME/.local/share/nvim
rm -rf $HOME/.local/state/nvim
cargo install bob-nvim
bob use stable
export PATH=$PATH:$HOME/.local/share/bob/nvim-bin
echo "export PATH=$PATH:$HOME/.local/share/bob/nvim-bin" >> $HOME/.bashrc
