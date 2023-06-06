#!/usr/bin/env bash
cd "$HOME/dotfiles"


title="NeoVim"
description="More modern Vim"
url="https://neovim.io/"
color=5
gum style --foreground $color --border-foreground $color --border double --align center --width 50 --margin "1 2" --padding "2 4" $title $description $url


gum spin --spinner dot --title "Installing Neovim via nvim-bob" --title.foreground $color -- cargo install bob-nvim && bob use stable
export PATH=$PATH:$HOME/.local/share/bob/nvim-bin
echo "export PATH=$PATH:$HOME/.local/share/bob/nvim-bin" >> $HOME/.bashrc

title="NvChad"
description="More modern NeoVim"
url="https://github.com/NvChad/NvChad"
color=15
gum style --foreground $color --border-foreground $color --border double --align center --width 50 --margin "1 2" --padding "2 4" $title $description $url

gum spin --spinner dot --title "Installing NvChad" --title.foreground $color -- git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

stow neovim

echo nvim

