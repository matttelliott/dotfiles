#!/usr/bin/env bash
cd "$HOME/dotfiles"
stow fonts

nix-env -i dejavu-fonts
nix-env -i font-awesome
nix-env -i nerdfonts
nix-env -i powerline-fonts

cp $HOME/.local/share/fonts/* /Library/Fonts 
fc-cache -f -v
