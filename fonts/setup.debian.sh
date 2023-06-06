#!/usr/bin/env bash
cd "$HOME/dotfiles"
bash svn/setup.mac.sh
cd "$HOME/dotfiles"

title="Fonts"
description="IDK how fonts work"
color=6
gum style --foreground $color --border-foreground $color --border double --align center --width 50 --margin "1 2" --padding "2 4" $title $description


pushd $HOME
git clone https://github.com/gabrielelana/awesome-terminal-fonts
cd awesome-terminal-fonts
mkdir -p ~/.fonts
cp -f ./build/*.ttf ~/.fonts
cp -f ./build/*.sh ~/.fonts
mkdir -p ~/.config/fontconfig/conf.d
cp -f ./config/* ~/.config/fontconfig/conf.d
fc-cache -fv ~/.fonts
cd ..
rm -rf awesome-terminal-fonts
popd

stow fonts

